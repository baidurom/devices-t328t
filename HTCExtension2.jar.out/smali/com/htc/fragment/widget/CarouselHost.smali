.class public Lcom/htc/fragment/widget/CarouselHost;
.super Landroid/widget/FrameLayout;
.source "CarouselHost.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Lcom/htc/fragment/widget/DragController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fragment/widget/CarouselHost$1;,
        Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;,
        Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;,
        Lcom/htc/fragment/widget/CarouselHost$TabContainer;,
        Lcom/htc/fragment/widget/CarouselHost$FakeScreen;,
        Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;,
        Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;,
        Lcom/htc/fragment/widget/CarouselHost$IndicatorStrategy;,
        Lcom/htc/fragment/widget/CarouselHost$TabSpec;,
        Lcom/htc/fragment/widget/CarouselHost$OnTabBeforeChangeListener;,
        Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;
    }
.end annotation


# static fields
.field static BACKGROUND_DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field public static final TASK_STATE_DEFAULT:I = 0x63

.field public static final TASK_STATE_POOL:I = 0x64

.field public static final TASK_STATE_UNREMOVABLE:I = 0x65


# instance fields
.field private attached:Z

.field private contentHeight:I

.field private contentWidth:I

.field private customSpace:I

.field private customViewContainer:Landroid/widget/FrameLayout;

.field private display:Landroid/view/Display;

.field private enableCustomView:Z

.field eresources:Landroid/content/res/Resources;

.field private isFullScreen:Z

.field private isPortrait:Z

.field protected mBackupCurrentTag:Ljava/lang/String;

.field private mBitmapOffsetX:I

.field private mBitmapOffsetY:I

.field private mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

.field private final mContext:Landroid/content/Context;

.field private mCorOffsetX:F

.field private mCorOffsetY:F

.field protected mCurrentTabTag:Ljava/lang/String;

.field private mCurrentView:Landroid/view/View;

.field private mDragInfo:Ljava/lang/Object;

.field private mDragRect:Landroid/graphics/Rect;

.field private mDragSource:Lcom/htc/fragment/widget/DragSource;

.field private mDragView:Landroid/widget/FrameLayout;

.field private mDragging:Z

.field private mDropAnimationRunnable:Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;

