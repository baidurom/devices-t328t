.class public Lcom/htc/widget/CarouselHost;
.super Landroid/widget/FrameLayout;
.source "CarouselHost.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Lcom/htc/widget/DragController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/CarouselHost$1;,
        Lcom/htc/widget/CarouselHost$DecorHashMap;,
        Lcom/htc/widget/CarouselHost$DropAnimationRunnable;,
        Lcom/htc/widget/CarouselHost$IntentContentStrategy;,
        Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;,
        Lcom/htc/widget/CarouselHost$ContentStrategy;,
        Lcom/htc/widget/CarouselHost$IndicatorStrategy;,
        Lcom/htc/widget/CarouselHost$TabSpec;,
        Lcom/htc/widget/CarouselHost$OnTabBeforeChangeListener;,
        Lcom/htc/widget/CarouselHost$OnTabChangeListener;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGV:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CarouselHost"

.field public static final TASK_STATE_DEFAULT:I = 0x63

.field public static final TASK_STATE_POOL:I = 0x64

.field public static final TASK_STATE_UNREMOVABLE:I = 0x65


# instance fields
.field private contentHeight:I

.field private contentWidth:I

.field private customSpace:I

.field private customViewContainer:Landroid/widget/FrameLayout;

.field private decorViewHash:Lcom/htc/widget/CarouselHost$DecorHashMap;

.field private display:Landroid/view/Display;

.field private enableCustomView:Z

.field eresources:Landroid/content/res/Resources;

.field private isFullScreen:Z

.field private isPortrait:Z

.field protected mBackupCurrentTag:Ljava/lang/String;

.field private mBitmapOffsetX:I

.field private mBitmapOffsetY:I

.field private mCarousel:Lcom/htc/widget/CarouselActivity;

.field private final mContext:Landroid/content/Context;

.field private mCorOffsetX:F

.field private mCorOffsetY:F

.field protected mCurrentTabTag:Ljava/lang/String;

.field private mCurrentView:Landroid/view/View;

.field private mDragInfo:Ljava/lang/Object;

.field private mDragRect:Landroid/graphics/Rect;

.field private mDragSource:Lcom/htc/widget/DragSource;

.field private mDragView:Landroid/widget/FrameLayout;

.field private mDragging:Z

.field private mDropAnimationRunnable:Lcom/htc/widget/CarouselHost$DropAnimationRunnable;