.field private final mDropCoordinates:[I

.field private mDropTarget:Lcom/htc/fragment/widget/DropTarget;

.field private mHookPanel:Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

.field private mIsProviderAP:Z

.field private mLastDropTarget:Lcom/htc/fragment/widget/DropTarget;

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

.field private mOnTabChangeListener:Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;

.field private mOriginator:Landroid/view/View;

.field private mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

.field private final mRect:Landroid/graphics/Rect;

.field private mShouldDrop:Z

.field private mShouldStopFling:Z

.field private mShouldThrowEvent:Z

.field private mSourceX:F

.field private mSourceY:F

.field private mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

.field private mTabPrefix:Ljava/lang/String;

.field private mTouchOffsetX:F

.field private mTouchOffsetY:F

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private resetBound:Z

.field private setCurrentTabBeforeAttached:Ljava/lang/Object;

.field private shadowOverlay:Landroid/graphics/drawable/Drawable;

.field private tipBubble:Landroid/widget/TextView;

.field private viewSwitcher:Lcom/htc/fragment/widget/CarouselViewSwitcher;

.field private widgetSpace:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 150
    const-string v0, "TabBackground"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/htc/fragment/widget/CarouselHost;->BACKGROUND_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 157
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 98
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    .line 117
    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragging:Z

    .line 134
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragRect:Landroid/graphics/Rect;

    .line 139
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mRect:Landroid/graphics/Rect;

    .line 140
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropCoordinates:[I

    .line 144
    new-instance v0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;

    invoke-direct {v0, p0}, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;-><init>(Lcom/htc/fragment/widget/CarouselHost;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropAnimationRunnable:Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;

    .line 201
    iput v2, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    .line 202
    iput v2, p0, Lcom/htc/fragment/widget/CarouselHost;->customSpace:I

    .line 204
    iput-boolean v4, p0, Lcom/htc/fragment/widget/CarouselHost;->resetBound:Z

    .line 205
    iput-boolean v4, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    .line 206
    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselHost;->isFullScreen:Z

    .line 208
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->display:Landroid/view/Display;

    .line 210
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->shadowOverlay:Landroid/graphics/drawable/Drawable;

    .line 381
    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselHost;->enableCustomView:Z

    .line 383
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    .line 385
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabBeforeAttached:Ljava/lang/Object;

    .line 719
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    .line 1917
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    .line 1991
    iput v2, p0, Lcom/htc/fragment/widget/CarouselHost;->contentWidth:I

    .line 1992
    iput v2, p0, Lcom/htc/fragment/widget/CarouselHost;->contentHeight:I

    .line 2904
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->viewSwitcher:Lcom/htc/fragment/widget/CarouselViewSwitcher;

    .line 158
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    .line 160
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost;->setOrientation()V

    .line 161
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost;->initCarouselHost()V

    .line 163
    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mShouldThrowEvent:Z

    .line 164
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mBackupCurrentTag:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 173
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    .line 117
    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragging:Z

    .line 134
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragRect:Landroid/graphics/Rect;

    .line 139
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mRect:Landroid/graphics/Rect;

    .line 140
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropCoordinates:[I

    .line 144
    new-instance v0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;

    invoke-direct {v0, p0}, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;-><init>(Lcom/htc/fragment/widget/CarouselHost;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropAnimationRunnable:Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;

    .line 201
    iput v2, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    .line 202
    iput v2, p0, Lcom/htc/fragment/widget/CarouselHost;->customSpace:I

    .line 204
    iput-boolean v4, p0, Lcom/htc/fragment/widget/CarouselHost;->resetBound:Z

    .line 205
    iput-boolean v4, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    .line 206
    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselHost;->isFullScreen:Z

    .line 208
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->display:Landroid/view/Display;

    .line 210
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->shadowOverlay:Landroid/graphics/drawable/Drawable;

    .line 381
    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselHost;->enableCustomView:Z

    .line 383
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    .line 385
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabBeforeAttached:Ljava/lang/Object;

    .line 719
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    .line 1917
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    .line 1991
    iput v2, p0, Lcom/htc/fragment/widget/CarouselHost;->contentWidth:I

    .line 1992
    iput v2, p0, Lcom/htc/fragment/widget/CarouselHost;->contentHeight:I

    .line 2904
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->viewSwitcher:Lcom/htc/fragment/widget/CarouselViewSwitcher;

    .line 174
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    .line 176
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost;->setOrientation()V

    .line 177
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost;->initCarouselHost()V

    .line 179
    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mShouldThrowEvent:Z

    .line 180
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mBackupCurrentTag:Ljava/lang/String;

    .line 181
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/widget/CarouselContentGallery;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/fragment/widget/CarouselHost;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/widget/CarouselFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/app/LocalFragmentManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mHookPanel:Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/htc/fragment/widget/CarouselHost;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/htc/fragment/widget/CarouselHost;->mShouldThrowEvent:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/widget/DragSource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/widget/DropTarget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropTarget:Lcom/htc/fragment/widget/DropTarget;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/fragment/widget/CarouselHost;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/htc/fragment/widget/CarouselHost;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/htc/fragment/widget/CarouselHost;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/htc/fragment/widget/CarouselHost;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/htc/fragment/widget/CarouselHost;->moveIndicator(FF)V

    return-void
.end method

.method private addTab(Lcom/htc/fragment/widget/CarouselHost$TabSpec;Z)V
    .locals 6
    .parameter "tabSpec"
    .parameter "isRemovable"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 747
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mIndicatorStrategy:Lcom/htc/fragment/widget/CarouselHost$IndicatorStrategy;
    invoke-static {p1}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$100(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$IndicatorStrategy;

    move-result-object v3

    if-nez v3, :cond_0

    .line 748
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "you must specify a way to create the tab indicator."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 751
    :cond_0
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {p1}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v3

    if-nez v3, :cond_1

    .line 752
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "you must specify a way to create the tab content"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 755
    :cond_1
    iget-boolean v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mIsProviderAP:Z

    if-eqz v3, :cond_2

    .line 756
    new-instance v0, Lcom/htc/fragment/widget/TaskInfo;

    invoke-direct {v0}, Lcom/htc/fragment/widget/TaskInfo;-><init>()V

    .line 757
    .local v0, task:Lcom/htc/fragment/widget/TaskInfo;
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mIndicatorStrategy:Lcom/htc/fragment/widget/CarouselHost$IndicatorStrategy;
    invoke-static {p1}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$100(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$IndicatorStrategy;

    move-result-object v1

    check-cast v1, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;

    .line 759
    .local v1, temp:Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v3}, Lcom/htc/fragment/widget/CarouselFragment;->getGId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/fragment/widget/TaskInfo;->gId:Ljava/lang/String;

    .line 760
    invoke-virtual {p1}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/fragment/widget/TaskInfo;->taskTag:Ljava/lang/String;

    .line 761
    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mLabelResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v1}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$200(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v3, v0, Lcom/htc/fragment/widget/TaskInfo;->taskName:Ljava/lang/String;

    .line 762
    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mIconReource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v1}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$300(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iput-object v3, v0, Lcom/htc/fragment/widget/TaskInfo;->resPackage:Ljava/lang/String;

    .line 763
    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mIconReource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v1}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$300(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v3, v0, Lcom/htc/fragment/widget/TaskInfo;->icon:Ljava/lang/String;

    .line 764
    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mSelectedIconResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v1}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$400(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v3, v0, Lcom/htc/fragment/widget/TaskInfo;->selectedIcon:Ljava/lang/String;

    .line 765
    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mOverylayResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v1}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$500(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v3, v0, Lcom/htc/fragment/widget/TaskInfo;->overlay:Ljava/lang/String;

    .line 766
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {p1}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v2

    check-cast v2, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;

    .line 767
    .local v2, temp2:Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;
    #getter for: Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->access$700(Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/fragment/widget/TaskInfo;->intentUri:Ljava/lang/String;

    .line 768
    iput v4, v0, Lcom/htc/fragment/widget/TaskInfo;->isHost:I

    .line 769
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getHostCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    .line 770
    if-ne p2, v4, :cond_3

    .line 771
    iput v4, v0, Lcom/htc/fragment/widget/TaskInfo;->isRemovable:I

    .line 774
    :goto_0
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v3, v0}, Lcom/htc/fragment/widget/CarouselFragment;->addAndSyncTask(Lcom/htc/fragment/widget/TaskInfo;)V

    .line 776
    .end local v0           #task:Lcom/htc/fragment/widget/TaskInfo;
    .end local v1           #temp:Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;
    .end local v2           #temp2:Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;
    :cond_2
    return-void

    .line 773
    .restart local v0       #task:Lcom/htc/fragment/widget/TaskInfo;
    .restart local v1       #temp:Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;
    .restart local v2       #temp2:Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;
    :cond_3
    iput v5, v0, Lcom/htc/fragment/widget/TaskInfo;->isRemovable:I

    goto :goto_0
.end method

.method private addTabUtil(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;Z)V
    .locals 10
    .parameter "tag"
    .parameter "context"
    .parameter "title"
    .parameter "rest"
    .parameter "on"
    .parameter "overlay"
    .parameter "intent"
    .parameter "isRemovable"

    .prologue
    .line 679
    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    if-nez v6, :cond_0

    .line 681
    invoke-static {p2, p3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    .line 682
    .local v5, titleIcon:Landroid/content/Intent$ShortcutIconResource;
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselHost;->newTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v6

    invoke-static {p2, p4}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v7

    invoke-static {p2, p5}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v8

    move/from16 v0, p6

    invoke-static {p2, v0}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v9

    invoke-virtual {v6, v5, v7, v8, v9}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->setIndicator(Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v6

    move-object/from16 v0, p7

    invoke-virtual {v6, v0, v5}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->setContent(Landroid/content/Intent;Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v4

    .line 688
    .local v4, tab:Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    move/from16 v0, p8

    invoke-direct {p0, v4, v0}, Lcom/htc/fragment/widget/CarouselHost;->addTab(Lcom/htc/fragment/widget/CarouselHost$TabSpec;Z)V

    .line 715
    :goto_0
    return-void

    .line 692
    .end local v4           #tab:Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    .end local v5           #titleIcon:Landroid/content/Intent$ShortcutIconResource;
    :cond_0
    new-instance v1, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v1}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    .line 693
    .local v1, onIcon:Landroid/content/Intent$ShortcutIconResource;
    new-instance v3, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v3}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    .line 694
    .local v3, restIcon:Landroid/content/Intent$ShortcutIconResource;
    new-instance v5, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v5}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    .line 695
    .restart local v5       #titleIcon:Landroid/content/Intent$ShortcutIconResource;
    new-instance v2, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v2}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    .line 697
    .local v2, overlayIcon:Landroid/content/Intent$ShortcutIconResource;
    const-string v6, "fake package"

    iput-object v6, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 698
    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    invoke-virtual {v6, p5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 700
    const-string v6, "fake package"

    iput-object v6, v3, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 701
    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    invoke-virtual {v6, p4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 703
    const-string v6, "fake package"

    iput-object v6, v5, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 704
    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    invoke-virtual {v6, p3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 706
    const-string v6, "fake package"

    iput-object v6, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 707
    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 709
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselHost;->newTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, v5, v3, v1, v2}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->setIndicator(Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v6

    move-object/from16 v0, p7

    invoke-virtual {v6, v0, v5}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->setContent(Landroid/content/Intent;Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v4

    .line 713
    .restart local v4       #tab:Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    move/from16 v0, p8

    invoke-direct {p0, v4, v0}, Lcom/htc/fragment/widget/CarouselHost;->addTab(Lcom/htc/fragment/widget/CarouselHost$TabSpec;Z)V

    goto :goto_0
.end method

.method private createDragView(Landroid/view/View;)V
    .locals 13
    .parameter "view"

    .prologue
    .line 1996
    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v9}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 1997
    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v10, 0x33

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2000
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 2002
    const/4 v9, 0x2

    new-array v2, v9, [I

    .line 2004
    .local v2, location:[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2006
    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v10, 0x0

    aget v10, v2, v10

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2007
    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v10, 0x1

    aget v10, v2, v10

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2016
    .end local v2           #location:[I
    :goto_0
    iget v9, p0, Lcom/htc/fragment/widget/CarouselHost;->contentWidth:I

    if-ltz v9, :cond_0

    iget v9, p0, Lcom/htc/fragment/widget/CarouselHost;->contentHeight:I

    if-gez v9, :cond_1

    .line 2018
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 2020
    .local v5, resource:Landroid/content/res/Resources;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2022
    .local v1, backgroundPadding:Landroid/graphics/Rect;
    const v9, 0x208019e

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 2023
    .local v7, tileDrawable:Landroid/graphics/drawable/Drawable;
    const v9, 0x208019f

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2025
    .local v0, backDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2026
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    iget v10, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v10

    iget v10, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/htc/fragment/widget/CarouselHost;->contentWidth:I

    .line 2027
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    iget v10, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v10

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/htc/fragment/widget/CarouselHost;->contentHeight:I

    .line 2031
    .end local v0           #backDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #backgroundPadding:Landroid/graphics/Rect;
    .end local v5           #resource:Landroid/content/res/Resources;
    .end local v7           #tileDrawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v10, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, p0, Lcom/htc/fragment/widget/CarouselHost;->contentWidth:I

    if-gtz v9, :cond_3

    const/4 v9, -0x2

    :goto_1
    iput v9, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2032
    iget-object v10, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, p0, Lcom/htc/fragment/widget/CarouselHost;->contentHeight:I

    if-gtz v9, :cond_4

    const/4 v9, -0x2

    :goto_2
    iput v9, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2035
    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v10, 0x398

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2042
    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v10, 0x0

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2043
    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v10, -0x3

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2048
    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x2090022

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/htc/fragment/widget/CarouselFrameLayout;

    .line 2049
    .local v8, windowView:Lcom/htc/fragment/widget/CarouselFrameLayout;
    const v9, 0x2020062

    invoke-virtual {v8, v9}, Lcom/htc/fragment/widget/CarouselFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2051
    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mOriginator:Landroid/view/View;

    const v10, 0x2020061

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/fragment/widget/CarouselTextView;

    .line 2052
    .local v3, oldView:Lcom/htc/fragment/widget/CarouselTextView;
    const v9, 0x2020061

    invoke-virtual {v8, v9}, Lcom/htc/fragment/widget/CarouselFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/fragment/widget/CarouselTextView;

    .line 2054
    .local v6, textView:Lcom/htc/fragment/widget/CarouselTextView;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/htc/fragment/widget/CarouselTextView;->enableForceSingleLine(Z)V

    .line 2055
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/htc/fragment/widget/CarouselTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2056
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/htc/fragment/widget/CarouselTextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 2057
    invoke-virtual {v3}, Lcom/htc/fragment/widget/CarouselTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/htc/fragment/widget/CarouselTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2058
    const/4 v9, 0x0

    invoke-virtual {v3}, Lcom/htc/fragment/widget/CarouselTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/htc/fragment/widget/CarouselTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2060
    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    check-cast v9, Lcom/htc/fragment/widget/TaskInfo;

    iget v9, v9, Lcom/htc/fragment/widget/TaskInfo;->isRemovable:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    const/4 v4, 0x1

    .line 2063
    .local v4, removeable:Z
    :goto_3
    if-nez v4, :cond_6

    .line 2064
    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    const-string v10, "common_subnav_tab_rearrange_unremoveable"

    const v11, 0x208019f

    invoke-static {v9, v10, v11}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/htc/fragment/widget/CarouselFrameLayout;->setBackgroundResource(I)V

    .line 2070
    :goto_4
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    iput-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowManager:Landroid/view/WindowManager;

    .line 2071
    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowManager:Landroid/view/WindowManager;

    iget-object v10, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v9, v8, v10}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2073
    iput-object v8, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    .line 2074
    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2075
    return-void

    .line 2011
    .end local v3           #oldView:Lcom/htc/fragment/widget/CarouselTextView;
    .end local v4           #removeable:Z
    .end local v6           #textView:Lcom/htc/fragment/widget/CarouselTextView;
    .end local v8           #windowView:Lcom/htc/fragment/widget/CarouselFrameLayout;
    :cond_2
    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v10, 0x0

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2012
    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v10, 0x0

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_0

    .line 2031
    :cond_3
    iget v9, p0, Lcom/htc/fragment/widget/CarouselHost;->contentWidth:I

    goto/16 :goto_1

    .line 2032
    :cond_4
    iget v9, p0, Lcom/htc/fragment/widget/CarouselHost;->contentHeight:I

    goto/16 :goto_2

    .line 2060
    .restart local v3       #oldView:Lcom/htc/fragment/widget/CarouselTextView;
    .restart local v6       #textView:Lcom/htc/fragment/widget/CarouselTextView;
    .restart local v8       #windowView:Lcom/htc/fragment/widget/CarouselFrameLayout;
    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 2067
    .restart local v4       #removeable:Z
    :cond_6
    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    const-string v10, "common_subnav_tab_rearrange_removeable"

    const v11, 0x208019d

    invoke-static {v9, v10, v11}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/htc/fragment/widget/CarouselFrameLayout;->setBackgroundResource(I)V

    goto :goto_4
.end method

.method private drop(FF)Z
    .locals 12
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2375
    iget v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionX:F

    iget v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mBitmapOffsetX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mSourceX:F

    .line 2376
    iget v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionY:F

    iget v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetY:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mBitmapOffsetY:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mSourceY:F

    .line 2377
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->invalidate()V

    .line 2379
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropCoordinates:[I

    .line 2380
    .local v7, coordinates:[I
    float-to-int v0, p1

    float-to-int v1, p2

    invoke-virtual {p0, v0, v1, v7}, Lcom/htc/fragment/widget/CarouselHost;->findDropTarget(II[I)Lcom/htc/fragment/widget/DropTarget;

    move-result-object v8

    .line 2383
    .local v8, dropTarget:Lcom/htc/fragment/widget/DropTarget;
    instance-of v0, v8, Lcom/htc/fragment/widget/BinGridView;

    if-eqz v0, :cond_1

    .line 2384
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    instance-of v0, v0, Lcom/htc/fragment/widget/BinGridView;

    if-eqz v0, :cond_0

    .line 2385
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost;->setDragBinGridViewToFalse()V

    .line 2386
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    instance-of v0, v0, Lcom/htc/fragment/widget/BinGridView;

    if-eqz v0, :cond_1

    .line 2387
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->realign()V

    .line 2393
    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastDropTarget:Lcom/htc/fragment/widget/DropTarget;

    if-eqz v0, :cond_2

    if-eqz v8, :cond_2

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastDropTarget:Lcom/htc/fragment/widget/DropTarget;

    if-eq v0, v8, :cond_2

    .line 2394
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastDropTarget:Lcom/htc/fragment/widget/DropTarget;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    aget v2, v7, v10

    aget v3, v7, v9

    iget v4, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v6}, Lcom/htc/fragment/widget/DropTarget;->onDragExit(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V

    .line 2397
    :cond_2
    iput-object v8, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropTarget:Lcom/htc/fragment/widget/DropTarget;

    .line 2398
    if-eqz v8, :cond_9

    .line 2399
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    aget v2, v7, v10

    aget v3, v7, v9

    iget v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v4, v0

    iget v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v5, v0

    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    move-object v0, v8

    invoke-interface/range {v0 .. v6}, Lcom/htc/fragment/widget/DropTarget;->onDragExit(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V

    .line 2400
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    aget v2, v7, v10

    aget v3, v7, v9

    iget v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v4, v0

    iget v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v5, v0

    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    move-object v0, v8

    invoke-interface/range {v0 .. v6}, Lcom/htc/fragment/widget/DropTarget;->acceptDrop(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2401
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    aget v2, v7, v10

    aget v3, v7, v9

    iget v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v4, v0

    iget v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v5, v0

    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    move-object v0, v8

    invoke-interface/range {v0 .. v6}, Lcom/htc/fragment/widget/DropTarget;->onDrop(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V

    .line 2402
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    move-object v0, v8

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v0, v9}, Lcom/htc/fragment/widget/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    .line 2404
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v0, :cond_3

    .line 2405
    instance-of v0, v8, Lcom/htc/fragment/widget/BinGridView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    instance-of v0, v0, Lcom/htc/fragment/widget/BinGridView;

    if-eqz v0, :cond_4

    .line 2406
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0, v11, v9}, Lcom/htc/fragment/widget/CarouselWidget;->setShrinkedPosition(IZ)V

    :cond_3
    :goto_0
    move v0, v9

    .line 2442
    .end local v8           #dropTarget:Lcom/htc/fragment/widget/DropTarget;
    :goto_1
    return v0

    .line 2407
    .restart local v8       #dropTarget:Lcom/htc/fragment/widget/DropTarget;
    :cond_4
    instance-of v0, v8, Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v0, :cond_5

    .line 2408
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0, v11}, Lcom/htc/fragment/widget/CarouselWidget;->setShrinkedPosition(I)V

    goto :goto_0

    .line 2410
    :cond_5
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->setLateShrinkedFlag()V

    goto :goto_0

    .line 2416
    :cond_6
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v0, :cond_7

    .line 2417
    instance-of v0, v8, Lcom/htc/fragment/widget/BinGridView;

    if-eqz v0, :cond_8

    .line 2418
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0, v11, v9}, Lcom/htc/fragment/widget/CarouselWidget;->setShrinkedPosition(IZ)V

    .line 2423
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    check-cast v8, Landroid/view/View;

    .end local v8           #dropTarget:Lcom/htc/fragment/widget/DropTarget;
    invoke-interface {v0, v8, v10}, Lcom/htc/fragment/widget/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    move v0, v9

    .line 2425
    goto :goto_1

    .line 2420
    .restart local v8       #dropTarget:Lcom/htc/fragment/widget/DropTarget;
    :cond_8
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0, v11}, Lcom/htc/fragment/widget/CarouselWidget;->setShrinkedPosition(I)V

    goto :goto_2

    .line 2430
    :cond_9
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v0, :cond_a

    .line 2431
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0, v11}, Lcom/htc/fragment/widget/CarouselWidget;->setShrinkedPosition(I)V

    .line 2434
    :cond_a
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    check-cast v8, Landroid/view/View;

    .end local v8           #dropTarget:Lcom/htc/fragment/widget/DropTarget;
    invoke-interface {v0, v8, v10}, Lcom/htc/fragment/widget/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    .line 2437
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost;->setDragBinGridViewToFalse()V

    .line 2438
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    instance-of v0, v0, Lcom/htc/fragment/widget/BinGridView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v0, :cond_b

    .line 2439
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->realign()V

    :cond_b
    move v0, v10

    .line 2442
    goto :goto_1
.end method

.method private endDrag()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2224
    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragging:Z

    if-eqz v1, :cond_2

    .line 2225
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragging:Z

    .line 2227
    const/4 v0, 0x0

    .line 2228
    .local v0, needShowTip:Z
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropTarget:Lcom/htc/fragment/widget/DropTarget;

    if-ne v1, v2, :cond_3

    .line 2230
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselWidget;->getCount()I

    move-result v1

    if-gt v1, v3, :cond_0

    .line 2231
    const/4 v0, 0x1

    .line 2237
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 2238
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 2239
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->createTipBubble()V

    .line 2240
    :cond_1
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    const v2, 0x20400c0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2241
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2242
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->showTipBubble()V

    .line 2245
    .end local v0           #needShowTip:Z
    :cond_2
    return-void

    .line 2232
    .restart local v0       #needShowTip:Z
    :cond_3
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    instance-of v1, v1, Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropTarget:Lcom/htc/fragment/widget/DropTarget;

    instance-of v1, v1, Lcom/htc/fragment/widget/BinGridView;

    if-eqz v1, :cond_0

    .line 2234
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselWidget;->getCount()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/htc/fragment/widget/TaskInfo;

    iget v1, v1, Lcom/htc/fragment/widget/TaskInfo;->isRemovable:I

    if-ne v1, v3, :cond_0

    .line 2235
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/htc/fragment/widget/DropTarget;
    .locals 17
    .parameter "container"
    .parameter "x"
    .parameter "y"
    .parameter "dropCoordinates"

    .prologue
    .line 2451
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/fragment/widget/CarouselHost;->mDragRect:Landroid/graphics/Rect;

    .line 2452
    .local v8, r:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 2453
    .local v5, count:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v12

    add-int v9, p2, v12

    .line 2454
    .local v9, scrolledX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v12

    add-int v10, p3, v12

    .line 2456
    .local v10, scrolledY:I
    add-int/lit8 v6, v5, -0x1

    .local v6, i:I
    :goto_0
    if-ltz v6, :cond_8

    .line 2457
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2458
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_7

    .line 2459
    invoke-virtual {v4, v8}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2462
    instance-of v12, v4, Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v12, :cond_4

    .line 2464
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    if-gez v12, :cond_0

    .line 2465
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x205006b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    .line 2467
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v12, :cond_3

    .line 2468
    iget v12, v8, Landroid/graphics/Rect;->left:I

    iget v13, v8, Landroid/graphics/Rect;->top:I

    iget v14, v8, Landroid/graphics/Rect;->right:I

    iget v15, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-virtual {v8, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 2481
    :cond_1
    :goto_1
    invoke-virtual {v8, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 2482
    const/4 v11, 0x0

    .line 2483
    .local v11, target:Lcom/htc/fragment/widget/DropTarget;
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v7

    .line 2484
    .local v7, id:I
    const v12, 0x1020011

    if-eq v7, v12, :cond_7

    .line 2485
    instance-of v12, v4, Landroid/view/ViewGroup;

    if-eqz v12, :cond_2

    .line 2486
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v12

    sub-int p2, v9, v12

    .line 2487
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v12

    sub-int p3, v10, v12

    move-object v12, v4

    .line 2488
    check-cast v12, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v12, v1, v2, v3}, Lcom/htc/fragment/widget/CarouselHost;->findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/htc/fragment/widget/DropTarget;

    move-result-object v11

    .line 2490
    :cond_2
    if-nez v11, :cond_6

    .line 2491
    instance-of v12, v4, Lcom/htc/fragment/widget/DropTarget;

    if-eqz v12, :cond_7

    .line 2492
    const/4 v12, 0x0

    aput p2, p4, v12

    .line 2493
    const/4 v12, 0x1

    aput p3, p4, v12

    .line 2495
    check-cast v4, Lcom/htc/fragment/widget/DropTarget;

    .line 2505
    .end local v4           #child:Landroid/view/View;
    .end local v7           #id:I
    .end local v11           #target:Lcom/htc/fragment/widget/DropTarget;
    :goto_2
    return-object v4

    .line 2470
    .restart local v4       #child:Landroid/view/View;
    :cond_3
    iget v12, v8, Landroid/graphics/Rect;->left:I

    iget v13, v8, Landroid/graphics/Rect;->top:I

    iget v14, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    add-int/2addr v14, v15

    iget v15, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 2472
    :cond_4
    instance-of v12, v4, Lcom/htc/fragment/widget/BinGridView;

    if-eqz v12, :cond_1

    .line 2474
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v12, :cond_5

    .line 2475
    iget v12, v8, Landroid/graphics/Rect;->left:I

    iget v13, v8, Landroid/graphics/Rect;->top:I

    iget v14, v8, Landroid/graphics/Rect;->right:I

    iget v15, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual {v8, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 2477
    :cond_5
    iget v12, v8, Landroid/graphics/Rect;->left:I

    iget v13, v8, Landroid/graphics/Rect;->top:I

    iget v14, v8, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v15

    sub-int/2addr v14, v15

    iget v15, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .restart local v7       #id:I
    .restart local v11       #target:Lcom/htc/fragment/widget/DropTarget;
    :cond_6
    move-object v4, v11

    .line 2498
    goto :goto_2

    .line 2456
    .end local v7           #id:I
    .end local v11           #target:Lcom/htc/fragment/widget/DropTarget;
    :cond_7
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_0

    .line 2505
    .end local v4           #child:Landroid/view/View;
    :cond_8
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private initCarouselHost()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 184
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->setFocusableInTouchMode(Z)V

    .line 185
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->setDescendantFocusability(I)V

    .line 187
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    .line 188
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    .line 189
    return-void
.end method

.method private invokeOnTabChangeListener()V
    .locals 2

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mOnTabChangeListener:Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;

    if-eqz v0, :cond_0

    .line 1180
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mOnTabChangeListener:Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 1182
    :cond_0
    return-void
.end method

.method private moveIndicator(FF)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2079
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 2086
    :goto_0
    return-void

    .line 2080
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCorOffsetX:F

    add-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2081
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCorOffsetY:F

    add-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2083
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2084
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2085
    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private printViewTree(Landroid/view/ViewGroup;I)V
    .locals 5
    .parameter "container"
    .parameter "level"

    .prologue
    .line 438
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 440
    .local v1, count:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CarouselTraceView] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    .line 441
    add-int/lit8 v2, v1, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 442
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 443
    .local v0, child:Landroid/view/View;
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 444
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #child:Landroid/view/View;
    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, v0, v3}, Lcom/htc/fragment/widget/CarouselHost;->printViewTree(Landroid/view/ViewGroup;I)V

    .line 441
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 446
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CarouselTraceView] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 449
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private setDragBinGridViewToFalse()V
    .locals 4

    .prologue
    .line 2890
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v2, :cond_0

    .line 2892
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v0

    .line 2893
    .local v0, orgWidthHeight:I
    :goto_0
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/fragment/widget/CarouselWidget;->setDragBinGridView(Z)V

    .line 2895
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidthWithNoAnimation()I

    move-result v1

    .line 2899
    .local v1, targetWidthHeight:I
    :goto_1
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2, v0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->startWidthHeightAnimation(II)V

    .line 2901
    .end local v0           #orgWidthHeight:I
    .end local v1           #targetWidthHeight:I
    :cond_0
    return-void

    .line 2892
    :cond_1
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v0

    goto :goto_0

    .line 2895
    .restart local v0       #orgWidthHeight:I
    :cond_2
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeightWithNoAnimation()I

    move-result v1

    goto :goto_1
.end method

.method private setDragBinGridViewToTrue()V
    .locals 4

    .prologue
    .line 2878
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v2, :cond_0

    .line 2880
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v0

    .line 2881
    .local v0, orgWidthHeight:I
    :goto_0
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/fragment/widget/CarouselWidget;->setDragBinGridView(Z)V

    .line 2883
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v1

    .line 2884
    .local v1, targetWidthHeight:I
    :goto_1
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2, v0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->startWidthHeightAnimation(II)V

    .line 2886
    .end local v0           #orgWidthHeight:I
    .end local v1           #targetWidthHeight:I
    :cond_0
    return-void

    .line 2880
    :cond_1
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v0

    goto :goto_0

    .line 2883
    .restart local v0       #orgWidthHeight:I
    :cond_2
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v1

    goto :goto_1
.end method

.method private setOrientation()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 214
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->display:Landroid/view/Display;

    if-nez v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->display:Landroid/view/Display;

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->display:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 219
    .local v0, orientation:I
    sget-boolean v1, Lcom/htc/fragment/widget/CarouselFragment;->disableLandscape:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    .line 222
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x2080038

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->shadowOverlay:Landroid/graphics/drawable/Drawable;

    .line 223
    iput-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->resetBound:Z

    .line 224
    return-void

    .line 219
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addPanelView(Landroid/view/View;)V
    .locals 2
    .parameter "panelView"

    .prologue
    .line 2914
    if-nez p1, :cond_0

    .line 2933
    :goto_0
    return-void

    .line 2919
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->viewSwitcher:Lcom/htc/fragment/widget/CarouselViewSwitcher;

    if-nez v0, :cond_1

    .line 2922
    const-string v0, "Carousel"

    const-string v1, "create viewSwitcher"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2924
    new-instance v0, Lcom/htc/fragment/widget/CarouselViewSwitcher;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/fragment/widget/CarouselViewSwitcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->viewSwitcher:Lcom/htc/fragment/widget/CarouselViewSwitcher;

    .line 2926
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->viewSwitcher:Lcom/htc/fragment/widget/CarouselViewSwitcher;

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->addView(Landroid/view/View;)V

    .line 2927
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->removeView(Landroid/view/View;)V

    .line 2928
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->viewSwitcher:Lcom/htc/fragment/widget/CarouselViewSwitcher;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->addPositiveView(Landroid/view/View;)V

    .line 2932
    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->viewSwitcher:Lcom/htc/fragment/widget/CarouselViewSwitcher;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->addNegativeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public addTab(Landroid/content/Context;Lcom/htc/fragment/widget/CarouselTabSpec;)V
    .locals 15
    .parameter "context"
    .parameter "spec"

    .prologue
    .line 564
    move-object/from16 v0, p2

    iget-boolean v1, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->isInCarouselWidget:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 565
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->tag:Ljava/lang/String;

    move-object/from16 v0, p2

    iget v4, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->str_title_id:I

    move-object/from16 v0, p2

    iget v5, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->ic_rest_id:I

    move-object/from16 v0, p2

    iget v6, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->ic_on_id:I

    move-object/from16 v0, p2

    iget v7, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->ic_overlay_id:I

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->intent:Landroid/content/Intent;

    move-object/from16 v0, p2

    iget-boolean v9, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->isRemovable:Z

    move-object v1, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v9}, Lcom/htc/fragment/widget/CarouselHost;->addTabUtil(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;Z)V

    .line 591
    :goto_0
    return-void

    .line 567
    :cond_0
    move-object/from16 v0, p2

    iget v1, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->str_title_id:I

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v14

    .line 568
    .local v14, titleIcon:Landroid/content/Intent$ShortcutIconResource;
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->tag:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselHost;->newTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v1

    move-object/from16 v0, p2

    iget v2, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->ic_rest_id:I

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    move-object/from16 v0, p2

    iget v3, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->ic_on_id:I

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    move-object/from16 v0, p2

    iget v4, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->ic_overlay_id:I

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v4

    invoke-virtual {v1, v14, v2, v3, v4}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->setIndicator(Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v1

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/htc/fragment/widget/CarouselTabSpec;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v14}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->setContent(Landroid/content/Intent;Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v10

    .line 574
    .local v10, tabSpec:Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    new-instance v11, Lcom/htc/fragment/widget/TaskInfo;

    invoke-direct {v11}, Lcom/htc/fragment/widget/TaskInfo;-><init>()V

    .line 575
    .local v11, task:Lcom/htc/fragment/widget/TaskInfo;
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mIndicatorStrategy:Lcom/htc/fragment/widget/CarouselHost$IndicatorStrategy;
    invoke-static {v10}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$100(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$IndicatorStrategy;

    move-result-object v12

    check-cast v12, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;

    .line 577
    .local v12, temp:Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselFragment;->getGId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/htc/fragment/widget/TaskInfo;->gId:Ljava/lang/String;

    .line 578
    invoke-virtual {v10}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/htc/fragment/widget/TaskInfo;->taskTag:Ljava/lang/String;

    .line 579
    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mLabelResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v12}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$200(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v1

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v1, v11, Lcom/htc/fragment/widget/TaskInfo;->taskName:Ljava/lang/String;

    .line 580
    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mIconReource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v12}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$300(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v1

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iput-object v1, v11, Lcom/htc/fragment/widget/TaskInfo;->resPackage:Ljava/lang/String;

    .line 581
    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mIconReource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v12}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$300(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v1

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v1, v11, Lcom/htc/fragment/widget/TaskInfo;->icon:Ljava/lang/String;

    .line 582
    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mSelectedIconResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v12}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$400(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v1

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v1, v11, Lcom/htc/fragment/widget/TaskInfo;->selectedIcon:Ljava/lang/String;

    .line 583
    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mOverylayResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v12}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$500(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v1

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v1, v11, Lcom/htc/fragment/widget/TaskInfo;->overlay:Ljava/lang/String;

    .line 584
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {v10}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v13

    check-cast v13, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;

    .line 585
    .local v13, temp2:Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;
    #getter for: Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;
    invoke-static {v13}, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->access$700(Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/htc/fragment/widget/TaskInfo;->intentUri:Ljava/lang/String;

    .line 586
    const/4 v1, 0x0

    iput v1, v11, Lcom/htc/fragment/widget/TaskInfo;->isHost:I

    .line 587
    const/4 v1, 0x1

    iput v1, v11, Lcom/htc/fragment/widget/TaskInfo;->isRemovable:I

    .line 588
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getHostCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v11, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    .line 589
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v1, v11}, Lcom/htc/fragment/widget/CarouselFragment;->addAndSyncTask(Lcom/htc/fragment/widget/TaskInfo;)V

    goto/16 :goto_0
.end method

.method public addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;)V
    .locals 9
    .parameter "tag"
    .parameter "context"
    .parameter "title"
    .parameter "rest"
    .parameter "on"
    .parameter "overlay"
    .parameter "intent"

    .prologue
    .line 737
    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/htc/fragment/widget/CarouselHost;->addTabUtil(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;Z)V

    .line 738
    return-void
.end method

.method public addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;I)V
    .locals 17
    .parameter "tag"
    .parameter "context"
    .parameter "title"
    .parameter "rest"
    .parameter "on"
    .parameter "overlay"
    .parameter "intent"
    .parameter "state"

    .prologue
    .line 613
    const/4 v11, 0x1

    .local v11, isInCarouselWidget:Z
    const/4 v10, 0x1

    .line 614
    .local v10, isRemovable:Z
    packed-switch p8, :pswitch_data_0

    .line 628
    const/4 v11, 0x1

    .line 629
    const/4 v10, 0x1

    .line 633
    :goto_0
    const/4 v2, 0x1

    if-ne v11, v2, :cond_0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    .line 634
    invoke-direct/range {v2 .. v10}, Lcom/htc/fragment/widget/CarouselHost;->addTabUtil(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;Z)V

    .line 660
    :goto_1
    return-void

    .line 616
    :pswitch_0
    const/4 v11, 0x1

    .line 617
    const/4 v10, 0x1

    .line 618
    goto :goto_0

    .line 620
    :pswitch_1
    const/4 v11, 0x0

    .line 621
    const/4 v10, 0x1

    .line 622
    goto :goto_0

    .line 624
    :pswitch_2
    const/4 v11, 0x1

    .line 625
    const/4 v10, 0x0

    .line 626
    goto :goto_0

    .line 636
    :cond_0
    invoke-static/range {p2 .. p3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v16

    .line 637
    .local v16, titleIcon:Landroid/content/Intent$ShortcutIconResource;
    invoke-virtual/range {p0 .. p1}, Lcom/htc/fragment/widget/CarouselHost;->newTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v2

    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-static {v0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-static {v0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v4

    move-object/from16 v0, p2

    move/from16 v1, p6

    invoke-static {v0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->setIndicator(Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v2

    move-object/from16 v0, p7

    move-object/from16 v1, v16

    invoke-virtual {v2, v0, v1}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->setContent(Landroid/content/Intent;Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v12

    .line 643
    .local v12, tabSpec:Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    new-instance v13, Lcom/htc/fragment/widget/TaskInfo;

    invoke-direct {v13}, Lcom/htc/fragment/widget/TaskInfo;-><init>()V

    .line 644
    .local v13, task:Lcom/htc/fragment/widget/TaskInfo;
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mIndicatorStrategy:Lcom/htc/fragment/widget/CarouselHost$IndicatorStrategy;
    invoke-static {v12}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$100(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$IndicatorStrategy;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;

    .line 646
    .local v14, temp:Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselFragment;->getGId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/htc/fragment/widget/TaskInfo;->gId:Ljava/lang/String;

    .line 647
    invoke-virtual {v12}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/htc/fragment/widget/TaskInfo;->taskTag:Ljava/lang/String;

    .line 648
    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mLabelResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v14}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$200(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    iget-object v2, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v2, v13, Lcom/htc/fragment/widget/TaskInfo;->taskName:Ljava/lang/String;

    .line 649
    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mIconReource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v14}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$300(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    iget-object v2, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iput-object v2, v13, Lcom/htc/fragment/widget/TaskInfo;->resPackage:Ljava/lang/String;

    .line 650
    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mIconReource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v14}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$300(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    iget-object v2, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v2, v13, Lcom/htc/fragment/widget/TaskInfo;->icon:Ljava/lang/String;

    .line 651
    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mSelectedIconResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v14}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$400(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    iget-object v2, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v2, v13, Lcom/htc/fragment/widget/TaskInfo;->selectedIcon:Ljava/lang/String;

    .line 652
    #getter for: Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->mOverylayResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v14}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$500(Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    iget-object v2, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v2, v13, Lcom/htc/fragment/widget/TaskInfo;->overlay:Ljava/lang/String;

    .line 653
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {v12}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v15

    check-cast v15, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;

    .line 654
    .local v15, temp2:Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;
    #getter for: Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;
    invoke-static {v15}, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->access$700(Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/htc/fragment/widget/TaskInfo;->intentUri:Ljava/lang/String;

    .line 655
    const/4 v2, 0x0

    iput v2, v13, Lcom/htc/fragment/widget/TaskInfo;->isHost:I

    .line 656
    const/4 v2, 0x1

    iput v2, v13, Lcom/htc/fragment/widget/TaskInfo;->isRemovable:I

    .line 657
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselHost;->getHostCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, v13, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    .line 658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v2, v13}, Lcom/htc/fragment/widget/CarouselFragment;->addAndSyncTask(Lcom/htc/fragment/widget/TaskInfo;)V

    goto/16 :goto_1

    .line 614
    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method cancelDrag()V
    .locals 10

    .prologue
    const/high16 v9, -0x3b86

    const/4 v8, 0x0

    .line 2206
    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mShouldDrop:Z

    if-eqz v1, :cond_1

    .line 2207
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropCoordinates:[I

    .line 2208
    .local v7, coordinates:[I
    iget v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionY:F

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2, v7}, Lcom/htc/fragment/widget/CarouselHost;->findDropTarget(II[I)Lcom/htc/fragment/widget/DropTarget;

    move-result-object v0

    .line 2210
    .local v0, dropTarget:Lcom/htc/fragment/widget/DropTarget;
    if-eqz v0, :cond_0

    .line 2211
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    aget v2, v7, v8

    const/4 v3, 0x1

    aget v3, v7, v3

    iget v4, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v6}, Lcom/htc/fragment/widget/DropTarget;->onDragExit(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V

    .line 2214
    :cond_0
    invoke-direct {p0, v9, v9}, Lcom/htc/fragment/widget/CarouselHost;->drop(FF)Z

    .line 2215
    iput-boolean v8, p0, Lcom/htc/fragment/widget/CarouselHost;->mShouldDrop:Z

    .line 2216
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropAnimationRunnable:Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;

    invoke-virtual {v1, v8}, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->stop(Z)V

    .line 2220
    .end local v0           #dropTarget:Lcom/htc/fragment/widget/DropTarget;
    .end local v7           #coordinates:[I
    :goto_0
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost;->endDrag()V

    .line 2221
    return-void

    .line 2218
    :cond_1
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropAnimationRunnable:Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;

    invoke-virtual {v1, v8}, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->stop(Z)V

    goto :goto_0
.end method

.method closeTabByTag(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 952
    if-eqz p1, :cond_0

    .line 954
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselHost;->getTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v0

    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;->tabClosed()V

    .line 955
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    .line 957
    :cond_0
    return-void
.end method

.method createTipBubble()V
    .locals 4

    .prologue
    .line 1923
    const-string v0, "Carousel"

    const-string v1, "createTipBubble()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1928
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    .line 1929
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    const v1, 0x20401d3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1930
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    const v2, 0x2030021

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1931
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/htc/fragment/widget/CarouselSkinUtil;->setDarkShadow(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1932
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1934
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 351
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 353
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragging:Z

    if-eqz v2, :cond_0

    .line 354
    iget v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionX:F

    iget v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetX:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mBitmapOffsetX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionY:F

    iget v4, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetY:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/htc/fragment/widget/CarouselHost;->mBitmapOffsetY:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-direct {p0, v2, v3}, Lcom/htc/fragment/widget/CarouselHost;->moveIndicator(FF)V

    .line 357
    :cond_0
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->shadowOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselWidget;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3

    .line 359
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->resetBound:Z

    if-eqz v2, :cond_2

    .line 361
    iput-boolean v5, p0, Lcom/htc/fragment/widget/CarouselHost;->resetBound:Z

    .line 363
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getMeasuredWidth()I

    move-result v1

    .line 364
    .local v1, width:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getMeasuredHeight()I

    move-result v0

    .line 366
    .local v0, height:I
    iget v2, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    if-gez v2, :cond_1

    .line 367
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x205006b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    .line 369
    :cond_1
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_4

    .line 370
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->shadowOverlay:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    sub-int v3, v0, v3

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselHost;->shadowOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    sub-int v4, v0, v4

    invoke-virtual {v2, v5, v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 375
    .end local v0           #height:I
    .end local v1           #width:I
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->shadowOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 377
    :cond_3
    return-void

    .line 372
    .restart local v0       #height:I
    .restart local v1       #width:I
    :cond_4
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->shadowOverlay:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    sub-int v3, v1, v3

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselHost;->shadowOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    sub-int v4, v1, v4

    invoke-virtual {v2, v3, v5, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 2767
    const/4 v2, 0x0

    .line 2769
    .local v2, handle:Z
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getCarouselWidget()Lcom/htc/fragment/widget/CarouselWidget;

    move-result-object v4

    .line 2770
    .local v4, widget:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 2772
    .local v0, content:Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .line 2779
    .local v1, contentview:Landroid/view/View;
    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v5, v6

    .line 2873
    :goto_0
    return v5

    :cond_1
    move-object v5, v4

    .line 2783
    check-cast v5, Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v5}, Lcom/htc/fragment/widget/CarouselWidget;->isDragging()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    .line 2784
    goto :goto_0

    :cond_2
    move-object v5, v4

    .line 2787
    check-cast v5, Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v5}, Lcom/htc/fragment/widget/CarouselWidget;->getStateWidget()I

    move-result v5

    const/16 v7, 0x3ea

    if-ne v5, v7, :cond_5

    .line 2789
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/4 v7, 0x4

    if-ne v5, v7, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v6, :cond_3

    .line 2791
    iget-object v5, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v5}, Lcom/htc/fragment/widget/CarouselFragment;->exitEditMode()V

    move v5, v6

    .line 2792
    goto :goto_0

    .line 2795
    :cond_3
    invoke-virtual {v4}, Lcom/htc/fragment/widget/CarouselWidget;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2796
    invoke-virtual {v4}, Lcom/htc/fragment/widget/CarouselWidget;->requestFocus()Z

    :cond_4
    move v5, v6

    .line 2798
    goto :goto_0

    .line 2802
    :cond_5
    if-nez v0, :cond_6

    move v5, v6

    .line 2803
    goto :goto_0

    .line 2806
    :cond_6
    const/4 v3, 0x0

    .local v3, loop:I
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_7

    .line 2808
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2810
    if-nez v1, :cond_a

    .line 2820
    :cond_7
    if-nez v1, :cond_8

    .line 2821
    move-object v1, v0

    .line 2823
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 2825
    if-nez v2, :cond_9

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_9

    .line 2827
    iget-boolean v5, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v5, :cond_d

    .line 2829
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_9
    :goto_2
    move v5, v2

    .line 2873
    goto :goto_0

    .line 2813
    :cond_a
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_b

    .line 2814
    instance-of v5, v1, Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v5, :cond_7

    .line 2806
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2832
    :pswitch_0
    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_c

    .line 2833
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 2834
    :cond_c
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_2

    .line 2838
    :pswitch_1
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->isRootNamespace()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v5

    const/16 v7, 0x82

    invoke-virtual {v5, v7}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_9

    .line 2843
    invoke-virtual {v4}, Lcom/htc/fragment/widget/CarouselWidget;->requestFocus()Z

    .line 2844
    invoke-virtual {v4, p1}, Lcom/htc/fragment/widget/CarouselWidget;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move v5, v6

    .line 2845
    goto/16 :goto_0

    .line 2851
    :cond_d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    goto :goto_2

    .line 2854
    :pswitch_2
    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_e

    .line 2855
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 2856
    :cond_e
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_2

    .line 2860
    :pswitch_3
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->isRootNamespace()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v5

    const/16 v7, 0x42

    invoke-virtual {v5, v7}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_9

    .line 2865
    invoke-virtual {v4}, Lcom/htc/fragment/widget/CarouselWidget;->requestFocus()Z

    .line 2866
    invoke-virtual {v4, p1}, Lcom/htc/fragment/widget/CarouselWidget;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move v5, v6

    .line 2867
    goto/16 :goto_0

    .line 2829
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2851
    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method doAnimationForDragIcon(FF)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2510
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropAnimationRunnable:Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;

    iget v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mSourceX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mSourceY:F

    float-to-int v2, v2

    iget v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mCorOffsetX:F

    sub-float v3, p1, v3

    float-to-int v3, v3

    iget v4, p0, Lcom/htc/fragment/widget/CarouselHost;->mCorOffsetY:F

    sub-float v4, p2, v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->startUsingPositions(IIII)V

    .line 2511
    return-void
.end method

.method doCurrentTabPause()V
    .locals 1

    .prologue
    .line 1889
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->getTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v0

    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;->tabOnPaused()V

    .line 1890
    return-void
.end method

.method doCurrntTabResume()V
    .locals 1

    .prologue
    .line 1894
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->getTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v0

    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;->tabOnResume()V

    .line 1895
    return-void
.end method

.method enableCustomView(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v1, 0x0

    .line 392
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost;->setOrientation()V

    .line 395
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselHost;->enableCustomView:Z

    if-ne p1, v0, :cond_0

    .line 434
    :goto_0
    return-void

    .line 398
    :cond_0
    iput-boolean p1, p0, Lcom/htc/fragment/widget/CarouselHost;->enableCustomView:Z

    .line 400
    iget v0, p0, Lcom/htc/fragment/widget/CarouselHost;->customSpace:I

    if-gez v0, :cond_1

    .line 401
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x20e0005

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/CarouselHost;->customSpace:I

    .line 403
    :cond_1
    if-eqz p1, :cond_7

    .line 405
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_3

    .line 406
    iget v0, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    if-gez v0, :cond_2

    .line 407
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x205006b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    .line 409
    :cond_2
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    .line 410
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v2, v1, v1, v0, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 413
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    const v2, 0x202006a

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 414
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    iget v4, p0, Lcom/htc/fragment/widget/CarouselHost;->customSpace:I

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v1}, Lcom/htc/fragment/widget/CarouselHost;->addView(Landroid/view/View;I)V

    .line 419
    :cond_3
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 426
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    if-eqz v0, :cond_5

    .line 427
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    if-eqz p1, :cond_8

    iget v0, p0, Lcom/htc/fragment/widget/CarouselHost;->customSpace:I

    :goto_3
    invoke-virtual {v2, v1, v0, v1, v1}, Lcom/htc/fragment/widget/CarouselContentGallery;->setPadding(IIII)V

    .line 433
    :cond_5
    const-string v0, "Carousel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableCustomView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 410
    :cond_6
    iget v0, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    goto :goto_1

    .line 421
    :cond_7
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    .line 422
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    :cond_8
    move v0, v1

    .line 427
    goto :goto_3
.end method

.method enableFullScreen(Z)V
    .locals 1
    .parameter "enableFull"

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselHost;->isFullScreen:Z

    if-ne p1, v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 235
    :cond_0
    iput-boolean p1, p0, Lcom/htc/fragment/widget/CarouselHost;->isFullScreen:Z

    .line 236
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->requestLayout()V

    .line 237
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->invalidate()V

    goto :goto_0
.end method

.method findDropTarget(II[I)Lcom/htc/fragment/widget/DropTarget;
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "dropCoordinates"

    .prologue
    .line 2447
    invoke-direct {p0, p0, p1, p2, p3}, Lcom/htc/fragment/widget/CarouselHost;->findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/htc/fragment/widget/DropTarget;

    move-result-object v0

    return-object v0
.end method

.method getBackUpCurrentTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mBackupCurrentTag:Ljava/lang/String;

    return-object v0
.end method

.method public getCarouselWidget()Lcom/htc/fragment/widget/CarouselWidget;
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    return-object v0
.end method

.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->getPositionForTag(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCurrentTabFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v0}, Lcom/htc/fragment/app/LocalFragmentManager;->getCurrentFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 871
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentTabTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTabView()Landroid/view/View;
    .locals 2

    .prologue
    .line 856
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 857
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselHost;->getPositionForTag(Ljava/lang/String;)I

    move-result v0

    .line 858
    .local v0, index:I
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v1, v0}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 860
    .end local v0           #index:I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method getDropAnimationRunnable()Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;
    .locals 1

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropAnimationRunnable:Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;

    return-object v0
.end method

.method getHostCount()I
    .locals 2

    .prologue
    .line 2662
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinAdapter;

    .line 2663
    .local v0, adapter:Lcom/htc/fragment/widget/BinAdapter;
    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinAdapter;->getCount()I

    move-result v1

    return v1
.end method

.method getIndexByTag(Ljava/lang/String;)I
    .locals 4
    .parameter "tag"

    .prologue
    const/4 v2, -0x1

    .line 1900
    if-nez p1, :cond_1

    move v0, v2

    .line 1908
    :cond_0
    :goto_0
    return v0

    .line 1901
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getHostCount()I

    move-result v1

    .line 1902
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1903
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->getTabSpec(I)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1902
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 1908
    goto :goto_0
.end method

.method getPositionForTag(Ljava/lang/String;)I
    .locals 7
    .parameter "tag"

    .prologue
    const/4 v5, -0x1

    .line 2668
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    move v2, v5

    .line 2691
    :cond_1
    :goto_0
    return v2

    .line 2671
    :cond_2
    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v6}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinAdapter;

    .line 2672
    .local v0, adapter:Lcom/htc/fragment/widget/BinAdapter;
    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 2673
    .local v1, c:Landroid/database/Cursor;
    const/4 v2, -0x1

    .line 2674
    .local v2, index:I
    if-eqz v1, :cond_4

    .line 2675
    const-string v6, "task_tag"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 2677
    .local v4, taskTagIndex:I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2679
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_5

    .end local v4           #taskTagIndex:I
    :cond_4
    :goto_1
    move v2, v5

    .line 2691
    goto :goto_0

    .line 2681
    .restart local v4       #taskTagIndex:I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 2683
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2684
    .local v3, taskTag:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabPrefix:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2685
    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabPrefix:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 2687
    :cond_6
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2689
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1
.end method

.method public getTabContentView()Landroid/widget/FrameLayout;
    .locals 3

    .prologue
    .line 932
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fragment/widget/CarouselFragment;->getTabContentViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselContentGallery;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method getTabSpec(I)Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    .locals 6
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 2631
    if-gez p1, :cond_1

    .line 2649
    :cond_0
    :goto_0
    return-object v4

    .line 2634
    :cond_1
    iget-object v5, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v5}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinAdapter;

    .line 2635
    .local v0, adapter:Lcom/htc/fragment/widget/BinAdapter;
    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 2636
    .local v1, c:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 2637
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2638
    const-string v4, "task_tag"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 2640
    .local v3, taskTagIndex:I
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2641
    .local v2, taskTag:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabPrefix:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2642
    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabPrefix:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2644
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2646
    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v4}, Lcom/htc/fragment/widget/CarouselFragment;->getModel()Lcom/htc/fragment/widget/CarouselModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/fragment/widget/CarouselModel;->getTabSpecTable()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    goto :goto_0
.end method

.method getTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    .locals 1
    .parameter "taskTag"

    .prologue
    .line 2655
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2656
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 2657
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->getModel()Lcom/htc/fragment/widget/CarouselModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselModel;->getTabSpecTable()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    return-object v0
.end method

.method isBusy()Z
    .locals 1

    .prologue
    .line 3034
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragging:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDropAnimationRunnable:Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->isStillRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method newTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    .locals 2
    .parameter "tag"

    .prologue
    .line 197
    new-instance v0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;-><init>(Lcom/htc/fragment/widget/CarouselHost;Ljava/lang/String;Lcom/htc/fragment/widget/CarouselHost$1;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 497
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 498
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 499
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 502
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselHost;->attached:Z

    .line 503
    invoke-static {}, Lcom/htc/fragment/widget/CarouselUtil;->isLiteDevice()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 504
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabBeforeAttached:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 505
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabBeforeAttached:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 506
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabBeforeAttached:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 510
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabBeforeAttached:Ljava/lang/Object;

    .line 513
    :cond_2
    return-void

    .line 507
    :cond_3
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabBeforeAttached:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 508
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabBeforeAttached:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabUtil(I)V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 247
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 249
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost;->setOrientation()V

    .line 250
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->cancelDrag()V

    .line 252
    iget v2, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    if-gez v2, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x205006b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    .line 256
    :cond_0
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->enableCustomView:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    .line 257
    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    invoke-virtual {v4, v3, v3, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 260
    :cond_1
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 262
    const v2, 0x2020063

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 264
    .local v1, slidingDrawer:Landroid/widget/RelativeLayout;
    if-eqz v1, :cond_2

    .line 265
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_5

    move v2, v3

    :goto_1
    iget-boolean v4, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    :goto_2
    invoke-virtual {v1, v3, v3, v2, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 267
    :cond_2
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 269
    .local v0, lparams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_7

    move v2, v3

    :goto_3
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 270
    const/16 v4, 0xe

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_8

    move v2, v5

    :goto_4
    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 271
    const/16 v4, 0xc

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_9

    move v2, v5

    :goto_5
    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 273
    const/16 v4, 0xf

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_a

    move v2, v3

    :goto_6
    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 274
    const/16 v2, 0xb

    iget-boolean v4, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v4, :cond_b

    :goto_7
    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 276
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2080158

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    .end local v0           #lparams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #slidingDrawer:Landroid/widget/RelativeLayout;
    :cond_3
    return-void

    .line 257
    :cond_4
    iget v2, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    goto :goto_0

    .line 265
    .restart local v1       #slidingDrawer:Landroid/widget/RelativeLayout;
    :cond_5
    iget v2, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    .line 269
    .restart local v0       #lparams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    iget v2, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    mul-int/lit8 v2, v2, 0x2

    goto :goto_3

    :cond_8
    move v2, v3

    .line 270
    goto :goto_4

    :cond_9
    move v2, v3

    .line 271
    goto :goto_5

    :cond_a
    move v2, v5

    .line 273
    goto :goto_6

    :cond_b
    move v3, v5

    .line 274
    goto :goto_7
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 521
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselHost;->attached:Z

    .line 522
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 523
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 524
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 525
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 528
    :cond_0
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselFragment;->setDragDropAnimationInitState()V

    .line 536
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    .line 537
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    .line 538
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 2253
    iget-boolean v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mShouldThrowEvent:Z

    if-eqz v3, :cond_0

    .line 2254
    const/4 v3, 0x1

    .line 2283
    :goto_0
    return v3

    .line 2256
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2258
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 2259
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 2260
    .local v2, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    sub-float/2addr v3, v1

    iput v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mCorOffsetX:F

    .line 2261
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sub-float/2addr v3, v2

    iput v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mCorOffsetY:F

    .line 2263
    packed-switch v0, :pswitch_data_0

    .line 2283
    :goto_1
    :pswitch_0
    iget-boolean v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragging:Z

    goto :goto_0

    .line 2269
    :pswitch_1
    iput v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionX:F

    .line 2270
    iput v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionY:F

    .line 2271
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastDropTarget:Lcom/htc/fragment/widget/DropTarget;

    goto :goto_1

    .line 2276
    :pswitch_2
    iget-boolean v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mShouldDrop:Z

    if-eqz v3, :cond_1

    invoke-direct {p0, v1, v2}, Lcom/htc/fragment/widget/CarouselHost;->drop(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2277
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mShouldDrop:Z

    .line 2279
    :cond_1
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost;->endDrag()V

    goto :goto_1

    .line 2263
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v6, 0x0

    .line 288
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 293
    invoke-super {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    .line 294
    .local v4, screenwidth:I
    invoke-super {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    .line 297
    .local v3, screenheight:I
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v7}, Lcom/htc/fragment/widget/CarouselWidget;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_2

    const/4 v5, 0x1

    .line 299
    .local v5, visibilityGone:Z
    :goto_0
    iget v7, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    if-gez v7, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x205006b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    .line 302
    :cond_0
    iget-boolean v7, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v7, :cond_4

    .line 304
    iget v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mPaddingLeft:I

    sub-int v7, v4, v7

    iget v8, p0, Lcom/htc/fragment/widget/CarouselHost;->mPaddingRight:I

    sub-int v1, v7, v8

    .line 305
    .local v1, localWidth:I
    iget v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mPaddingTop:I

    sub-int v7, v3, v7

    iget v8, p0, Lcom/htc/fragment/widget/CarouselHost;->mPaddingBottom:I

    sub-int/2addr v7, v8

    iget-boolean v8, p0, Lcom/htc/fragment/widget/CarouselHost;->isFullScreen:Z

    if-eqz v8, :cond_3

    :cond_1
    :goto_1
    sub-int v0, v7, v6

    .line 313
    .local v0, localHeight:I
    :goto_2
    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v6}, Lcom/htc/fragment/widget/CarouselContentGallery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-nez v6, :cond_7

    .line 314
    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Lcom/htc/fragment/widget/CarouselContentGallery;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    :goto_3
    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {p0, v6, v1, v0}, Lcom/htc/fragment/widget/CarouselHost;->measureChild(Landroid/view/View;II)V

    .line 331
    return-void

    .end local v0           #localHeight:I
    .end local v1           #localWidth:I
    .end local v5           #visibilityGone:Z
    :cond_2
    move v5, v6

    .line 297
    goto :goto_0

    .line 305
    .restart local v1       #localWidth:I
    .restart local v5       #visibilityGone:Z
    :cond_3
    if-nez v5, :cond_1

    iget v6, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    goto :goto_1

    .line 309
    .end local v1           #localWidth:I
    :cond_4
    iget v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mPaddingLeft:I

    sub-int v7, v4, v7

    iget v8, p0, Lcom/htc/fragment/widget/CarouselHost;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget-boolean v8, p0, Lcom/htc/fragment/widget/CarouselHost;->isFullScreen:Z

    if-eqz v8, :cond_6

    :cond_5
    :goto_4
    sub-int v1, v7, v6

    .line 310
    .restart local v1       #localWidth:I
    iget v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mPaddingTop:I

    sub-int v6, v3, v6

    iget v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mPaddingBottom:I

    sub-int v0, v6, v7

    .restart local v0       #localHeight:I
    goto :goto_2

    .line 309
    .end local v0           #localHeight:I
    .end local v1           #localWidth:I
    :cond_6
    if-nez v5, :cond_5

    iget v6, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    goto :goto_4

    .line 319
    .restart local v0       #localHeight:I
    .restart local v1       #localWidth:I
    :cond_7
    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v6}, Lcom/htc/fragment/widget/CarouselContentGallery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 320
    .local v2, lparams:Landroid/view/ViewGroup$LayoutParams;
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 321
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 323
    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v6, v2}, Lcom/htc/fragment/widget/CarouselContentGallery;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 340
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselHost;->resetBound:Z

    .line 342
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24
    .parameter "ev"

    .prologue
    .line 2292
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mShouldThrowEvent:Z

    if-eqz v4, :cond_0

    .line 2293
    const/4 v4, 0x1

    .line 2371
    :goto_0
    return v4

    .line 2296
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mDragging:Z

    if-nez v4, :cond_1

    .line 2297
    const/4 v4, 0x0

    goto :goto_0

    .line 2300
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    .line 2301
    .local v11, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    .line 2302
    .local v22, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    .line 2304
    .local v23, y:F
    packed-switch v11, :pswitch_data_0

    .line 2371
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 2307
    :pswitch_0
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionX:F

    .line 2308
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionY:F

    goto :goto_1

    .line 2311
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetX:F

    move/from16 v19, v0

    .line 2312
    .local v19, touchX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetY:F

    move/from16 v20, v0

    .line 2314
    .local v20, touchY:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/fragment/widget/CarouselHost;->mBitmapOffsetX:I

    .line 2315
    .local v15, offsetX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/CarouselHost;->mBitmapOffsetY:I

    move/from16 v16, v0

    .line 2317
    .local v16, offsetY:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionX:F

    sub-float v4, v4, v19

    int-to-float v5, v15

    sub-float/2addr v4, v5

    float-to-int v14, v4

    .line 2318
    .local v14, left:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionY:F

    sub-float v4, v4, v20

    move/from16 v0, v16

    int-to-float v5, v0

    sub-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v18, v0

    .line 2320
    .local v18, top:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v21

    .line 2321
    .local v21, width:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v13

    .line 2323
    .local v13, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselHost;->mRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    .line 2324
    .local v17, rect:Landroid/graphics/Rect;
    add-int/lit8 v4, v14, -0x1

    add-int/lit8 v5, v18, -0x1

    add-int v6, v14, v21

    add-int/lit8 v6, v6, 0x1

    add-int v7, v18, v13

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 2326
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionX:F

    .line 2327
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionY:F

    .line 2329
    sub-float v4, v22, v19

    int-to-float v5, v15

    sub-float/2addr v4, v5

    float-to-int v14, v4

    .line 2330
    sub-float v4, v23, v20

    move/from16 v0, v16

    int-to-float v5, v0

    sub-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v18, v0

    .line 2333
    add-int/lit8 v4, v14, -0x1

    add-int/lit8 v5, v18, -0x1

    add-int v6, v14, v21

    add-int/lit8 v6, v6, 0x1

    add-int v7, v18, v13

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->union(IIII)V

    .line 2335
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/fragment/widget/CarouselHost;->mDropCoordinates:[I

    .line 2336
    .local v12, coordinates:[I
    move/from16 v0, v22

    float-to-int v4, v0

    move/from16 v0, v23

    float-to-int v5, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v12}, Lcom/htc/fragment/widget/CarouselHost;->findDropTarget(II[I)Lcom/htc/fragment/widget/DropTarget;

    move-result-object v3

    .line 2337
    .local v3, dropTarget:Lcom/htc/fragment/widget/DropTarget;
    if-eqz v3, :cond_5

    .line 2338
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mLastDropTarget:Lcom/htc/fragment/widget/DropTarget;

    if-ne v4, v3, :cond_3

    .line 2339
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    const/4 v5, 0x0

    aget v5, v12, v5

    const/4 v6, 0x1

    aget v6, v12, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/fragment/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v3 .. v9}, Lcom/htc/fragment/widget/DropTarget;->onDragOver(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V

    .line 2355
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselHost;->invalidate(Landroid/graphics/Rect;)V

    .line 2357
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/fragment/widget/CarouselHost;->mLastDropTarget:Lcom/htc/fragment/widget/DropTarget;

    goto/16 :goto_1

    .line 2341
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mLastDropTarget:Lcom/htc/fragment/widget/DropTarget;

    if-eqz v4, :cond_4

    .line 2342
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mLastDropTarget:Lcom/htc/fragment/widget/DropTarget;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    const/4 v6, 0x0

    aget v6, v12, v6

    const/4 v7, 0x1

    aget v7, v12, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/fragment/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v4 .. v10}, Lcom/htc/fragment/widget/DropTarget;->onDragExit(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V

    .line 2344
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    const/4 v5, 0x0

    aget v5, v12, v5

    const/4 v6, 0x1

    aget v6, v12, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/fragment/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v3 .. v9}, Lcom/htc/fragment/widget/DropTarget;->onDragEnter(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V

    .line 2346
    instance-of v4, v3, Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v4, :cond_2

    move-object v4, v3

    .line 2347
    check-cast v4, Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v4}, Lcom/htc/fragment/widget/CarouselWidget;->invalidate()V

    goto :goto_2

    .line 2350
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mLastDropTarget:Lcom/htc/fragment/widget/DropTarget;

    if-eqz v4, :cond_2

    .line 2351
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mLastDropTarget:Lcom/htc/fragment/widget/DropTarget;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    const/4 v6, 0x0

    aget v6, v12, v6

    const/4 v7, 0x1

    aget v7, v12, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/fragment/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v4 .. v10}, Lcom/htc/fragment/widget/DropTarget;->onDragExit(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V

    goto :goto_2

    .line 2360
    .end local v3           #dropTarget:Lcom/htc/fragment/widget/DropTarget;
    .end local v12           #coordinates:[I
    .end local v13           #height:I
    .end local v14           #left:I
    .end local v15           #offsetX:I
    .end local v16           #offsetY:I
    .end local v17           #rect:Landroid/graphics/Rect;
    .end local v18           #top:I
    .end local v19           #touchX:F
    .end local v20           #touchY:F
    .end local v21           #width:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mShouldDrop:Z

    if-eqz v4, :cond_6

    .line 2362
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/htc/fragment/widget/CarouselHost;->drop(FF)Z

    .line 2363
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/fragment/widget/CarouselHost;->mShouldDrop:Z

    .line 2365
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselHost;->endDrag()V

    goto/16 :goto_1

    .line 2368
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselHost;->endDrag()V

    goto/16 :goto_1

    .line 2304
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 1
    .parameter "isInTouchMode"

    .prologue
    .line 548
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 551
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->requestFocus()Z

    .line 555
    :cond_1
    return-void
.end method

.method pauseCurrentTab()V
    .locals 3

    .prologue
    .line 3006
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fragment/app/LocalFragmentManager;->getFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 3007
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3008
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v1, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->pauseFragment(Landroid/app/Fragment;)V

    .line 3010
    :cond_0
    return-void
.end method

.method removeFragmentIfRunning(Lcom/htc/fragment/widget/CarouselHost$TabSpec;Lcom/htc/fragment/widget/TaskInfo;)V
    .locals 3
    .parameter "ts"
    .parameter "ti"

    .prologue
    .line 2700
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/htc/fragment/widget/TaskInfo;->taskTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2749
    :cond_0
    :goto_0
    return-void

    .line 2707
    :cond_1
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {p1}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v1

    check-cast v1, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;

    iget-object v2, p2, Lcom/htc/fragment/widget/TaskInfo;->intentUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->compareIntent(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2712
    invoke-virtual {p1, p2}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->sync(Lcom/htc/fragment/widget/TaskInfo;)V

    .line 2713
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {p1}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;->tabClosed()V

    .line 2714
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mTag:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$2100(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2715
    move-object v0, p1

    .line 2717
    .local v0, spec:Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2725
    :cond_2
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    .line 2727
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    if-nez v1, :cond_3

    .line 2728
    const-string v1, "CarouselHost::setCurrentTabUtil(): Strange !, Current View is null "

    invoke-static {v1}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 2747
    :cond_3
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    goto :goto_0
.end method

.method removeIndicator()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2090
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    .line 2091
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 2092
    .local v1, wm:Landroid/view/WindowManager;
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2093
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    .line 2096
    const v2, 0x2020064

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinGridView;

    .line 2098
    .local v0, binGridView:Lcom/htc/fragment/widget/BinGridView;
    if-eqz v0, :cond_0

    .line 2101
    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinGridView;->endDragOneItem()V

    .line 2102
    invoke-virtual {v0, v4}, Lcom/htc/fragment/widget/BinGridView;->setDrawNextItem(Z)V

    .line 2106
    .end local v0           #binGridView:Lcom/htc/fragment/widget/BinGridView;
    .end local v1           #wm:Landroid/view/WindowManager;
    :cond_0
    iput-boolean v4, p0, Lcom/htc/fragment/widget/CarouselHost;->mShouldThrowEvent:Z

    .line 2107
    iput-boolean v4, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragging:Z

    .line 2108
    return-void
.end method

.method removeTab(Ljava/lang/String;)V
    .locals 4
    .parameter "tag"

    .prologue
    .line 795
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 796
    :cond_0
    const-string v2, "Invalid tag. Can not delete"

    invoke-static {v2}, Lcom/htc/fragment/widget/CarouselLog;->e(Ljava/lang/String;)V

    .line 816
    :goto_0
    return-void

    .line 800
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getHostCount()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_2

    .line 801
    const-string v2, "Table number is one. Can not delete"

    invoke-static {v2}, Lcom/htc/fragment/widget/CarouselLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 805
    :cond_2
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 806
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->setNextTab()V

    .line 807
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    .line 810
    :cond_3
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselHost;->getTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v2

    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {v2}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v0

    .line 812
    .local v0, contentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    new-instance v1, Lcom/htc/fragment/widget/TaskInfo;

    invoke-direct {v1}, Lcom/htc/fragment/widget/TaskInfo;-><init>()V

    .line 813
    .local v1, info:Lcom/htc/fragment/widget/TaskInfo;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/fragment/widget/TaskInfo;->intentUri:Ljava/lang/String;

    .line 814
    invoke-interface {v0, v1}, Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;->sync(Lcom/htc/fragment/widget/TaskInfo;)V

    .line 815
    invoke-interface {v0}, Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;->tabClosed()V

    goto :goto_0
.end method

.method public removeTabByTag(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 784
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselHost;->removeTab(Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/CarouselFragment;->removeTagFromDB(Ljava/lang/String;)V

    .line 786
    return-void
.end method

.method removeTipBubble()V
    .locals 3

    .prologue
    .line 1979
    const-string v1, "Carousel"

    const-string v2, "removeTipBubble()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1984
    const v1, 0x2020063

    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1986
    .local v0, slidingDrawer:Landroid/widget/RelativeLayout;
    if-eqz v0, :cond_0

    .line 1987
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1989
    .end local v0           #slidingDrawer:Landroid/widget/RelativeLayout;
    :cond_0
    return-void
.end method

.method resumeCurrentTab()V
    .locals 3

    .prologue
    .line 3013
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fragment/app/LocalFragmentManager;->getFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 3014
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3015
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v1, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->resumeFragment(Landroid/app/Fragment;)V

    .line 3017
    :cond_0
    return-void
.end method

.method public setAlternativeTabName(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "tag"
    .parameter "text"

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v0, p1, p2}, Lcom/htc/fragment/widget/CarouselFragment;->setAlternativeTabName(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1157
    return-void
.end method

.method public setAnimationMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 3022
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/CarouselContentGallery;->setAnimationMode(I)V

    .line 3023
    return-void
.end method

.method public setAnimationType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 3026
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/CarouselContentGallery;->setAnimationType(I)V

    .line 3027
    return-void
.end method

.method setBackupCurrentTag(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 906
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselHost;->mBackupCurrentTag:Ljava/lang/String;

    .line 907
    return-void
.end method

.method setCarousel(Lcom/htc/fragment/widget/CarouselFragment;)V
    .locals 2
    .parameter "carousel"

    .prologue
    .line 1873
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    .line 1875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselFragment;->getGId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabPrefix:Ljava/lang/String;

    .line 1878
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mHookPanel:Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;->setCarousel(Lcom/htc/fragment/widget/CarouselFragment;)V

    .line 1879
    return-void
.end method

.method public setCountText(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "tag"
    .parameter "text"

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v0, p1, p2}, Lcom/htc/fragment/widget/CarouselFragment;->setCountText(Ljava/lang/String;Ljava/lang/CharSequence;)I

    .line 1148
    return-void
.end method

.method public setCountVisibility(Ljava/lang/String;Z)V
    .locals 1
    .parameter "tag"
    .parameter "enable"

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v0, p1, p2}, Lcom/htc/fragment/widget/CarouselFragment;->setCountVisibility(Ljava/lang/String;Z)I

    .line 1139
    return-void
.end method

.method public setCurrentTabByTag(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    const/4 v1, 0x0

    .line 891
    if-nez p1, :cond_0

    .line 892
    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabUtil(I)V

    .line 903
    :goto_0
    return-void

    .line 894
    :cond_0
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselHost;->mBackupCurrentTag:Ljava/lang/String;

    .line 895
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselHost;->getPositionForTag(Ljava/lang/String;)I

    move-result v0

    .line 896
    .local v0, i:I
    if-ltz v0, :cond_1

    .line 897
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabUtil(I)V

    goto :goto_0

    .line 900
    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabUtil(I)V

    goto :goto_0
.end method

.method setCurrentTabUtil(I)V
    .locals 10
    .parameter "index"

    .prologue
    .line 966
    invoke-static {}, Lcom/htc/fragment/widget/CarouselUtil;->isLiteDevice()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 968
    iget-boolean v7, p0, Lcom/htc/fragment/widget/CarouselHost;->attached:Z

    if-nez v7, :cond_2

    .line 969
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mBackupCurrentTag:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 970
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mBackupCurrentTag:Ljava/lang/String;

    iput-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabBeforeAttached:Ljava/lang/Object;

    .line 1130
    :cond_0
    :goto_0
    return-void

    .line 972
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabBeforeAttached:Ljava/lang/Object;

    goto :goto_0

    .line 978
    :cond_2
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v7}, Lcom/htc/fragment/widget/CarouselFragment;->isDetached()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v7}, Lcom/htc/fragment/widget/CarouselFragment;->isAdded()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v7}, Lcom/htc/fragment/widget/CarouselFragment;->isRemoving()Z

    move-result v7

    if-nez v7, :cond_0

    .line 982
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getHostCount()I

    move-result v7

    if-ge p1, v7, :cond_0

    .line 986
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/htc/fragment/widget/CarouselHost;->getPositionForTag(Ljava/lang/String;)I

    move-result v0

    .line 987
    .local v0, currentIndex:I
    if-ne p1, v0, :cond_4

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 990
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    iget-object v8, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/htc/fragment/app/LocalFragmentManager;->getFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 991
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v7, p1}, Lcom/htc/fragment/widget/CarouselWidget;->setCurrentTabUtil(I)V

    .line 994
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v7, p1}, Lcom/htc/fragment/widget/CarouselContentGallery;->setCurrentTab(I)V

    .line 998
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->resumeCurrentTab()V

    .line 1000
    const-string v7, "ani"

    const-string v8, "@setCurrentTabUtil(return), to real"

    invoke-static {v7, v8}, Lcom/htc/fragment/widget/CarouselLog;->dd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    check-cast v7, Lcom/htc/fragment/widget/CarouselHost$TabContainer;

    invoke-virtual {v7}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->switchToContentView()V

    goto :goto_0

    .line 1006
    :cond_3
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    .line 1011
    :cond_4
    const-string v7, "ani"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@setCurrentTabUtil, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v9}, Lcom/htc/fragment/widget/CarouselContentGallery;->animationStateToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/fragment/widget/CarouselLog;->de(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v7}, Lcom/htc/fragment/widget/CarouselContentGallery;->isUsingFakeView()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    if-eqz v7, :cond_5

    .line 1013
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    check-cast v7, Lcom/htc/fragment/widget/CarouselHost$TabContainer;

    invoke-virtual {v7}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->switchToFakeView()V

    .line 1017
    :cond_5
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    if-eqz v7, :cond_8

    .line 1018
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/htc/fragment/widget/CarouselHost;->getTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v4

    .line 1019
    .local v4, s:Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    if-nez v4, :cond_6

    .line 1020
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "bad ! spec is  null on the setCurrentTab"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1023
    :cond_6
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {v4}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v7

    if-nez v7, :cond_7

    .line 1026
    :cond_7
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {v4}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v7

    invoke-interface {v7}, Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;->tabClosed()V

    .line 1029
    .end local v4           #s:Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    :cond_8
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselHost;->getTabSpec(I)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v5

    .line 1030
    .local v5, spec:Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    if-nez v5, :cond_9

    .line 1031
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "bad ! spec is  null on the setCurrentTab"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1034
    :cond_9
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {v5}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v7

    if-nez v7, :cond_a

    .line 1040
    :cond_a
    invoke-virtual {v5}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v6

    .line 1041
    .local v6, tag:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    .line 1042
    .local v3, previousTabTag:Ljava/lang/String;
    iput-object v6, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    .line 1043
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v7, p1}, Lcom/htc/fragment/widget/CarouselWidget;->setCurrentTabUtil(I)V

    .line 1046
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v7, p1}, Lcom/htc/fragment/widget/CarouselContentGallery;->setCurrentTab(I)V

    .line 1050
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {v5}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v7

    invoke-interface {v7}, Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    .line 1052
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    if-nez v7, :cond_b

    .line 1053
    const-string v7, "CarouselHost::setCurrentTabUtil(): Strange !, Current View is null "

    invoke-static {v7}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1083
    :cond_b
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v7}, Lcom/htc/fragment/widget/CarouselWidget;->hasFocus()Z

    move-result v7

    if-nez v7, :cond_c

    .line 1084
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 1093
    :cond_c
    const-string v7, "ani"

    const-string v8, "@setCurrentTabUtil, to real"

    invoke-static {v7, v8}, Lcom/htc/fragment/widget/CarouselLog;->dd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    check-cast v7, Lcom/htc/fragment/widget/CarouselHost$TabContainer;

    invoke-virtual {v7}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->switchToContentView()V

    .line 1096
    const/4 v2, 0x0

    .local v2, previousTab:Landroid/app/Fragment;
    const/4 v1, 0x0

    .line 1099
    .local v1, currentTab:Landroid/app/Fragment;
    if-eqz v3, :cond_d

    .line 1100
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v7, v3}, Lcom/htc/fragment/app/LocalFragmentManager;->getFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 1104
    if-eqz v2, :cond_d

    .line 1105
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 1107
    :cond_d
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    iget-object v8, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/htc/fragment/app/LocalFragmentManager;->getFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 1108
    if-eqz v1, :cond_e

    .line 1112
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 1116
    :cond_e
    if-eqz v2, :cond_f

    .line 1117
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v7, v2}, Lcom/htc/fragment/app/LocalFragmentManager;->pauseFragment(Landroid/app/Fragment;)V

    .line 1120
    :cond_f
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v7}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->isResumed()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1121
    if-eqz v1, :cond_10

    .line 1122
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v7, v1}, Lcom/htc/fragment/app/LocalFragmentManager;->resumeFragment(Landroid/app/Fragment;)V

    .line 1127
    :cond_10
    :goto_1
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    iget-object v8, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/htc/fragment/app/LocalFragmentManager;->setCurrentId(Ljava/lang/String;)V

    .line 1128
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    iget-object v8, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/htc/fragment/widget/CarouselFragment;->onCurrentTabChanged(Ljava/lang/String;)V

    .line 1129
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost;->invokeOnTabChangeListener()V

    goto/16 :goto_0

    .line 1125
    :cond_11
    const-string v7, "The activity is not resumed when the setCurrentTabUtil is called"

    invoke-static {v7}, Lcom/htc/fragment/widget/CarouselLog;->w(Ljava/lang/String;)V

    goto :goto_1
.end method

.method setIsProviderAp(Z)V
    .locals 0
    .parameter "isProviderAp"

    .prologue
    .line 1883
    iput-boolean p1, p0, Lcom/htc/fragment/widget/CarouselHost;->mIsProviderAP:Z

    .line 1884
    return-void
.end method

.method setNextTab()V
    .locals 3

    .prologue
    .line 939
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselHost;->getPositionForTag(Ljava/lang/String;)I

    move-result v0

    .line 941
    .local v0, currentIndex:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getHostCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_0

    .line 942
    add-int/lit8 v0, v0, -0x1

    .line 946
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->getTabSpec(I)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v1

    .line 947
    .local v1, spec:Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mBackupCurrentTag:Ljava/lang/String;

    .line 948
    return-void

    .line 944
    .end local v1           #spec:Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method setOnTabChangedListener(Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselHost;->mOnTabChangeListener:Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;

    .line 1176
    return-void
.end method

.method public setTabHintEnabled(Z)V
    .locals 0
    .parameter "tabHint"

    .prologue
    .line 2758
    return-void
.end method

.method setup()V
    .locals 3

    .prologue
    .line 455
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselWidget;

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    .line 456
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-nez v0, :cond_0

    .line 457
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a TabWidget whose id attribute is \'android.R.id.tabs\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0, p0}, Lcom/htc/fragment/widget/CarouselWidget;->setCarouselHost(Lcom/htc/fragment/widget/CarouselHost;)V

    .line 464
    const v0, 0x1020011

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselContentGallery;

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    .line 467
    new-instance v0, Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mHookPanel:Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

    .line 468
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mHookPanel:Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    iget-object v2, v2, Lcom/htc/fragment/widget/AbsSpinner;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0, v1, v2}, Lcom/htc/fragment/widget/CarouselContentGallery;->setup(Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;Lcom/htc/fragment/widget/FastScroller;)V

    .line 469
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mHookPanel:Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mHookPanel:Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->addView(Landroid/view/View;)V

    .line 472
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mTabContent:Lcom/htc/fragment/widget/CarouselContentGallery;

    if-nez v0, :cond_1

    .line 474
    const/4 v0, 0x0

    invoke-direct {p0, p0, v0}, Lcom/htc/fragment/widget/CarouselHost;->printViewTree(Landroid/view/ViewGroup;I)V

    .line 476
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a FrameLayout whose id attribute is \'android.R.id.tabcontent\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_1
    return-void
.end method

.method setup(Lcom/htc/fragment/app/LocalFragmentManager;)V
    .locals 0
    .parameter "localFragmentManager"

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->setup()V

    .line 488
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    .line 489
    return-void
.end method

.method showTipBubble()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1940
    const-string v2, "Carousel"

    const-string v5, "showTipBubble()"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    const v2, 0x2020063

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 1945
    .local v1, slidingDrawer:Landroid/widget/RelativeLayout;
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1947
    iget v2, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    if-gez v2, :cond_0

    .line 1948
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x205006b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    .line 1950
    :cond_0
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1952
    .local v0, lparams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1953
    const/16 v5, 0xe

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_5

    move v2, v4

    :goto_1
    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1954
    const/16 v5, 0xc

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_6

    move v2, v4

    :goto_2
    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1956
    const/16 v5, 0xf

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_7

    move v2, v3

    :goto_3
    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1957
    const/16 v2, 0xb

    iget-boolean v5, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v5, :cond_1

    move v4, v3

    :cond_1
    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1959
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1960
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x2080158

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1963
    if-eqz v1, :cond_2

    .line 1965
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_8

    move v2, v3

    :goto_4
    iget-boolean v4, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v4, :cond_9

    iget v4, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    :goto_5
    invoke-virtual {v1, v3, v3, v2, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 1966
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1971
    .end local v0           #lparams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1972
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1973
    :cond_3
    return-void

    .line 1952
    .restart local v0       #lparams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    iget v2, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_5
    move v2, v3

    .line 1953
    goto :goto_1

    :cond_6
    move v2, v3

    .line 1954
    goto :goto_2

    :cond_7
    move v2, v4

    .line 1956
    goto :goto_3

    .line 1965
    :cond_8
    iget v2, p0, Lcom/htc/fragment/widget/CarouselHost;->widgetSpace:I

    goto :goto_4

    :cond_9
    move v4, v3

    goto :goto_5
.end method

.method public startDrag(Landroid/view/View;Lcom/htc/fragment/widget/DragSource;Ljava/lang/Object;I)V
    .locals 14
    .parameter "view"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"

    .prologue
    .line 2117
    move-object/from16 v0, p2

    instance-of v12, v0, Lcom/htc/fragment/widget/BinGridView;

    if-eqz v12, :cond_3

    .line 2119
    iget-object v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v12}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 2121
    iget-object v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v12}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v5

    .line 2122
    .local v5, firstVisPos:I
    iget-object v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v12}, Lcom/htc/fragment/widget/CarouselWidget;->getLastVisiblePosition()I

    move-result v8

    .line 2124
    .local v8, lastVisPos:I
    iget-object v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    sub-int v13, v8, v5

    invoke-virtual {v12, v13}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2126
    .local v9, lastVisView:Landroid/view/View;
    if-eqz v9, :cond_0

    .line 2128
    iget-object v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v12}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v12

    invoke-interface {v12}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    .line 2129
    .local v3, count:I
    iget-boolean v12, p0, Lcom/htc/fragment/widget/CarouselHost;->isPortrait:Z

    if-eqz v12, :cond_2

    .line 2131
    iget-object v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v12}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v7

    .line 2132
    .local v7, itemWidth:I
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v12

    sub-int v13, v3, v8

    mul-int/2addr v13, v7

    add-int v1, v12, v13

    .line 2133
    .local v1, anchor:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getWidth()I

    move-result v12

    sub-int/2addr v12, v1

    div-int/lit8 v13, v7, 0x2

    sub-int v4, v12, v13

    .line 2134
    .local v4, distance:I
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost;->setDragBinGridViewToTrue()V

    .line 2136
    iget-object v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v12}, Lcom/htc/fragment/widget/CarouselWidget;->getMaxCapacity()I

    move-result v12

    if-le v3, v12, :cond_0

    .line 2137
    iget-object v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v12, v4}, Lcom/htc/fragment/widget/CarouselWidget;->scrollBy(I)V

    .line 2169
    .end local v1           #anchor:I
    .end local v3           #count:I
    .end local v4           #distance:I
    .end local v5           #firstVisPos:I
    .end local v7           #itemWidth:I
    .end local v8           #lastVisPos:I
    .end local v9           #lastVisView:Landroid/view/View;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->removeTipBubble()V

    .line 2171
    const/4 v12, 0x2

    new-array v10, v12, [I

    .line 2172
    .local v10, loc:[I
    invoke-virtual {p1, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2174
    iget v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionX:F

    const/4 v13, 0x0

    aget v13, v10, v13

    int-to-float v13, v13

    sub-float/2addr v12, v13

    iget v13, p0, Lcom/htc/fragment/widget/CarouselHost;->mCorOffsetX:F

    add-float/2addr v12, v13

    iput v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetX:F

    .line 2175
    iget v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mLastMotionY:F

    const/4 v13, 0x1

    aget v13, v10, v13

    int-to-float v13, v13

    sub-float/2addr v12, v13

    iget v13, p0, Lcom/htc/fragment/widget/CarouselHost;->mCorOffsetY:F

    add-float/2addr v12, v13

    iput v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mTouchOffsetY:F

    .line 2177
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 2178
    const/4 v12, 0x0

    invoke-virtual {p1, v12}, Landroid/view/View;->setPressed(Z)V

    .line 2180
    const/4 v12, 0x0

    iput v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mBitmapOffsetX:I

    .line 2181
    const/4 v12, 0x0

    iput v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mBitmapOffsetY:I

    .line 2183
    if-nez p4, :cond_1

    .line 2184
    const/4 v12, 0x4

    invoke-virtual {p1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 2186
    :cond_1
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselHost;->mOriginator:Landroid/view/View;

    .line 2187
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;

    .line 2188
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    .line 2189
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselHost;->createDragView(Landroid/view/View;)V

    .line 2191
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mDragging:Z

    .line 2192
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mShouldDrop:Z

    .line 2193
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mShouldThrowEvent:Z

    .line 2194
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->invalidate()V

    .line 2195
    return-void

    .line 2141
    .end local v10           #loc:[I
    .restart local v3       #count:I
    .restart local v5       #firstVisPos:I
    .restart local v8       #lastVisPos:I
    .restart local v9       #lastVisView:Landroid/view/View;
    :cond_2
    iget-object v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v12}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v6

    .line 2142
    .local v6, itemHeight:I
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v12

    sub-int v13, v3, v8

    mul-int/2addr v13, v6

    add-int v1, v12, v13

    .line 2143
    .restart local v1       #anchor:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost;->getHeight()I

    move-result v12

    sub-int/2addr v12, v1

    div-int/lit8 v13, v6, 0x2

    sub-int v4, v12, v13

    .line 2144
    .restart local v4       #distance:I
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost;->setDragBinGridViewToTrue()V

    .line 2146
    iget-object v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v12}, Lcom/htc/fragment/widget/CarouselWidget;->getMaxCapacity()I

    move-result v12

    if-le v3, v12, :cond_0

    .line 2147
    iget-object v12, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v12, v4}, Lcom/htc/fragment/widget/CarouselWidget;->scrollBy(I)V

    goto :goto_0

    .line 2156
    .end local v1           #anchor:I
    .end local v3           #count:I
    .end local v4           #distance:I
    .end local v5           #firstVisPos:I
    .end local v6           #itemHeight:I
    .end local v8           #lastVisPos:I
    .end local v9           #lastVisView:Landroid/view/View;
    :cond_3
    const v12, 0x2020064

    invoke-virtual {p0, v12}, Lcom/htc/fragment/widget/CarouselHost;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/fragment/widget/BinGridView;

    .local v2, binGridView:Lcom/htc/fragment/widget/BinGridView;
    move-object/from16 v12, p3

    .line 2158
    check-cast v12, Lcom/htc/fragment/widget/TaskInfo;

    iget v12, v12, Lcom/htc/fragment/widget/TaskInfo;->isRemovable:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    const/4 v11, 0x1

    .line 2160
    .local v11, removeable:Z
    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/htc/fragment/widget/BinGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v12

    if-eqz v12, :cond_0

    if-eqz v11, :cond_0

    .line 2162
    invoke-virtual {v2}, Lcom/htc/fragment/widget/BinGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v12

    invoke-interface {v12}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    if-nez v12, :cond_5

    .line 2163
    invoke-virtual {v2}, Lcom/htc/fragment/widget/BinGridView;->startDragOneItem()V

    goto/16 :goto_0

    .line 2158
    .end local v11           #removeable:Z
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 2165
    .restart local v11       #removeable:Z
    :cond_5
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Lcom/htc/fragment/widget/BinGridView;->setDrawNextItem(Z)V

    goto/16 :goto_0
.end method

.method public stopTabByTag(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 911
    if-nez p1, :cond_1

    .line 920
    :cond_0
    :goto_0
    return-void

    .line 913
    :cond_1
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 914
    const-string v1, "Removing the current tab!"

    invoke-static {v1}, Lcom/htc/fragment/widget/CarouselLog;->w(Ljava/lang/String;)V

    .line 915
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselHost;->getTabSpec(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;

    move-result-object v0

    .line 916
    .local v0, spec:Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    if-eqz v0, :cond_0

    .line 917
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;->tabRemoved()V

    .line 918
    #getter for: Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;->getCacheView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/fragment/widget/CarouselHost$TabContainer;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->switchToFakeView()V

    goto :goto_0
.end method

.method switchPanelToPositive()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2950
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->viewSwitcher:Lcom/htc/fragment/widget/CarouselViewSwitcher;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2951
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->viewSwitcher:Lcom/htc/fragment/widget/CarouselViewSwitcher;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->switchPanelToPositive(Z)V

    .line 2952
    :cond_0
    return-void

    .line 2951
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public switchPanelView()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2942
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->viewSwitcher:Lcom/htc/fragment/widget/CarouselViewSwitcher;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2943
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost;->viewSwitcher:Lcom/htc/fragment/widget/CarouselViewSwitcher;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/fragment/widget/CarouselViewSwitcher;->switchPanelView(Z)V

    .line 2944
    :cond_0
    return-void

    .line 2943
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public useDefaultTabName(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/htc/fragment/widget/CarouselFragment;->setAlternativeTabName(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1165
    return-void
.end method