.field private final mDropCoordinates:[I

.field private mDropTarget:Lcom/htc/widget/DropTarget;

.field private mIsProviderAP:Z

.field private mLastDropTarget:Lcom/htc/widget/DropTarget;

.field private mLastMotionX:F

.field private mLastMotionY:F

.field protected mLocalActivityManager:Landroid/app/LocalActivityManager;

.field private mOriginator:Landroid/view/View;

.field private mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

.field private final mRect:Landroid/graphics/Rect;

.field private mShouldDrop:Z

.field private mShouldStopFling:Z

.field private mShouldThrowEvent:Z

.field private mSourceX:F

.field private mSourceY:F

.field private mTabContent:Landroid/widget/FrameLayout;

.field private mTouchOffsetX:F

.field private mTouchOffsetY:F

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private resetBound:Z

.field private shadowOverlay:Landroid/graphics/drawable/Drawable;

.field private tipBubble:Landroid/widget/TextView;

.field private viewSwitcher:Lcom/htc/widget/CarouselViewSwitcher;

.field private widgetSpace:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 136
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 88
    iput-object v1, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    .line 94
    iput-object v1, p0, Lcom/htc/widget/CarouselHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 103
    iput-boolean v3, p0, Lcom/htc/widget/CarouselHost;->mDragging:Z

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/CarouselHost;->mDragRect:Landroid/graphics/Rect;

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/CarouselHost;->mRect:Landroid/graphics/Rect;

    .line 126
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/widget/CarouselHost;->mDropCoordinates:[I

    .line 130
    new-instance v0, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;

    invoke-direct {v0, p0}, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;-><init>(Lcom/htc/widget/CarouselHost;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselHost;->mDropAnimationRunnable:Lcom/htc/widget/CarouselHost$DropAnimationRunnable;

    .line 174
    iput v2, p0, Lcom/htc/widget/CarouselHost;->widgetSpace:I

    .line 175
    iput v2, p0, Lcom/htc/widget/CarouselHost;->customSpace:I

    .line 177
    iput-boolean v4, p0, Lcom/htc/widget/CarouselHost;->resetBound:Z

    .line 178
    iput-boolean v4, p0, Lcom/htc/widget/CarouselHost;->isPortrait:Z

    .line 179
    iput-boolean v3, p0, Lcom/htc/widget/CarouselHost;->isFullScreen:Z

    .line 181
    iput-object v1, p0, Lcom/htc/widget/CarouselHost;->display:Landroid/view/Display;

    .line 183
    iput-object v1, p0, Lcom/htc/widget/CarouselHost;->shadowOverlay:Landroid/graphics/drawable/Drawable;

    .line 333
    iput-boolean v3, p0, Lcom/htc/widget/CarouselHost;->enableCustomView:Z

    .line 335
    iput-object v1, p0, Lcom/htc/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    .line 586
    iput-object v1, p0, Lcom/htc/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    .line 1218
    iput-object v1, p0, Lcom/htc/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    .line 1288
    iput v2, p0, Lcom/htc/widget/CarouselHost;->contentWidth:I

    .line 1289
    iput v2, p0, Lcom/htc/widget/CarouselHost;->contentHeight:I

    .line 2085
    iput-object v1, p0, Lcom/htc/widget/CarouselHost;->viewSwitcher:Lcom/htc/widget/CarouselViewSwitcher;

    .line 2125
    new-instance v0, Lcom/htc/widget/CarouselHost$DecorHashMap;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/CarouselHost$DecorHashMap;-><init>(Lcom/htc/widget/CarouselHost;Lcom/htc/widget/CarouselHost$1;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselHost;->decorViewHash:Lcom/htc/widget/CarouselHost$DecorHashMap;

    .line 137
    iput-object p1, p0, Lcom/htc/widget/CarouselHost;->mContext:Landroid/content/Context;

    .line 139
    invoke-direct {p0}, Lcom/htc/widget/CarouselHost;->setOrientation()V

    .line 140
    invoke-direct {p0}, Lcom/htc/widget/CarouselHost;->initCarouselHost()V

    .line 142
    iput-boolean v3, p0, Lcom/htc/widget/CarouselHost;->mShouldThrowEvent:Z

    .line 143
    iput-object v1, p0, Lcom/htc/widget/CarouselHost;->mBackupCurrentTag:Ljava/lang/String;

    .line 144
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

    .line 147
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    iput-object v1, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    .line 94
    iput-object v1, p0, Lcom/htc/widget/CarouselHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 103
    iput-boolean v3, p0, Lcom/htc/widget/CarouselHost;->mDragging:Z

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/CarouselHost;->mDragRect:Landroid/graphics/Rect;

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/CarouselHost;->mRect:Landroid/graphics/Rect;

    .line 126
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/widget/CarouselHost;->mDropCoordinates:[I

    .line 130
    new-instance v0, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;

    invoke-direct {v0, p0}, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;-><init>(Lcom/htc/widget/CarouselHost;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselHost;->mDropAnimationRunnable:Lcom/htc/widget/CarouselHost$DropAnimationRunnable;

    .line 174
    iput v2, p0, Lcom/htc/widget/CarouselHost;->widgetSpace:I

    .line 175
    iput v2, p0, Lcom/htc/widget/CarouselHost;->customSpace:I

    .line 177
    iput-boolean v4, p0, Lcom/htc/widget/CarouselHost;->resetBound:Z

    .line 178
    iput-boolean v4, p0, Lcom/htc/widget/CarouselHost;->isPortrait:Z

    .line 179
    iput-boolean v3, p0, Lcom/htc/widget/CarouselHost;->isFullScreen:Z

    .line 181
    iput-object v1, p0, Lcom/htc/widget/CarouselHost;->display:Landroid/view/Display;

    .line 183
    iput-object v1, p0, Lcom/htc/widget/CarouselHost;->shadowOverlay:Landroid/graphics/drawable/Drawable;

    .line 333
    iput-boolean v3, p0, Lcom/htc/widget/CarouselHost;->enableCustomView:Z

    .line 335
    iput-object v1, p0, Lcom/htc/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    .line 586
    iput-object v1, p0, Lcom/htc/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    .line 1218
    iput-object v1, p0, Lcom/htc/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    .line 1288
    iput v2, p0, Lcom/htc/widget/CarouselHost;->contentWidth:I

    .line 1289
    iput v2, p0, Lcom/htc/widget/CarouselHost;->contentHeight:I

    .line 2085
    iput-object v1, p0, Lcom/htc/widget/CarouselHost;->viewSwitcher:Lcom/htc/widget/CarouselViewSwitcher;

    .line 2125
    new-instance v0, Lcom/htc/widget/CarouselHost$DecorHashMap;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/CarouselHost$DecorHashMap;-><init>(Lcom/htc/widget/CarouselHost;Lcom/htc/widget/CarouselHost$1;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselHost;->decorViewHash:Lcom/htc/widget/CarouselHost$DecorHashMap;

    .line 148
    iput-object p1, p0, Lcom/htc/widget/CarouselHost;->mContext:Landroid/content/Context;

    .line 150
    invoke-direct {p0}, Lcom/htc/widget/CarouselHost;->setOrientation()V

    .line 151
    invoke-direct {p0}, Lcom/htc/widget/CarouselHost;->initCarouselHost()V

    .line 153
    iput-boolean v3, p0, Lcom/htc/widget/CarouselHost;->mShouldThrowEvent:Z

    .line 154
    iput-object v1, p0, Lcom/htc/widget/CarouselHost;->mBackupCurrentTag:Ljava/lang/String;

    .line 155
    return-void
.end method

.method static synthetic access$1002(Lcom/htc/widget/CarouselHost;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/htc/widget/CarouselHost;->mTag:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/widget/CarouselHost;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/widget/CarouselHost;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/widget/CarouselHost;)Lcom/htc/widget/CarouselHost$DecorHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->decorViewHash:Lcom/htc/widget/CarouselHost$DecorHashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/widget/CarouselHost;)Lcom/htc/widget/CarouselActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mCarousel:Lcom/htc/widget/CarouselActivity;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/htc/widget/CarouselHost;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/htc/widget/CarouselHost;->mShouldThrowEvent:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/htc/widget/CarouselHost;)Lcom/htc/widget/DragSource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mDragSource:Lcom/htc/widget/DragSource;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/widget/CarouselHost;)Lcom/htc/widget/DropTarget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mDropTarget:Lcom/htc/widget/DropTarget;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/widget/CarouselHost;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/htc/widget/CarouselHost;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/htc/widget/CarouselHost;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/htc/widget/CarouselHost;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/htc/widget/CarouselHost;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/CarouselHost;->moveIndicator(FF)V

    return-void
.end method

.method private addTab(Lcom/htc/widget/CarouselHost$TabSpec;Z)V
    .locals 6
    .parameter "tabSpec"
    .parameter "isRemovable"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 612
    #getter for: Lcom/htc/widget/CarouselHost$TabSpec;->mIndicatorStrategy:Lcom/htc/widget/CarouselHost$IndicatorStrategy;
    invoke-static {p1}, Lcom/htc/widget/CarouselHost$TabSpec;->access$100(Lcom/htc/widget/CarouselHost$TabSpec;)Lcom/htc/widget/CarouselHost$IndicatorStrategy;

    move-result-object v3

    if-nez v3, :cond_0

    .line 613
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "you must specify a way to create the tab indicator."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 616
    :cond_0
    #getter for: Lcom/htc/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/widget/CarouselHost$ContentStrategy;
    invoke-static {p1}, Lcom/htc/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/widget/CarouselHost$TabSpec;)Lcom/htc/widget/CarouselHost$ContentStrategy;

    move-result-object v3

    if-nez v3, :cond_1

    .line 617
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "you must specify a way to create the tab content"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 620
    :cond_1
    iget-boolean v3, p0, Lcom/htc/widget/CarouselHost;->mIsProviderAP:Z

    if-eqz v3, :cond_2

    .line 621
    new-instance v0, Lcom/htc/widget/TaskInfo;

    invoke-direct {v0}, Lcom/htc/widget/TaskInfo;-><init>()V

    .line 622
    .local v0, task:Lcom/htc/widget/TaskInfo;
    #getter for: Lcom/htc/widget/CarouselHost$TabSpec;->mIndicatorStrategy:Lcom/htc/widget/CarouselHost$IndicatorStrategy;
    invoke-static {p1}, Lcom/htc/widget/CarouselHost$TabSpec;->access$100(Lcom/htc/widget/CarouselHost$TabSpec;)Lcom/htc/widget/CarouselHost$IndicatorStrategy;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;

    .line 623
    .local v1, temp:Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;
    invoke-virtual {p1}, Lcom/htc/widget/CarouselHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/widget/TaskInfo;->taskTag:Ljava/lang/String;

    .line 624
    #getter for: Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mLabelResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v1}, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$200(Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v3, v0, Lcom/htc/widget/TaskInfo;->taskName:Ljava/lang/String;

    .line 625
    #getter for: Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mIconReource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v1}, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$300(Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iput-object v3, v0, Lcom/htc/widget/TaskInfo;->resPackage:Ljava/lang/String;

    .line 626
    #getter for: Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mIconReource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v1}, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$300(Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v3, v0, Lcom/htc/widget/TaskInfo;->icon:Ljava/lang/String;

    .line 627
    #getter for: Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mSelectedIconResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v1}, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$400(Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v3, v0, Lcom/htc/widget/TaskInfo;->selectedIcon:Ljava/lang/String;

    .line 628
    #getter for: Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mOverylayResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v1}, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$500(Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v3, v0, Lcom/htc/widget/TaskInfo;->overlay:Ljava/lang/String;

    .line 629
    #getter for: Lcom/htc/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/widget/CarouselHost$ContentStrategy;
    invoke-static {p1}, Lcom/htc/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/widget/CarouselHost$TabSpec;)Lcom/htc/widget/CarouselHost$ContentStrategy;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/CarouselHost$IntentContentStrategy;

    .line 630
    .local v2, temp2:Lcom/htc/widget/CarouselHost$IntentContentStrategy;
    #getter for: Lcom/htc/widget/CarouselHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->access$700(Lcom/htc/widget/CarouselHost$IntentContentStrategy;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/widget/TaskInfo;->intentUri:Ljava/lang/String;

    .line 631
    iput v4, v0, Lcom/htc/widget/TaskInfo;->isHost:I

    .line 632
    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getHostCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/htc/widget/TaskInfo;->taskOrder:I

    .line 633
    if-ne p2, v4, :cond_3

    .line 634
    iput v4, v0, Lcom/htc/widget/TaskInfo;->isRemovable:I

    .line 637
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/CarouselHost;->mCarousel:Lcom/htc/widget/CarouselActivity;

    invoke-virtual {v3, v0}, Lcom/htc/widget/CarouselActivity;->addAndSyncTask(Lcom/htc/widget/TaskInfo;)V

    .line 639
    .end local v0           #task:Lcom/htc/widget/TaskInfo;
    .end local v1           #temp:Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;
    .end local v2           #temp2:Lcom/htc/widget/CarouselHost$IntentContentStrategy;
    :cond_2
    return-void

    .line 636
    .restart local v0       #task:Lcom/htc/widget/TaskInfo;
    .restart local v1       #temp:Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;
    .restart local v2       #temp2:Lcom/htc/widget/CarouselHost$IntentContentStrategy;
    :cond_3
    iput v5, v0, Lcom/htc/widget/TaskInfo;->isRemovable:I

    goto :goto_0
.end method

.method private addTabUtil(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;Z)V
    .locals 11
    .parameter "tag"
    .parameter "context"
    .parameter "title"
    .parameter "rest"
    .parameter "on"
    .parameter "overlay"
    .parameter "intent"
    .parameter "isRemovable"

    .prologue
    .line 547
    iget-object v6, p0, Lcom/htc/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    if-nez v6, :cond_0

    .line 549
    invoke-virtual {p0, p1}, Lcom/htc/widget/CarouselHost;->newTabSpec(Ljava/lang/String;)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v6

    invoke-static {p2, p3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v7

    invoke-static {p2, p4}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v8

    move/from16 v0, p5

    invoke-static {p2, v0}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v9

    move/from16 v0, p6

    invoke-static {p2, v0}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/htc/widget/CarouselHost$TabSpec;->setIndicator(Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v6

    move-object/from16 v0, p7

    invoke-virtual {v6, v0}, Lcom/htc/widget/CarouselHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v4

    .line 555
    .local v4, tab:Lcom/htc/widget/CarouselHost$TabSpec;
    move/from16 v0, p8

    invoke-direct {p0, v4, v0}, Lcom/htc/widget/CarouselHost;->addTab(Lcom/htc/widget/CarouselHost$TabSpec;Z)V

    .line 583
    :goto_0
    return-void

    .line 559
    .end local v4           #tab:Lcom/htc/widget/CarouselHost$TabSpec;
    :cond_0
    new-instance v1, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v1}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    .line 560
    .local v1, onIcon:Landroid/content/Intent$ShortcutIconResource;
    new-instance v3, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v3}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    .line 561
    .local v3, restIcon:Landroid/content/Intent$ShortcutIconResource;
    new-instance v5, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v5}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    .line 562
    .local v5, titleIcon:Landroid/content/Intent$ShortcutIconResource;
    new-instance v2, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v2}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    .line 564
    .local v2, overlayIcon:Landroid/content/Intent$ShortcutIconResource;
    const-string v6, "fake package"

    iput-object v6, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 565
    iget-object v6, p0, Lcom/htc/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    move/from16 v0, p5

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 567
    const-string v6, "fake package"

    iput-object v6, v3, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 568
    iget-object v6, p0, Lcom/htc/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    invoke-virtual {v6, p4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 570
    const-string v6, "fake package"

    iput-object v6, v5, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 571
    iget-object v6, p0, Lcom/htc/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    invoke-virtual {v6, p3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 573
    const-string v6, "fake package"

    iput-object v6, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 574
    iget-object v6, p0, Lcom/htc/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 577
    invoke-virtual {p0, p1}, Lcom/htc/widget/CarouselHost;->newTabSpec(Ljava/lang/String;)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, v5, v3, v1, v2}, Lcom/htc/widget/CarouselHost$TabSpec;->setIndicator(Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v6

    move-object/from16 v0, p7

    invoke-virtual {v6, v0}, Lcom/htc/widget/CarouselHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v4

    .line 581
    .restart local v4       #tab:Lcom/htc/widget/CarouselHost$TabSpec;
    move/from16 v0, p8

    invoke-direct {p0, v4, v0}, Lcom/htc/widget/CarouselHost;->addTab(Lcom/htc/widget/CarouselHost$TabSpec;Z)V

    goto :goto_0
.end method

.method private createDragView(Landroid/view/View;)V
    .locals 13
    .parameter "view"

    .prologue
    .line 1293
    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v9}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v9, p0, Lcom/htc/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 1294
    iget-object v9, p0, Lcom/htc/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v10, 0x33

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1297
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 1299
    const/4 v9, 0x2

    new-array v2, v9, [I

    .line 1301
    .local v2, location:[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1303
    iget-object v9, p0, Lcom/htc/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v10, 0x0

    aget v10, v2, v10

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1304
    iget-object v9, p0, Lcom/htc/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v10, 0x1

    aget v10, v2, v10

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1313
    .end local v2           #location:[I
    :goto_0
    iget v9, p0, Lcom/htc/widget/CarouselHost;->contentWidth:I

    if-ltz v9, :cond_0

    iget v9, p0, Lcom/htc/widget/CarouselHost;->contentHeight:I

    if-gez v9, :cond_1

    .line 1315
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1317
    .local v5, resource:Landroid/content/res/Resources;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1319
    .local v1, backgroundPadding:Landroid/graphics/Rect;
    const v9, 0x208019e

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1320
    .local v7, tileDrawable:Landroid/graphics/drawable/Drawable;
    const v9, 0x208019f

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1322
    .local v0, backDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1323
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    iput v9, p0, Lcom/htc/widget/CarouselHost;->contentWidth:I

    .line 1324
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    iget v10, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v10

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/htc/widget/CarouselHost;->contentHeight:I

    .line 1328
    .end local v0           #backDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #backgroundPadding:Landroid/graphics/Rect;
    .end local v5           #resource:Landroid/content/res/Resources;
    .end local v7           #tileDrawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v10, p0, Lcom/htc/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, p0, Lcom/htc/widget/CarouselHost;->contentWidth:I

    if-gtz v9, :cond_3

    const/4 v9, -0x2

    :goto_1
    iput v9, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1329
    iget-object v10, p0, Lcom/htc/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, p0, Lcom/htc/widget/CarouselHost;->contentHeight:I

    if-gtz v9, :cond_4

    const/4 v9, -0x2

    :goto_2
    iput v9, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1332
    iget-object v9, p0, Lcom/htc/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v10, 0x398

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1339
    iget-object v9, p0, Lcom/htc/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v10, 0x0

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1340
    iget-object v9, p0, Lcom/htc/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v10, -0x3

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1345
    iget-object v9, p0, Lcom/htc/widget/CarouselHost;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x2090011

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/htc/widget/CarouselFrameLayout;

    .line 1346
    .local v8, windowView:Lcom/htc/widget/CarouselFrameLayout;
    const v9, 0x2020062

    invoke-virtual {v8, v9}, Lcom/htc/widget/CarouselFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1348
    iget-object v9, p0, Lcom/htc/widget/CarouselHost;->mOriginator:Landroid/view/View;

    const v10, 0x2020061

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/CarouselTextView;

    .line 1349
    .local v3, oldView:Lcom/htc/widget/CarouselTextView;
    const v9, 0x2020061

    invoke-virtual {v8, v9}, Lcom/htc/widget/CarouselFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/CarouselTextView;

    .line 1351
    .local v6, textView:Lcom/htc/widget/CarouselTextView;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/htc/widget/CarouselTextView;->enableForceSingleLine(Z)V

    .line 1352
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v9}, Lcom/htc/widget/CarouselTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1353
    invoke-virtual {v3}, Lcom/htc/widget/CarouselTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/htc/widget/CarouselTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1354
    const/4 v9, 0x0

    invoke-virtual {v3}, Lcom/htc/widget/CarouselTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/htc/widget/CarouselTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1356
    iget-object v9, p0, Lcom/htc/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    check-cast v9, Lcom/htc/widget/TaskInfo;

    iget v9, v9, Lcom/htc/widget/TaskInfo;->isRemovable:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    const/4 v4, 0x1

    .line 1359
    .local v4, removeable:Z
    :goto_3
    if-nez v4, :cond_6

    .line 1360
    const v9, 0x208019f

    invoke-virtual {v8, v9}, Lcom/htc/widget/CarouselFrameLayout;->setBackgroundResource(I)V

    .line 1365
    :goto_4
    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    iput-object v9, p0, Lcom/htc/widget/CarouselHost;->mWindowManager:Landroid/view/WindowManager;

    .line 1366
    iget-object v9, p0, Lcom/htc/widget/CarouselHost;->mWindowManager:Landroid/view/WindowManager;

    iget-object v10, p0, Lcom/htc/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v9, v8, v10}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1368
    iput-object v8, p0, Lcom/htc/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    .line 1369
    iget-object v9, p0, Lcom/htc/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1370
    return-void

    .line 1308
    .end local v3           #oldView:Lcom/htc/widget/CarouselTextView;
    .end local v4           #removeable:Z
    .end local v6           #textView:Lcom/htc/widget/CarouselTextView;
    .end local v8           #windowView:Lcom/htc/widget/CarouselFrameLayout;
    :cond_2
    iget-object v9, p0, Lcom/htc/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v10, 0x0

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1309
    iget-object v9, p0, Lcom/htc/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v10, 0x0

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_0

    .line 1328
    :cond_3
    iget v9, p0, Lcom/htc/widget/CarouselHost;->contentWidth:I

    goto/16 :goto_1

    .line 1329
    :cond_4
    iget v9, p0, Lcom/htc/widget/CarouselHost;->contentHeight:I

    goto/16 :goto_2

    .line 1356
    .restart local v3       #oldView:Lcom/htc/widget/CarouselTextView;
    .restart local v6       #textView:Lcom/htc/widget/CarouselTextView;
    .restart local v8       #windowView:Lcom/htc/widget/CarouselFrameLayout;
    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 1362
    .restart local v4       #removeable:Z
    :cond_6
    iget-object v9, p0, Lcom/htc/widget/CarouselHost;->mContext:Landroid/content/Context;

    const-string v10, "common_subnav_tab_rearrange_removeable"

    const v11, 0x208019d

    invoke-static {v9, v10, v11}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/htc/widget/CarouselFrameLayout;->setBackgroundResource(I)V

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

    .line 1635
    iget v0, p0, Lcom/htc/widget/CarouselHost;->mLastMotionX:F

    iget v1, p0, Lcom/htc/widget/CarouselHost;->mTouchOffsetX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/htc/widget/CarouselHost;->mBitmapOffsetX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/CarouselHost;->mSourceX:F

    .line 1636
    iget v0, p0, Lcom/htc/widget/CarouselHost;->mLastMotionY:F

    iget v1, p0, Lcom/htc/widget/CarouselHost;->mTouchOffsetY:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/htc/widget/CarouselHost;->mBitmapOffsetY:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/CarouselHost;->mSourceY:F

    .line 1637
    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->invalidate()V

    .line 1639
    iget-object v7, p0, Lcom/htc/widget/CarouselHost;->mDropCoordinates:[I

    .line 1640
    .local v7, coordinates:[I
    float-to-int v0, p1

    float-to-int v1, p2

    invoke-virtual {p0, v0, v1, v7}, Lcom/htc/widget/CarouselHost;->findDropTarget(II[I)Lcom/htc/widget/DropTarget;

    move-result-object v8

    .line 1643
    .local v8, dropTarget:Lcom/htc/widget/DropTarget;
    instance-of v0, v8, Lcom/htc/widget/BinGridView;

    if-eqz v0, :cond_1

    .line 1644
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mDragSource:Lcom/htc/widget/DragSource;

    instance-of v0, v0, Lcom/htc/widget/BinGridView;

    if-eqz v0, :cond_0

    .line 1645
    invoke-direct {p0}, Lcom/htc/widget/CarouselHost;->setDragBinGridViewToFalse()V

    .line 1646
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mDragSource:Lcom/htc/widget/DragSource;

    instance-of v0, v0, Lcom/htc/widget/BinGridView;

    if-eqz v0, :cond_1

    .line 1647
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->realign()V

    .line 1653
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mLastDropTarget:Lcom/htc/widget/DropTarget;

    if-eqz v0, :cond_2

    if-eqz v8, :cond_2

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mLastDropTarget:Lcom/htc/widget/DropTarget;

    if-eq v0, v8, :cond_2

    .line 1654
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mLastDropTarget:Lcom/htc/widget/DropTarget;

    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mDragSource:Lcom/htc/widget/DragSource;

    aget v2, v7, v10

    aget v3, v7, v9

    iget v4, p0, Lcom/htc/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/htc/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/htc/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v6}, Lcom/htc/widget/DropTarget;->onDragExit(Lcom/htc/widget/DragSource;IIIILjava/lang/Object;)V

    .line 1657
    :cond_2
    iput-object v8, p0, Lcom/htc/widget/CarouselHost;->mDropTarget:Lcom/htc/widget/DropTarget;

    .line 1658
    if-eqz v8, :cond_9

    .line 1659
    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mDragSource:Lcom/htc/widget/DragSource;

    aget v2, v7, v10

    aget v3, v7, v9

    iget v0, p0, Lcom/htc/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v4, v0

    iget v0, p0, Lcom/htc/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v5, v0

    iget-object v6, p0, Lcom/htc/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    move-object v0, v8

    invoke-interface/range {v0 .. v6}, Lcom/htc/widget/DropTarget;->onDragExit(Lcom/htc/widget/DragSource;IIIILjava/lang/Object;)V

    .line 1660
    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mDragSource:Lcom/htc/widget/DragSource;

    aget v2, v7, v10

    aget v3, v7, v9

    iget v0, p0, Lcom/htc/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v4, v0

    iget v0, p0, Lcom/htc/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v5, v0

    iget-object v6, p0, Lcom/htc/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    move-object v0, v8

    invoke-interface/range {v0 .. v6}, Lcom/htc/widget/DropTarget;->acceptDrop(Lcom/htc/widget/DragSource;IIIILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1661
    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mDragSource:Lcom/htc/widget/DragSource;

    aget v2, v7, v10

    aget v3, v7, v9

    iget v0, p0, Lcom/htc/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v4, v0

    iget v0, p0, Lcom/htc/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v5, v0

    iget-object v6, p0, Lcom/htc/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    move-object v0, v8

    invoke-interface/range {v0 .. v6}, Lcom/htc/widget/DropTarget;->onDrop(Lcom/htc/widget/DragSource;IIIILjava/lang/Object;)V

    .line 1662
    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mDragSource:Lcom/htc/widget/DragSource;

    move-object v0, v8

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v0, v9}, Lcom/htc/widget/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    .line 1664
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v0, :cond_3

    .line 1665
    instance-of v0, v8, Lcom/htc/widget/BinGridView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mDragSource:Lcom/htc/widget/DragSource;

    instance-of v0, v0, Lcom/htc/widget/BinGridView;

    if-eqz v0, :cond_4

    .line 1666
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0, v11, v9}, Lcom/htc/widget/CarouselWidget;->setShrinkedPosition(IZ)V

    :cond_3
    :goto_0
    move v0, v9

    .line 1702
    .end local v8           #dropTarget:Lcom/htc/widget/DropTarget;
    :goto_1
    return v0

    .line 1667
    .restart local v8       #dropTarget:Lcom/htc/widget/DropTarget;
    :cond_4
    instance-of v0, v8, Lcom/htc/widget/CarouselWidget;

    if-eqz v0, :cond_5

    .line 1668
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0, v11}, Lcom/htc/widget/CarouselWidget;->setShrinkedPosition(I)V

    goto :goto_0

    .line 1670
    :cond_5
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->setLateShrinkedFlag()V

    goto :goto_0

    .line 1676
    :cond_6
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v0, :cond_7

    .line 1677
    instance-of v0, v8, Lcom/htc/widget/BinGridView;

    if-eqz v0, :cond_8

    .line 1678
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0, v11, v9}, Lcom/htc/widget/CarouselWidget;->setShrinkedPosition(IZ)V

    .line 1683
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mDragSource:Lcom/htc/widget/DragSource;

    check-cast v8, Landroid/view/View;

    .end local v8           #dropTarget:Lcom/htc/widget/DropTarget;
    invoke-interface {v0, v8, v10}, Lcom/htc/widget/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    move v0, v9

    .line 1685
    goto :goto_1

    .line 1680
    .restart local v8       #dropTarget:Lcom/htc/widget/DropTarget;
    :cond_8
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0, v11}, Lcom/htc/widget/CarouselWidget;->setShrinkedPosition(I)V

    goto :goto_2

    .line 1690
    :cond_9
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v0, :cond_a

    .line 1691
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0, v11}, Lcom/htc/widget/CarouselWidget;->setShrinkedPosition(I)V

    .line 1694
    :cond_a
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mDragSource:Lcom/htc/widget/DragSource;

    check-cast v8, Landroid/view/View;

    .end local v8           #dropTarget:Lcom/htc/widget/DropTarget;
    invoke-interface {v0, v8, v10}, Lcom/htc/widget/DragSource;->onDropCompleted(Landroid/view/View;Z)V

    .line 1697
    invoke-direct {p0}, Lcom/htc/widget/CarouselHost;->setDragBinGridViewToFalse()V

    .line 1698
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mDragSource:Lcom/htc/widget/DragSource;

    instance-of v0, v0, Lcom/htc/widget/BinGridView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v0, :cond_b

    .line 1699
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->realign()V

    :cond_b
    move v0, v10

    .line 1702
    goto :goto_1
.end method

.method private endDrag()V
    .locals 1

    .prologue
    .line 1513
    iget-boolean v0, p0, Lcom/htc/widget/CarouselHost;->mDragging:Z

    if-eqz v0, :cond_0

    .line 1514
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/CarouselHost;->mDragging:Z

    .line 1516
    :cond_0
    return-void
.end method

.method private findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/htc/widget/DropTarget;
    .locals 17
    .parameter "container"
    .parameter "x"
    .parameter "y"
    .parameter "dropCoordinates"

    .prologue
    .line 1710
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/widget/CarouselHost;->mDragRect:Landroid/graphics/Rect;

    .line 1711
    .local v8, r:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 1712
    .local v5, count:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v12

    add-int v9, p2, v12

    .line 1713
    .local v9, scrolledX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v12

    add-int v10, p3, v12

    .line 1715
    .local v10, scrolledY:I
    add-int/lit8 v6, v5, -0x1

    .local v6, i:I
    :goto_0
    if-ltz v6, :cond_8

    .line 1716
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1717
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_7

    .line 1718
    invoke-virtual {v4, v8}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1721
    instance-of v12, v4, Lcom/htc/widget/CarouselWidget;

    if-eqz v12, :cond_4

    .line 1723
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/CarouselHost;->widgetSpace:I

    if-gez v12, :cond_0

    .line 1724
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x205006b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/htc/widget/CarouselHost;->widgetSpace:I

    .line 1726
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/htc/widget/CarouselHost;->isPortrait:Z

    if-eqz v12, :cond_3

    .line 1727
    iget v12, v8, Landroid/graphics/Rect;->left:I

    iget v13, v8, Landroid/graphics/Rect;->top:I

    iget v14, v8, Landroid/graphics/Rect;->right:I

    iget v15, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/CarouselHost;->widgetSpace:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-virtual {v8, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 1740
    :cond_1
    :goto_1
    invoke-virtual {v8, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1741
    const/4 v11, 0x0

    .line 1742
    .local v11, target:Lcom/htc/widget/DropTarget;
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v7

    .line 1743
    .local v7, id:I
    const v12, 0x1020011

    if-eq v7, v12, :cond_7

    .line 1744
    instance-of v12, v4, Landroid/view/ViewGroup;

    if-eqz v12, :cond_2

    .line 1745
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v12

    sub-int p2, v9, v12

    .line 1746
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v12

    sub-int p3, v10, v12

    move-object v12, v4

    .line 1747
    check-cast v12, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v12, v1, v2, v3}, Lcom/htc/widget/CarouselHost;->findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/htc/widget/DropTarget;

    move-result-object v11

    .line 1749
    :cond_2
    if-nez v11, :cond_6

    .line 1750
    instance-of v12, v4, Lcom/htc/widget/DropTarget;

    if-eqz v12, :cond_7

    .line 1751
    const/4 v12, 0x0

    aput p2, p4, v12

    .line 1752
    const/4 v12, 0x1

    aput p3, p4, v12

    .line 1754
    check-cast v4, Lcom/htc/widget/DropTarget;

    .line 1764
    .end local v4           #child:Landroid/view/View;
    .end local v7           #id:I
    .end local v11           #target:Lcom/htc/widget/DropTarget;
    :goto_2
    return-object v4

    .line 1729
    .restart local v4       #child:Landroid/view/View;
    :cond_3
    iget v12, v8, Landroid/graphics/Rect;->left:I

    iget v13, v8, Landroid/graphics/Rect;->top:I

    iget v14, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/CarouselHost;->widgetSpace:I

    add-int/2addr v14, v15

    iget v15, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 1731
    :cond_4
    instance-of v12, v4, Lcom/htc/widget/BinGridView;

    if-eqz v12, :cond_1

    .line 1733
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/htc/widget/CarouselHost;->isPortrait:Z

    if-eqz v12, :cond_5

    .line 1734
    iget v12, v8, Landroid/graphics/Rect;->left:I

    iget v13, v8, Landroid/graphics/Rect;->top:I

    iget v14, v8, Landroid/graphics/Rect;->right:I

    iget v15, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual {v8, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 1736
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
    .restart local v11       #target:Lcom/htc/widget/DropTarget;
    :cond_6
    move-object v4, v11

    .line 1757
    goto :goto_2

    .line 1715
    .end local v7           #id:I
    .end local v11           #target:Lcom/htc/widget/DropTarget;
    :cond_7
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_0

    .line 1764
    .end local v4           #child:Landroid/view/View;
    :cond_8
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private initCarouselHost()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 158
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselHost;->setFocusableInTouchMode(Z)V

    .line 159
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselHost;->setDescendantFocusability(I)V

    .line 161
    iput-object v1, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    .line 162
    iput-object v1, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    .line 163
    return-void
.end method

.method private moveIndicator(FF)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 1381
    :goto_0
    return-void

    .line 1375
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/htc/widget/CarouselHost;->mCorOffsetX:F

    add-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1376
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/htc/widget/CarouselHost;->mCorOffsetY:F

    add-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1378
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1379
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1380
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private printViewTree(Landroid/view/ViewGroup;I)V
    .locals 6
    .parameter "container"
    .parameter "level"

    .prologue
    .line 386
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 388
    .local v1, count:I
    const-string v3, "CarouselTraceView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    add-int/lit8 v2, v1, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 390
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 391
    .local v0, child:Landroid/view/View;
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 392
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #child:Landroid/view/View;
    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, v0, v3}, Lcom/htc/widget/CarouselHost;->printViewTree(Landroid/view/ViewGroup;I)V

    .line 389
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 394
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    const-string v3, "CarouselTraceView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 398
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private setDragBinGridViewToFalse()V
    .locals 4

    .prologue
    .line 2071
    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v2, :cond_0

    .line 2073
    iget-boolean v2, p0, Lcom/htc/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v0

    .line 2074
    .local v0, orgWidthHeight:I
    :goto_0
    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/CarouselWidget;->setDragBinGridView(Z)V

    .line 2076
    iget-boolean v2, p0, Lcom/htc/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidthWithNoAnimation()I

    move-result v1

    .line 2080
    .local v1, targetWidthHeight:I
    :goto_1
    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v2, v0, v1}, Lcom/htc/widget/CarouselWidget;->startWidthHeightAnimation(II)V

    .line 2082
    .end local v0           #orgWidthHeight:I
    .end local v1           #targetWidthHeight:I
    :cond_0
    return-void

    .line 2073
    :cond_1
    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v0

    goto :goto_0

    .line 2076
    .restart local v0       #orgWidthHeight:I
    :cond_2
    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsHeightWithNoAnimation()I

    move-result v1

    goto :goto_1
.end method

.method private setDragBinGridViewToTrue()V
    .locals 4

    .prologue
    .line 2059
    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v2, :cond_0

    .line 2061
    iget-boolean v2, p0, Lcom/htc/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v0

    .line 2062
    .local v0, orgWidthHeight:I
    :goto_0
    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/CarouselWidget;->setDragBinGridView(Z)V

    .line 2064
    iget-boolean v2, p0, Lcom/htc/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v1

    .line 2065
    .local v1, targetWidthHeight:I
    :goto_1
    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v2, v0, v1}, Lcom/htc/widget/CarouselWidget;->startWidthHeightAnimation(II)V

    .line 2067
    .end local v0           #orgWidthHeight:I
    .end local v1           #targetWidthHeight:I
    :cond_0
    return-void

    .line 2061
    :cond_1
    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v0

    goto :goto_0

    .line 2064
    .restart local v0       #orgWidthHeight:I
    :cond_2
    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v1

    goto :goto_1
.end method

.method private setOrientation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 187
    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->display:Landroid/view/Display;

    if-nez v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/CarouselHost;->display:Landroid/view/Display;

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->display:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 192
    .local v0, orientation:I
    iput-boolean v3, p0, Lcom/htc/widget/CarouselHost;->isPortrait:Z

    .line 195
    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2080038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/CarouselHost;->shadowOverlay:Landroid/graphics/drawable/Drawable;

    .line 196
    iput-boolean v3, p0, Lcom/htc/widget/CarouselHost;->resetBound:Z

    .line 197
    return-void
.end method


# virtual methods
.method CloseActivityIfRunning(Lcom/htc/widget/CarouselHost$TabSpec;Lcom/htc/widget/TaskInfo;)V
    .locals 5
    .parameter "ts"
    .parameter "ti"

    .prologue
    const/4 v4, -0x1

    .line 1902
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    #getter for: Lcom/htc/widget/CarouselHost$TabSpec;->mTag:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/widget/CarouselHost$TabSpec;->access$2000(Lcom/htc/widget/CarouselHost$TabSpec;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/htc/widget/TaskInfo;->taskTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1942
    :cond_0
    :goto_0
    return-void

    .line 1906
    :cond_1
    #getter for: Lcom/htc/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/widget/CarouselHost$ContentStrategy;
    invoke-static {p1}, Lcom/htc/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/widget/CarouselHost$TabSpec;)Lcom/htc/widget/CarouselHost$ContentStrategy;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/CarouselHost$IntentContentStrategy;

    iget-object v2, p2, Lcom/htc/widget/TaskInfo;->intentUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->compareIntent(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1911
    invoke-virtual {p1, p2}, Lcom/htc/widget/CarouselHost$TabSpec;->sync(Lcom/htc/widget/TaskInfo;)V

    .line 1912
    #getter for: Lcom/htc/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/widget/CarouselHost$ContentStrategy;
    invoke-static {p1}, Lcom/htc/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/widget/CarouselHost$TabSpec;)Lcom/htc/widget/CarouselHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/widget/CarouselHost$ContentStrategy;->tabClosed()V

    .line 1913
    #getter for: Lcom/htc/widget/CarouselHost$TabSpec;->mTag:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/widget/CarouselHost$TabSpec;->access$2000(Lcom/htc/widget/CarouselHost$TabSpec;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1914
    move-object v0, p1

    .line 1916
    .local v0, spec:Lcom/htc/widget/CarouselHost$TabSpec;
    #getter for: Lcom/htc/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/widget/CarouselHost$ContentStrategy;
    invoke-static {v0}, Lcom/htc/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/widget/CarouselHost$TabSpec;)Lcom/htc/widget/CarouselHost$ContentStrategy;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1924
    :cond_2
    #getter for: Lcom/htc/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/widget/CarouselHost$ContentStrategy;
    invoke-static {v0}, Lcom/htc/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/widget/CarouselHost$TabSpec;)Lcom/htc/widget/CarouselHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/widget/CarouselHost$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    .line 1926
    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    if-nez v1, :cond_3

    .line 1927
    const-string v1, "CarouselHost::setCurrentTabUtil()"

    const-string v2, "Strange !, Current View is null "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1932
    :cond_3
    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1933
    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mTabContent:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1938
    :cond_4
    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1940
    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    goto :goto_0
.end method

.method public addPanelView(Landroid/view/View;)V
    .locals 2
    .parameter "panelView"

    .prologue
    .line 2089
    if-nez p1, :cond_0

    .line 2108
    :goto_0
    return-void

    .line 2094
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->viewSwitcher:Lcom/htc/widget/CarouselViewSwitcher;

    if-nez v0, :cond_1

    .line 2097
    const-string v0, "Carousel"

    const-string v1, "create viewSwitcher"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    new-instance v0, Lcom/htc/widget/CarouselViewSwitcher;

    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/CarouselViewSwitcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselHost;->viewSwitcher:Lcom/htc/widget/CarouselViewSwitcher;

    .line 2101
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->viewSwitcher:Lcom/htc/widget/CarouselViewSwitcher;

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselHost;->addView(Landroid/view/View;)V

    .line 2102
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselHost;->removeView(Landroid/view/View;)V

    .line 2103
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->viewSwitcher:Lcom/htc/widget/CarouselViewSwitcher;

    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselViewSwitcher;->addPositiveView(Landroid/view/View;)V

    .line 2107
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->viewSwitcher:Lcom/htc/widget/CarouselViewSwitcher;

    invoke-virtual {v0, p1}, Lcom/htc/widget/CarouselViewSwitcher;->addNegativeView(Landroid/view/View;)V

    goto :goto_0
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
    .line 603
    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/htc/widget/CarouselHost;->addTabUtil(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;Z)V

    .line 604
    return-void
.end method

.method public addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;I)V
    .locals 16
    .parameter "tag"
    .parameter "context"
    .parameter "title"
    .parameter "rest"
    .parameter "on"
    .parameter "overlay"
    .parameter "intent"
    .parameter "state"

    .prologue
    .line 484
    const/4 v11, 0x1

    .local v11, isInCarouselWidget:Z
    const/4 v10, 0x1

    .line 485
    .local v10, isRemovable:Z
    packed-switch p8, :pswitch_data_0

    .line 499
    const/4 v11, 0x1

    .line 500
    const/4 v10, 0x1

    .line 504
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

    .line 505
    invoke-direct/range {v2 .. v10}, Lcom/htc/widget/CarouselHost;->addTabUtil(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;Z)V

    .line 528
    :goto_1
    return-void

    .line 487
    :pswitch_0
    const/4 v11, 0x1

    .line 488
    const/4 v10, 0x1

    .line 489
    goto :goto_0

    .line 491
    :pswitch_1
    const/4 v11, 0x0

    .line 492
    const/4 v10, 0x1

    .line 493
    goto :goto_0

    .line 495
    :pswitch_2
    const/4 v11, 0x1

    .line 496
    const/4 v10, 0x0

    .line 497
    goto :goto_0

    .line 507
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/htc/widget/CarouselHost;->newTabSpec(Ljava/lang/String;)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v2

    invoke-static/range {p2 .. p3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-static {v0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v4

    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-static {v0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    move-object/from16 v0, p2

    move/from16 v1, p6

    invoke-static {v0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/htc/widget/CarouselHost$TabSpec;->setIndicator(Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Lcom/htc/widget/CarouselHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v12

    .line 513
    .local v12, tabSpec:Lcom/htc/widget/CarouselHost$TabSpec;
    new-instance v13, Lcom/htc/widget/TaskInfo;

    invoke-direct {v13}, Lcom/htc/widget/TaskInfo;-><init>()V

    .line 514
    .local v13, task:Lcom/htc/widget/TaskInfo;
    #getter for: Lcom/htc/widget/CarouselHost$TabSpec;->mIndicatorStrategy:Lcom/htc/widget/CarouselHost$IndicatorStrategy;
    invoke-static {v12}, Lcom/htc/widget/CarouselHost$TabSpec;->access$100(Lcom/htc/widget/CarouselHost$TabSpec;)Lcom/htc/widget/CarouselHost$IndicatorStrategy;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;

    .line 515
    .local v14, temp:Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;
    invoke-virtual {v12}, Lcom/htc/widget/CarouselHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/htc/widget/TaskInfo;->taskTag:Ljava/lang/String;

    .line 516
    #getter for: Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mLabelResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v14}, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$200(Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    iget-object v2, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v2, v13, Lcom/htc/widget/TaskInfo;->taskName:Ljava/lang/String;

    .line 517
    #getter for: Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mIconReource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v14}, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$300(Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    iget-object v2, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iput-object v2, v13, Lcom/htc/widget/TaskInfo;->resPackage:Ljava/lang/String;

    .line 518
    #getter for: Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mIconReource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v14}, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$300(Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    iget-object v2, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v2, v13, Lcom/htc/widget/TaskInfo;->icon:Ljava/lang/String;

    .line 519
    #getter for: Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mSelectedIconResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v14}, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$400(Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    iget-object v2, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v2, v13, Lcom/htc/widget/TaskInfo;->selectedIcon:Ljava/lang/String;

    .line 520
    #getter for: Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mOverylayResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-static {v14}, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->access$500(Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    iget-object v2, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v2, v13, Lcom/htc/widget/TaskInfo;->overlay:Ljava/lang/String;

    .line 521
    #getter for: Lcom/htc/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/widget/CarouselHost$ContentStrategy;
    invoke-static {v12}, Lcom/htc/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/widget/CarouselHost$TabSpec;)Lcom/htc/widget/CarouselHost$ContentStrategy;

    move-result-object v15

    check-cast v15, Lcom/htc/widget/CarouselHost$IntentContentStrategy;

    .line 522
    .local v15, temp2:Lcom/htc/widget/CarouselHost$IntentContentStrategy;
    #getter for: Lcom/htc/widget/CarouselHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;
    invoke-static {v15}, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->access$700(Lcom/htc/widget/CarouselHost$IntentContentStrategy;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/htc/widget/TaskInfo;->intentUri:Ljava/lang/String;

    .line 523
    const/4 v2, 0x0

    iput v2, v13, Lcom/htc/widget/TaskInfo;->isHost:I

    .line 524
    const/4 v2, 0x1

    iput v2, v13, Lcom/htc/widget/TaskInfo;->isRemovable:I

    .line 525
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/CarouselHost;->getHostCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, v13, Lcom/htc/widget/TaskInfo;->taskOrder:I

    .line 526
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/CarouselHost;->mCarousel:Lcom/htc/widget/CarouselActivity;

    invoke-virtual {v2, v13}, Lcom/htc/widget/CarouselActivity;->addAndSyncTask(Lcom/htc/widget/TaskInfo;)V

    goto/16 :goto_1

    .line 485
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

    .line 1495
    iget-boolean v1, p0, Lcom/htc/widget/CarouselHost;->mShouldDrop:Z

    if-eqz v1, :cond_1

    .line 1496
    iget-object v7, p0, Lcom/htc/widget/CarouselHost;->mDropCoordinates:[I

    .line 1497
    .local v7, coordinates:[I
    iget v1, p0, Lcom/htc/widget/CarouselHost;->mLastMotionX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/htc/widget/CarouselHost;->mLastMotionY:F

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2, v7}, Lcom/htc/widget/CarouselHost;->findDropTarget(II[I)Lcom/htc/widget/DropTarget;

    move-result-object v0

    .line 1499
    .local v0, dropTarget:Lcom/htc/widget/DropTarget;
    if-eqz v0, :cond_0

    .line 1500
    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mDragSource:Lcom/htc/widget/DragSource;

    aget v2, v7, v8

    const/4 v3, 0x1

    aget v3, v7, v3

    iget v4, p0, Lcom/htc/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/htc/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/htc/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v6}, Lcom/htc/widget/DropTarget;->onDragExit(Lcom/htc/widget/DragSource;IIIILjava/lang/Object;)V

    .line 1503
    :cond_0
    invoke-direct {p0, v9, v9}, Lcom/htc/widget/CarouselHost;->drop(FF)Z

    .line 1504
    iput-boolean v8, p0, Lcom/htc/widget/CarouselHost;->mShouldDrop:Z

    .line 1505
    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mDropAnimationRunnable:Lcom/htc/widget/CarouselHost$DropAnimationRunnable;

    invoke-virtual {v1, v8}, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;->stop(Z)V

    .line 1509
    .end local v0           #dropTarget:Lcom/htc/widget/DropTarget;
    .end local v7           #coordinates:[I
    :goto_0
    invoke-direct {p0}, Lcom/htc/widget/CarouselHost;->endDrag()V

    .line 1510
    return-void

    .line 1507
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mDropAnimationRunnable:Lcom/htc/widget/CarouselHost$DropAnimationRunnable;

    invoke-virtual {v1, v8}, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;->stop(Z)V

    goto :goto_0
.end method

.method closeTabByTag(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 768
    if-eqz p1, :cond_0

    .line 770
    invoke-virtual {p0, p1}, Lcom/htc/widget/CarouselHost;->getTabSpec(Ljava/lang/String;)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v0

    #getter for: Lcom/htc/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/widget/CarouselHost$ContentStrategy;
    invoke-static {v0}, Lcom/htc/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/widget/CarouselHost$TabSpec;)Lcom/htc/widget/CarouselHost$ContentStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/widget/CarouselHost$ContentStrategy;->tabClosed()V

    .line 771
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    .line 773
    :cond_0
    return-void
.end method

.method createTipBubble()V
    .locals 4

    .prologue
    .line 1223
    const-string v0, "Carousel"

    const-string v1, "createTipBubble()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1228
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    .line 1229
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    const v1, 0x20401d3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1230
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mContext:Landroid/content/Context;

    const v2, 0x2030016

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1231
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1233
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 303
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 305
    iget-boolean v2, p0, Lcom/htc/widget/CarouselHost;->mDragging:Z

    if-eqz v2, :cond_0

    .line 306
    iget v2, p0, Lcom/htc/widget/CarouselHost;->mLastMotionX:F

    iget v3, p0, Lcom/htc/widget/CarouselHost;->mTouchOffsetX:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/CarouselHost;->mBitmapOffsetX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/CarouselHost;->mLastMotionY:F

    iget v4, p0, Lcom/htc/widget/CarouselHost;->mTouchOffsetY:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/CarouselHost;->mBitmapOffsetY:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-direct {p0, v2, v3}, Lcom/htc/widget/CarouselHost;->moveIndicator(FF)V

    .line 309
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->shadowOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/widget/CarouselWidget;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3

    .line 311
    iget-boolean v2, p0, Lcom/htc/widget/CarouselHost;->resetBound:Z

    if-eqz v2, :cond_2

    .line 313
    iput-boolean v5, p0, Lcom/htc/widget/CarouselHost;->resetBound:Z

    .line 315
    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getMeasuredWidth()I

    move-result v1

    .line 316
    .local v1, width:I
    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getMeasuredHeight()I

    move-result v0

    .line 318
    .local v0, height:I
    iget v2, p0, Lcom/htc/widget/CarouselHost;->widgetSpace:I

    if-gez v2, :cond_1

    .line 319
    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x205006b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/CarouselHost;->widgetSpace:I

    .line 321
    :cond_1
    iget-boolean v2, p0, Lcom/htc/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_4

    .line 322
    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->shadowOverlay:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/htc/widget/CarouselHost;->widgetSpace:I

    sub-int v3, v0, v3

    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->shadowOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/CarouselHost;->widgetSpace:I

    sub-int v4, v0, v4

    invoke-virtual {v2, v5, v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 327
    .end local v0           #height:I
    .end local v1           #width:I
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->shadowOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 329
    :cond_3
    return-void

    .line 324
    .restart local v0       #height:I
    .restart local v1       #width:I
    :cond_4
    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->shadowOverlay:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/htc/widget/CarouselHost;->widgetSpace:I

    sub-int v3, v1, v3

    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->shadowOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/CarouselHost;->widgetSpace:I

    sub-int v4, v1, v4

    invoke-virtual {v2, v3, v5, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 1956
    const/4 v2, 0x0

    .line 1958
    .local v2, handle:Z
    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getCarouselWidget()Lcom/htc/widget/CarouselWidget;

    move-result-object v4

    .line 1959
    .local v4, widget:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 1961
    .local v0, content:Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .line 1964
    .local v1, contentview:Landroid/view/View;
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v5, v6

    .line 2054
    :goto_0
    return v5

    :cond_1
    move-object v5, v4

    .line 1968
    check-cast v5, Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v5}, Lcom/htc/widget/CarouselWidget;->isDragging()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    .line 1969
    goto :goto_0

    :cond_2
    move-object v5, v4

    .line 1972
    check-cast v5, Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v5}, Lcom/htc/widget/CarouselWidget;->getStateWidget()I

    move-result v5

    const/16 v7, 0x3ea

    if-ne v5, v7, :cond_5

    .line 1974
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/4 v7, 0x4

    if-ne v5, v7, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v6, :cond_3

    .line 1976
    iget-object v5, p0, Lcom/htc/widget/CarouselHost;->mCarousel:Lcom/htc/widget/CarouselActivity;

    invoke-virtual {v5}, Lcom/htc/widget/CarouselActivity;->exitEditMode()V

    move v5, v6

    .line 1977
    goto :goto_0

    .line 1980
    :cond_3
    invoke-virtual {v4}, Lcom/htc/widget/CarouselWidget;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1981
    invoke-virtual {v4}, Lcom/htc/widget/CarouselWidget;->requestFocus()Z

    :cond_4
    move v5, v6

    .line 1983
    goto :goto_0

    .line 1987
    :cond_5
    const/4 v3, 0x0

    .local v3, loop:I
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_6

    .line 1989
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1991
    if-nez v1, :cond_9

    .line 2001
    :cond_6
    if-nez v1, :cond_7

    .line 2002
    move-object v1, v0

    .line 2004
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 2006
    if-nez v2, :cond_8

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_8

    .line 2008
    iget-boolean v5, p0, Lcom/htc/widget/CarouselHost;->isPortrait:Z

    if-eqz v5, :cond_c

    .line 2010
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_8
    :goto_2
    move v5, v2

    .line 2054
    goto :goto_0

    .line 1994
    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_a

    .line 1995
    instance-of v5, v1, Lcom/htc/widget/CarouselWidget;

    if-eqz v5, :cond_6

    .line 1987
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2013
    :pswitch_0
    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_b

    .line 2014
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 2015
    :cond_b
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_2

    .line 2019
    :pswitch_1
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->isRootNamespace()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v5

    const/16 v7, 0x82

    invoke-virtual {v5, v7}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_8

    .line 2024
    invoke-virtual {v4}, Lcom/htc/widget/CarouselWidget;->requestFocus()Z

    .line 2025
    invoke-virtual {v4, p1}, Lcom/htc/widget/CarouselWidget;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move v5, v6

    .line 2026
    goto/16 :goto_0

    .line 2032
    :cond_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    goto :goto_2

    .line 2035
    :pswitch_2
    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_d

    .line 2036
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 2037
    :cond_d
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_2

    .line 2041
    :pswitch_3
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->isRootNamespace()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v5

    const/16 v7, 0x42

    invoke-virtual {v5, v7}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_8

    .line 2046
    invoke-virtual {v4}, Lcom/htc/widget/CarouselWidget;->requestFocus()Z

    .line 2047
    invoke-virtual {v4, p1}, Lcom/htc/widget/CarouselWidget;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move v5, v6

    .line 2048
    goto/16 :goto_0

    .line 2010
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2032
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
    .line 1768
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mDropAnimationRunnable:Lcom/htc/widget/CarouselHost$DropAnimationRunnable;

    iget v1, p0, Lcom/htc/widget/CarouselHost;->mSourceX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/htc/widget/CarouselHost;->mSourceY:F

    float-to-int v2, v2

    iget v3, p0, Lcom/htc/widget/CarouselHost;->mCorOffsetX:F

    sub-float v3, p1, v3

    float-to-int v3, v3

    iget v4, p0, Lcom/htc/widget/CarouselHost;->mCorOffsetY:F

    sub-float v4, p2, v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;->startUsingPositions(IIII)V

    .line 1769
    return-void
.end method

.method doCurrentTabPause()V
    .locals 1

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselHost;->getTabSpec(Ljava/lang/String;)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v0

    #getter for: Lcom/htc/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/widget/CarouselHost$ContentStrategy;
    invoke-static {v0}, Lcom/htc/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/widget/CarouselHost$TabSpec;)Lcom/htc/widget/CarouselHost$ContentStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/widget/CarouselHost$ContentStrategy;->tabOnPaused()V

    .line 1194
    return-void
.end method

.method doCurrntTabResume()V
    .locals 1

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselHost;->getTabSpec(Ljava/lang/String;)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v0

    #getter for: Lcom/htc/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/widget/CarouselHost$ContentStrategy;
    invoke-static {v0}, Lcom/htc/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/widget/CarouselHost$TabSpec;)Lcom/htc/widget/CarouselHost$ContentStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/widget/CarouselHost$ContentStrategy;->tabOnResume()V

    .line 1198
    return-void
.end method

.method enableCustomView(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v1, 0x0

    .line 342
    iget-boolean v0, p0, Lcom/htc/widget/CarouselHost;->enableCustomView:Z

    if-ne p1, v0, :cond_0

    .line 382
    :goto_0
    return-void

    .line 345
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/CarouselHost;->enableCustomView:Z

    .line 347
    iget v0, p0, Lcom/htc/widget/CarouselHost;->customSpace:I

    if-gez v0, :cond_1

    .line 348
    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x20e008a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/CarouselHost;->customSpace:I

    .line 350
    :cond_1
    if-eqz p1, :cond_7

    .line 353
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_3

    .line 355
    iget v0, p0, Lcom/htc/widget/CarouselHost;->widgetSpace:I

    if-gez v0, :cond_2

    .line 356
    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x205006b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/CarouselHost;->widgetSpace:I

    .line 358
    :cond_2
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    .line 359
    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    iget-boolean v0, p0, Lcom/htc/widget/CarouselHost;->isPortrait:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v2, v1, v1, v0, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 362
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    const v2, 0x202006a

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 363
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    iget v4, p0, Lcom/htc/widget/CarouselHost;->customSpace:I

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/CarouselHost;->addView(Landroid/view/View;I)V

    .line 368
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 377
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mTabContent:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    .line 378
    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mTabContent:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_8

    iget v0, p0, Lcom/htc/widget/CarouselHost;->customSpace:I

    :goto_3
    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 381
    :cond_5
    const-string v0, "Carousel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableCustomView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

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

    .line 359
    :cond_6
    iget v0, p0, Lcom/htc/widget/CarouselHost;->widgetSpace:I

    goto :goto_1

    .line 372
    :cond_7
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    .line 373
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    :cond_8
    move v0, v1

    .line 378
    goto :goto_3
.end method

.method enableFullScreen(Z)V
    .locals 1
    .parameter "enableFull"

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/htc/widget/CarouselHost;->isFullScreen:Z

    if-ne p1, v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 207
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/CarouselHost;->isFullScreen:Z

    .line 208
    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->requestLayout()V

    .line 209
    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->invalidate()V

    goto :goto_0
.end method

.method findDropTarget(II[I)Lcom/htc/widget/DropTarget;
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "dropCoordinates"

    .prologue
    .line 1706
    invoke-direct {p0, p0, p1, p2, p3}, Lcom/htc/widget/CarouselHost;->findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/htc/widget/DropTarget;

    move-result-object v0

    return-object v0
.end method

.method getBackUpCurrentTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mBackupCurrentTag:Ljava/lang/String;

    return-object v0
.end method

.method public getCarouselWidget()Lcom/htc/widget/CarouselWidget;
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    return-object v0
.end method

.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselHost;->getPositionForTag(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCurrentTabTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTabView()Landroid/view/View;
    .locals 2

    .prologue
    .line 708
    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 709
    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/widget/CarouselHost;->getPositionForTag(Ljava/lang/String;)I

    move-result v0

    .line 710
    .local v0, index:I
    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v1, v0}, Lcom/htc/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 712
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
    .line 720
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method getDropAnimationRunnable()Lcom/htc/widget/CarouselHost$DropAnimationRunnable;
    .locals 1

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mDropAnimationRunnable:Lcom/htc/widget/CarouselHost$DropAnimationRunnable;

    return-object v0
.end method

.method getHostCount()I
    .locals 2

    .prologue
    .line 1870
    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v1}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/BinAdapter;

    .line 1871
    .local v0, adapter:Lcom/htc/widget/BinAdapter;
    invoke-virtual {v0}, Lcom/htc/widget/BinAdapter;->getCount()I

    move-result v1

    return v1
.end method

.method getIndexByTag(Ljava/lang/String;)I
    .locals 4
    .parameter "tag"

    .prologue
    const/4 v2, -0x1

    .line 1202
    if-nez p1, :cond_1

    move v0, v2

    .line 1210
    :cond_0
    :goto_0
    return v0

    .line 1203
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getHostCount()I

    move-result v1

    .line 1204
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1205
    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselHost;->getTabSpec(I)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/CarouselHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1204
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 1210
    goto :goto_0
.end method

.method getPositionForTag(Ljava/lang/String;)I
    .locals 7
    .parameter "tag"

    .prologue
    const/4 v5, -0x1

    .line 1875
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    move v2, v5

    .line 1894
    :cond_1
    :goto_0
    return v2

    .line 1878
    :cond_2
    iget-object v6, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v6}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/BinAdapter;

    .line 1879
    .local v0, adapter:Lcom/htc/widget/BinAdapter;
    invoke-virtual {v0}, Lcom/htc/widget/BinAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 1880
    .local v1, c:Landroid/database/Cursor;
    const/4 v2, -0x1

    .line 1881
    .local v2, index:I
    if-eqz v1, :cond_4

    .line 1882
    const-string v6, "task_tag"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 1884
    .local v4, taskTagIndex:I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1886
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_5

    .end local v4           #taskTagIndex:I
    :cond_4
    :goto_1
    move v2, v5

    .line 1894
    goto :goto_0

    .line 1888
    .restart local v4       #taskTagIndex:I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 1889
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1890
    .local v3, taskTag:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1892
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1
.end method

.method public getTabContentView()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method getTabSpec(I)Lcom/htc/widget/CarouselHost$TabSpec;
    .locals 6
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 1848
    if-gez p1, :cond_1

    .line 1862
    :cond_0
    :goto_0
    return-object v4

    .line 1851
    :cond_1
    iget-object v5, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v5}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/BinAdapter;

    .line 1852
    .local v0, adapter:Lcom/htc/widget/BinAdapter;
    invoke-virtual {v0}, Lcom/htc/widget/BinAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 1853
    .local v1, c:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 1854
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1855
    const-string v4, "task_tag"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 1856
    .local v3, taskTagIndex:I
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1857
    .local v2, taskTag:Ljava/lang/String;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1859
    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mCarousel:Lcom/htc/widget/CarouselActivity;

    invoke-virtual {v4}, Lcom/htc/widget/CarouselActivity;->getModel()Lcom/htc/widget/CarouselModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/CarouselModel;->getTabSpecTable()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/CarouselHost$TabSpec;

    goto :goto_0
.end method

.method getTabSpec(Ljava/lang/String;)Lcom/htc/widget/CarouselHost$TabSpec;
    .locals 1
    .parameter "taskTag"

    .prologue
    .line 1866
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mCarousel:Lcom/htc/widget/CarouselActivity;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->getModel()Lcom/htc/widget/CarouselModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/CarouselModel;->getTabSpecTable()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/CarouselHost$TabSpec;

    return-object v0
.end method

.method newTabSpec(Ljava/lang/String;)Lcom/htc/widget/CarouselHost$TabSpec;
    .locals 2
    .parameter "tag"

    .prologue
    .line 170
    new-instance v0, Lcom/htc/widget/CarouselHost$TabSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/htc/widget/CarouselHost$TabSpec;-><init>(Lcom/htc/widget/CarouselHost;Ljava/lang/String;Lcom/htc/widget/CarouselHost$1;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 430
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 431
    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 432
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 435
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 215
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 217
    invoke-direct {p0}, Lcom/htc/widget/CarouselHost;->setOrientation()V

    .line 218
    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->cancelDrag()V

    .line 220
    iget v2, p0, Lcom/htc/widget/CarouselHost;->widgetSpace:I

    if-gez v2, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x205006b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/CarouselHost;->widgetSpace:I

    .line 224
    :cond_0
    iget-boolean v2, p0, Lcom/htc/widget/CarouselHost;->enableCustomView:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    .line 225
    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->customViewContainer:Landroid/widget/FrameLayout;

    iget-boolean v2, p0, Lcom/htc/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    invoke-virtual {v4, v3, v3, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 228
    :cond_1
    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 230
    const v2, 0x2020063

    invoke-virtual {p0, v2}, Lcom/htc/widget/CarouselHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 232
    .local v1, slidingDrawer:Landroid/widget/RelativeLayout;
    if-eqz v1, :cond_2

    .line 233
    iget-boolean v2, p0, Lcom/htc/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_5

    move v2, v3

    :goto_1
    iget-boolean v4, p0, Lcom/htc/widget/CarouselHost;->isPortrait:Z

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/htc/widget/CarouselHost;->widgetSpace:I

    :goto_2
    invoke-virtual {v1, v3, v3, v2, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 235
    :cond_2
    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 237
    .local v0, lparams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v2, p0, Lcom/htc/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_7

    move v2, v3

    :goto_3
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 238
    const/16 v4, 0xe

    iget-boolean v2, p0, Lcom/htc/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_8

    move v2, v5

    :goto_4
    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 239
    const/16 v4, 0xc

    iget-boolean v2, p0, Lcom/htc/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_9

    move v2, v5

    :goto_5
    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 241
    const/16 v4, 0xf

    iget-boolean v2, p0, Lcom/htc/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_a

    move v2, v3

    :goto_6
    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 242
    const/16 v2, 0xb

    iget-boolean v4, p0, Lcom/htc/widget/CarouselHost;->isPortrait:Z

    if-eqz v4, :cond_b

    :goto_7
    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 244
    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2080158

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 247
    .end local v0           #lparams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #slidingDrawer:Landroid/widget/RelativeLayout;
    :cond_3
    return-void

    .line 225
    :cond_4
    iget v2, p0, Lcom/htc/widget/CarouselHost;->widgetSpace:I

    goto :goto_0

    .line 233
    .restart local v1       #slidingDrawer:Landroid/widget/RelativeLayout;
    :cond_5
    iget v2, p0, Lcom/htc/widget/CarouselHost;->widgetSpace:I

    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    .line 237
    .restart local v0       #lparams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    iget v2, p0, Lcom/htc/widget/CarouselHost;->widgetSpace:I

    mul-int/lit8 v2, v2, 0x2

    goto :goto_3

    :cond_8
    move v2, v3

    .line 238
    goto :goto_4

    :cond_9
    move v2, v3

    .line 239
    goto :goto_5

    :cond_a
    move v2, v5

    .line 241
    goto :goto_6

    :cond_b
    move v3, v5

    .line 242
    goto :goto_7
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 439
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 440
    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 441
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 445
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mCarousel:Lcom/htc/widget/CarouselActivity;

    invoke-virtual {v1}, Lcom/htc/widget/CarouselActivity;->setDragDropAnimationInitState()V

    .line 449
    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->decorViewHash:Lcom/htc/widget/CarouselHost$DecorHashMap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->decorViewHash:Lcom/htc/widget/CarouselHost$DecorHashMap;

    invoke-virtual {v1}, Lcom/htc/widget/CarouselHost$DecorHashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 450
    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->decorViewHash:Lcom/htc/widget/CarouselHost$DecorHashMap;

    invoke-virtual {v1}, Lcom/htc/widget/CarouselHost$DecorHashMap;->clear()V

    .line 451
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 1520
    iget-boolean v3, p0, Lcom/htc/widget/CarouselHost;->mShouldThrowEvent:Z

    if-eqz v3, :cond_0

    .line 1521
    const/4 v3, 0x1

    .line 1550
    :goto_0
    return v3

    .line 1523
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1525
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1526
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1527
    .local v2, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    sub-float/2addr v3, v1

    iput v3, p0, Lcom/htc/widget/CarouselHost;->mCorOffsetX:F

    .line 1528
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sub-float/2addr v3, v2

    iput v3, p0, Lcom/htc/widget/CarouselHost;->mCorOffsetY:F

    .line 1530
    packed-switch v0, :pswitch_data_0

    .line 1550
    :goto_1
    :pswitch_0
    iget-boolean v3, p0, Lcom/htc/widget/CarouselHost;->mDragging:Z

    goto :goto_0

    .line 1536
    :pswitch_1
    iput v1, p0, Lcom/htc/widget/CarouselHost;->mLastMotionX:F

    .line 1537
    iput v2, p0, Lcom/htc/widget/CarouselHost;->mLastMotionY:F

    .line 1538
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/widget/CarouselHost;->mLastDropTarget:Lcom/htc/widget/DropTarget;

    goto :goto_1

    .line 1543
    :pswitch_2
    iget-boolean v3, p0, Lcom/htc/widget/CarouselHost;->mShouldDrop:Z

    if-eqz v3, :cond_1

    invoke-direct {p0, v1, v2}, Lcom/htc/widget/CarouselHost;->drop(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1544
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/widget/CarouselHost;->mShouldDrop:Z

    .line 1546
    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/CarouselHost;->endDrag()V

    goto :goto_1

    .line 1530
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

    .line 252
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 257
    invoke-super {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    .line 258
    .local v4, screenwidth:I
    invoke-super {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    .line 261
    .local v3, screenheight:I
    iget-object v7, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v7}, Lcom/htc/widget/CarouselWidget;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_2

    const/4 v5, 0x1

    .line 263
    .local v5, visibilityGone:Z
    :goto_0
    iget v7, p0, Lcom/htc/widget/CarouselHost;->widgetSpace:I

    if-gez v7, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x205006b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/htc/widget/CarouselHost;->widgetSpace:I

    .line 266
    :cond_0
    iget-boolean v7, p0, Lcom/htc/widget/CarouselHost;->isPortrait:Z

    if-eqz v7, :cond_4

    .line 268
    iget v7, p0, Lcom/htc/widget/CarouselHost;->mPaddingLeft:I

    sub-int v7, v4, v7

    iget v8, p0, Lcom/htc/widget/CarouselHost;->mPaddingRight:I

    sub-int v1, v7, v8

    .line 269
    .local v1, localWidth:I
    iget v7, p0, Lcom/htc/widget/CarouselHost;->mPaddingTop:I

    sub-int v7, v3, v7

    iget v8, p0, Lcom/htc/widget/CarouselHost;->mPaddingBottom:I

    sub-int/2addr v7, v8

    iget-boolean v8, p0, Lcom/htc/widget/CarouselHost;->isFullScreen:Z

    if-eqz v8, :cond_3

    :cond_1
    :goto_1
    sub-int v0, v7, v6

    .line 277
    .local v0, localHeight:I
    :goto_2
    iget-object v6, p0, Lcom/htc/widget/CarouselHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-nez v6, :cond_7

    .line 278
    iget-object v6, p0, Lcom/htc/widget/CarouselHost;->mTabContent:Landroid/widget/FrameLayout;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    :goto_3
    iget-object v6, p0, Lcom/htc/widget/CarouselHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v6, v1, v0}, Lcom/htc/widget/CarouselHost;->measureChild(Landroid/view/View;II)V

    .line 291
    return-void

    .end local v0           #localHeight:I
    .end local v1           #localWidth:I
    .end local v5           #visibilityGone:Z
    :cond_2
    move v5, v6

    .line 261
    goto :goto_0

    .line 269
    .restart local v1       #localWidth:I
    .restart local v5       #visibilityGone:Z
    :cond_3
    if-nez v5, :cond_1

    iget v6, p0, Lcom/htc/widget/CarouselHost;->widgetSpace:I

    goto :goto_1

    .line 273
    .end local v1           #localWidth:I
    :cond_4
    iget v7, p0, Lcom/htc/widget/CarouselHost;->mPaddingLeft:I

    sub-int v7, v4, v7

    iget v8, p0, Lcom/htc/widget/CarouselHost;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget-boolean v8, p0, Lcom/htc/widget/CarouselHost;->isFullScreen:Z

    if-eqz v8, :cond_6

    :cond_5
    :goto_4
    sub-int v1, v7, v6

    .line 274
    .restart local v1       #localWidth:I
    iget v6, p0, Lcom/htc/widget/CarouselHost;->mPaddingTop:I

    sub-int v6, v3, v6

    iget v7, p0, Lcom/htc/widget/CarouselHost;->mPaddingBottom:I

    sub-int v0, v6, v7

    .restart local v0       #localHeight:I
    goto :goto_2

    .line 273
    .end local v0           #localHeight:I
    .end local v1           #localWidth:I
    :cond_6
    if-nez v5, :cond_5

    iget v6, p0, Lcom/htc/widget/CarouselHost;->widgetSpace:I

    goto :goto_4

    .line 283
    .restart local v0       #localHeight:I
    .restart local v1       #localWidth:I
    :cond_7
    iget-object v6, p0, Lcom/htc/widget/CarouselHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 284
    .local v2, lparams:Landroid/view/ViewGroup$LayoutParams;
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 285
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 287
    iget-object v6, p0, Lcom/htc/widget/CarouselHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 296
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/CarouselHost;->resetBound:Z

    .line 298
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24
    .parameter "ev"

    .prologue
    .line 1555
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/widget/CarouselHost;->mShouldThrowEvent:Z

    if-eqz v4, :cond_0

    .line 1556
    const/4 v4, 0x1

    .line 1631
    :goto_0
    return v4

    .line 1559
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/widget/CarouselHost;->mDragging:Z

    if-nez v4, :cond_1

    .line 1560
    const/4 v4, 0x0

    goto :goto_0

    .line 1563
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    .line 1564
    .local v11, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    .line 1565
    .local v22, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    .line 1567
    .local v23, y:F
    packed-switch v11, :pswitch_data_0

    .line 1631
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 1570
    :pswitch_0
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/CarouselHost;->mLastMotionX:F

    .line 1571
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/CarouselHost;->mLastMotionY:F

    goto :goto_1

    .line 1574
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/CarouselHost;->mTouchOffsetX:F

    move/from16 v19, v0

    .line 1575
    .local v19, touchX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/CarouselHost;->mTouchOffsetY:F

    move/from16 v20, v0

    .line 1577
    .local v20, touchY:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/CarouselHost;->mBitmapOffsetX:I

    .line 1578
    .local v15, offsetX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/CarouselHost;->mBitmapOffsetY:I

    move/from16 v16, v0

    .line 1580
    .local v16, offsetY:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/widget/CarouselHost;->mLastMotionX:F

    sub-float v4, v4, v19

    int-to-float v5, v15

    sub-float/2addr v4, v5

    float-to-int v14, v4

    .line 1581
    .local v14, left:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/widget/CarouselHost;->mLastMotionY:F

    sub-float v4, v4, v20

    move/from16 v0, v16

    int-to-float v5, v0

    sub-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v18, v0

    .line 1583
    .local v18, top:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v21

    .line 1584
    .local v21, width:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v13

    .line 1586
    .local v13, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/CarouselHost;->mRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    .line 1587
    .local v17, rect:Landroid/graphics/Rect;
    add-int/lit8 v4, v14, -0x1

    add-int/lit8 v5, v18, -0x1

    add-int v6, v14, v21

    add-int/lit8 v6, v6, 0x1

    add-int v7, v18, v13

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1589
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/CarouselHost;->mLastMotionX:F

    .line 1590
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/CarouselHost;->mLastMotionY:F

    .line 1592
    sub-float v4, v22, v19

    int-to-float v5, v15

    sub-float/2addr v4, v5

    float-to-int v14, v4

    .line 1593
    sub-float v4, v23, v20

    move/from16 v0, v16

    int-to-float v5, v0

    sub-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v18, v0

    .line 1596
    add-int/lit8 v4, v14, -0x1

    add-int/lit8 v5, v18, -0x1

    add-int v6, v14, v21

    add-int/lit8 v6, v6, 0x1

    add-int v7, v18, v13

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->union(IIII)V

    .line 1598
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/CarouselHost;->mDropCoordinates:[I

    .line 1599
    .local v12, coordinates:[I
    move/from16 v0, v22

    float-to-int v4, v0

    move/from16 v0, v23

    float-to-int v5, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v12}, Lcom/htc/widget/CarouselHost;->findDropTarget(II[I)Lcom/htc/widget/DropTarget;

    move-result-object v3

    .line 1600
    .local v3, dropTarget:Lcom/htc/widget/DropTarget;
    if-eqz v3, :cond_5

    .line 1601
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/CarouselHost;->mLastDropTarget:Lcom/htc/widget/DropTarget;

    if-ne v4, v3, :cond_3

    .line 1602
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/CarouselHost;->mDragSource:Lcom/htc/widget/DragSource;

    const/4 v5, 0x0

    aget v5, v12, v5

    const/4 v6, 0x1

    aget v6, v12, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v3 .. v9}, Lcom/htc/widget/DropTarget;->onDragOver(Lcom/htc/widget/DragSource;IIIILjava/lang/Object;)V

    .line 1615
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselHost;->invalidate(Landroid/graphics/Rect;)V

    .line 1617
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/widget/CarouselHost;->mLastDropTarget:Lcom/htc/widget/DropTarget;

    goto/16 :goto_1

    .line 1604
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/CarouselHost;->mLastDropTarget:Lcom/htc/widget/DropTarget;

    if-eqz v4, :cond_4

    .line 1605
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/CarouselHost;->mLastDropTarget:Lcom/htc/widget/DropTarget;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/widget/CarouselHost;->mDragSource:Lcom/htc/widget/DragSource;

    const/4 v6, 0x0

    aget v6, v12, v6

    const/4 v7, 0x1

    aget v7, v12, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v4 .. v10}, Lcom/htc/widget/DropTarget;->onDragExit(Lcom/htc/widget/DragSource;IIIILjava/lang/Object;)V

    .line 1607
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/CarouselHost;->mDragSource:Lcom/htc/widget/DragSource;

    const/4 v5, 0x0

    aget v5, v12, v5

    const/4 v6, 0x1

    aget v6, v12, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v3 .. v9}, Lcom/htc/widget/DropTarget;->onDragEnter(Lcom/htc/widget/DragSource;IIIILjava/lang/Object;)V

    goto :goto_2

    .line 1610
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/CarouselHost;->mLastDropTarget:Lcom/htc/widget/DropTarget;

    if-eqz v4, :cond_2

    .line 1611
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/CarouselHost;->mLastDropTarget:Lcom/htc/widget/DropTarget;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/widget/CarouselHost;->mDragSource:Lcom/htc/widget/DragSource;

    const/4 v6, 0x0

    aget v6, v12, v6

    const/4 v7, 0x1

    aget v7, v12, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/CarouselHost;->mTouchOffsetX:F

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/CarouselHost;->mTouchOffsetY:F

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v4 .. v10}, Lcom/htc/widget/DropTarget;->onDragExit(Lcom/htc/widget/DragSource;IIIILjava/lang/Object;)V

    goto :goto_2

    .line 1620
    .end local v3           #dropTarget:Lcom/htc/widget/DropTarget;
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

    iget-boolean v4, v0, Lcom/htc/widget/CarouselHost;->mShouldDrop:Z

    if-eqz v4, :cond_6

    .line 1622
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/CarouselHost;->drop(FF)Z

    .line 1623
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/widget/CarouselHost;->mShouldDrop:Z

    .line 1625
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/CarouselHost;->endDrag()V

    goto/16 :goto_1

    .line 1628
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/CarouselHost;->endDrag()V

    goto/16 :goto_1

    .line 1567
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
    .line 457
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->requestFocus()Z

    .line 464
    :cond_1
    return-void
.end method

.method removeIndicator()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1384
    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    .line 1385
    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1386
    .local v1, wm:Landroid/view/WindowManager;
    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1387
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/widget/CarouselHost;->mDragView:Landroid/widget/FrameLayout;

    .line 1390
    const v2, 0x2020064

    invoke-virtual {p0, v2}, Lcom/htc/widget/CarouselHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/BinGridView;

    .line 1392
    .local v0, binGridView:Lcom/htc/widget/BinGridView;
    if-eqz v0, :cond_0

    .line 1395
    invoke-virtual {v0}, Lcom/htc/widget/BinGridView;->endDragOneItem()V

    .line 1396
    invoke-virtual {v0, v4}, Lcom/htc/widget/BinGridView;->setDrawNextItem(Z)V

    .line 1400
    .end local v0           #binGridView:Lcom/htc/widget/BinGridView;
    .end local v1           #wm:Landroid/view/WindowManager;
    :cond_0
    iput-boolean v4, p0, Lcom/htc/widget/CarouselHost;->mShouldThrowEvent:Z

    .line 1401
    iput-boolean v4, p0, Lcom/htc/widget/CarouselHost;->mDragging:Z

    .line 1402
    return-void
.end method

.method removeTab(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 658
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 659
    :cond_0
    const-string v0, "CarouselHost"

    const-string v1, "Invalid tag. Can not delete"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_1
    :goto_0
    return-void

    .line 663
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getHostCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_3

    .line 664
    const-string v0, "CarouselHost"

    const-string v1, "Table number is one. Can not delete"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 668
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 669
    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->setNextTab()V

    .line 670
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselHost;->getTabSpec(Ljava/lang/String;)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v0

    #getter for: Lcom/htc/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/widget/CarouselHost$ContentStrategy;
    invoke-static {v0}, Lcom/htc/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/widget/CarouselHost$TabSpec;)Lcom/htc/widget/CarouselHost$ContentStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/widget/CarouselHost$ContentStrategy;->tabClosed()V

    .line 671
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    goto :goto_0
.end method

.method public removeTabByTag(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 647
    invoke-virtual {p0, p1}, Lcom/htc/widget/CarouselHost;->removeTab(Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mCarousel:Lcom/htc/widget/CarouselActivity;

    invoke-virtual {v0, p1}, Lcom/htc/widget/CarouselActivity;->removeTagFromDB(Ljava/lang/String;)V

    .line 649
    return-void
.end method

.method removeTipBubble()V
    .locals 3

    .prologue
    .line 1276
    const-string v1, "Carousel"

    const-string v2, "removeTipBubble()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1281
    const v1, 0x2020063

    invoke-virtual {p0, v1}, Lcom/htc/widget/CarouselHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1283
    .local v0, slidingDrawer:Landroid/widget/RelativeLayout;
    if-eqz v0, :cond_0

    .line 1284
    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1286
    .end local v0           #slidingDrawer:Landroid/widget/RelativeLayout;
    :cond_0
    return-void
.end method

.method public setAlternativeTabName(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "tag"
    .parameter "text"

    .prologue
    .line 864
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mCarousel:Lcom/htc/widget/CarouselActivity;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/CarouselActivity;->setAlternativeTabName(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 865
    return-void
.end method

.method setBackupCurrentTag(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 743
    iput-object p1, p0, Lcom/htc/widget/CarouselHost;->mBackupCurrentTag:Ljava/lang/String;

    .line 744
    return-void
.end method

.method setCarousel(Lcom/htc/widget/CarouselActivity;)V
    .locals 0
    .parameter "carousel"

    .prologue
    .line 1184
    iput-object p1, p0, Lcom/htc/widget/CarouselHost;->mCarousel:Lcom/htc/widget/CarouselActivity;

    .line 1185
    return-void
.end method

.method public setCountText(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "tag"
    .parameter "text"

    .prologue
    .line 860
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mCarousel:Lcom/htc/widget/CarouselActivity;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/CarouselActivity;->setCountText(Ljava/lang/String;Ljava/lang/CharSequence;)I

    .line 861
    return-void
.end method

.method public setCountVisibility(Ljava/lang/String;Z)V
    .locals 1
    .parameter "tag"
    .parameter "enable"

    .prologue
    .line 856
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mCarousel:Lcom/htc/widget/CarouselActivity;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/CarouselActivity;->setCountVisibility(Ljava/lang/String;Z)I

    .line 857
    return-void
.end method

.method public setCurrentTabByTag(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    const/4 v1, 0x0

    .line 728
    if-nez p1, :cond_0

    .line 729
    invoke-virtual {p0, v1}, Lcom/htc/widget/CarouselHost;->setCurrentTabUtil(I)V

    .line 740
    :goto_0
    return-void

    .line 731
    :cond_0
    iput-object p1, p0, Lcom/htc/widget/CarouselHost;->mBackupCurrentTag:Ljava/lang/String;

    .line 732
    invoke-virtual {p0, p1}, Lcom/htc/widget/CarouselHost;->getPositionForTag(Ljava/lang/String;)I

    move-result v0

    .line 733
    .local v0, i:I
    if-ltz v0, :cond_1

    .line 734
    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselHost;->setCurrentTabUtil(I)V

    goto :goto_0

    .line 737
    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/widget/CarouselHost;->setCurrentTabUtil(I)V

    goto :goto_0
.end method

.method setCurrentTabUtil(I)V
    .locals 9
    .parameter "index"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 780
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getHostCount()I

    move-result v4

    if-lt p1, v4, :cond_1

    .line 853
    :cond_0
    :goto_0
    return-void

    .line 784
    :cond_1
    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/htc/widget/CarouselHost;->getPositionForTag(Ljava/lang/String;)I

    move-result v0

    .line 785
    .local v0, currentIndex:I
    if-ne p1, v0, :cond_2

    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 786
    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v4, p1}, Lcom/htc/widget/CarouselWidget;->setCurrentTabUtil(I)V

    .line 790
    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 791
    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 797
    :cond_2
    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 798
    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/htc/widget/CarouselHost;->getTabSpec(Ljava/lang/String;)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v1

    .line 799
    .local v1, s:Lcom/htc/widget/CarouselHost$TabSpec;
    if-nez v1, :cond_3

    .line 800
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, " bad ! spec is  null on the setCurrentTab"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 803
    :cond_3
    #getter for: Lcom/htc/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/widget/CarouselHost$ContentStrategy;
    invoke-static {v1}, Lcom/htc/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/widget/CarouselHost$TabSpec;)Lcom/htc/widget/CarouselHost$ContentStrategy;

    move-result-object v4

    if-nez v4, :cond_4

    .line 806
    :cond_4
    #getter for: Lcom/htc/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/widget/CarouselHost$ContentStrategy;
    invoke-static {v1}, Lcom/htc/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/widget/CarouselHost$TabSpec;)Lcom/htc/widget/CarouselHost$ContentStrategy;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/widget/CarouselHost$ContentStrategy;->tabClosed()V

    .line 810
    .end local v1           #s:Lcom/htc/widget/CarouselHost$TabSpec;
    :cond_5
    invoke-virtual {p0, p1}, Lcom/htc/widget/CarouselHost;->getTabSpec(I)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v2

    .line 811
    .local v2, spec:Lcom/htc/widget/CarouselHost$TabSpec;
    if-nez v2, :cond_6

    .line 812
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, " bad ! spec is  null on the setCurrentTab"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 815
    :cond_6
    #getter for: Lcom/htc/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/widget/CarouselHost$ContentStrategy;
    invoke-static {v2}, Lcom/htc/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/widget/CarouselHost$TabSpec;)Lcom/htc/widget/CarouselHost$ContentStrategy;

    move-result-object v4

    if-nez v4, :cond_7

    .line 821
    :cond_7
    invoke-virtual {p0, p1}, Lcom/htc/widget/CarouselHost;->getTabSpec(I)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/CarouselHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 822
    .local v3, tag:Ljava/lang/String;
    iput-object v3, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    .line 823
    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v4, p1}, Lcom/htc/widget/CarouselWidget;->setCurrentTabUtil(I)V

    .line 826
    #getter for: Lcom/htc/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/widget/CarouselHost$ContentStrategy;
    invoke-static {v2}, Lcom/htc/widget/CarouselHost$TabSpec;->access$600(Lcom/htc/widget/CarouselHost$TabSpec;)Lcom/htc/widget/CarouselHost$ContentStrategy;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/widget/CarouselHost$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    .line 828
    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    if-nez v4, :cond_8

    .line 829
    const-string v4, "CarouselHost::setCurrentTabUtil()"

    const-string v5, "Strange !, Current View is null "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 835
    :cond_8
    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_9

    .line 837
    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mTabContent:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 842
    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->decorViewHash:Lcom/htc/widget/CarouselHost$DecorHashMap;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 843
    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->decorViewHash:Lcom/htc/widget/CarouselHost$DecorHashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/widget/CarouselHost;->mCarousel:Lcom/htc/widget/CarouselActivity;

    iget-object v6, v6, Lcom/htc/widget/CarouselActivity;->mGID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/CarouselHost$DecorHashMap;->putHash(Ljava/lang/String;Landroid/view/View;)Ljava/lang/ref/WeakReference;

    .line 847
    :cond_9
    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v4}, Lcom/htc/widget/CarouselWidget;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_a

    .line 848
    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 851
    :cond_a
    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 852
    iget-object v4, p0, Lcom/htc/widget/CarouselHost;->mCarousel:Lcom/htc/widget/CarouselActivity;

    iget-object v5, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/widget/CarouselActivity;->onCurrentTabChanged(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method setIsProviderAp(Z)V
    .locals 0
    .parameter "isProviderAp"

    .prologue
    .line 1188
    iput-boolean p1, p0, Lcom/htc/widget/CarouselHost;->mIsProviderAP:Z

    .line 1189
    return-void
.end method

.method setNextTab()V
    .locals 3

    .prologue
    .line 756
    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/widget/CarouselHost;->getPositionForTag(Ljava/lang/String;)I

    move-result v0

    .line 758
    .local v0, currentIndex:I
    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getHostCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_0

    .line 759
    add-int/lit8 v0, v0, -0x1

    .line 763
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselHost;->getTabSpec(I)Lcom/htc/widget/CarouselHost$TabSpec;

    move-result-object v1

    .line 764
    .local v1, spec:Lcom/htc/widget/CarouselHost$TabSpec;
    invoke-virtual {v1}, Lcom/htc/widget/CarouselHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/CarouselHost;->mBackupCurrentTag:Ljava/lang/String;

    .line 765
    return-void

    .line 761
    .end local v1           #spec:Lcom/htc/widget/CarouselHost$TabSpec;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setTabHintEnabled(Z)V
    .locals 0
    .parameter "tabHint"

    .prologue
    .line 1950
    return-void
.end method

.method setup()V
    .locals 2

    .prologue
    .line 401
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/CarouselWidget;

    iput-object v0, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    .line 402
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    if-nez v0, :cond_0

    .line 403
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a TabWidget whose id attribute is \'android.R.id.tabs\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0, p0}, Lcom/htc/widget/CarouselWidget;->setCarouselHost(Lcom/htc/widget/CarouselHost;)V

    .line 408
    const v0, 0x1020011

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/htc/widget/CarouselHost;->mTabContent:Landroid/widget/FrameLayout;

    .line 410
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 412
    const/4 v0, 0x0

    invoke-direct {p0, p0, v0}, Lcom/htc/widget/CarouselHost;->printViewTree(Landroid/view/ViewGroup;I)V

    .line 414
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a FrameLayout whose id attribute is \'android.R.id.tabcontent\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_1
    return-void
.end method

.method setup(Landroid/app/LocalActivityManager;)V
    .locals 0
    .parameter "activityGroup"

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->setup()V

    .line 425
    iput-object p1, p0, Lcom/htc/widget/CarouselHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 426
    return-void
.end method

.method showTipBubble()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1238
    const-string v2, "Carousel"

    const-string v5, "showTipBubble()"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    const v2, 0x2020063

    invoke-virtual {p0, v2}, Lcom/htc/widget/CarouselHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 1243
    .local v1, slidingDrawer:Landroid/widget/RelativeLayout;
    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1245
    iget v2, p0, Lcom/htc/widget/CarouselHost;->widgetSpace:I

    if-gez v2, :cond_0

    .line 1246
    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x205006b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/CarouselHost;->widgetSpace:I

    .line 1248
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1250
    .local v0, lparams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v2, p0, Lcom/htc/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1251
    const/16 v5, 0xe

    iget-boolean v2, p0, Lcom/htc/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_5

    move v2, v4

    :goto_1
    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1252
    const/16 v5, 0xc

    iget-boolean v2, p0, Lcom/htc/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_6

    move v2, v4

    :goto_2
    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1254
    const/16 v5, 0xf

    iget-boolean v2, p0, Lcom/htc/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_7

    move v2, v3

    :goto_3
    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1255
    const/16 v2, 0xb

    iget-boolean v5, p0, Lcom/htc/widget/CarouselHost;->isPortrait:Z

    if-eqz v5, :cond_1

    move v4, v3

    :cond_1
    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1257
    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1258
    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x2080158

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1261
    if-eqz v1, :cond_2

    .line 1263
    iget-boolean v2, p0, Lcom/htc/widget/CarouselHost;->isPortrait:Z

    if-eqz v2, :cond_8

    move v2, v3

    :goto_4
    iget-boolean v4, p0, Lcom/htc/widget/CarouselHost;->isPortrait:Z

    if-eqz v4, :cond_9

    iget v4, p0, Lcom/htc/widget/CarouselHost;->widgetSpace:I

    :goto_5
    invoke-virtual {v1, v3, v3, v2, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 1264
    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1269
    .end local v0           #lparams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1270
    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->tipBubble:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1271
    :cond_3
    return-void

    .line 1250
    .restart local v0       #lparams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    iget v2, p0, Lcom/htc/widget/CarouselHost;->widgetSpace:I

    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_5
    move v2, v3

    .line 1251
    goto :goto_1

    :cond_6
    move v2, v3

    .line 1252
    goto :goto_2

    :cond_7
    move v2, v4

    .line 1254
    goto :goto_3

    .line 1263
    :cond_8
    iget v2, p0, Lcom/htc/widget/CarouselHost;->widgetSpace:I

    goto :goto_4

    :cond_9
    move v4, v3

    goto :goto_5
.end method

.method public startDrag(Landroid/view/View;Lcom/htc/widget/DragSource;Ljava/lang/Object;I)V
    .locals 14
    .parameter "view"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"

    .prologue
    .line 1407
    move-object/from16 v0, p2

    instance-of v12, v0, Lcom/htc/widget/BinGridView;

    if-eqz v12, :cond_3

    .line 1409
    iget-object v12, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v12}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 1411
    iget-object v12, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v12}, Lcom/htc/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v5

    .line 1412
    .local v5, firstVisPos:I
    iget-object v12, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v12}, Lcom/htc/widget/CarouselWidget;->getLastVisiblePosition()I

    move-result v8

    .line 1414
    .local v8, lastVisPos:I
    iget-object v12, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    sub-int v13, v8, v5

    invoke-virtual {v12, v13}, Lcom/htc/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1416
    .local v9, lastVisView:Landroid/view/View;
    if-eqz v9, :cond_0

    .line 1418
    iget-object v12, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v12}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v12

    invoke-interface {v12}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    .line 1419
    .local v3, count:I
    iget-boolean v12, p0, Lcom/htc/widget/CarouselHost;->isPortrait:Z

    if-eqz v12, :cond_2

    .line 1421
    iget-object v12, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v12}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v7

    .line 1422
    .local v7, itemWidth:I
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v12

    sub-int v13, v3, v8

    mul-int/2addr v13, v7

    add-int v1, v12, v13

    .line 1423
    .local v1, anchor:I
    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getWidth()I

    move-result v12

    sub-int/2addr v12, v1

    div-int/lit8 v13, v7, 0x2

    sub-int v4, v12, v13

    .line 1424
    .local v4, distance:I
    invoke-direct {p0}, Lcom/htc/widget/CarouselHost;->setDragBinGridViewToTrue()V

    .line 1426
    iget-object v12, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v12}, Lcom/htc/widget/CarouselWidget;->getMaxCapacity()I

    move-result v12

    if-le v3, v12, :cond_0

    .line 1427
    iget-object v12, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v12, v4}, Lcom/htc/widget/CarouselWidget;->scrollBy(I)V

    .line 1459
    .end local v1           #anchor:I
    .end local v3           #count:I
    .end local v4           #distance:I
    .end local v5           #firstVisPos:I
    .end local v7           #itemWidth:I
    .end local v8           #lastVisPos:I
    .end local v9           #lastVisView:Landroid/view/View;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->removeTipBubble()V

    .line 1461
    const/4 v12, 0x2

    new-array v10, v12, [I

    .line 1462
    .local v10, loc:[I
    invoke-virtual {p1, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1464
    iget v12, p0, Lcom/htc/widget/CarouselHost;->mLastMotionX:F

    const/4 v13, 0x0

    aget v13, v10, v13

    int-to-float v13, v13

    sub-float/2addr v12, v13

    iget v13, p0, Lcom/htc/widget/CarouselHost;->mCorOffsetX:F

    add-float/2addr v12, v13

    iput v12, p0, Lcom/htc/widget/CarouselHost;->mTouchOffsetX:F

    .line 1465
    iget v12, p0, Lcom/htc/widget/CarouselHost;->mLastMotionY:F

    const/4 v13, 0x1

    aget v13, v10, v13

    int-to-float v13, v13

    sub-float/2addr v12, v13

    iget v13, p0, Lcom/htc/widget/CarouselHost;->mCorOffsetY:F

    add-float/2addr v12, v13

    iput v12, p0, Lcom/htc/widget/CarouselHost;->mTouchOffsetY:F

    .line 1467
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 1468
    const/4 v12, 0x0

    invoke-virtual {p1, v12}, Landroid/view/View;->setPressed(Z)V

    .line 1470
    const/4 v12, 0x0

    iput v12, p0, Lcom/htc/widget/CarouselHost;->mBitmapOffsetX:I

    .line 1471
    const/4 v12, 0x0

    iput v12, p0, Lcom/htc/widget/CarouselHost;->mBitmapOffsetY:I

    .line 1473
    if-nez p4, :cond_1

    .line 1474
    const/4 v12, 0x4

    invoke-virtual {p1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1476
    :cond_1
    iput-object p1, p0, Lcom/htc/widget/CarouselHost;->mOriginator:Landroid/view/View;

    .line 1477
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/htc/widget/CarouselHost;->mDragSource:Lcom/htc/widget/DragSource;

    .line 1478
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/htc/widget/CarouselHost;->mDragInfo:Ljava/lang/Object;

    .line 1479
    invoke-direct {p0, p1}, Lcom/htc/widget/CarouselHost;->createDragView(Landroid/view/View;)V

    .line 1481
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/widget/CarouselHost;->mDragging:Z

    .line 1482
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/htc/widget/CarouselHost;->mShouldDrop:Z

    .line 1483
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/htc/widget/CarouselHost;->mShouldThrowEvent:Z

    .line 1484
    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->invalidate()V

    .line 1485
    return-void

    .line 1431
    .end local v10           #loc:[I
    .restart local v3       #count:I
    .restart local v5       #firstVisPos:I
    .restart local v8       #lastVisPos:I
    .restart local v9       #lastVisView:Landroid/view/View;
    :cond_2
    iget-object v12, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v12}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v6

    .line 1432
    .local v6, itemHeight:I
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v12

    sub-int v13, v3, v8

    mul-int/2addr v13, v6

    add-int v1, v12, v13

    .line 1433
    .restart local v1       #anchor:I
    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost;->getHeight()I

    move-result v12

    sub-int/2addr v12, v1

    div-int/lit8 v13, v6, 0x2

    sub-int v4, v12, v13

    .line 1434
    .restart local v4       #distance:I
    invoke-direct {p0}, Lcom/htc/widget/CarouselHost;->setDragBinGridViewToTrue()V

    .line 1436
    iget-object v12, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v12}, Lcom/htc/widget/CarouselWidget;->getMaxCapacity()I

    move-result v12

    if-le v3, v12, :cond_0

    .line 1437
    iget-object v12, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v12, v4}, Lcom/htc/widget/CarouselWidget;->scrollBy(I)V

    goto :goto_0

    .line 1446
    .end local v1           #anchor:I
    .end local v3           #count:I
    .end local v4           #distance:I
    .end local v5           #firstVisPos:I
    .end local v6           #itemHeight:I
    .end local v8           #lastVisPos:I
    .end local v9           #lastVisView:Landroid/view/View;
    :cond_3
    const v12, 0x2020064

    invoke-virtual {p0, v12}, Lcom/htc/widget/CarouselHost;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/BinGridView;

    .local v2, binGridView:Lcom/htc/widget/BinGridView;
    move-object/from16 v12, p3

    .line 1448
    check-cast v12, Lcom/htc/widget/TaskInfo;

    iget v12, v12, Lcom/htc/widget/TaskInfo;->isRemovable:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    const/4 v11, 0x1

    .line 1450
    .local v11, removeable:Z
    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/htc/widget/BinGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v12

    if-eqz v12, :cond_0

    if-eqz v11, :cond_0

    .line 1452
    invoke-virtual {v2}, Lcom/htc/widget/BinGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v12

    invoke-interface {v12}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    if-nez v12, :cond_5

    .line 1453
    invoke-virtual {v2}, Lcom/htc/widget/BinGridView;->startDragOneItem()V

    goto/16 :goto_0

    .line 1448
    .end local v11           #removeable:Z
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 1455
    .restart local v11       #removeable:Z
    :cond_5
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Lcom/htc/widget/BinGridView;->setDrawNextItem(Z)V

    goto/16 :goto_0
.end method

.method switchPanelToPositive()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2120
    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->viewSwitcher:Lcom/htc/widget/CarouselViewSwitcher;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v1}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2121
    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->viewSwitcher:Lcom/htc/widget/CarouselViewSwitcher;

    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/widget/CarouselViewSwitcher;->switchPanelToPositive(Z)V

    .line 2122
    :cond_0
    return-void

    .line 2121
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public switchPanelView()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2113
    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->viewSwitcher:Lcom/htc/widget/CarouselViewSwitcher;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v1}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2114
    iget-object v1, p0, Lcom/htc/widget/CarouselHost;->viewSwitcher:Lcom/htc/widget/CarouselViewSwitcher;

    iget-object v2, p0, Lcom/htc/widget/CarouselHost;->mPanelSwitchWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/widget/CarouselViewSwitcher;->switchPanelView(Z)V

    .line 2115
    :cond_0
    return-void

    .line 2114
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public useDefaultTabName(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 868
    iget-object v0, p0, Lcom/htc/widget/CarouselHost;->mCarousel:Lcom/htc/widget/CarouselActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/htc/widget/CarouselActivity;->setAlternativeTabName(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 869
    return-void
.end method
