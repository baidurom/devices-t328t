.class public abstract Landroid/view/ViewGroup;
.super Landroid/view/View;
.source "ViewGroup.java"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/ViewManager;
.implements Landroid/view/HtcIfViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewGroup$HoverTarget;,
        Landroid/view/ViewGroup$TouchTarget;,
        Landroid/view/ViewGroup$MarginLayoutParams;,
        Landroid/view/ViewGroup$LayoutParams;,
        Landroid/view/ViewGroup$OnHierarchyChangeListener;
    }
.end annotation


# static fields
.field private static final ARRAY_CAPACITY_INCREMENT:I = 0xc

.field private static final ARRAY_INITIAL_CAPACITY:I = 0xc

.field private static final CHILD_LEFT_INDEX:I = 0x0

.field private static final CHILD_TOP_INDEX:I = 0x1

.field protected static final CLIP_TO_PADDING_MASK:I = 0x22

.field private static final DBG:Z = false

.field private static final DESCENDANT_FOCUSABILITY_FLAGS:[I = null

.field private static final FLAG_ADD_STATES_FROM_CHILDREN:I = 0x2000

.field private static final FLAG_ALPHA_LOWER_THAN_ONE:I = 0x1000

.field private static final FLAG_ALWAYS_DRAWN_WITH_CACHE:I = 0x4000

.field private static final FLAG_ANIMATION_CACHE:I = 0x40

.field private static final FLAG_ANIMATION_DONE:I = 0x10

.field private static final FLAG_CHILDREN_DRAWN_WITH_CACHE:I = 0x8000

.field private static final FLAG_CLEAR_TRANSFORMATION:I = 0x100

.field private static final FLAG_CLIP_CHILDREN:I = 0x1

.field private static final FLAG_CLIP_TO_PADDING:I = 0x2

.field protected static final FLAG_DISALLOW_INTERCEPT:I = 0x80000

.field private static final FLAG_INVALIDATE_REQUIRED:I = 0x4

.field private static final FLAG_MASK_FOCUSABILITY:I = 0x60000

.field private static final FLAG_NOTIFY_ANIMATION_LISTENER:I = 0x200

.field private static final FLAG_NOTIFY_CHILDREN_ON_DRAWABLE_STATE_CHANGE:I = 0x10000

.field private static final FLAG_OPTIMIZE_INVALIDATE:I = 0x80

.field private static final FLAG_PADDING_NOT_NULL:I = 0x20

.field private static final FLAG_PREVENT_DISPATCH_ATTACHED_TO_WINDOW:I = 0x400000

.field private static final FLAG_RUN_ANIMATION:I = 0x8

.field private static final FLAG_SPLIT_MOTION_EVENTS:I = 0x200000

.field protected static final FLAG_SUPPORT_STATIC_TRANSFORMATIONS:I = 0x800

.field protected static final FLAG_USE_CHILD_DRAWING_ORDER:I = 0x400

.field public static final FOCUS_AFTER_DESCENDANTS:I = 0x40000

.field public static final FOCUS_BEFORE_DESCENDANTS:I = 0x20000

.field public static final FOCUS_BLOCK_DESCENDANTS:I = 0x60000

.field public static final PERSISTENT_ALL_CACHES:I = 0x3

.field public static final PERSISTENT_ANIMATION_CACHE:I = 0x1

.field public static final PERSISTENT_NO_CACHE:I = 0x0

.field public static final PERSISTENT_SCROLLING_CACHE:I = 0x2


# instance fields
.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mCachePaint:Landroid/graphics/Paint;

.field private mChildAcceptsDrag:Z

.field private final mChildTransformation:Landroid/view/animation/Transformation;

.field private mChildren:[Landroid/view/View;

.field private mChildrenCount:I

.field private mCurrentDrag:Landroid/view/DragEvent;

.field private mCurrentDragView:Landroid/view/View;

.field protected mDisappearingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDragNotifiedChildren:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawLayers:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation
.end field

.field private mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

.field private mFirstPenTarget:Landroid/view/ViewGroup$TouchTarget;

.field private mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

.field private mFocused:Landroid/view/View;

.field protected mGroupFlags:I

.field private mHoveredSelf:Z

.field private mInvalidateRegion:Landroid/graphics/RectF;

.field private mInvalidationTransformation:Landroid/view/animation/Transformation;

.field private mLastPenDownIndex:I

.field private mLastPenDownTime:J

.field private mLastPenDownX:F

.field private mLastPenDownY:F

.field private mLastTouchDownIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownTime:J
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownX:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownY:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

.field private mLayoutSuppressed:Z

.field private mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

.field private final mLocalPoint:Landroid/graphics/PointF;

.field protected mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field protected mPersistentDrawingCache:I

.field private mTransition:Landroid/animation/LayoutTransition;

.field private mTransitioningViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mView_onInterceptPenEvent:Ljava/lang/reflect/Method;

.field private mVisibilityChangingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x2t 0x0t
        0x0t 0x0t 0x4t 0x0t
        0x0t 0x0t 0x6t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    .line 394
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 110
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 134
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    .line 152
    iput v1, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 154
    iput v1, p0, Landroid/view/ViewGroup;->mLastPenDownIndex:I

    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    .line 390
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mDrawLayers:Z

    .line 5219
    new-instance v0, Landroid/view/ViewGroup$3;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$3;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 395
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 396
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, -0x1

    .line 399
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 134
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    .line 152
    iput v1, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 154
    iput v1, p0, Landroid/view/ViewGroup;->mLastPenDownIndex:I

    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    .line 390
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mDrawLayers:Z

    .line 5219
    new-instance v0, Landroid/view/ViewGroup$3;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$3;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 400
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 401
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 402
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, -0x1

    .line 405
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 134
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    .line 152
    iput v1, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 154
    iput v1, p0, Landroid/view/ViewGroup;->mLastPenDownIndex:I

    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    .line 390
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mDrawLayers:Z

    .line 5219
    new-instance v0, Landroid/view/ViewGroup$3;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$3;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 406
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 407
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 408
    return-void
.end method

.method static synthetic access$000(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/view/ViewGroup;->notifyAnimationListener()V

    return-void
.end method

.method static synthetic access$100(Landroid/view/ViewGroup;)Landroid/view/animation/LayoutAnimationController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/ViewGroup;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/view/ViewGroup;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    return v0
.end method

.method static synthetic access$302(Landroid/view/ViewGroup;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    return p1
.end method

.method static synthetic access$400(Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addDisappearingView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 5112
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 5114
    .local v0, disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v0, :cond_0

    .line 5115
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 5118
    .restart local v0       #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5119
    return-void
.end method

.method private addInArray(Landroid/view/View;I)V
    .locals 6
    .parameter "child"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 3690
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3691
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3692
    .local v1, count:I
    array-length v2, v0

    .line 3693
    .local v2, size:I
    if-ne p2, v1, :cond_2

    .line 3694
    if-ne v2, v1, :cond_0

    .line 3695
    add-int/lit8 v3, v2, 0xc

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3696
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3697
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3699
    :cond_0
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object p1, v0, v3

    .line 3717
    :cond_1
    :goto_0
    return-void

    .line 3700
    :cond_2
    if-ge p2, v1, :cond_4

    .line 3701
    if-ne v2, v1, :cond_3

    .line 3702
    add-int/lit8 v3, v2, 0xc

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3703
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v0, v4, v3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3704
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    add-int/lit8 v4, p2, 0x1

    sub-int v5, v1, p2

    invoke-static {v0, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3705
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3709
    :goto_1
    aput-object p1, v0, p2

    .line 3710
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3711
    iget v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-lt v3, p2, :cond_1

    .line 3712
    iget v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    goto :goto_0

    .line 3707
    :cond_3
    add-int/lit8 v3, p2, 0x1

    sub-int v4, v1, p2

    invoke-static {v0, p2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 3715
    :cond_4
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private addPenTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;
    .locals 2
    .parameter "child"
    .parameter "pointerIdBits"

    .prologue
    .line 1931
    invoke-static {p1, p2}, Landroid/view/ViewGroup$TouchTarget;->obtain(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v0

    .line 1932
    .local v0, target:Landroid/view/ViewGroup$TouchTarget;
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstPenTarget:Landroid/view/ViewGroup$TouchTarget;

    iput-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 1933
    iput-object v0, p0, Landroid/view/ViewGroup;->mFirstPenTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 1934
    return-object v0
.end method

.method private addTouchTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;
    .locals 2
    .parameter "child"
    .parameter "pointerIdBits"

    .prologue
    .line 1923
    invoke-static {p1, p2}, Landroid/view/ViewGroup$TouchTarget;->obtain(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v0

    .line 1924
    .local v0, target:Landroid/view/ViewGroup$TouchTarget;
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    iput-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 1925
    iput-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 1926
    return-object v0
.end method

.method private addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 5
    .parameter "child"
    .parameter "index"
    .parameter "params"
    .parameter "preventRequestLayout"

    .prologue
    const/high16 v4, 0x40

    .line 3629
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v2, :cond_0

    .line 3632
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/animation/LayoutTransition;->cancel(I)V

    .line 3635
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3636
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3640
    :cond_1
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v2, :cond_2

    .line 3641
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v2, p0, p1}, Landroid/animation/LayoutTransition;->addChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 3644
    :cond_2
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3645
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 3648
    :cond_3
    if-eqz p4, :cond_9

    .line 3649
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 3654
    :goto_0
    if-gez p2, :cond_4

    .line 3655
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3658
    :cond_4
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 3661
    if-eqz p4, :cond_a

    .line 3662
    invoke-virtual {p1, p0}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 3667
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3668
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 3671
    :cond_5
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 3672
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_7

    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v2, v4

    if-nez v2, :cond_7

    .line 3673
    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 3674
    .local v1, lastKeepOn:Z
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 3675
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 3676
    iget-boolean v2, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v2, :cond_6

    .line 3677
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 3679
    :cond_6
    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 3682
    .end local v1           #lastKeepOn:Z
    :cond_7
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 3684
    iget v2, p1, Landroid/view/View;->mViewFlags:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_8

    .line 3685
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v3, 0x1

    or-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3687
    :cond_8
    return-void

    .line 3651
    .end local v0           #ai:Landroid/view/View$AttachInfo;
    :cond_9
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 3664
    :cond_a
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_1
.end method

.method private bindLayoutAnimation(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 3785
    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v1, p1}, Landroid/view/animation/LayoutAnimationController;->getAnimationForView(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3786
    .local v0, a:Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3787
    return-void
.end method

.method private static canViewReceivePointerEvents(Landroid/view/View;)Z
    .locals 1
    .parameter "child"

    .prologue
    .line 1994
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelAndClearPenTargets(Landroid/view/MotionEvent;)V
    .locals 10
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    .line 1870
    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstPenTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v2, :cond_2

    .line 1871
    const/4 v8, 0x0

    .line 1872
    .local v8, syntheticEvent:Z
    if-nez p1, :cond_0

    .line 1873
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1874
    .local v0, now:J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 1876
    const/4 v8, 0x1

    .line 1879
    .end local v0           #now:J
    :cond_0
    iget-object v9, p0, Landroid/view/ViewGroup;->mFirstPenTarget:Landroid/view/ViewGroup$TouchTarget;

    .local v9, target:Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v9, :cond_1

    .line 1880
    iget-object v2, v9, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    invoke-direct {p0, v2}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 1879
    iget-object v9, v9, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_0

    .line 1885
    :cond_1
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearPenTargets()V

    .line 1887
    if-eqz v8, :cond_2

    .line 1888
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 1891
    .end local v8           #syntheticEvent:Z
    .end local v9           #target:Landroid/view/ViewGroup$TouchTarget;
    :cond_2
    return-void
.end method

.method private cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V
    .locals 10
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    .line 1846
    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v2, :cond_2

    .line 1847
    const/4 v8, 0x0

    .line 1848
    .local v8, syntheticEvent:Z
    if-nez p1, :cond_0

    .line 1849
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1850
    .local v0, now:J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 1852
    const/16 v2, 0x1002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 1853
    const/4 v8, 0x1

    .line 1856
    .end local v0           #now:J
    :cond_0
    iget-object v9, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .local v9, target:Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v9, :cond_1

    .line 1857
    iget-object v2, v9, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    invoke-direct {p0, v2}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 1858
    const/4 v2, 0x1

    iget-object v3, v9, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    iget v4, v9, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    invoke-direct {p0, p1, v2, v3, v4}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    .line 1856
    iget-object v9, v9, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_0

    .line 1860
    :cond_1
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearTouchTargets()V

    .line 1862
    if-eqz v8, :cond_2

    .line 1863
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 1866
    .end local v8           #syntheticEvent:Z
    .end local v9           #target:Landroid/view/ViewGroup$TouchTarget;
    :cond_2
    return-void
.end method

.method private clearPenTargets()V
    .locals 3

    .prologue
    .line 1830
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstPenTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 1831
    .local v1, target:Landroid/view/ViewGroup$TouchTarget;
    if-eqz v1, :cond_1

    .line 1833
    :cond_0
    iget-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 1834
    .local v0, next:Landroid/view/ViewGroup$TouchTarget;
    invoke-virtual {v1}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 1835
    move-object v1, v0

    .line 1836
    if-nez v1, :cond_0

    .line 1837
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/ViewGroup;->mFirstPenTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 1839
    .end local v0           #next:Landroid/view/ViewGroup$TouchTarget;
    :cond_1
    return-void
.end method

.method private clearTouchTargets()V
    .locals 3

    .prologue
    .line 1817
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 1818
    .local v1, target:Landroid/view/ViewGroup$TouchTarget;
    if-eqz v1, :cond_1

    .line 1820
    :cond_0
    iget-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 1821
    .local v0, next:Landroid/view/ViewGroup$TouchTarget;
    invoke-virtual {v1}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 1822
    move-object v1, v0

    .line 1823
    if-nez v1, :cond_0

    .line 1824
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 1826
    .end local v0           #next:Landroid/view/ViewGroup$TouchTarget;
    :cond_1
    return-void
.end method

.method private dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 6
    .parameter "event"
    .parameter "child"

    .prologue
    .line 1602
    iget v4, p0, Landroid/view/View;->mScrollX:I

    iget v5, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    int-to-float v1, v4

    .line 1603
    .local v1, offsetX:F
    iget v4, p0, Landroid/view/View;->mScrollY:I

    iget v5, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    int-to-float v2, v4

    .line 1606
    .local v2, offsetY:F
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1607
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 1608
    .local v3, transformedEvent:Landroid/view/MotionEvent;
    invoke-virtual {v3, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1609
    invoke-virtual {p2}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 1610
    invoke-virtual {p2, v3}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1611
    .local v0, handled:Z
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 1617
    .end local v3           #transformedEvent:Landroid/view/MotionEvent;
    :goto_0
    return v0

    .line 1613
    .end local v0           #handled:Z
    :cond_0
    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1614
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1615
    .restart local v0       #handled:Z
    neg-float v4, v1

    neg-float v5, v2

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_0
.end method

.method private dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z
    .locals 9
    .parameter "event"
    .parameter "cancel"
    .parameter "child"
    .parameter "desiredPointerIdBits"

    .prologue
    const/4 v7, 0x3

    .line 2034
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 2035
    .local v4, oldAction:I
    if-nez p2, :cond_0

    if-ne v4, v7, :cond_2

    .line 2036
    :cond_0
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2037
    if-nez p3, :cond_1

    .line 2038
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2042
    .local v0, handled:Z
    :goto_0
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2097
    .end local v0           #handled:Z
    :goto_1
    return v0

    .line 2040
    :cond_1
    invoke-virtual {p3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .restart local v0       #handled:Z
    goto :goto_0

    .line 2047
    .end local v0           #handled:Z
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v5

    .line 2048
    .local v5, oldPointerIdBits:I
    and-int v1, v5, p4

    .line 2052
    .local v1, newPointerIdBits:I
    if-nez v1, :cond_3

    .line 2053
    const/4 v0, 0x0

    goto :goto_1

    .line 2061
    :cond_3
    if-ne v1, v5, :cond_7

    .line 2062
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2063
    :cond_4
    if-nez p3, :cond_5

    .line 2064
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .restart local v0       #handled:Z
    goto :goto_1

    .line 2066
    .end local v0           #handled:Z
    :cond_5
    iget v7, p0, Landroid/view/View;->mScrollX:I

    iget v8, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    int-to-float v2, v7

    .line 2067
    .local v2, offsetX:F
    iget v7, p0, Landroid/view/View;->mScrollY:I

    iget v8, p3, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    int-to-float v3, v7

    .line 2068
    .local v3, offsetY:F
    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2070
    invoke-virtual {p3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2072
    .restart local v0       #handled:Z
    neg-float v7, v2

    neg-float v8, v3

    invoke-virtual {p1, v7, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_1

    .line 2076
    .end local v0           #handled:Z
    .end local v2           #offsetX:F
    .end local v3           #offsetY:F
    :cond_6
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 2082
    .local v6, transformedEvent:Landroid/view/MotionEvent;
    :goto_2
    if-nez p3, :cond_8

    .line 2083
    invoke-super {p0, v6}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2096
    .restart local v0       #handled:Z
    :goto_3
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1

    .line 2078
    .end local v0           #handled:Z
    .end local v6           #transformedEvent:Landroid/view/MotionEvent;
    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v6

    .restart local v6       #transformedEvent:Landroid/view/MotionEvent;
    goto :goto_2

    .line 2085
    :cond_8
    iget v7, p0, Landroid/view/View;->mScrollX:I

    iget v8, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    int-to-float v2, v7

    .line 2086
    .restart local v2       #offsetX:F
    iget v7, p0, Landroid/view/View;->mScrollY:I

    iget v8, p3, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    int-to-float v3, v7

    .line 2087
    .restart local v3       #offsetY:F
    invoke-virtual {v6, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2088
    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v7

    if-nez v7, :cond_9

    .line 2089
    invoke-virtual {p3}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 2092
    :cond_9
    invoke-virtual {p3, v6}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .restart local v0       #handled:Z
    goto :goto_3
.end method

.method private finishAnimatingView(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "view"
    .parameter "animation"

    .prologue
    const/high16 v2, 0x1

    .line 5129
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 5130
    .local v0, disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_1

    .line 5131
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5132
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5134
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    .line 5135
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 5138
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 5139
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 5143
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5144
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 5147
    :cond_2
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 5148
    invoke-virtual {p1}, Landroid/view/View;->onAnimationEnd()V

    .line 5151
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x10001

    and-int/2addr v1, v2

    iput v1, p1, Landroid/view/View;->mPrivateFlags:I

    .line 5153
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 5155
    :cond_3
    return-void
.end method

.method public static getChildMeasureSpec(III)I
    .locals 9
    .parameter "spec"
    .parameter "padding"
    .parameter "childDimension"

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 5028
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 5029
    .local v3, specMode:I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 5031
    .local v4, specSize:I
    const/4 v5, 0x0

    sub-int v6, v4, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 5033
    .local v2, size:I
    const/4 v1, 0x0

    .line 5034
    .local v1, resultSize:I
    const/4 v0, 0x0

    .line 5036
    .local v0, resultMode:I
    sparse-switch v3, :sswitch_data_0

    .line 5092
    :cond_0
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    return v5

    .line 5039
    :sswitch_0
    if-ltz p2, :cond_1

    .line 5040
    move v1, p2

    .line 5041
    const/high16 v0, 0x4000

    goto :goto_0

    .line 5042
    :cond_1
    if-ne p2, v8, :cond_2

    .line 5044
    move v1, v2

    .line 5045
    const/high16 v0, 0x4000

    goto :goto_0

    .line 5046
    :cond_2
    if-ne p2, v7, :cond_0

    .line 5049
    move v1, v2

    .line 5050
    const/high16 v0, -0x8000

    goto :goto_0

    .line 5056
    :sswitch_1
    if-ltz p2, :cond_3

    .line 5058
    move v1, p2

    .line 5059
    const/high16 v0, 0x4000

    goto :goto_0

    .line 5060
    :cond_3
    if-ne p2, v8, :cond_4

    .line 5063
    move v1, v2

    .line 5064
    const/high16 v0, -0x8000

    goto :goto_0

    .line 5065
    :cond_4
    if-ne p2, v7, :cond_0

    .line 5068
    move v1, v2

    .line 5069
    const/high16 v0, -0x8000

    goto :goto_0

    .line 5075
    :sswitch_2
    if-ltz p2, :cond_5

    .line 5077
    move v1, p2

    .line 5078
    const/high16 v0, 0x4000

    goto :goto_0

    .line 5079
    :cond_5
    if-ne p2, v8, :cond_6

    .line 5082
    const/4 v1, 0x0

    .line 5083
    const/4 v0, 0x0

    goto :goto_0

    .line 5084
    :cond_6
    if-ne p2, v7, :cond_0

    .line 5087
    const/4 v1, 0x0

    .line 5088
    const/4 v0, 0x0

    goto :goto_0

    .line 5036
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private getPenTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;
    .locals 2
    .parameter "child"

    .prologue
    .line 1909
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstPenTarget:Landroid/view/ViewGroup$TouchTarget;

    .local v0, target:Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v0, :cond_1

    .line 1910
    iget-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-ne v1, p1, :cond_0

    .line 1914
    .end local v0           #target:Landroid/view/ViewGroup$TouchTarget;
    :goto_1
    return-object v0

    .line 1909
    .restart local v0       #target:Landroid/view/ViewGroup$TouchTarget;
    :cond_0
    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_0

    .line 1914
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;
    .locals 2
    .parameter "child"

    .prologue
    .line 1899
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .local v0, target:Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v0, :cond_1

    .line 1900
    iget-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-ne v1, p1, :cond_0

    .line 1904
    .end local v0           #target:Landroid/view/ViewGroup$TouchTarget;
    :goto_1
    return-object v0

    .line 1899
    .restart local v0       #target:Landroid/view/ViewGroup$TouchTarget;
    :cond_0
    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_0

    .line 1904
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 432
    sget-object v6, Lcom/android/internal/R$styleable;->ViewGroup:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 435
    .local v1, a:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 436
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 437
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 438
    .local v3, attr:I
    packed-switch v3, :pswitch_data_0

    .line 436
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 440
    :pswitch_0
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    goto :goto_1

    .line 443
    :pswitch_1
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    goto :goto_1

    .line 446
    :pswitch_2
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setAnimationCacheEnabled(Z)V

    goto :goto_1

    .line 449
    :pswitch_3
    const/4 v6, 0x2

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setPersistentDrawingCache(I)V

    goto :goto_1

    .line 452
    :pswitch_4
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    goto :goto_1

    .line 455
    :pswitch_5
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    goto :goto_1

    .line 458
    :pswitch_6
    const/4 v6, -0x1

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 459
    .local v5, id:I
    if-lez v5, :cond_0

    .line 460
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    goto :goto_1

    .line 464
    .end local v5           #id:I
    :pswitch_7
    sget-object v6, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    aget v6, v6, v7

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    goto :goto_1

    .line 467
    :pswitch_8
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    goto :goto_1

    .line 470
    :pswitch_9
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 471
    .local v2, animateLayoutChanges:Z
    if-eqz v2, :cond_0

    .line 472
    new-instance v6, Landroid/animation/LayoutTransition;

    invoke-direct {v6}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_1

    .line 478
    .end local v2           #animateLayoutChanges:Z
    .end local v3           #attr:I
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 479
    return-void

    .line 438
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private initViewGroup()V
    .locals 2

    .prologue
    const/16 v0, 0x80

    .line 412
    invoke-virtual {p0, v0, v0}, Landroid/view/ViewGroup;->setFlags(II)V

    .line 413
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 414
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 415
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 416
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 417
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 419
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 420
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 423
    :cond_0
    const/high16 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 425
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 426
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 428
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    .line 429
    return-void
.end method

.method private notifyAnimationListener()V
    .locals 3

    .prologue
    .line 2856
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2857
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2859
    iget-object v1, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v1, :cond_0

    .line 2860
    new-instance v0, Landroid/view/ViewGroup$2;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$2;-><init>(Landroid/view/ViewGroup;)V

    .line 2865
    .local v0, end:Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 2868
    .end local v0           #end:Ljava/lang/Runnable;
    :cond_0
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1

    .line 2869
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v2, -0x8001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2870
    iget v1, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    .line 2871
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 2875
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 2876
    return-void
.end method

.method private static obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 1
    .parameter "event"

    .prologue
    .line 1544
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-nez v0, :cond_0

    .line 1547
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    invoke-static {p0}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p0

    goto :goto_0
.end method

.method private removeFromArray(I)V
    .locals 8
    .parameter "index"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 3721
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3722
    .local v0, children:[Landroid/view/View;
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    aget-object v3, v0, p1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3723
    :cond_0
    aget-object v2, v0, p1

    iput-object v4, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3725
    :cond_1
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3726
    .local v1, count:I
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_4

    .line 3727
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v4, v0, v2

    .line 3734
    :goto_0
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-ne v2, p1, :cond_6

    .line 3735
    iput-wide v6, p0, Landroid/view/ViewGroup;->mLastTouchDownTime:J

    .line 3736
    iput v5, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 3741
    :cond_2
    :goto_1
    iget v2, p0, Landroid/view/ViewGroup;->mLastPenDownIndex:I

    if-ne v2, p1, :cond_7

    .line 3742
    iput-wide v6, p0, Landroid/view/ViewGroup;->mLastPenDownTime:J

    .line 3743
    iput v5, p0, Landroid/view/ViewGroup;->mLastPenDownIndex:I

    .line 3748
    :cond_3
    :goto_2
    return-void

    .line 3728
    :cond_4
    if-ltz p1, :cond_5

    if-ge p1, v1, :cond_5

    .line 3729
    add-int/lit8 v2, p1, 0x1

    sub-int v3, v1, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3730
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v4, v0, v2

    goto :goto_0

    .line 3732
    :cond_5
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 3737
    :cond_6
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-le v2, p1, :cond_2

    .line 3738
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    goto :goto_1

    .line 3744
    :cond_7
    iget v2, p0, Landroid/view/ViewGroup;->mLastPenDownIndex:I

    if-le v2, p1, :cond_3

    .line 3745
    iget v2, p0, Landroid/view/ViewGroup;->mLastPenDownIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mLastPenDownIndex:I

    goto :goto_2
.end method

.method private removeFromArray(II)V
    .locals 6
    .parameter "start"
    .parameter "count"

    .prologue
    const/4 v5, 0x0

    .line 3752
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3753
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3755
    .local v1, childrenCount:I
    const/4 v4, 0x0

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3756
    add-int v4, p1, p2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3758
    .local v2, end:I
    if-ne p1, v2, :cond_0

    .line 3782
    :goto_0
    return-void

    .line 3762
    :cond_0
    if-ne v2, v1, :cond_1

    .line 3763
    move v3, p1

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 3764
    aget-object v4, v0, v3

    iput-object v5, v4, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3765
    aput-object v5, v0, v3

    .line 3763
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3768
    .end local v3           #i:I
    :cond_1
    move v3, p1

    .restart local v3       #i:I
    :goto_2
    if-ge v3, v2, :cond_2

    .line 3769
    aget-object v4, v0, v3

    iput-object v5, v4, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3768
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3774
    :cond_2
    sub-int v4, v1, v2

    invoke-static {v0, v2, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3776
    sub-int v4, v2, p1

    sub-int v3, v1, v4

    :goto_3
    if-ge v3, v1, :cond_3

    .line 3777
    aput-object v5, v0, v3

    .line 3776
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3781
    :cond_3
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    sub-int v5, v2, p1

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    goto :goto_0
.end method

.method private removePointersFromPenTargets(I)V
    .locals 5
    .parameter "pointerIdBits"

    .prologue
    .line 1966
    const/4 v1, 0x0

    .line 1967
    .local v1, predecessor:Landroid/view/ViewGroup$TouchTarget;
    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstPenTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 1968
    .local v2, target:Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v2, :cond_2

    .line 1969
    iget-object v0, v2, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 1970
    .local v0, next:Landroid/view/ViewGroup$TouchTarget;
    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    and-int/2addr v3, p1

    if-eqz v3, :cond_1

    .line 1971
    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    xor-int/lit8 v4, p1, -0x1

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 1972
    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    if-nez v3, :cond_1

    .line 1973
    if-nez v1, :cond_0

    .line 1974
    iput-object v0, p0, Landroid/view/ViewGroup;->mFirstPenTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 1978
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 1979
    move-object v2, v0

    .line 1980
    goto :goto_0

    .line 1976
    :cond_0
    iput-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_1

    .line 1983
    :cond_1
    move-object v1, v2

    .line 1984
    move-object v2, v0

    .line 1985
    goto :goto_0

    .line 1986
    .end local v0           #next:Landroid/view/ViewGroup$TouchTarget;
    :cond_2
    return-void
.end method

.method private removePointersFromTouchTargets(I)V
    .locals 5
    .parameter "pointerIdBits"

    .prologue
    .line 1942
    const/4 v1, 0x0

    .line 1943
    .local v1, predecessor:Landroid/view/ViewGroup$TouchTarget;
    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 1944
    .local v2, target:Landroid/view/ViewGroup$TouchTarget;
    :goto_0
    if-eqz v2, :cond_2

    .line 1945
    iget-object v0, v2, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 1946
    .local v0, next:Landroid/view/ViewGroup$TouchTarget;
    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    and-int/2addr v3, p1

    if-eqz v3, :cond_1

    .line 1947
    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    xor-int/lit8 v4, p1, -0x1

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 1948
    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    if-nez v3, :cond_1

    .line 1949
    if-nez v1, :cond_0

    .line 1950
    iput-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 1954
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 1955
    move-object v2, v0

    .line 1956
    goto :goto_0

    .line 1952
    :cond_0
    iput-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_1

    .line 1959
    :cond_1
    move-object v1, v2

    .line 1960
    move-object v2, v0

    .line 1961
    goto :goto_0

    .line 1962
    .end local v0           #next:Landroid/view/ViewGroup$TouchTarget;
    :cond_2
    return-void
.end method

.method private removeViewInternal(ILandroid/view/View;)V
    .locals 2
    .parameter "index"
    .parameter "view"

    .prologue
    .line 3874
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v1, :cond_0

    .line 3875
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v1, p0, p2}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 3878
    :cond_0
    const/4 v0, 0x0

    .line 3879
    .local v0, clearChildFocus:Z
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-ne p2, v1, :cond_1

    .line 3880
    invoke-virtual {p2}, Landroid/view/View;->clearFocusForRemoval()V

    .line 3881
    const/4 v0, 0x1

    .line 3884
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3886
    :cond_2
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 3891
    :cond_3
    :goto_0
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 3893
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 3895
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 3897
    if-eqz v0, :cond_4

    .line 3898
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 3900
    :cond_4
    return-void

    .line 3887
    :cond_5
    iget-object v1, p2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_3

    .line 3888
    invoke-virtual {p2}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_0
.end method

.method private removeViewInternal(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 3866
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 3867
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 3868
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    .line 3870
    :cond_0
    return-void
.end method

.method private removeViewsInternal(II)V
    .locals 9
    .parameter "start"
    .parameter "count"

    .prologue
    const/4 v7, 0x0

    .line 3936
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 3937
    .local v4, focused:Landroid/view/View;
    iget-object v8, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v8, :cond_4

    const/4 v2, 0x1

    .line 3938
    .local v2, detach:Z
    :goto_0
    const/4 v1, 0x0

    .line 3940
    .local v1, clearChildFocus:Landroid/view/View;
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3941
    .local v0, children:[Landroid/view/View;
    add-int v3, p1, p2

    .line 3943
    .local v3, end:I
    move v5, p1

    .local v5, i:I
    :goto_1
    if-ge v5, v3, :cond_6

    .line 3944
    aget-object v6, v0, v5

    .line 3946
    .local v6, view:Landroid/view/View;
    iget-object v8, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v8, :cond_0

    .line 3947
    iget-object v8, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v8, p0, v6}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 3950
    :cond_0
    if-ne v6, v4, :cond_1

    .line 3951
    invoke-virtual {v6}, Landroid/view/View;->clearFocusForRemoval()V

    .line 3952
    move-object v1, v6

    .line 3955
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    if-nez v8, :cond_2

    iget-object v8, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v8, :cond_5

    iget-object v8, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3957
    :cond_2
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 3962
    :cond_3
    :goto_2
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 3964
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 3943
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v0           #children:[Landroid/view/View;
    .end local v1           #clearChildFocus:Landroid/view/View;
    .end local v2           #detach:Z
    .end local v3           #end:I
    .end local v5           #i:I
    .end local v6           #view:Landroid/view/View;
    :cond_4
    move v2, v7

    .line 3937
    goto :goto_0

    .line 3958
    .restart local v0       #children:[Landroid/view/View;
    .restart local v1       #clearChildFocus:Landroid/view/View;
    .restart local v2       #detach:Z
    .restart local v3       #end:I
    .restart local v5       #i:I
    .restart local v6       #view:Landroid/view/View;
    :cond_5
    if-eqz v2, :cond_3

    .line 3959
    invoke-virtual {v6}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_2

    .line 3967
    .end local v6           #view:Landroid/view/View;
    :cond_6
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    .line 3969
    if-eqz v1, :cond_7

    .line 3970
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 3972
    :cond_7
    return-void
.end method

.method private resetCancelNextUpFlag(Landroid/view/View;)Z
    .locals 2
    .parameter "view"

    .prologue
    .line 1806
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x400

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1807
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 1808
    const/4 v0, 0x1

    .line 1810
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetPenState()V
    .locals 2

    .prologue
    .line 1795
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearPenTargets()V

    .line 1796
    invoke-direct {p0, p0}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 1797
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1798
    return-void
.end method

.method private resetTouchState()V
    .locals 2

    .prologue
    .line 1788
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearTouchTargets()V

    .line 1789
    invoke-direct {p0, p0}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 1790
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1791
    return-void
.end method

.method private setBooleanFlag(IZ)V
    .locals 2
    .parameter "flag"
    .parameter "value"

    .prologue
    .line 4727
    if-eqz p2, :cond_0

    .line 4728
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4732
    :goto_0
    return-void

    .line 4730
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;I)V
    .locals 1
    .parameter
    .parameter "direction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 798
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 799
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 806
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 808
    .local v4, focusableCount:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    .line 810
    .local v3, descendantFocusability:I
    const/high16 v6, 0x6

    if-eq v3, v6, :cond_1

    .line 811
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 812
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 814
    .local v1, children:[Landroid/view/View;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 815
    aget-object v0, v1, v5

    .line 816
    .local v0, child:Landroid/view/View;
    iget v6, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    if-nez v6, :cond_0

    .line 817
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 814
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 826
    .end local v0           #child:Landroid/view/View;
    .end local v1           #children:[Landroid/view/View;
    .end local v2           #count:I
    .end local v5           #i:I
    :cond_1
    const/high16 v6, 0x4

    if-ne v3, v6, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v4, v6, :cond_3

    .line 830
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 832
    :cond_3
    return-void
.end method

.method public addStatesFromChildren()Z
    .locals 1

    .prologue
    .line 5393
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 884
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 886
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 887
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 889
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 890
    aget-object v0, v1, v3

    .line 891
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_0

    .line 892
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 889
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 895
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 3444
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 3445
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 3
    .parameter "child"
    .parameter "index"

    .prologue
    .line 3457
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3458
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 3459
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3460
    if-nez v0, :cond_0

    .line 3461
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "generateDefaultLayoutParams() cannot return null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3464
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3465
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 2
    .parameter "child"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3474
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3475
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3476
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3477
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3478
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 3505
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3506
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3507
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 3508
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "child"
    .parameter "params"

    .prologue
    .line 3487
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3488
    return-void
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 3593
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v0

    return v0
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"
    .parameter "preventRequestLayout"

    .prologue
    .line 3611
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3612
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 3613
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x600001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 3614
    const/4 v0, 0x1

    return v0
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 1
    .parameter "child"
    .parameter "params"
    .parameter "index"
    .parameter "count"

    .prologue
    .line 3801
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 3803
    .local v0, animationParams:Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_0

    .line 3804
    new-instance v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .end local v0           #animationParams:Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/LayoutAnimationController$AnimationParameters;-><init>()V

    .line 3805
    .restart local v0       #animationParams:Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 3808
    :cond_0
    iput p4, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    .line 3809
    iput p3, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    .line 3810
    return-void
.end method

.method protected attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    const/high16 v2, -0x8000

    .line 4087
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 4089
    if-gez p2, :cond_0

    .line 4090
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4093
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 4095
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4096
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x600001

    and-int/2addr v0, v1

    const v1, -0x8001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    or-int/2addr v0, v2

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 4098
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4100
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4101
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 4103
    :cond_1
    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1007
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1008
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 1009
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 1010
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    invoke-direct {p0, p1, v1}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 1011
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 1013
    :cond_0
    return-void
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 4552
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 3527
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 5401
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    .line 5402
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    .line 5404
    :cond_0
    return-void
.end method

.method protected cleanupLayoutState(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 3623
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 3624
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 687
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 688
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->clearChildFocus(Landroid/view/View;)V

    .line 691
    :cond_0
    return-void
.end method

.method public clearDisappearingChildren()V
    .locals 1

    .prologue
    .line 5101
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 5102
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5104
    :cond_0
    return-void
.end method

.method public clearFocus()V
    .locals 1

    .prologue
    .line 698
    invoke-super {p0}, Landroid/view/View;->clearFocus()V

    .line 701
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 704
    :cond_0
    return-void
.end method

.method createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "quality"
    .parameter "backgroundColor"
    .parameter "skipChildren"

    .prologue
    .line 2695
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2696
    .local v2, count:I
    const/4 v4, 0x0

    .line 2698
    .local v4, visibilities:[I
    if-eqz p3, :cond_1

    .line 2699
    new-array v4, v2, [I

    .line 2700
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 2701
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2702
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    aput v5, v4, v3

    .line 2703
    aget v5, v4, v3

    if-nez v5, :cond_0

    .line 2704
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2700
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2709
    .end local v1           #child:Landroid/view/View;
    .end local v3           #i:I
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2711
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz p3, :cond_2

    .line 2712
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 2713
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    aget v6, v4, v3

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2712
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2717
    .end local v3           #i:I
    :cond_2
    return-object v0
.end method

.method protected debug(I)V
    .locals 6
    .parameter "depth"

    .prologue
    .line 4870
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    .line 4873
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 4874
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 4875
    .local v3, output:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "mFocused"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4876
    const-string v4, "View"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4878
    .end local v3           #output:Ljava/lang/String;
    :cond_0
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v4, :cond_1

    .line 4879
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 4880
    .restart local v3       #output:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4881
    const-string v4, "View"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4883
    .end local v3           #output:Ljava/lang/String;
    :cond_1
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4884
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 4885
    iget-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v4, v2

    .line 4886
    .local v0, child:Landroid/view/View;
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v4}, Landroid/view/View;->debug(I)V

    .line 4884
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4889
    .end local v0           #child:Landroid/view/View;
    :cond_2
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v4, :cond_3

    .line 4890
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 4891
    .restart local v3       #output:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4892
    const-string v4, "View"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4894
    .end local v3           #output:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method protected detachAllViewsFromParent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4173
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4174
    .local v1, count:I
    if-gtz v1, :cond_1

    .line 4185
    :cond_0
    return-void

    .line 4178
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4179
    .local v0, children:[Landroid/view/View;
    const/4 v3, 0x0

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4181
    add-int/lit8 v2, v1, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 4182
    aget-object v3, v0, v2

    iput-object v4, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4183
    aput-object v4, v0, v2

    .line 4181
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method protected detachViewFromParent(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 4138
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 4139
    return-void
.end method

.method protected detachViewFromParent(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 4120
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 4121
    return-void
.end method

.method protected detachViewsFromParent(II)V
    .locals 0
    .parameter "start"
    .parameter "count"

    .prologue
    .line 4157
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    .line 4158
    return-void
.end method

.method dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V
    .locals 5
    .parameter "info"
    .parameter "visibility"

    .prologue
    .line 2495
    iget v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v4, 0x40

    or-int/2addr v3, v4

    iput v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2496
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 2497
    iget v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v4, -0x400001

    and-int/2addr v3, v4

    iput v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2499
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    or-int/2addr p2, v3

    .line 2501
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2502
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2503
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2504
    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 2503
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2506
    :cond_0
    return-void
.end method

.method dispatchCollectViewAttributes(I)V
    .locals 4
    .parameter "visibility"

    .prologue
    .line 994
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    or-int/2addr p1, v3

    .line 995
    invoke-super {p0, p1}, Landroid/view/View;->dispatchCollectViewAttributes(I)V

    .line 996
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 997
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 998
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 999
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchCollectViewAttributes(I)V

    .line 998
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1001
    :cond_0
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 974
    invoke-super {p0, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 975
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 976
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 977
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 978
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 977
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 980
    :cond_0
    return-void
.end method

.method protected dispatchConsistencyCheck(I)Z
    .locals 5
    .parameter "consistency"

    .prologue
    .line 4815
    invoke-super {p0, p1}, Landroid/view/View;->dispatchConsistencyCheck(I)Z

    move-result v3

    .line 4817
    .local v3, result:Z
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4818
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4819
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 4820
    aget-object v4, v0, v2

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchConsistencyCheck(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x0

    .line 4819
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4823
    :cond_1
    return v3
.end method

.method dispatchDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2549
    invoke-direct {p0, v4}, Landroid/view/ViewGroup;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    .line 2550
    invoke-direct {p0, v4}, Landroid/view/ViewGroup;->cancelAndClearPenTargets(Landroid/view/MotionEvent;)V

    .line 2553
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    .line 2556
    iput-object v4, p0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    .line 2557
    iget-object v3, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    if-eqz v3, :cond_0

    .line 2558
    iget-object v3, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    invoke-virtual {v3}, Landroid/view/DragEvent;->recycle()V

    .line 2559
    iput-object v4, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    .line 2562
    :cond_0
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2563
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2564
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2565
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 2564
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2567
    :cond_1
    invoke-super {p0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 2568
    return-void
.end method

.method public dispatchDisplayHint(I)V
    .locals 4
    .parameter "hint"

    .prologue
    .line 902
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 903
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 904
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 905
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 906
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 905
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 908
    :cond_0
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 20
    .parameter "event"

    .prologue
    .line 1022
    const/4 v11, 0x0

    .line 1023
    .local v11, retval:Z
    move-object/from16 v0, p1

    iget v14, v0, Landroid/view/DragEvent;->mX:F

    .line 1024
    .local v14, tx:F
    move-object/from16 v0, p1

    iget v15, v0, Landroid/view/DragEvent;->mY:F

    .line 1026
    .local v15, ty:F
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v12

    .line 1029
    .local v12, root:Landroid/view/ViewRootImpl;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mAction:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 1173
    :cond_0
    :goto_0
    :pswitch_0
    if-nez v11, :cond_1

    .line 1175
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v11

    .line 1177
    :cond_1
    return v11

    .line 1032
    :pswitch_1
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    .line 1035
    invoke-static/range {p1 .. p1}, Landroid/view/DragEvent;->obtain(Landroid/view/DragEvent;)Landroid/view/DragEvent;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v17, v0

    if-nez v17, :cond_3

    .line 1037
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    .line 1043
    :goto_1
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    .line 1044
    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1045
    .local v7, count:I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1046
    .local v6, children:[Landroid/view/View;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    if-ge v9, v7, :cond_4

    .line 1047
    aget-object v5, v6, v9

    .line 1048
    .local v5, child:Landroid/view/View;
    iget v0, v5, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x4

    move/from16 v0, v17

    iput v0, v5, Landroid/view/View;->mPrivateFlags2:I

    .line 1049
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_2

    .line 1050
    aget-object v17, v6, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->notifyChildOfDrag(Landroid/view/View;)Z

    move-result v8

    .line 1051
    .local v8, handled:Z
    if-eqz v8, :cond_2

    .line 1052
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    .line 1046
    .end local v8           #handled:Z
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1039
    .end local v5           #child:Landroid/view/View;
    .end local v6           #children:[Landroid/view/View;
    .end local v7           #count:I
    .end local v9           #i:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->clear()V

    goto :goto_1

    .line 1058
    .restart local v6       #children:[Landroid/view/View;
    .restart local v7       #count:I
    .restart local v9       #i:I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1059
    const/4 v11, 0x1

    goto :goto_0

    .line 1065
    .end local v6           #children:[Landroid/view/View;
    .end local v7           #count:I
    .end local v9           #i:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1068
    .restart local v5       #child:Landroid/view/View;
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 1069
    iget v0, v5, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x4

    move/from16 v0, v17

    iput v0, v5, Landroid/view/View;->mPrivateFlags2:I

    .line 1070
    invoke-virtual {v5}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_3

    .line 1073
    .end local v5           #child:Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->clear()V

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/DragEvent;->recycle()V

    .line 1075
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    .line 1080
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1081
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1087
    :pswitch_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mX:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;

    move-result-object v13

    .line 1095
    .local v13, target:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-eq v0, v13, :cond_9

    .line 1096
    invoke-virtual {v12, v13}, Landroid/view/ViewRootImpl;->setDragFocus(Landroid/view/View;)V

    .line 1098
    move-object/from16 v0, p1

    iget v4, v0, Landroid/view/DragEvent;->mAction:I

    .line 1100
    .local v4, action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    move-object/from16 v16, v0

    .line 1102
    .local v16, view:Landroid/view/View;
    const/16 v17, 0x6

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mAction:I

    .line 1103
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 1104
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x3

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    .line 1105
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->refreshDrawableState()V

    .line 1107
    .end local v16           #view:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    .line 1110
    if-eqz v13, :cond_8

    .line 1111
    const/16 v17, 0x5

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mAction:I

    .line 1112
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 1113
    iget v0, v13, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    iput v0, v13, Landroid/view/View;->mPrivateFlags2:I

    .line 1114
    invoke-virtual {v13}, Landroid/view/View;->refreshDrawableState()V

    .line 1116
    :cond_8
    move-object/from16 v0, p1

    iput v4, v0, Landroid/view/DragEvent;->mAction:I

    .line 1120
    .end local v4           #action:I
    :cond_9
    if-eqz v13, :cond_0

    .line 1121
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mX:F

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mY:F

    .line 1124
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v11

    .line 1126
    move-object/from16 v0, p1

    iput v14, v0, Landroid/view/DragEvent;->mX:F

    .line 1127
    move-object/from16 v0, p1

    iput v15, v0, Landroid/view/DragEvent;->mY:F

    goto/16 :goto_0

    .line 1144
    .end local v13           #target:Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    move-object/from16 v16, v0

    .line 1146
    .restart local v16       #view:Landroid/view/View;
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 1147
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x3

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    .line 1148
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->refreshDrawableState()V

    .line 1150
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    goto/16 :goto_0

    .line 1156
    .end local v16           #view:Landroid/view/View;
    :pswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mX:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;

    move-result-object v13

    .line 1157
    .restart local v13       #target:Landroid/view/View;
    if-eqz v13, :cond_0

    .line 1159
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mX:F

    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mY:F

    .line 1161
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v11

    .line 1162
    move-object/from16 v0, p1

    iput v14, v0, Landroid/view/DragEvent;->mX:F

    .line 1163
    move-object/from16 v0, p1

    iput v15, v0, Landroid/view/DragEvent;->mY:F

    goto/16 :goto_0

    .line 1029
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 27
    .parameter "canvas"

    .prologue
    .line 2725
    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2726
    .local v11, count:I
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2727
    .local v8, children:[Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v17, v0

    .line 2729
    .local v17, flags:I
    and-int/lit8 v22, v17, 0x8

    if-eqz v22, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 2730
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x40

    const/16 v23, 0x40

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    const/4 v6, 0x1

    .line 2732
    .local v6, cache:Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isHardwareAccelerated()Z

    move-result v22

    if-nez v22, :cond_2

    const/4 v5, 0x1

    .line 2733
    .local v5, buildCache:Z
    :goto_1
    const/16 v18, 0x0

    .local v18, i:I
    :goto_2
    move/from16 v0, v18

    if-ge v0, v11, :cond_3

    .line 2734
    aget-object v7, v8, v18

    .line 2735
    .local v7, child:Landroid/view/View;
    iget v0, v7, Landroid/view/View;->mViewFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0xc

    if-nez v22, :cond_0

    .line 2736
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    .line 2737
    .local v20, params:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v7, v1, v2, v11}, Landroid/view/ViewGroup;->attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V

    .line 2738
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/view/ViewGroup;->bindLayoutAnimation(Landroid/view/View;)V

    .line 2739
    if-eqz v6, :cond_0

    .line 2740
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2741
    if-eqz v5, :cond_0

    .line 2742
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 2733
    .end local v20           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 2730
    .end local v5           #buildCache:Z
    .end local v6           #cache:Z
    .end local v7           #child:Landroid/view/View;
    .end local v18           #i:I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 2732
    .restart local v6       #cache:Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 2748
    .restart local v5       #buildCache:Z
    .restart local v18       #i:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 2749
    .local v10, controller:Landroid/view/animation/LayoutAnimationController;
    invoke-virtual {v10}, Landroid/view/animation/LayoutAnimationController;->willOverlap()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 2750
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2753
    :cond_4
    invoke-virtual {v10}, Landroid/view/animation/LayoutAnimationController;->start()V

    .line 2755
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, -0x9

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2756
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, -0x11

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2758
    if-eqz v6, :cond_5

    .line 2759
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    const v23, 0x8000

    or-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2762
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    .line 2763
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    move-object/from16 v22, v0

    invoke-virtual {v10}, Landroid/view/animation/LayoutAnimationController;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 2767
    .end local v5           #buildCache:Z
    .end local v6           #cache:Z
    .end local v10           #controller:Landroid/view/animation/LayoutAnimationController;
    .end local v18           #i:I
    :cond_6
    const/16 v21, 0x0

    .line 2768
    .local v21, saveCount:I
    and-int/lit8 v22, v17, 0x22

    const/16 v23, 0x22

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    const/4 v9, 0x1

    .line 2769
    .local v9, clipToPadding:Z
    :goto_3
    if-eqz v9, :cond_7

    .line 2770
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v21

    .line 2771
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2778
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, -0x41

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 2779
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, -0x5

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2781
    const/16 v19, 0x0

    .line 2782
    .local v19, more:Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getDrawingTime()J

    move-result-wide v14

    .line 2784
    .local v14, drawingTime:J
    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x400

    move/from16 v22, v0

    if-nez v22, :cond_b

    .line 2785
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_4
    move/from16 v0, v18

    if-ge v0, v11, :cond_e

    .line 2786
    aget-object v7, v8, v18

    .line 2787
    .restart local v7       #child:Landroid/view/View;
    iget v0, v7, Landroid/view/View;->mViewFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0xc

    if-eqz v22, :cond_8

    invoke-virtual {v7}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v22

    if-eqz v22, :cond_9

    .line 2788
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7, v14, v15}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v22

    or-int v19, v19, v22

    .line 2785
    :cond_9
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 2768
    .end local v7           #child:Landroid/view/View;
    .end local v9           #clipToPadding:Z
    .end local v14           #drawingTime:J
    .end local v18           #i:I
    .end local v19           #more:Z
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 2792
    .restart local v9       #clipToPadding:Z
    .restart local v14       #drawingTime:J
    .restart local v19       #more:Z
    :cond_b
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_5
    move/from16 v0, v18

    if-ge v0, v11, :cond_e

    .line 2793
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v11, v1}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v22

    aget-object v7, v8, v22

    .line 2794
    .restart local v7       #child:Landroid/view/View;
    iget v0, v7, Landroid/view/View;->mViewFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0xc

    if-eqz v22, :cond_c

    invoke-virtual {v7}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v22

    if-eqz v22, :cond_d

    .line 2795
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7, v14, v15}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v22

    or-int v19, v19, v22

    .line 2792
    :cond_d
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 2801
    .end local v7           #child:Landroid/view/View;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_f

    .line 2802
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 2803
    .local v12, disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v13, v22, -0x1

    .line 2805
    .local v13, disappearingCount:I
    move/from16 v18, v13

    :goto_6
    if-ltz v18, :cond_f

    .line 2806
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 2807
    .restart local v7       #child:Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7, v14, v15}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v22

    or-int v19, v19, v22

    .line 2805
    add-int/lit8 v18, v18, -0x1

    goto :goto_6

    .line 2811
    .end local v7           #child:Landroid/view/View;
    .end local v12           #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v13           #disappearingCount:I
    :cond_f
    if-eqz v9, :cond_10

    .line 2812
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2816
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v17, v0

    .line 2818
    and-int/lit8 v22, v17, 0x4

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    .line 2819
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 2822
    :cond_11
    and-int/lit8 v22, v17, 0x10

    if-nez v22, :cond_12

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x200

    move/from16 v22, v0

    if-nez v22, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/animation/LayoutAnimationController;->isDone()Z

    move-result v22

    if-eqz v22, :cond_12

    if-nez v19, :cond_12

    .line 2827
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x200

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2828
    new-instance v16, Landroid/view/ViewGroup$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$1;-><init>(Landroid/view/ViewGroup;)V

    .line 2833
    .local v16, end:Ljava/lang/Runnable;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 2835
    .end local v16           #end:Ljava/lang/Runnable;
    :cond_12
    return-void
.end method

.method public dispatchFinishTemporaryDetach()V
    .locals 4

    .prologue
    .line 2482
    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 2483
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2484
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2485
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2486
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 2485
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2488
    :cond_0
    return-void
.end method

.method protected dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2609
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 2610
    return-void
.end method

.method protected dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1585
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 1586
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1590
    :goto_0
    return v0

    .line 1587
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 1588
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 1590
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    .line 1556
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1557
    .local v2, childrenCount:I
    if-eqz v2, :cond_2

    .line 1558
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1559
    .local v1, children:[Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 1560
    .local v4, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 1562
    .local v5, y:F
    add-int/lit8 v3, v2, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 1563
    aget-object v0, v1, v3

    .line 1564
    .local v0, child:Landroid/view/View;
    invoke-static {v0}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v0, v6}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1562
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1569
    :cond_1
    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1570
    const/4 v6, 0x1

    .line 1576
    .end local v0           #child:Landroid/view/View;
    .end local v1           #children:[Landroid/view/View;
    .end local v3           #i:I
    .end local v4           #x:F
    .end local v5           #y:F
    :goto_1
    return v6

    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_1
.end method

.method protected dispatchGetDisplayList()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/high16 v7, -0x8000

    .line 2888
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2889
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2890
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 2891
    aget-object v0, v1, v3

    .line 2892
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->hasStaticLayer()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2894
    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_2

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 2895
    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    const v6, 0x7fffffff

    and-int/2addr v4, v6

    iput v4, v0, Landroid/view/View;->mPrivateFlags:I

    .line 2896
    invoke-virtual {v0}, Landroid/view/View;->getDisplayList()Landroid/view/DisplayList;

    .line 2897
    iput-boolean v5, v0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 2890
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v4, v5

    .line 2894
    goto :goto_1

    .line 2900
    .end local v0           #child:Landroid/view/View;
    :cond_3
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .parameter "event"

    .prologue
    .line 1321
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1324
    .local v4, action:I
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v13

    .line 1325
    .local v13, interceptHover:Z
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1327
    move-object/from16 v8, p1

    .line 1328
    .local v8, eventNoHistory:Landroid/view/MotionEvent;
    const/4 v10, 0x0

    .line 1332
    .local v10, handled:Z
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 1333
    .local v9, firstOldHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 1334
    if-nez v13, :cond_3

    const/16 v21, 0xa

    move/from16 v0, v21

    if-eq v4, v0, :cond_3

    .line 1335
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    .line 1336
    .local v19, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    .line 1337
    .local v20, y:F
    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1338
    .local v7, childrenCount:I
    if-eqz v7, :cond_3

    .line 1339
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1340
    .local v6, children:[Landroid/view/View;
    const/4 v14, 0x0

    .line 1341
    .local v14, lastHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    add-int/lit8 v12, v7, -0x1

    .local v12, i:I
    :goto_0
    if-ltz v12, :cond_3

    .line 1342
    aget-object v5, v6, v12

    .line 1343
    .local v5, child:Landroid/view/View;
    invoke-static {v5}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 1341
    :cond_0
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    .line 1350
    :cond_1
    move-object v11, v9

    .line 1352
    .local v11, hoverTarget:Landroid/view/ViewGroup$HoverTarget;
    const/16 v17, 0x0

    .line 1353
    .local v17, predecessor:Landroid/view/ViewGroup$HoverTarget;
    :goto_1
    if-nez v11, :cond_4

    .line 1354
    invoke-static {v5}, Landroid/view/ViewGroup$HoverTarget;->obtain(Landroid/view/View;)Landroid/view/ViewGroup$HoverTarget;

    move-result-object v11

    .line 1355
    const/16 v18, 0x0

    .line 1375
    .local v18, wasHovered:Z
    :goto_2
    if-eqz v14, :cond_7

    .line 1376
    iput-object v11, v14, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 1383
    :goto_3
    const/16 v21, 0x9

    move/from16 v0, v21

    if-ne v4, v0, :cond_8

    .line 1384
    if-nez v18, :cond_2

    .line 1386
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1405
    :cond_2
    :goto_4
    if-eqz v10, :cond_0

    .line 1413
    .end local v5           #child:Landroid/view/View;
    .end local v6           #children:[Landroid/view/View;
    .end local v7           #childrenCount:I
    .end local v11           #hoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .end local v12           #i:I
    .end local v14           #lastHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .end local v17           #predecessor:Landroid/view/ViewGroup$HoverTarget;
    .end local v18           #wasHovered:Z
    .end local v19           #x:F
    .end local v20           #y:F
    :cond_3
    :goto_5
    if-eqz v9, :cond_c

    .line 1414
    iget-object v5, v9, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    .line 1417
    .restart local v5       #child:Landroid/view/View;
    const/16 v21, 0xa

    move/from16 v0, v21

    if-ne v4, v0, :cond_a

    .line 1419
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1435
    :goto_6
    iget-object v0, v9, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    move-object/from16 v16, v0

    .line 1436
    .local v16, nextOldHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    invoke-virtual {v9}, Landroid/view/ViewGroup$HoverTarget;->recycle()V

    .line 1437
    move-object/from16 v9, v16

    .line 1438
    goto :goto_5

    .line 1359
    .end local v16           #nextOldHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .restart local v6       #children:[Landroid/view/View;
    .restart local v7       #childrenCount:I
    .restart local v11       #hoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .restart local v12       #i:I
    .restart local v14       #lastHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .restart local v17       #predecessor:Landroid/view/ViewGroup$HoverTarget;
    .restart local v19       #x:F
    .restart local v20       #y:F
    :cond_4
    iget-object v0, v11, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    if-ne v0, v5, :cond_6

    .line 1360
    if-eqz v17, :cond_5

    .line 1361
    iget-object v0, v11, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 1365
    :goto_7
    const/16 v21, 0x0

    move-object/from16 v0, v21

    iput-object v0, v11, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 1366
    const/16 v18, 0x1

    .line 1367
    .restart local v18       #wasHovered:Z
    goto :goto_2

    .line 1363
    .end local v18           #wasHovered:Z
    :cond_5
    iget-object v9, v11, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_7

    .line 1370
    :cond_6
    move-object/from16 v17, v11

    .line 1371
    iget-object v11, v11, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_1

    .line 1378
    .restart local v18       #wasHovered:Z
    :cond_7
    move-object v14, v11

    .line 1379
    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_3

    .line 1389
    :cond_8
    const/16 v21, 0x7

    move/from16 v0, v21

    if-ne v4, v0, :cond_2

    .line 1390
    if-nez v18, :cond_9

    .line 1392
    invoke-static {v8}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1393
    const/16 v21, 0x9

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1394
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1396
    invoke-virtual {v8, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1398
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v21

    or-int v10, v10, v21

    goto :goto_4

    .line 1402
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v21

    or-int v10, v10, v21

    goto :goto_4

    .line 1424
    .end local v6           #children:[Landroid/view/View;
    .end local v7           #childrenCount:I
    .end local v11           #hoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .end local v12           #i:I
    .end local v14           #lastHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .end local v17           #predecessor:Landroid/view/ViewGroup$HoverTarget;
    .end local v18           #wasHovered:Z
    .end local v19           #x:F
    .end local v20           #y:F
    :cond_a
    const/16 v21, 0x7

    move/from16 v0, v21

    if-ne v4, v0, :cond_b

    .line 1425
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 1428
    :cond_b
    invoke-static {v8}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1429
    const/16 v21, 0xa

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1430
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 1432
    invoke-virtual {v8, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto/16 :goto_6

    .line 1441
    .end local v5           #child:Landroid/view/View;
    :cond_c
    if-nez v10, :cond_f

    const/4 v15, 0x1

    .line 1442
    .local v15, newHoveredSelf:Z
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v15, v0, :cond_10

    .line 1443
    if-eqz v15, :cond_d

    .line 1445
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1487
    :cond_d
    :goto_9
    move-object/from16 v0, p1

    if-eq v8, v0, :cond_e

    .line 1488
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1492
    :cond_e
    return v10

    .line 1441
    .end local v15           #newHoveredSelf:Z
    :cond_f
    const/4 v15, 0x0

    goto :goto_8

    .line 1448
    .restart local v15       #newHoveredSelf:Z
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    move/from16 v21, v0

    if-eqz v21, :cond_11

    .line 1450
    const/16 v21, 0xa

    move/from16 v0, v21

    if-ne v4, v0, :cond_12

    .line 1452
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1464
    :goto_a
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mHoveredSelf:Z

    .line 1467
    :cond_11
    if-eqz v15, :cond_d

    .line 1469
    const/16 v21, 0x9

    move/from16 v0, v21

    if-ne v4, v0, :cond_14

    .line 1471
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1472
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mHoveredSelf:Z

    goto :goto_9

    .line 1456
    :cond_12
    const/16 v21, 0x7

    move/from16 v0, v21

    if-ne v4, v0, :cond_13

    .line 1457
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 1459
    :cond_13
    invoke-static {v8}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1460
    const/16 v21, 0xa

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1461
    move-object/from16 v0, p0

    invoke-super {v0, v8}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 1462
    invoke-virtual {v8, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_a

    .line 1473
    :cond_14
    const/16 v21, 0x7

    move/from16 v0, v21

    if-ne v4, v0, :cond_d

    .line 1475
    invoke-static {v8}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1476
    const/16 v21, 0x9

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1477
    move-object/from16 v0, p0

    invoke-super {v0, v8}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1478
    invoke-virtual {v8, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1480
    move-object/from16 v0, p0

    invoke-super {v0, v8}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1481
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mHoveredSelf:Z

    goto/16 :goto_9
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1257
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_0

    .line 1258
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v0}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 1261
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x12

    const/16 v2, 0x12

    if-ne v1, v2, :cond_2

    .line 1262
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1274
    :cond_1
    :goto_0
    return v0

    .line 1265
    :cond_2
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    .line 1266
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1271
    :cond_3
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_4

    .line 1272
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v0}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 1274
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1244
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 1245
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1249
    :goto_0
    return v0

    .line 1246
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 1247
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1249
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1282
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 1283
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1287
    :goto_0
    return v0

    .line 1284
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 1285
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1287
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPenEvent(Landroid/view/MotionEvent;)Z
    .locals 29
    .parameter "ev"

    .prologue
    .line 6026
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v27

    if-nez v27, :cond_1

    .line 6027
    const/4 v15, 0x0

    .line 6195
    :cond_0
    :goto_0
    return v15

    .line 6030
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 6031
    .local v4, action:I
    and-int/lit16 v6, v4, 0xff

    .line 6034
    .local v6, actionMasked:I
    if-nez v6, :cond_2

    .line 6038
    invoke-direct/range {p0 .. p1}, Landroid/view/ViewGroup;->cancelAndClearPenTargets(Landroid/view/MotionEvent;)V

    .line 6039
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->resetPenState()V

    .line 6044
    :cond_2
    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstPenTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v27, v0

    if-eqz v27, :cond_9

    .line 6045
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v27, v0

    const/high16 v28, 0x8

    and-int v27, v27, v28

    if-eqz v27, :cond_7

    const/4 v13, 0x1

    .line 6046
    .local v13, disallowIntercept:Z
    :goto_1
    if-nez v13, :cond_8

    .line 6047
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptPenEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    .line 6048
    .local v19, intercepted:Z
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 6057
    .end local v13           #disallowIntercept:Z
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    move-result v27

    if-nez v27, :cond_4

    const/16 v27, 0x3

    move/from16 v0, v27

    if-ne v6, v0, :cond_a

    :cond_4
    const/4 v9, 0x1

    .line 6061
    .local v9, canceled:Z
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v27, v0

    const/high16 v28, 0x20

    and-int v27, v27, v28

    if-eqz v27, :cond_b

    const/16 v23, 0x1

    .line 6062
    .local v23, split:Z
    :goto_4
    const/16 v20, 0x0

    .line 6063
    .local v20, newPenTarget:Landroid/view/ViewGroup$TouchTarget;
    const/4 v7, 0x0

    .line 6064
    .local v7, alreadyDispatchedToNewPenTarget:Z
    if-nez v9, :cond_11

    if-nez v19, :cond_11

    .line 6065
    if-eqz v6, :cond_5

    if-eqz v23, :cond_11

    const/16 v27, 0x5

    move/from16 v0, v27

    if-ne v6, v0, :cond_11

    .line 6067
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 6068
    .local v5, actionIndex:I
    if-eqz v23, :cond_c

    const/16 v27, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v28

    shl-int v17, v27, v28

    .line 6073
    .local v17, idBitsToAssign:I
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->removePointersFromPenTargets(I)V

    .line 6075
    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 6076
    .local v12, childrenCount:I
    if-eqz v12, :cond_e

    .line 6078
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 6079
    .local v11, children:[Landroid/view/View;
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v25

    .line 6080
    .local v25, x:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v26

    .line 6082
    .local v26, y:F
    add-int/lit8 v16, v12, -0x1

    .local v16, i:I
    :goto_6
    if-ltz v16, :cond_e

    .line 6083
    aget-object v10, v11, v16

    .line 6084
    .local v10, child:Landroid/view/View;
    iget v0, v10, Landroid/view/View;->mViewFlags:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0xc

    if-eqz v27, :cond_d

    invoke-virtual {v10}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v27

    if-nez v27, :cond_d

    .line 6082
    :cond_6
    :goto_7
    add-int/lit8 v16, v16, -0x1

    goto :goto_6

    .line 6045
    .end local v5           #actionIndex:I
    .end local v7           #alreadyDispatchedToNewPenTarget:Z
    .end local v9           #canceled:Z
    .end local v10           #child:Landroid/view/View;
    .end local v11           #children:[Landroid/view/View;
    .end local v12           #childrenCount:I
    .end local v16           #i:I
    .end local v17           #idBitsToAssign:I
    .end local v19           #intercepted:Z
    .end local v20           #newPenTarget:Landroid/view/ViewGroup$TouchTarget;
    .end local v23           #split:Z
    .end local v25           #x:F
    .end local v26           #y:F
    :cond_7
    const/4 v13, 0x0

    goto :goto_1

    .line 6050
    .restart local v13       #disallowIntercept:Z
    :cond_8
    const/16 v19, 0x0

    .restart local v19       #intercepted:Z
    goto :goto_2

    .line 6053
    .end local v13           #disallowIntercept:Z
    .end local v19           #intercepted:Z
    :cond_9
    const/16 v19, 0x1

    .restart local v19       #intercepted:Z
    goto :goto_2

    .line 6057
    :cond_a
    const/4 v9, 0x0

    goto :goto_3

    .line 6061
    .restart local v9       #canceled:Z
    :cond_b
    const/16 v23, 0x0

    goto :goto_4

    .line 6068
    .restart local v5       #actionIndex:I
    .restart local v7       #alreadyDispatchedToNewPenTarget:Z
    .restart local v20       #newPenTarget:Landroid/view/ViewGroup$TouchTarget;
    .restart local v23       #split:Z
    :cond_c
    const/16 v17, -0x1

    goto :goto_5

    .line 6090
    .restart local v10       #child:Landroid/view/View;
    .restart local v11       #children:[Landroid/view/View;
    .restart local v12       #childrenCount:I
    .restart local v16       #i:I
    .restart local v17       #idBitsToAssign:I
    .restart local v25       #x:F
    .restart local v26       #y:F
    :cond_d
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v10, v3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 6095
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/view/ViewGroup;->getPenTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v20

    .line 6096
    if-eqz v20, :cond_f

    .line 6099
    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    move/from16 v27, v0

    or-int v27, v27, v17

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 6121
    .end local v10           #child:Landroid/view/View;
    .end local v11           #children:[Landroid/view/View;
    .end local v16           #i:I
    .end local v25           #x:F
    .end local v26           #y:F
    :cond_e
    if-nez v20, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstPenTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v27, v0

    if-eqz v27, :cond_11

    .line 6124
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstPenTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v20, v0

    .line 6125
    :goto_8
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v27, v0

    if-eqz v27, :cond_10

    .line 6126
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v20, v0

    goto :goto_8

    .line 6103
    .restart local v10       #child:Landroid/view/View;
    .restart local v11       #children:[Landroid/view/View;
    .restart local v16       #i:I
    .restart local v25       #x:F
    .restart local v26       #y:F
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    goto :goto_7

    .line 6128
    .end local v10           #child:Landroid/view/View;
    .end local v11           #children:[Landroid/view/View;
    .end local v16           #i:I
    .end local v25           #x:F
    .end local v26           #y:F
    :cond_10
    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    move/from16 v27, v0

    or-int v27, v27, v17

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 6134
    .end local v5           #actionIndex:I
    .end local v12           #childrenCount:I
    .end local v17           #idBitsToAssign:I
    :cond_11
    const/4 v15, 0x0

    .line 6135
    .local v15, handled:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstPenTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v27, v0

    if-nez v27, :cond_14

    .line 6179
    :cond_12
    if-nez v9, :cond_13

    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v6, v0, :cond_1a

    .line 6180
    :cond_13
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->resetPenState()V

    goto/16 :goto_0

    .line 6146
    :cond_14
    const/16 v22, 0x0

    .line 6147
    .local v22, predecessor:Landroid/view/ViewGroup$TouchTarget;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstPenTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v24, v0

    .line 6148
    .local v24, target:Landroid/view/ViewGroup$TouchTarget;
    :goto_9
    if-eqz v24, :cond_12

    .line 6149
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v21, v0

    .line 6150
    .local v21, next:Landroid/view/ViewGroup$TouchTarget;
    if-eqz v7, :cond_16

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_16

    .line 6151
    const/4 v15, 0x1

    .line 6173
    :cond_15
    move-object/from16 v22, v24

    .line 6174
    move-object/from16 v24, v21

    .line 6175
    goto :goto_9

    .line 6153
    :cond_16
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    move-result v27

    if-nez v27, :cond_17

    if-eqz v19, :cond_18

    :cond_17
    const/4 v8, 0x1

    .line 6162
    .local v8, cancelChild:Z
    :goto_a
    if-eqz v8, :cond_15

    .line 6163
    if-nez v22, :cond_19

    .line 6164
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mFirstPenTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 6168
    :goto_b
    invoke-virtual/range {v24 .. v24}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 6169
    move-object/from16 v24, v21

    .line 6170
    goto :goto_9

    .line 6153
    .end local v8           #cancelChild:Z
    :cond_18
    const/4 v8, 0x0

    goto :goto_a

    .line 6166
    .restart local v8       #cancelChild:Z
    :cond_19
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_b

    .line 6181
    .end local v8           #cancelChild:Z
    .end local v21           #next:Landroid/view/ViewGroup$TouchTarget;
    .end local v22           #predecessor:Landroid/view/ViewGroup$TouchTarget;
    .end local v24           #target:Landroid/view/ViewGroup$TouchTarget;
    :cond_1a
    if-eqz v23, :cond_0

    const/16 v27, 0x6

    move/from16 v0, v27

    if-ne v6, v0, :cond_0

    .line 6185
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 6186
    .restart local v5       #actionIndex:I
    const/16 v27, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v28

    shl-int v18, v27, v28

    .line 6187
    .local v18, idBitsToRemove:I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->removePointersFromPenTargets(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 6189
    .end local v5           #actionIndex:I
    .end local v18           #idBitsToRemove:I
    :catch_0
    move-exception v14

    .line 6190
    .local v14, e:Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    .line 2510
    invoke-super {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    .line 2511
    .local v2, handled:Z
    if-eqz v2, :cond_0

    move v4, v2

    .line 2524
    :goto_0
    return v4

    .line 2515
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .local v1, count:I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 2516
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2517
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_1

    .line 2518
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    .line 2519
    if-eqz v2, :cond_1

    move v4, v2

    .line 2520
    goto :goto_0

    .line 2515
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2524
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/high16 v5, 0x2000

    .line 2617
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 2618
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2619
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2620
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 2621
    aget-object v0, v1, v3

    .line 2622
    .local v0, c:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_0

    .line 2623
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 2620
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2626
    .end local v0           #c:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/high16 v5, 0x2000

    .line 2589
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 2590
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2591
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2592
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 2593
    aget-object v0, v1, v3

    .line 2594
    .local v0, c:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_0

    .line 2595
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 2592
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2598
    .end local v0           #c:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public dispatchSetActivated(Z)V
    .locals 4
    .parameter "activated"

    .prologue
    .line 3311
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3312
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3313
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3314
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setActivated(Z)V

    .line 3313
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3316
    :cond_0
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 4
    .parameter "pressed"

    .prologue
    .line 3320
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3321
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3322
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3323
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setPressed(Z)V

    .line 3322
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3325
    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 4
    .parameter "selected"

    .prologue
    .line 3299
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3300
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3301
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3302
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setSelected(Z)V

    .line 3301
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3304
    :cond_0
    return-void
.end method

.method public dispatchStartTemporaryDetach()V
    .locals 4

    .prologue
    .line 2467
    invoke-super {p0}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 2468
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2469
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2470
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2471
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 2470
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2473
    :cond_0
    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .locals 4
    .parameter "visible"

    .prologue
    .line 1217
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    .line 1219
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1220
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1221
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1222
    aget-object v0, v1, v3

    .line 1223
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    .line 1221
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1225
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected dispatchThawSelfOnly(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2637
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 2638
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .parameter "ev"

    .prologue
    .line 1625
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 1626
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 1629
    :cond_0
    const/4 v14, 0x0

    .line 1630
    .local v14, handled:Z
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v26

    if-eqz v26, :cond_14

    .line 1631
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1632
    .local v4, action:I
    and-int/lit16 v6, v4, 0xff

    .line 1635
    .local v6, actionMasked:I
    if-nez v6, :cond_1

    .line 1639
    invoke-direct/range {p0 .. p1}, Landroid/view/ViewGroup;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    .line 1640
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->resetTouchState()V

    .line 1645
    :cond_1
    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v26, v0

    if-eqz v26, :cond_9

    .line 1647
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v26, v0

    const/high16 v27, 0x8

    and-int v26, v26, v27

    if-eqz v26, :cond_7

    const/4 v13, 0x1

    .line 1648
    .local v13, disallowIntercept:Z
    :goto_0
    if-nez v13, :cond_8

    .line 1649
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v18

    .line 1650
    .local v18, intercepted:Z
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1661
    .end local v13           #disallowIntercept:Z
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    move-result v26

    if-nez v26, :cond_3

    const/16 v26, 0x3

    move/from16 v0, v26

    if-ne v6, v0, :cond_a

    :cond_3
    const/4 v9, 0x1

    .line 1665
    .local v9, canceled:Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v26, v0

    const/high16 v27, 0x20

    and-int v26, v26, v27

    if-eqz v26, :cond_b

    const/16 v22, 0x1

    .line 1666
    .local v22, split:Z
    :goto_3
    const/16 v19, 0x0

    .line 1667
    .local v19, newTouchTarget:Landroid/view/ViewGroup$TouchTarget;
    const/4 v7, 0x0

    .line 1668
    .local v7, alreadyDispatchedToNewTouchTarget:Z
    if-nez v9, :cond_11

    if-nez v18, :cond_11

    .line 1669
    if-eqz v6, :cond_5

    if-eqz v22, :cond_4

    const/16 v26, 0x5

    move/from16 v0, v26

    if-eq v6, v0, :cond_5

    :cond_4
    const/16 v26, 0x7

    move/from16 v0, v26

    if-ne v6, v0, :cond_11

    .line 1672
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 1673
    .local v5, actionIndex:I
    if-eqz v22, :cond_c

    const/16 v26, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    shl-int v16, v26, v27

    .line 1678
    .local v16, idBitsToAssign:I
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->removePointersFromTouchTargets(I)V

    .line 1680
    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1681
    .local v12, childrenCount:I
    if-eqz v12, :cond_e

    .line 1684
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1685
    .local v11, children:[Landroid/view/View;
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v24

    .line 1686
    .local v24, x:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v25

    .line 1688
    .local v25, y:F
    add-int/lit8 v15, v12, -0x1

    .local v15, i:I
    :goto_5
    if-ltz v15, :cond_e

    .line 1689
    aget-object v10, v11, v15

    .line 1690
    .local v10, child:Landroid/view/View;
    invoke-static {v10}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v26

    if-eqz v26, :cond_6

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v10, v3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v26

    if-nez v26, :cond_d

    .line 1688
    :cond_6
    add-int/lit8 v15, v15, -0x1

    goto :goto_5

    .line 1647
    .end local v5           #actionIndex:I
    .end local v7           #alreadyDispatchedToNewTouchTarget:Z
    .end local v9           #canceled:Z
    .end local v10           #child:Landroid/view/View;
    .end local v11           #children:[Landroid/view/View;
    .end local v12           #childrenCount:I
    .end local v15           #i:I
    .end local v16           #idBitsToAssign:I
    .end local v18           #intercepted:Z
    .end local v19           #newTouchTarget:Landroid/view/ViewGroup$TouchTarget;
    .end local v22           #split:Z
    .end local v24           #x:F
    .end local v25           #y:F
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1652
    .restart local v13       #disallowIntercept:Z
    :cond_8
    const/16 v18, 0x0

    .restart local v18       #intercepted:Z
    goto/16 :goto_1

    .line 1657
    .end local v13           #disallowIntercept:Z
    .end local v18           #intercepted:Z
    :cond_9
    const/16 v18, 0x1

    .restart local v18       #intercepted:Z
    goto/16 :goto_1

    .line 1661
    :cond_a
    const/4 v9, 0x0

    goto :goto_2

    .line 1665
    .restart local v9       #canceled:Z
    :cond_b
    const/16 v22, 0x0

    goto :goto_3

    .line 1673
    .restart local v5       #actionIndex:I
    .restart local v7       #alreadyDispatchedToNewTouchTarget:Z
    .restart local v19       #newTouchTarget:Landroid/view/ViewGroup$TouchTarget;
    .restart local v22       #split:Z
    :cond_c
    const/16 v16, -0x1

    goto :goto_4

    .line 1695
    .restart local v10       #child:Landroid/view/View;
    .restart local v11       #children:[Landroid/view/View;
    .restart local v12       #childrenCount:I
    .restart local v15       #i:I
    .restart local v16       #idBitsToAssign:I
    .restart local v24       #x:F
    .restart local v25       #y:F
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/view/ViewGroup;->getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v19

    .line 1696
    if-eqz v19, :cond_f

    .line 1699
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    move/from16 v26, v0

    or-int v26, v26, v16

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 1717
    .end local v10           #child:Landroid/view/View;
    .end local v11           #children:[Landroid/view/View;
    .end local v15           #i:I
    .end local v24           #x:F
    .end local v25           #y:F
    :cond_e
    :goto_6
    if-nez v19, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v26, v0

    if-eqz v26, :cond_11

    .line 1720
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v19, v0

    .line 1721
    :goto_7
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v26, v0

    if-eqz v26, :cond_10

    .line 1722
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v19, v0

    goto :goto_7

    .line 1703
    .restart local v10       #child:Landroid/view/View;
    .restart local v11       #children:[Landroid/view/View;
    .restart local v15       #i:I
    .restart local v24       #x:F
    .restart local v25       #y:F
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 1704
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v10, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 1706
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ViewGroup;->mLastTouchDownTime:J

    .line 1707
    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 1708
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mLastTouchDownX:F

    .line 1709
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mLastTouchDownY:F

    .line 1710
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v10, v1}, Landroid/view/ViewGroup;->addTouchTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v19

    .line 1711
    const/4 v7, 0x1

    .line 1712
    goto :goto_6

    .line 1724
    .end local v10           #child:Landroid/view/View;
    .end local v11           #children:[Landroid/view/View;
    .end local v15           #i:I
    .end local v24           #x:F
    .end local v25           #y:F
    :cond_10
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    move/from16 v26, v0

    or-int v26, v26, v16

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 1730
    .end local v5           #actionIndex:I
    .end local v12           #childrenCount:I
    .end local v16           #idBitsToAssign:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v26, v0

    if-nez v26, :cond_16

    .line 1732
    const/16 v26, 0x0

    const/16 v27, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v9, v2, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v14

    .line 1767
    :cond_12
    if-nez v9, :cond_13

    const/16 v26, 0x1

    move/from16 v0, v26

    if-eq v6, v0, :cond_13

    const/16 v26, 0x7

    move/from16 v0, v26

    if-ne v6, v0, :cond_1d

    .line 1770
    :cond_13
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->resetTouchState()V

    .line 1778
    .end local v4           #action:I
    .end local v6           #actionMasked:I
    .end local v7           #alreadyDispatchedToNewTouchTarget:Z
    .end local v9           #canceled:Z
    .end local v18           #intercepted:Z
    .end local v19           #newTouchTarget:Landroid/view/ViewGroup$TouchTarget;
    .end local v22           #split:Z
    :cond_14
    :goto_8
    if-nez v14, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v26, v0

    if-eqz v26, :cond_15

    .line 1779
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 1781
    :cond_15
    return v14

    .line 1737
    .restart local v4       #action:I
    .restart local v6       #actionMasked:I
    .restart local v7       #alreadyDispatchedToNewTouchTarget:Z
    .restart local v9       #canceled:Z
    .restart local v18       #intercepted:Z
    .restart local v19       #newTouchTarget:Landroid/view/ViewGroup$TouchTarget;
    .restart local v22       #split:Z
    :cond_16
    const/16 v21, 0x0

    .line 1738
    .local v21, predecessor:Landroid/view/ViewGroup$TouchTarget;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v23, v0

    .line 1739
    .local v23, target:Landroid/view/ViewGroup$TouchTarget;
    :goto_9
    if-eqz v23, :cond_12

    .line 1740
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v20, v0

    .line 1741
    .local v20, next:Landroid/view/ViewGroup$TouchTarget;
    if-eqz v7, :cond_18

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_18

    .line 1742
    const/4 v14, 0x1

    .line 1761
    :cond_17
    move-object/from16 v21, v23

    .line 1762
    move-object/from16 v23, v20

    .line 1763
    goto :goto_9

    .line 1744
    :cond_18
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    move-result v26

    if-nez v26, :cond_19

    if-eqz v18, :cond_1b

    :cond_19
    const/4 v8, 0x1

    .line 1746
    .local v8, cancelChild:Z
    :goto_a
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v8, v2, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v26

    if-eqz v26, :cond_1a

    .line 1748
    const/4 v14, 0x1

    .line 1750
    :cond_1a
    if-eqz v8, :cond_17

    .line 1751
    if-nez v21, :cond_1c

    .line 1752
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 1756
    :goto_b
    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 1757
    move-object/from16 v23, v20

    .line 1758
    goto :goto_9

    .line 1744
    .end local v8           #cancelChild:Z
    :cond_1b
    const/4 v8, 0x0

    goto :goto_a

    .line 1754
    .restart local v8       #cancelChild:Z
    :cond_1c
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_b

    .line 1771
    .end local v8           #cancelChild:Z
    .end local v20           #next:Landroid/view/ViewGroup$TouchTarget;
    .end local v21           #predecessor:Landroid/view/ViewGroup$TouchTarget;
    .end local v23           #target:Landroid/view/ViewGroup$TouchTarget;
    :cond_1d
    if-eqz v22, :cond_14

    const/16 v26, 0x6

    move/from16 v0, v26

    if-ne v6, v0, :cond_14

    .line 1772
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 1773
    .restart local v5       #actionIndex:I
    const/16 v26, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    shl-int v17, v26, v27

    .line 1774
    .local v17, idBitsToRemove:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->removePointersFromTouchTargets(I)V

    goto/16 :goto_8
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1295
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_0

    .line 1296
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v0}, Landroid/view/InputEventConsistencyVerifier;->onTrackballEvent(Landroid/view/MotionEvent;I)V

    .line 1299
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x12

    const/16 v2, 0x12

    if-ne v1, v2, :cond_2

    .line 1300
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1312
    :cond_1
    :goto_0
    return v0

    .line 1303
    :cond_2
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    .line 1304
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1309
    :cond_3
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_4

    .line 1310
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v0}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 1312
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 675
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchVisibilityChanged(Landroid/view/View;I)V
    .locals 4
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 948
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 949
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 950
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 951
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 952
    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 951
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 954
    :cond_0
    return-void
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasFocus"

    .prologue
    .line 871
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 872
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 873
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 874
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 875
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 874
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 877
    :cond_0
    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .locals 4
    .parameter "visibility"

    .prologue
    .line 961
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 962
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 963
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 964
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 965
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 964
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 967
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 62
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 2914
    const/16 v47, 0x0

    .line 2916
    .local v47, more:Z
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v32, v0

    .line 2917
    .local v32, cl:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v35, v0

    .line 2918
    .local v35, ct:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v34, v0

    .line 2919
    .local v34, cr:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v30, v0

    .line 2921
    .local v30, cb:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v31

    .line 2923
    .local v31, childHasIdentityMatrix:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v37, v0

    .line 2925
    .local v37, flags:I
    move/from16 v0, v37

    and-int/lit16 v6, v0, 0x100

    const/16 v7, 0x100

    if-ne v6, v7, :cond_0

    .line 2926
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->clear()V

    .line 2927
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v6, v6, -0x101

    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2930
    :cond_0
    const/16 v60, 0x0

    .line 2932
    .local v60, transformToApply:Landroid/view/animation/Transformation;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    .line 2933
    .local v5, a:Landroid/view/animation/Animation;
    const/16 v33, 0x0

    .line 2935
    .local v33, concatMatrix:Z
    const/16 v51, 0x0

    .line 2937
    .local v51, scalingRequired:Z
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewGroup;->mDrawLayers:Z

    if-eqz v6, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayerType()I

    move-result v45

    .line 2939
    .local v45, layerType:I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v38

    .line 2940
    .local v38, hardwareAccelerated:Z
    const v6, 0x8000

    and-int v6, v6, v37

    const v7, 0x8000

    if-eq v6, v7, :cond_1

    move/from16 v0, v37

    and-int/lit16 v6, v0, 0x4000

    const/16 v7, 0x4000

    if-ne v6, v7, :cond_7

    .line 2942
    :cond_1
    const/16 v29, 0x1

    .line 2943
    .local v29, caching:Z
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v6, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    move/from16 v51, v0

    .line 2948
    :cond_2
    :goto_1
    if-eqz v5, :cond_f

    .line 2949
    invoke-virtual {v5}, Landroid/view/animation/Animation;->isInitialized()Z

    move-result v42

    .line 2950
    .local v42, initialized:Z
    if-nez v42, :cond_3

    .line 2951
    sub-int v6, v34, v32

    sub-int v7, v30, v35

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 2952
    const/4 v6, 0x0

    const/4 v7, 0x0

    sub-int v8, v34, v32

    sub-int v9, v30, v35

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/animation/Animation;->initializeInvalidateRegion(IIII)V

    .line 2953
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->onAnimationStart()V

    .line 2956
    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    if-eqz v51, :cond_a

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v6, v6, Landroid/view/View$AttachInfo;->mApplicationScale:F

    :goto_2
    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1, v7, v6}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result v47

    .line 2958
    if-eqz v51, :cond_b

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v6, v6, Landroid/view/View$AttachInfo;->mApplicationScale:F

    const/high16 v7, 0x3f80

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_b

    .line 2959
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewGroup;->mInvalidationTransformation:Landroid/view/animation/Transformation;

    if-nez v6, :cond_4

    .line 2960
    new-instance v6, Landroid/view/animation/Transformation;

    invoke-direct {v6}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/view/ViewGroup;->mInvalidationTransformation:Landroid/view/animation/Transformation;

    .line 2962
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewGroup;->mInvalidationTransformation:Landroid/view/animation/Transformation;

    .line 2963
    .local v11, invalidationTransform:Landroid/view/animation/Transformation;
    const/high16 v6, 0x3f80

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1, v11, v6}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    .line 2967
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object/from16 v60, v0

    .line 2969
    invoke-virtual {v5}, Landroid/view/animation/Animation;->willChangeTransformationMatrix()Z

    move-result v33

    .line 2971
    if-eqz v47, :cond_5

    .line 2972
    invoke-virtual {v5}, Landroid/view/animation/Animation;->willChangeBounds()Z

    move-result v6

    if-nez v6, :cond_d

    .line 2973
    move/from16 v0, v37

    and-int/lit16 v6, v0, 0x90

    const/16 v7, 0x80

    if-ne v6, v7, :cond_c

    .line 2975
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v6, v6, 0x4

    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3010
    .end local v11           #invalidationTransform:Landroid/view/animation/Transformation;
    .end local v42           #initialized:Z
    :cond_5
    :goto_4
    if-nez v31, :cond_12

    const/4 v6, 0x1

    :goto_5
    or-int v33, v33, v6

    .line 3014
    move-object/from16 v0, p2

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v6, v6, 0x20

    move-object/from16 v0, p2

    iput v6, v0, Landroid/view/View;->mPrivateFlags:I

    .line 3016
    if-nez v33, :cond_13

    move/from16 v0, v32

    int-to-float v13, v0

    move/from16 v0, v35

    int-to-float v14, v0

    move/from16 v0, v34

    int-to-float v15, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v16, v0

    sget-object v17, Landroid/graphics/Canvas$EdgeType;->BW:Landroid/graphics/Canvas$EdgeType;

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v6

    if-eqz v6, :cond_13

    move-object/from16 v0, p2

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v6, v6, 0x40

    if-nez v6, :cond_13

    .line 3240
    :goto_6
    return v47

    .line 2937
    .end local v29           #caching:Z
    .end local v38           #hardwareAccelerated:Z
    .end local v45           #layerType:I
    :cond_6
    const/16 v45, 0x0

    goto/16 :goto_0

    .line 2945
    .restart local v38       #hardwareAccelerated:Z
    .restart local v45       #layerType:I
    :cond_7
    if-nez v45, :cond_8

    if-eqz v38, :cond_9

    :cond_8
    const/16 v29, 0x1

    .restart local v29       #caching:Z
    :goto_7
    goto/16 :goto_1

    .end local v29           #caching:Z
    :cond_9
    const/16 v29, 0x0

    goto :goto_7

    .line 2956
    .restart local v29       #caching:Z
    .restart local v42       #initialized:Z
    :cond_a
    const/high16 v6, 0x3f80

    goto/16 :goto_2

    .line 2965
    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .restart local v11       #invalidationTransform:Landroid/view/animation/Transformation;
    goto :goto_3

    .line 2976
    :cond_c
    and-int/lit8 v6, v37, 0x4

    if-nez v6, :cond_5

    .line 2979
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v6, v6, 0x40

    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/View;->mPrivateFlags:I

    .line 2980
    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v35

    move/from16 v3, v34

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->invalidate(IIII)V

    goto :goto_4

    .line 2983
    :cond_d
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    if-nez v6, :cond_e

    .line 2984
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    .line 2986
    :cond_e
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    .line 2987
    .local v10, region:Landroid/graphics/RectF;
    const/4 v6, 0x0

    const/4 v7, 0x0

    sub-int v8, v34, v32

    sub-int v9, v30, v35

    invoke-virtual/range {v5 .. v11}, Landroid/view/animation/Animation;->getInvalidateRegion(IIIILandroid/graphics/RectF;Landroid/view/animation/Transformation;)V

    .line 2991
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v6, v6, 0x40

    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/View;->mPrivateFlags:I

    .line 2993
    iget v6, v10, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    add-int v46, v32, v6

    .line 2994
    .local v46, left:I
    iget v6, v10, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    add-int v56, v35, v6

    .line 2995
    .local v56, top:I
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v6

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-int v6, v6

    add-int v6, v6, v46

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v7

    const/high16 v8, 0x3f00

    add-float/2addr v7, v8

    float-to-int v7, v7

    add-int v7, v7, v56

    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/view/ViewGroup;->invalidate(IIII)V

    goto/16 :goto_4

    .line 2999
    .end local v10           #region:Landroid/graphics/RectF;
    .end local v11           #invalidationTransform:Landroid/view/animation/Transformation;
    .end local v42           #initialized:Z
    .end local v46           #left:I
    .end local v56           #top:I
    :cond_f
    move/from16 v0, v37

    and-int/lit16 v6, v0, 0x800

    const/16 v7, 0x800

    if-ne v6, v7, :cond_5

    .line 3001
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v6}, Landroid/view/ViewGroup;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v41

    .line 3002
    .local v41, hasTransform:Z
    if-eqz v41, :cond_5

    .line 3003
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getTransformationType()I

    move-result v61

    .line 3004
    .local v61, transformType:I
    sget v6, Landroid/view/animation/Transformation;->TYPE_IDENTITY:I

    move/from16 v0, v61

    if-eq v0, v6, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object/from16 v60, v0

    .line 3006
    :goto_8
    sget v6, Landroid/view/animation/Transformation;->TYPE_MATRIX:I

    and-int v6, v6, v61

    if-eqz v6, :cond_11

    const/16 v33, 0x1

    :goto_9
    goto/16 :goto_4

    .line 3004
    :cond_10
    const/16 v60, 0x0

    goto :goto_8

    .line 3006
    :cond_11
    const/16 v33, 0x0

    goto :goto_9

    .line 3010
    .end local v41           #hasTransform:Z
    .end local v61           #transformType:I
    :cond_12
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 3021
    :cond_13
    if-eqz v38, :cond_14

    .line 3024
    move-object/from16 v0, p2

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, -0x8000

    and-int/2addr v6, v7

    const/high16 v7, -0x8000

    if-ne v6, v7, :cond_29

    const/4 v6, 0x1

    :goto_a
    move-object/from16 v0, p2

    iput-boolean v6, v0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 3025
    move-object/from16 v0, p2

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    move-object/from16 v0, p2

    iput v6, v0, Landroid/view/View;->mPrivateFlags:I

    .line 3028
    :cond_14
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->computeScroll()V

    .line 3030
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v54, v0

    .line 3031
    .local v54, sx:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v55, v0

    .line 3033
    .local v55, sy:I
    const/16 v36, 0x0

    .line 3034
    .local v36, displayList:Landroid/view/DisplayList;
    const/16 v27, 0x0

    .line 3035
    .local v27, cache:Landroid/graphics/Bitmap;
    const/16 v39, 0x0

    .line 3036
    .local v39, hasDisplayList:Z
    if-eqz v29, :cond_16

    .line 3037
    if-nez v38, :cond_2a

    .line 3038
    if-eqz v45, :cond_15

    .line 3039
    const/16 v45, 0x1

    .line 3040
    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 3042
    :cond_15
    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 3058
    :cond_16
    :goto_b
    if-eqz v27, :cond_17

    if-eqz v39, :cond_2b

    :cond_17
    const/16 v40, 0x1

    .line 3059
    .local v40, hasNoCache:Z
    :goto_c
    if-nez v27, :cond_2c

    if-nez v39, :cond_2c

    const/4 v6, 0x2

    move/from16 v0, v45

    if-eq v0, v6, :cond_2c

    const/16 v48, 0x1

    .line 3062
    .local v48, offsetForScroll:Z
    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v49

    .line 3063
    .local v49, restoreTo:I
    if-eqz v48, :cond_2d

    .line 3064
    sub-int v6, v32, v54

    int-to-float v6, v6

    sub-int v7, v35, v55

    int-to-float v7, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3074
    :cond_18
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getAlpha()F

    move-result v26

    .line 3075
    .local v26, alpha:F
    if-nez v60, :cond_19

    const/high16 v6, 0x3f80

    cmpg-float v6, v26, v6

    if-ltz v6, :cond_19

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v6

    if-nez v6, :cond_31

    .line 3076
    :cond_19
    if-nez v60, :cond_1a

    if-nez v31, :cond_1e

    .line 3077
    :cond_1a
    const/16 v57, 0x0

    .line 3078
    .local v57, transX:I
    const/16 v58, 0x0

    .line 3080
    .local v58, transY:I
    if-eqz v48, :cond_1b

    .line 3081
    move/from16 v0, v54

    neg-int v0, v0

    move/from16 v57, v0

    .line 3082
    move/from16 v0, v55

    neg-int v0, v0

    move/from16 v58, v0

    .line 3085
    :cond_1b
    if-eqz v60, :cond_1d

    .line 3086
    if-eqz v33, :cond_1c

    .line 3089
    move/from16 v0, v57

    neg-int v6, v0

    int-to-float v6, v6

    move/from16 v0, v58

    neg-int v7, v0

    int-to-float v7, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3090
    invoke-virtual/range {v60 .. v60}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 3091
    move/from16 v0, v57

    int-to-float v6, v0

    move/from16 v0, v58

    int-to-float v7, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3092
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v6, v6, 0x100

    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3095
    :cond_1c
    invoke-virtual/range {v60 .. v60}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v59

    .line 3096
    .local v59, transformAlpha:F
    const/high16 v6, 0x3f80

    cmpg-float v6, v59, v6

    if-gez v6, :cond_1d

    .line 3097
    invoke-virtual/range {v60 .. v60}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v6

    mul-float v26, v26, v6

    .line 3098
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v6, v6, 0x100

    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3102
    .end local v59           #transformAlpha:F
    :cond_1d
    if-nez v31, :cond_1e

    .line 3103
    move/from16 v0, v57

    neg-int v6, v0

    int-to-float v6, v6

    move/from16 v0, v58

    neg-int v7, v0

    int-to-float v7, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3104
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 3105
    move/from16 v0, v57

    int-to-float v6, v0

    move/from16 v0, v58

    int-to-float v7, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3109
    .end local v57           #transX:I
    .end local v58           #transY:I
    :cond_1e
    const/high16 v6, 0x3f80

    cmpg-float v6, v26, v6

    if-gez v6, :cond_21

    .line 3110
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v6, v6, 0x100

    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3111
    if-eqz v40, :cond_21

    .line 3112
    const/high16 v6, 0x437f

    mul-float v6, v6, v26

    float-to-int v0, v6

    move/from16 v17, v0

    .line 3113
    .local v17, multipliedAlpha:I
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->onSetAlpha(I)Z

    move-result v6

    if-nez v6, :cond_30

    .line 3114
    const/16 v18, 0x4

    .line 3115
    .local v18, layerFlags:I
    and-int/lit8 v6, v37, 0x1

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1f

    if-eqz v45, :cond_20

    .line 3117
    :cond_1f
    or-int/lit8 v18, v18, 0x10

    .line 3119
    :cond_20
    if-nez v45, :cond_21

    .line 3120
    if-eqz v39, :cond_2e

    const/16 v52, 0x0

    .line 3121
    .local v52, scrollX:I
    :goto_f
    if-eqz v39, :cond_2f

    const/16 v53, 0x0

    .line 3122
    .local v53, scrollY:I
    :goto_10
    move/from16 v0, v52

    int-to-float v13, v0

    move/from16 v0, v53

    int-to-float v14, v0

    add-int v6, v52, v34

    sub-int v6, v6, v32

    int-to-float v15, v6

    add-int v6, v53, v30

    sub-int v6, v6, v35

    int-to-float v0, v6

    move/from16 v16, v0

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v18}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 3136
    .end local v17           #multipliedAlpha:I
    .end local v18           #layerFlags:I
    .end local v52           #scrollX:I
    .end local v53           #scrollY:I
    :cond_21
    :goto_11
    and-int/lit8 v6, v37, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_22

    .line 3137
    if-eqz v48, :cond_32

    .line 3138
    sub-int v6, v34, v32

    add-int v6, v6, v54

    sub-int v7, v30, v35

    add-int v7, v7, v55

    move-object/from16 v0, p1

    move/from16 v1, v54

    move/from16 v2, v55

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 3148
    :cond_22
    :goto_12
    if-eqz v39, :cond_23

    .line 3149
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getDisplayList()Landroid/view/DisplayList;

    move-result-object v36

    .line 3150
    invoke-virtual/range {v36 .. v36}, Landroid/view/DisplayList;->isValid()Z

    move-result v6

    if-nez v6, :cond_23

    .line 3154
    const/16 v36, 0x0

    .line 3155
    const/16 v39, 0x0

    .line 3159
    :cond_23
    if-eqz v40, :cond_3a

    .line 3160
    const/16 v44, 0x0

    .line 3161
    .local v44, layerRendered:Z
    const/4 v6, 0x2

    move/from16 v0, v45

    if-ne v0, v6, :cond_24

    .line 3162
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHardwareLayer()Landroid/view/HardwareLayer;

    move-result-object v43

    .line 3163
    .local v43, layer:Landroid/view/HardwareLayer;
    if-eqz v43, :cond_35

    invoke-virtual/range {v43 .. v43}, Landroid/view/HardwareLayer;->isValid()Z

    move-result v6

    if-eqz v6, :cond_35

    .line 3164
    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    const/high16 v7, 0x437f

    mul-float v7, v7, v26

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v6, p1

    .line 3165
    check-cast v6, Landroid/view/HardwareCanvas;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p2

    iget-object v9, v0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v43

    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/view/HardwareCanvas;->drawHardwareLayer(Landroid/view/HardwareLayer;FFLandroid/graphics/Paint;)V

    .line 3166
    const/16 v44, 0x1

    .line 3176
    .end local v43           #layer:Landroid/view/HardwareLayer;
    :cond_24
    :goto_13
    if-nez v44, :cond_25

    .line 3177
    if-nez v39, :cond_39

    .line 3179
    move-object/from16 v0, p2

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x80

    const/16 v7, 0x80

    if-ne v6, v7, :cond_38

    .line 3183
    move-object/from16 v0, p2

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    const v7, -0x600001

    and-int/2addr v6, v7

    move-object/from16 v0, p2

    iput v6, v0, Landroid/view/View;->mPrivateFlags:I

    .line 3184
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3218
    .end local v44           #layerRendered:Z
    :cond_25
    :goto_14
    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3220
    if-eqz v5, :cond_27

    if-nez v47, :cond_27

    .line 3221
    if-nez v38, :cond_26

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v6

    if-nez v6, :cond_26

    .line 3222
    const/16 v6, 0xff

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->onSetAlpha(I)Z

    .line 3224
    :cond_26
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->finishAnimatingView(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 3227
    :cond_27
    if-eqz v47, :cond_28

    if-eqz v38, :cond_28

    .line 3231
    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3232
    invoke-virtual {v5}, Landroid/view/animation/Animation;->hasAlpha()Z

    move-result v6

    if-eqz v6, :cond_28

    move-object/from16 v0, p2

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x4

    and-int/2addr v6, v7

    const/high16 v7, 0x4

    if-ne v6, v7, :cond_28

    .line 3234
    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->invalidate(Z)V

    .line 3238
    :cond_28
    const/4 v6, 0x0

    move-object/from16 v0, p2

    iput-boolean v6, v0, Landroid/view/View;->mRecreateDisplayList:Z

    goto/16 :goto_6

    .line 3024
    .end local v26           #alpha:F
    .end local v27           #cache:Landroid/graphics/Bitmap;
    .end local v36           #displayList:Landroid/view/DisplayList;
    .end local v39           #hasDisplayList:Z
    .end local v40           #hasNoCache:Z
    .end local v48           #offsetForScroll:Z
    .end local v49           #restoreTo:I
    .end local v54           #sx:I
    .end local v55           #sy:I
    :cond_29
    const/4 v6, 0x0

    goto/16 :goto_a

    .line 3044
    .restart local v27       #cache:Landroid/graphics/Bitmap;
    .restart local v36       #displayList:Landroid/view/DisplayList;
    .restart local v39       #hasDisplayList:Z
    .restart local v54       #sx:I
    .restart local v55       #sy:I
    :cond_2a
    packed-switch v45, :pswitch_data_0

    goto/16 :goto_b

    .line 3052
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->canHaveDisplayList()Z

    move-result v39

    goto/16 :goto_b

    .line 3046
    :pswitch_1
    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 3047
    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 3048
    goto/16 :goto_b

    .line 3058
    :cond_2b
    const/16 v40, 0x0

    goto/16 :goto_c

    .line 3059
    .restart local v40       #hasNoCache:Z
    :cond_2c
    const/16 v48, 0x0

    goto/16 :goto_d

    .line 3066
    .restart local v48       #offsetForScroll:Z
    .restart local v49       #restoreTo:I
    :cond_2d
    move/from16 v0, v32

    int-to-float v6, v0

    move/from16 v0, v35

    int-to-float v7, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3067
    if-eqz v51, :cond_18

    .line 3069
    const/high16 v6, 0x3f80

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v7, v7, Landroid/view/View$AttachInfo;->mApplicationScale:F

    div-float v50, v6, v7

    .line 3070
    .local v50, scale:F
    move-object/from16 v0, p1

    move/from16 v1, v50

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_e

    .end local v50           #scale:F
    .restart local v17       #multipliedAlpha:I
    .restart local v18       #layerFlags:I
    .restart local v26       #alpha:F
    :cond_2e
    move/from16 v52, v54

    .line 3120
    goto/16 :goto_f

    .restart local v52       #scrollX:I
    :cond_2f
    move/from16 v53, v55

    .line 3121
    goto/16 :goto_10

    .line 3127
    .end local v18           #layerFlags:I
    .end local v52           #scrollX:I
    :cond_30
    move-object/from16 v0, p2

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x4

    or-int/2addr v6, v7

    move-object/from16 v0, p2

    iput v6, v0, Landroid/view/View;->mPrivateFlags:I

    goto/16 :goto_11

    .line 3131
    .end local v17           #multipliedAlpha:I
    :cond_31
    move-object/from16 v0, p2

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x4

    and-int/2addr v6, v7

    const/high16 v7, 0x4

    if-ne v6, v7, :cond_21

    .line 3132
    const/16 v6, 0xff

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->onSetAlpha(I)Z

    .line 3133
    move-object/from16 v0, p2

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    const v7, -0x40001

    and-int/2addr v6, v7

    move-object/from16 v0, p2

    iput v6, v0, Landroid/view/View;->mPrivateFlags:I

    goto/16 :goto_11

    .line 3140
    :cond_32
    if-eqz v51, :cond_33

    if-nez v27, :cond_34

    .line 3141
    :cond_33
    const/4 v6, 0x0

    const/4 v7, 0x0

    sub-int v8, v34, v32

    sub-int v9, v30, v35

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto/16 :goto_12

    .line 3143
    :cond_34
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto/16 :goto_12

    .line 3168
    .restart local v43       #layer:Landroid/view/HardwareLayer;
    .restart local v44       #layerRendered:Z
    :cond_35
    if-eqz v39, :cond_36

    const/16 v52, 0x0

    .line 3169
    .restart local v52       #scrollX:I
    :goto_15
    if-eqz v39, :cond_37

    const/16 v53, 0x0

    .line 3170
    .restart local v53       #scrollY:I
    :goto_16
    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v21, v0

    add-int v6, v52, v34

    sub-int v6, v6, v32

    int-to-float v0, v6

    move/from16 v22, v0

    add-int v6, v53, v30

    sub-int v6, v6, v35

    int-to-float v0, v6

    move/from16 v23, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    const/16 v25, 0x14

    move-object/from16 v19, p1

    invoke-virtual/range {v19 .. v25}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    goto/16 :goto_13

    .end local v52           #scrollX:I
    .end local v53           #scrollY:I
    :cond_36
    move/from16 v52, v54

    .line 3168
    goto :goto_15

    .restart local v52       #scrollX:I
    :cond_37
    move/from16 v53, v55

    .line 3169
    goto :goto_16

    .line 3186
    .end local v43           #layer:Landroid/view/HardwareLayer;
    .end local v52           #scrollX:I
    :cond_38
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_14

    .line 3189
    :cond_39
    move-object/from16 v0, p2

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    const v7, -0x600001

    and-int/2addr v6, v7

    move-object/from16 v0, p2

    iput v6, v0, Landroid/view/View;->mPrivateFlags:I

    move-object/from16 v6, p1

    .line 3190
    check-cast v6, Landroid/view/HardwareCanvas;

    sub-int v7, v34, v32

    sub-int v8, v30, v35

    const/4 v9, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/view/HardwareCanvas;->drawDisplayList(Landroid/view/DisplayList;IILandroid/graphics/Rect;)Z

    goto/16 :goto_14

    .line 3193
    .end local v44           #layerRendered:Z
    :cond_3a
    if-eqz v27, :cond_25

    .line 3194
    move-object/from16 v0, p2

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    const v7, -0x600001

    and-int/2addr v6, v7

    move-object/from16 v0, p2

    iput v6, v0, Landroid/view/View;->mPrivateFlags:I

    .line 3197
    if-nez v45, :cond_3e

    .line 3198
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    .line 3199
    .local v28, cachePaint:Landroid/graphics/Paint;
    if-nez v28, :cond_3b

    .line 3200
    new-instance v28, Landroid/graphics/Paint;

    .end local v28           #cachePaint:Landroid/graphics/Paint;
    invoke-direct/range {v28 .. v28}, Landroid/graphics/Paint;-><init>()V

    .line 3201
    .restart local v28       #cachePaint:Landroid/graphics/Paint;
    const/4 v6, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 3202
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    .line 3204
    :cond_3b
    const/high16 v6, 0x3f80

    cmpg-float v6, v26, v6

    if-gez v6, :cond_3d

    .line 3205
    const/high16 v6, 0x437f

    mul-float v6, v6, v26

    float-to-int v6, v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3206
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v6, v6, 0x1000

    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3215
    :cond_3c
    :goto_17
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v6, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_14

    .line 3207
    :cond_3d
    move/from16 v0, v37

    and-int/lit16 v6, v0, 0x1000

    const/16 v7, 0x1000

    if-ne v6, v7, :cond_3c

    .line 3208
    const/16 v6, 0xff

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3209
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v6, v6, -0x1001

    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_17

    .line 3212
    .end local v28           #cachePaint:Landroid/graphics/Paint;
    :cond_3e
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    .line 3213
    .restart local v28       #cachePaint:Landroid/graphics/Paint;
    const/high16 v6, 0x437f

    mul-float v6, v6, v26

    float-to-int v6, v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_17

    .line 3044
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected drawableStateChanged()V
    .locals 6

    .prologue
    .line 5311
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 5313
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 5314
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_0

    .line 5315
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "addStateFromChildren cannot be enabled if a child has duplicateParentState set to true"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5319
    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5320
    .local v1, children:[Landroid/view/View;
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5322
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 5323
    aget-object v0, v1, v3

    .line 5324
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    const/high16 v5, 0x40

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 5325
    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 5322
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5329
    .end local v0           #child:Landroid/view/View;
    .end local v1           #children:[Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_2
    return-void
.end method

.method public endViewTransition(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 5198
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 5199
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5200
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 5201
    .local v0, disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5202
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5203
    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5205
    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5214
    :cond_0
    :goto_0
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 5217
    .end local v0           #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1
    return-void

    .line 5207
    .restart local v0       #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_2
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_3

    .line 5208
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 5210
    :cond_3
    iget-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_0

    .line 5211
    const/4 v1, 0x0

    iput-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_0
.end method

.method public findFocus()Landroid/view/View;
    .locals 1

    .prologue
    .line 754
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    .end local p0
    :goto_0
    return-object p0

    .line 758
    .restart local p0
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 759
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .line 761
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "outLocalPoint"

    .prologue
    .line 1183
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1184
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1185
    .local v1, children:[Landroid/view/View;
    add-int/lit8 v3, v2, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 1186
    aget-object v0, v1, v3

    .line 1187
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->canAcceptDrag()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1185
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1191
    :cond_1
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1195
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 6
    .parameter "accessibilityId"

    .prologue
    .line 850
    invoke-super {p0, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v3

    .line 851
    .local v3, foundView:Landroid/view/View;
    if-eqz v3, :cond_0

    move-object v5, v3

    .line 863
    :goto_0
    return-object v5

    .line 854
    :cond_0
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 855
    .local v2, childrenCount:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 856
    .local v1, children:[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 857
    aget-object v0, v1, v4

    .line 858
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v3

    .line 859
    if-eqz v3, :cond_1

    move-object v5, v3

    .line 860
    goto :goto_0

    .line 856
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 863
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter "childToSkip"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3413
    .local p1, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-interface {p1, p0}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3432
    .end local p0
    :goto_0
    return-object p0

    .line 3417
    .restart local p0
    :cond_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3418
    .local v3, where:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3420
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 3421
    aget-object v2, v3, v0

    .line 3423
    .local v2, v:Landroid/view/View;
    if-eq v2, p2, :cond_1

    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 3424
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 3426
    if-eqz v2, :cond_1

    move-object p0, v2

    .line 3427
    goto :goto_0

    .line 3420
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3432
    .end local v2           #v:Landroid/view/View;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 5
    .parameter "id"

    .prologue
    .line 3359
    iget v4, p0, Landroid/view/View;->mID:I

    if-ne p1, v4, :cond_0

    .line 3378
    .end local p0
    :goto_0
    return-object p0

    .line 3363
    .restart local p0
    :cond_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3364
    .local v3, where:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3366
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 3367
    aget-object v2, v3, v0

    .line 3369
    .local v2, v:Landroid/view/View;
    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 3370
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3372
    if-eqz v2, :cond_1

    move-object p0, v2

    .line 3373
    goto :goto_0

    .line 3366
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3378
    .end local v2           #v:Landroid/view/View;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 5
    .parameter "tag"

    .prologue
    .line 3386
    if-eqz p1, :cond_0

    iget-object v4, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3405
    .end local p0
    :goto_0
    return-object p0

    .line 3390
    .restart local p0
    :cond_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3391
    .local v3, where:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3393
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 3394
    aget-object v2, v3, v0

    .line 3396
    .local v2, v:Landroid/view/View;
    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 3397
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 3399
    if-eqz v2, :cond_1

    move-object p0, v2

    .line 3400
    goto :goto_0

    .line 3393
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3405
    .end local v2           #v:Landroid/view/View;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .locals 5
    .parameter
    .parameter "text"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 836
    .local p1, outViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 837
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 838
    .local v2, childrenCount:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 839
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 840
    aget-object v0, v1, v3

    .line 841
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_0

    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_0

    .line 843
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 839
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 846
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 5
    .parameter "insets"

    .prologue
    .line 5285
    invoke-super {p0, p1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v2

    .line 5286
    .local v2, done:Z
    if-nez v2, :cond_0

    .line 5287
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5288
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5289
    .local v0, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 5290
    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v2

    .line 5291
    if-eqz v2, :cond_1

    .line 5296
    .end local v0           #children:[Landroid/view/View;
    .end local v1           #count:I
    .end local v3           #i:I
    :cond_0
    return v2

    .line 5289
    .restart local v0       #children:[Landroid/view/View;
    .restart local v1       #count:I
    .restart local v3       #i:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 603
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isRootNamespace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 611
    :goto_0
    return-object v0

    .line 608
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    .line 609
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 611
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 564
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x6

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 576
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    .line 578
    :cond_1
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 9
    .parameter "region"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 5250
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v8, v8, 0x200

    if-nez v8, :cond_0

    move v4, v7

    .line 5251
    .local v4, meOpaque:Z
    :goto_0
    if-eqz v4, :cond_1

    if-nez p1, :cond_1

    .line 5267
    :goto_1
    return v7

    .end local v4           #meOpaque:Z
    :cond_0
    move v4, v6

    .line 5250
    goto :goto_0

    .line 5255
    .restart local v4       #meOpaque:Z
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 5256
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5257
    .local v1, children:[Landroid/view/View;
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5258
    .local v2, count:I
    const/4 v5, 0x1

    .line 5259
    .local v5, noneOfTheChildrenAreTransparent:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v2, :cond_4

    .line 5260
    aget-object v0, v1, v3

    .line 5261
    .local v0, child:Landroid/view/View;
    iget v8, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v8, v8, 0xc

    if-eqz v8, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 5262
    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 5263
    const/4 v5, 0x0

    .line 5259
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 5267
    .end local v0           #child:Landroid/view/View;
    :cond_4
    if-nez v4, :cond_5

    if-eqz v5, :cond_6

    :cond_5
    move v6, v7

    :cond_6
    move v7, v6

    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 4807
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 4778
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .parameter "p"

    .prologue
    .line 4796
    return-object p1
.end method

.method public getCachePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 4932
    if-ltz p1, :cond_0

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-lt p1, v0, :cond_1

    .line 4933
    :cond_0
    const/4 v0, 0x0

    .line 4935
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 4921
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 0
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 2852
    return p2
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1
    .parameter "child"
    .parameter "t"

    .prologue
    .line 3351
    const/4 v0, 0x0

    return v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 11
    .parameter "child"
    .parameter "r"
    .parameter "offset"

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v9, 0x3f00

    .line 4489
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v6, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 4490
    .local v3, rect:Landroid/graphics/RectF;
    :goto_0
    invoke-virtual {v3, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4492
    invoke-virtual {p1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v6

    if-nez v6, :cond_0

    .line 4493
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4496
    :cond_0
    iget v6, p1, Landroid/view/View;->mLeft:I

    iget v7, p0, Landroid/view/View;->mScrollX:I

    sub-int v0, v6, v7

    .line 4497
    .local v0, dx:I
    iget v6, p1, Landroid/view/View;->mTop:I

    iget v7, p0, Landroid/view/View;->mScrollY:I

    sub-int v1, v6, v7

    .line 4499
    .local v1, dy:I
    int-to-float v6, v0

    int-to-float v7, v1

    invoke-virtual {v3, v6, v7}, Landroid/graphics/RectF;->offset(FF)V

    .line 4501
    if-eqz p3, :cond_2

    .line 4502
    invoke-virtual {p1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v6

    if-nez v6, :cond_1

    .line 4503
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v6, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    .line 4505
    .local v2, position:[F
    :goto_1
    iget v6, p3, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    aput v6, v2, v5

    .line 4506
    iget v6, p3, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    aput v6, v2, v4

    .line 4507
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 4508
    aget v6, v2, v5

    add-float/2addr v6, v9

    float-to-int v6, v6

    iput v6, p3, Landroid/graphics/Point;->x:I

    .line 4509
    aget v6, v2, v4

    add-float/2addr v6, v9

    float-to-int v6, v6

    iput v6, p3, Landroid/graphics/Point;->y:I

    .line 4511
    .end local v2           #position:[F
    :cond_1
    iget v6, p3, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v0

    iput v6, p3, Landroid/graphics/Point;->x:I

    .line 4512
    iget v6, p3, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v1

    iput v6, p3, Landroid/graphics/Point;->y:I

    .line 4515
    :cond_2
    iget v6, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Landroid/view/View;->mBottom:I

    iget v8, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v3, v10, v10, v6, v7}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4516
    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-nez v5, :cond_5

    .line 4522
    :goto_2
    return v4

    .line 4489
    .end local v0           #dx:I
    .end local v1           #dy:I
    .end local v3           #rect:Landroid/graphics/RectF;
    :cond_3
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    goto :goto_0

    .line 4503
    .restart local v0       #dx:I
    .restart local v1       #dy:I
    .restart local v3       #rect:Landroid/graphics/RectF;
    :cond_4
    const/4 v6, 0x2

    new-array v2, v6, [F

    goto :goto_1

    .line 4517
    :cond_5
    iget v4, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v9

    float-to-int v4, v4

    iget v5, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v9

    float-to-int v5, v5

    iget v6, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v9

    float-to-int v6, v6

    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v9

    float-to-int v7, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 4519
    iget-object v4, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v4, p0, p2, p3}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v4

    goto :goto_2

    :cond_6
    move v4, v5

    .line 4522
    goto :goto_2
.end method

.method public getDescendantFocusability()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x20000
                to = "FOCUS_BEFORE_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x40000
                to = "FOCUS_AFTER_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x60000
                to = "FOCUS_BLOCK_DESCENDANTS"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 496
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x6

    and-int/2addr v0, v1

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    return-object v0
.end method

.method public getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;
    .locals 1

    .prologue
    .line 4596
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method public getLayoutAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    .prologue
    .line 5306
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method public getLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 1

    .prologue
    .line 3932
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    return-object v0
.end method

.method public getPersistentDrawingCache()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "ANIMATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "SCROLLING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "ALL"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 4751
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return v0
.end method

.method handleFocusGainInternal(ILandroid/graphics/Rect;)V
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 526
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->unFocus()V

    .line 528
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 530
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->handleFocusGainInternal(ILandroid/graphics/Rect;)V

    .line 531
    return-void
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 739
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFocusable()Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 769
    iget v7, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    if-eqz v7, :cond_1

    .line 790
    :cond_0
    :goto_0
    return v5

    .line 773
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v6

    .line 774
    goto :goto_0

    .line 777
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    .line 778
    .local v3, descendantFocusability:I
    const/high16 v7, 0x6

    if-eq v3, v7, :cond_0

    .line 779
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 780
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 782
    .local v1, children:[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v2, :cond_0

    .line 783
    aget-object v0, v1, v4

    .line 784
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v7

    if-eqz v7, :cond_3

    move v5, v6

    .line 785
    goto :goto_0

    .line 782
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method protected hasHoveredChild()Z
    .locals 1

    .prologue
    .line 1498
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public indexOfChild(Landroid/view/View;)I
    .locals 4
    .parameter "child"

    .prologue
    .line 4904
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4905
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4906
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 4907
    aget-object v3, v0, v2

    if-ne v3, p1, :cond_0

    .line 4911
    .end local v2           #i:I
    :goto_1
    return v2

    .line 4906
    .restart local v2       #i:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4911
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public final invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 17
    .parameter "child"
    .parameter "dirty"

    .prologue
    .line 4196
    move-object/from16 v10, p0

    .line 4198
    .local v10, parent:Landroid/view/ViewParent;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 4199
    .local v1, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_2

    .line 4203
    move-object/from16 v0, p1

    iget v12, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v12, v12, 0x40

    const/16 v13, 0x40

    if-ne v12, v13, :cond_3

    const/4 v4, 0x1

    .line 4205
    .local v4, drawAnimation:Z
    :goto_0
    if-nez p2, :cond_b

    .line 4206
    move-object/from16 v0, p1

    iget v12, v0, Landroid/view/View;->mLayerType:I

    if-eqz v12, :cond_0

    .line 4207
    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v13, -0x8000

    or-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Landroid/view/View;->mPrivateFlags:I

    .line 4208
    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/View;->mPrivateFlags:I

    const v13, -0x8001

    and-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Landroid/view/View;->mPrivateFlags:I

    .line 4209
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->setEmpty()V

    .line 4212
    :cond_0
    const/4 v11, 0x0

    .line 4213
    .local v11, view:Landroid/view/View;
    instance-of v12, v10, Landroid/view/View;

    if-eqz v12, :cond_4

    move-object v11, v10

    .line 4214
    check-cast v11, Landroid/view/View;

    .line 4215
    iget v12, v11, Landroid/view/View;->mLayerType:I

    if-eqz v12, :cond_1

    .line 4216
    iget-object v12, v11, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->setEmpty()V

    .line 4217
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    instance-of v12, v12, Landroid/view/View;

    if-eqz v12, :cond_1

    .line 4218
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 4219
    .local v5, grandParent:Landroid/view/View;
    iget v12, v5, Landroid/view/View;->mPrivateFlags:I

    const/high16 v13, -0x8000

    or-int/2addr v12, v13

    iput v12, v5, Landroid/view/View;->mPrivateFlags:I

    .line 4220
    iget v12, v5, Landroid/view/View;->mPrivateFlags:I

    const v13, -0x8001

    and-int/2addr v12, v13

    iput v12, v5, Landroid/view/View;->mPrivateFlags:I

    .line 4223
    .end local v5           #grandParent:Landroid/view/View;
    :cond_1
    iget v12, v11, Landroid/view/View;->mPrivateFlags:I

    const/high16 v13, 0x60

    and-int/2addr v12, v13

    if-eqz v12, :cond_4

    .line 4328
    .end local v4           #drawAnimation:Z
    .end local v11           #view:Landroid/view/View;
    :cond_2
    :goto_1
    return-void

    .line 4203
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 4229
    .restart local v4       #drawAnimation:Z
    .restart local v11       #view:Landroid/view/View;
    :cond_4
    if-eqz v4, :cond_5

    .line 4230
    if-eqz v11, :cond_7

    .line 4231
    iget v12, v11, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v12, v12, 0x40

    iput v12, v11, Landroid/view/View;->mPrivateFlags:I

    .line 4237
    :cond_5
    :goto_2
    instance-of v12, v10, Landroid/view/ViewRootImpl;

    if-eqz v12, :cond_8

    .line 4238
    check-cast v10, Landroid/view/ViewRootImpl;

    .end local v10           #parent:Landroid/view/ViewParent;
    invoke-virtual {v10}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 4239
    const/4 v10, 0x0

    .line 4250
    .restart local v10       #parent:Landroid/view/ViewParent;
    :cond_6
    :goto_3
    if-nez v10, :cond_0

    goto :goto_1

    .line 4232
    :cond_7
    instance-of v12, v10, Landroid/view/ViewRootImpl;

    if-eqz v12, :cond_5

    move-object v12, v10

    .line 4233
    check-cast v12, Landroid/view/ViewRootImpl;

    const/4 v13, 0x1

    iput-boolean v13, v12, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    goto :goto_2

    .line 4240
    :cond_8
    if-eqz v11, :cond_6

    .line 4241
    iget v12, v11, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v12, v12, 0x20

    const/16 v13, 0x20

    if-eq v12, v13, :cond_9

    iget v12, v11, Landroid/view/View;->mPrivateFlags:I

    const v13, 0x8000

    and-int/2addr v12, v13

    const v13, 0x8000

    if-ne v12, v13, :cond_a

    .line 4243
    :cond_9
    iget v12, v11, Landroid/view/View;->mPrivateFlags:I

    const v13, -0x8001

    and-int/2addr v12, v13

    iput v12, v11, Landroid/view/View;->mPrivateFlags:I

    .line 4244
    iget v12, v11, Landroid/view/View;->mPrivateFlags:I

    const/high16 v13, 0x20

    or-int/2addr v12, v13

    iput v12, v11, Landroid/view/View;->mPrivateFlags:I

    .line 4245
    iget-object v10, v11, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_3

    .line 4247
    :cond_a
    const/4 v10, 0x0

    goto :goto_3

    .line 4253
    .end local v11           #view:Landroid/view/View;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isOpaque()Z

    move-result v12

    if-eqz v12, :cond_13

    if-nez v4, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v12

    if-nez v12, :cond_13

    const/4 v6, 0x1

    .line 4257
    .local v6, isOpaque:Z
    :goto_4
    if-eqz v6, :cond_14

    const/high16 v9, 0x40

    .line 4259
    .local v9, opaqueFlag:I
    :goto_5
    move-object/from16 v0, p1

    iget v12, v0, Landroid/view/View;->mLayerType:I

    if-eqz v12, :cond_c

    .line 4260
    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v13, -0x8000

    or-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Landroid/view/View;->mPrivateFlags:I

    .line 4261
    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/View;->mPrivateFlags:I

    const v13, -0x8001

    and-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Landroid/view/View;->mPrivateFlags:I

    .line 4262
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 4265
    :cond_c
    iget-object v7, v1, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    .line 4266
    .local v7, location:[I
    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget v13, v0, Landroid/view/View;->mLeft:I

    aput v13, v7, v12

    .line 4267
    const/4 v12, 0x1

    move-object/from16 v0, p1

    iget v13, v0, Landroid/view/View;->mTop:I

    aput v13, v7, v12

    .line 4268
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 4269
    .local v3, childMatrix:Landroid/graphics/Matrix;
    invoke-virtual {v3}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v12

    if-nez v12, :cond_d

    .line 4270
    iget-object v2, v1, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 4271
    .local v2, boundingRect:Landroid/graphics/RectF;
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4273
    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4274
    iget v12, v2, Landroid/graphics/RectF;->left:F

    const/high16 v13, 0x3f00

    sub-float/2addr v12, v13

    float-to-int v12, v12

    iget v13, v2, Landroid/graphics/RectF;->top:F

    const/high16 v14, 0x3f00

    sub-float/2addr v13, v14

    float-to-int v13, v13

    iget v14, v2, Landroid/graphics/RectF;->right:F

    const/high16 v15, 0x3f00

    add-float/2addr v14, v15

    float-to-int v14, v14

    iget v15, v2, Landroid/graphics/RectF;->bottom:F

    const/high16 v16, 0x3f00

    add-float v15, v15, v16

    float-to-int v15, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 4281
    .end local v2           #boundingRect:Landroid/graphics/RectF;
    :cond_d
    const/4 v11, 0x0

    .line 4282
    .restart local v11       #view:Landroid/view/View;
    instance-of v12, v10, Landroid/view/View;

    if-eqz v12, :cond_e

    move-object v11, v10

    .line 4283
    check-cast v11, Landroid/view/View;

    .line 4284
    iget v12, v11, Landroid/view/View;->mLayerType:I

    if-eqz v12, :cond_e

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    instance-of v12, v12, Landroid/view/View;

    if-eqz v12, :cond_e

    .line 4286
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 4287
    .restart local v5       #grandParent:Landroid/view/View;
    iget v12, v5, Landroid/view/View;->mPrivateFlags:I

    const/high16 v13, -0x8000

    or-int/2addr v12, v13

    iput v12, v5, Landroid/view/View;->mPrivateFlags:I

    .line 4288
    iget v12, v5, Landroid/view/View;->mPrivateFlags:I

    const v13, -0x8001

    and-int/2addr v12, v13

    iput v12, v5, Landroid/view/View;->mPrivateFlags:I

    .line 4292
    .end local v5           #grandParent:Landroid/view/View;
    :cond_e
    if-eqz v4, :cond_f

    .line 4293
    if-eqz v11, :cond_15

    .line 4294
    iget v12, v11, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v12, v12, 0x40

    iput v12, v11, Landroid/view/View;->mPrivateFlags:I

    .line 4302
    :cond_f
    :goto_6
    if-eqz v11, :cond_11

    .line 4303
    iget v12, v11, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v12, v12, 0x3000

    if-eqz v12, :cond_10

    invoke-virtual {v11}, Landroid/view/View;->getSolidColor()I

    move-result v12

    if-nez v12, :cond_10

    .line 4305
    const/high16 v9, 0x20

    .line 4307
    :cond_10
    iget v12, v11, Landroid/view/View;->mPrivateFlags:I

    const/high16 v13, 0x60

    and-int/2addr v12, v13

    const/high16 v13, 0x20

    if-eq v12, v13, :cond_11

    .line 4308
    iget v12, v11, Landroid/view/View;->mPrivateFlags:I

    const v13, -0x600001

    and-int/2addr v12, v13

    or-int/2addr v12, v9

    iput v12, v11, Landroid/view/View;->mPrivateFlags:I

    .line 4312
    :cond_11
    move-object/from16 v0, p2

    invoke-interface {v10, v7, v0}, Landroid/view/ViewParent;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v10

    .line 4313
    if-eqz v11, :cond_12

    .line 4315
    invoke-virtual {v11}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    .line 4316
    .local v8, m:Landroid/graphics/Matrix;
    invoke-virtual {v8}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v12

    if-nez v12, :cond_12

    .line 4317
    iget-object v2, v1, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 4318
    .restart local v2       #boundingRect:Landroid/graphics/RectF;
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4319
    invoke-virtual {v8, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4320
    iget v12, v2, Landroid/graphics/RectF;->left:F

    float-to-int v12, v12

    iget v13, v2, Landroid/graphics/RectF;->top:F

    float-to-int v13, v13

    iget v14, v2, Landroid/graphics/RectF;->right:F

    const/high16 v15, 0x3f00

    add-float/2addr v14, v15

    float-to-int v14, v14

    iget v15, v2, Landroid/graphics/RectF;->bottom:F

    const/high16 v16, 0x3f00

    add-float v15, v15, v16

    float-to-int v15, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 4325
    .end local v2           #boundingRect:Landroid/graphics/RectF;
    .end local v8           #m:Landroid/graphics/Matrix;
    :cond_12
    if-nez v10, :cond_d

    goto/16 :goto_1

    .line 4253
    .end local v3           #childMatrix:Landroid/graphics/Matrix;
    .end local v6           #isOpaque:Z
    .end local v7           #location:[I
    .end local v9           #opaqueFlag:I
    .end local v11           #view:Landroid/view/View;
    :cond_13
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 4257
    .restart local v6       #isOpaque:Z
    :cond_14
    const/high16 v9, 0x20

    goto/16 :goto_5

    .line 4295
    .restart local v3       #childMatrix:Landroid/graphics/Matrix;
    .restart local v7       #location:[I
    .restart local v9       #opaqueFlag:I
    .restart local v11       #view:Landroid/view/View;
    :cond_15
    instance-of v12, v10, Landroid/view/ViewRootImpl;

    if-eqz v12, :cond_f

    move-object v12, v10

    .line 4296
    check-cast v12, Landroid/view/ViewRootImpl;

    const/4 v13, 0x1

    iput-boolean v13, v12, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    goto :goto_6
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 7
    .parameter "location"
    .parameter "dirty"

    .prologue
    const v4, 0x8000

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4343
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_6

    .line 4345
    :cond_0
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v2, v2, 0x90

    const/16 v3, 0x80

    if-eq v2, v3, :cond_3

    .line 4347
    aget v2, p1, v5

    iget v3, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v2, v3

    aget v3, p1, v6

    iget v4, p0, Landroid/view/View;->mScrollY:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 4350
    iget v0, p0, Landroid/view/View;->mLeft:I

    .line 4351
    .local v0, left:I
    iget v1, p0, Landroid/view/View;->mTop:I

    .line 4353
    .local v1, top:I
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v6, :cond_1

    iget v2, p0, Landroid/view/View;->mRight:I

    sub-int/2addr v2, v0

    iget v3, p0, Landroid/view/View;->mBottom:I

    sub-int/2addr v3, v1

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6

    .line 4356
    :cond_1
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    const v3, -0x8001

    and-int/2addr v2, v3

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4358
    aput v0, p1, v5

    .line 4359
    aput v1, p1, v6

    .line 4361
    iget v2, p0, Landroid/view/View;->mLayerType:I

    if-eqz v2, :cond_2

    .line 4362
    iget-object v2, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 4365
    :cond_2
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4387
    .end local v0           #left:I
    .end local v1           #top:I
    :goto_0
    return-object v2

    .line 4368
    :cond_3
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    const v3, -0x8021

    and-int/2addr v2, v3

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4370
    iget v2, p0, Landroid/view/View;->mLeft:I

    aput v2, p1, v5

    .line 4371
    iget v2, p0, Landroid/view/View;->mTop:I

    aput v2, p1, v6

    .line 4372
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v6, :cond_5

    .line 4373
    iget v2, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 4379
    :goto_1
    iget v2, p0, Landroid/view/View;->mLayerType:I

    if-eqz v2, :cond_4

    .line 4380
    iget-object v2, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 4383
    :cond_4
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_0

    .line 4376
    :cond_5
    iget v2, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_1

    .line 4387
    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isAlwaysDrawnWithCacheEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 4642
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnimationCacheEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 4612
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isChildrenDrawingOrderEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 4709
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isChildrenDrawnWithCacheEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const v1, 0x8000

    .line 4677
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMotionEventSplittingEnabled()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20

    .line 2315
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "child"
    .parameter "outLocalPoint"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2006
    iget v4, p0, Landroid/view/View;->mScrollX:I

    int-to-float v4, v4

    add-float/2addr v4, p1

    iget v5, p3, Landroid/view/View;->mLeft:I

    int-to-float v5, v5

    sub-float v1, v4, v5

    .line 2007
    .local v1, localX:F
    iget v4, p0, Landroid/view/View;->mScrollY:I

    int-to-float v4, v4

    add-float/2addr v4, p2

    iget v5, p3, Landroid/view/View;->mTop:I

    int-to-float v5, v5

    sub-float v3, v4, v5

    .line 2008
    .local v3, localY:F
    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_0

    .line 2009
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v4, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    .line 2010
    .local v2, localXY:[F
    aput v1, v2, v6

    .line 2011
    aput v3, v2, v7

    .line 2012
    invoke-virtual {p3}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2013
    aget v1, v2, v6

    .line 2014
    aget v3, v2, v7

    .line 2016
    .end local v2           #localXY:[F
    :cond_0
    invoke-virtual {p3, v1, v3}, Landroid/view/View;->pointInView(FF)Z

    move-result v0

    .line 2017
    .local v0, isInView:Z
    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    .line 2018
    invoke-virtual {p4, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 2020
    :cond_1
    return v0
.end method

.method isViewTransitioning(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 5163
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 4

    .prologue
    .line 5333
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 5334
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5335
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5336
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 5337
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 5336
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5339
    :cond_0
    return-void
.end method

.method public final layout(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 4530
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isChangingLayout()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4531
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 4536
    :goto_0
    return-void

    .line 4534
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    goto :goto_0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    .line 4969
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 4971
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 4973
    .local v1, childWidthMeasureSpec:I
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 4976
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 4977
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    .line 4996
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4998
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 5001
    .local v1, childWidthMeasureSpec:I
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p4, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 5005
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 5006
    return-void
.end method

.method protected measureChildren(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 4948
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4949
    .local v3, size:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4950
    .local v1, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 4951
    aget-object v0, v1, v2

    .line 4952
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 4953
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 4950
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4956
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method notifyChildOfDrag(Landroid/view/View;)Z
    .locals 2
    .parameter "child"

    .prologue
    .line 1203
    const/4 v0, 0x0

    .line 1204
    .local v0, canAccept:Z
    iget-object v1, p0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1205
    iget-object v1, p0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1206
    iget-object v1, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    .line 1207
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->canAcceptDrag()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1208
    iget v1, p1, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroid/view/View;->mPrivateFlags2:I

    .line 1209
    invoke-virtual {p1}, Landroid/view/View;->refreshDrawableState()V

    .line 1212
    :cond_0
    return v0
.end method

.method public offsetChildrenTopAndBottom(I)V
    .locals 5
    .parameter "offset"

    .prologue
    .line 4472
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4473
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4475
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 4476
    aget-object v3, v0, v2

    .line 4477
    .local v3, v:Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mTop:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/view/View;->mTop:I

    .line 4478
    iget v4, v3, Landroid/view/View;->mBottom:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/view/View;->mBottom:I

    .line 4475
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4480
    .end local v3           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public final offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "descendant"
    .parameter "rect"

    .prologue
    .line 4397
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 4398
    return-void
.end method

.method offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V
    .locals 6
    .parameter "descendant"
    .parameter "rect"
    .parameter "offsetFromChildToParent"
    .parameter "clipToBounds"

    .prologue
    const/4 v5, 0x0

    .line 4418
    if-ne p1, p0, :cond_0

    .line 4462
    :goto_0
    return-void

    .line 4422
    :cond_0
    iget-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4427
    .local v1, theParent:Landroid/view/ViewParent;
    :goto_1
    if-eqz v1, :cond_4

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_4

    if-eq v1, p0, :cond_4

    .line 4429
    if-eqz p3, :cond_2

    .line 4430
    iget v2, p1, Landroid/view/View;->mLeft:I

    iget v3, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/view/View;->mTop:I

    iget v4, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 4432
    if-eqz p4, :cond_1

    move-object v0, v1

    .line 4433
    check-cast v0, Landroid/view/View;

    .line 4434
    .local v0, p:Landroid/view/View;
    iget v2, v0, Landroid/view/View;->mRight:I

    iget v3, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/view/View;->mBottom:I

    iget v4, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    .end local v0           #p:Landroid/view/View;
    :cond_1
    :goto_2
    move-object p1, v1

    .line 4445
    check-cast p1, Landroid/view/View;

    .line 4446
    iget-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_1

    .line 4437
    :cond_2
    if-eqz p4, :cond_3

    move-object v0, v1

    .line 4438
    check-cast v0, Landroid/view/View;

    .line 4439
    .restart local v0       #p:Landroid/view/View;
    iget v2, v0, Landroid/view/View;->mRight:I

    iget v3, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/view/View;->mBottom:I

    iget v4, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 4441
    .end local v0           #p:Landroid/view/View;
    :cond_3
    iget v2, p1, Landroid/view/View;->mScrollX:I

    iget v3, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/view/View;->mScrollY:I

    iget v4, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_2

    .line 4451
    :cond_4
    if-ne v1, p0, :cond_6

    .line 4452
    if-eqz p3, :cond_5

    .line 4453
    iget v2, p1, Landroid/view/View;->mLeft:I

    iget v3, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/view/View;->mTop:I

    iget v4, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 4456
    :cond_5
    iget v2, p1, Landroid/view/View;->mScrollX:I

    iget v3, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/view/View;->mScrollY:I

    iget v4, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 4460
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "parameter must be a descendant of this view"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .parameter "descendant"
    .parameter "rect"

    .prologue
    const/4 v0, 0x0

    .line 4407
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 4408
    return-void
.end method

.method protected onAnimationEnd()V
    .locals 2

    .prologue
    .line 2681
    invoke-super {p0}, Landroid/view/View;->onAnimationEnd()V

    .line 2684
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    .line 2685
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2687
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2688
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 2691
    :cond_0
    return-void
.end method

.method protected onAnimationStart()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 2657
    invoke-super {p0}, Landroid/view/View;->onAnimationStart()V

    .line 2660
    iget v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v6, v6, 0x40

    const/16 v7, 0x40

    if-ne v6, v7, :cond_3

    .line 2661
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2662
    .local v3, count:I
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2663
    .local v2, children:[Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isHardwareAccelerated()Z

    move-result v6

    if-nez v6, :cond_1

    move v0, v5

    .line 2665
    .local v0, buildCache:Z
    :goto_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 2666
    aget-object v1, v2, v4

    .line 2667
    .local v1, child:Landroid/view/View;
    iget v6, v1, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    if-nez v6, :cond_0

    .line 2668
    invoke-virtual {v1, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2669
    if-eqz v0, :cond_0

    .line 2670
    invoke-virtual {v1, v5}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 2665
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2663
    .end local v0           #buildCache:Z
    .end local v1           #child:Landroid/view/View;
    .end local v4           #i:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2675
    .restart local v0       #buildCache:Z
    .restart local v4       #i:I
    :cond_2
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v6, 0x8000

    or-int/2addr v5, v6

    iput v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2677
    .end local v0           #buildCache:Z
    .end local v2           #children:[Landroid/view/View;
    .end local v3           #count:I
    .end local v4           #i:I
    :cond_3
    return-void
.end method

.method protected onChildVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .parameter "child"
    .parameter "visibility"

    .prologue
    .line 916
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_1

    .line 917
    if-nez p2, :cond_3

    .line 918
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1}, Landroid/animation/LayoutTransition;->showChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 922
    :goto_0
    if-eqz p2, :cond_1

    .line 925
    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 926
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    .line 928
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 930
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 936
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    if-eqz v0, :cond_2

    .line 937
    if-nez p2, :cond_2

    .line 938
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->notifyChildOfDrag(Landroid/view/View;)Z

    .line 941
    :cond_2
    return-void

    .line 920
    :cond_3
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1}, Landroid/animation/LayoutTransition;->hideChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onConsistencyCheck(I)Z
    .locals 11
    .parameter "consistency"

    .prologue
    const/high16 v10, 0x60

    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 4831
    invoke-super {p0, p1}, Landroid/view/View;->onConsistencyCheck(I)Z

    move-result v6

    .line 4833
    .local v6, result:Z
    and-int/lit8 v8, p1, 0x1

    if-eqz v8, :cond_1

    move v1, v0

    .line 4834
    .local v1, checkLayout:Z
    :goto_0
    and-int/lit8 v8, p1, 0x2

    if-eqz v8, :cond_2

    .line 4836
    .local v0, checkDrawing:Z
    :goto_1
    if-eqz v1, :cond_3

    .line 4837
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4838
    .local v3, count:I
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4839
    .local v2, children:[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v3, :cond_3

    .line 4840
    aget-object v7, v2, v4

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eq v7, p0, :cond_0

    .line 4841
    const/4 v6, 0x0

    .line 4842
    const-string v7, "ViewConsistency"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "View "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v2, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has no parent/a parent that is not "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4839
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v0           #checkDrawing:Z
    .end local v1           #checkLayout:Z
    .end local v2           #children:[Landroid/view/View;
    .end local v3           #count:I
    .end local v4           #i:I
    :cond_1
    move v1, v7

    .line 4833
    goto :goto_0

    .restart local v1       #checkLayout:Z
    :cond_2
    move v0, v7

    .line 4834
    goto :goto_1

    .line 4848
    .restart local v0       #checkDrawing:Z
    :cond_3
    if-eqz v0, :cond_4

    .line 4850
    iget v7, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v7, v10

    if-eqz v7, :cond_4

    .line 4851
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 4852
    .local v5, parent:Landroid/view/ViewParent;
    if-eqz v5, :cond_4

    instance-of v7, v5, Landroid/view/ViewRootImpl;

    if-nez v7, :cond_4

    .line 4853
    check-cast v5, Landroid/view/View;

    .end local v5           #parent:Landroid/view/ViewParent;
    iget v7, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v7, v10

    if-nez v7, :cond_4

    .line 4854
    const/4 v6, 0x0

    .line 4855
    const-string v7, "ViewConsistency"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ViewGroup "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is dirty but its parent is not: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4862
    :cond_4
    return v6
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .parameter "extraSpace"

    .prologue
    .line 5343
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v5, v5, 0x2000

    if-nez v5, :cond_1

    .line 5344
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v4

    .line 5367
    :cond_0
    return-object v4

    .line 5347
    :cond_1
    const/4 v3, 0x0

    .line 5348
    .local v3, need:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 5349
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 5350
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 5352
    .local v0, childState:[I
    if-eqz v0, :cond_2

    .line 5353
    array-length v5, v0

    add-int/2addr v3, v5

    .line 5349
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5357
    .end local v0           #childState:[I
    :cond_3
    add-int v5, p1, v3

    invoke-super {p0, v5}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v4

    .line 5359
    .local v4, state:[I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 5360
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 5362
    .restart local v0       #childState:[I
    if-eqz v0, :cond_4

    .line 5363
    invoke-static {v4, v0}, Landroid/view/ViewGroup;->mergeDrawableStates([I[I)[I

    move-result-object v4

    .line 5359
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 2529
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2530
    const/4 v2, 0x0

    .local v2, i:I
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .local v1, count:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2531
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v3, v2

    .line 2532
    .local v0, child:Landroid/view/View;
    iget v3, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    if-nez v3, :cond_0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_0

    .line 2534
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;)V

    .line 2530
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2537
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1540
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptPenEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 6237
    iget-object v2, p0, Landroid/view/ViewGroup;->mView_onInterceptPenEvent:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 6239
    :try_start_0
    iget-object v2, p0, Landroid/view/ViewGroup;->mView_onInterceptPenEvent:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 6240
    .local v0, res:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 6241
    check-cast v0, Ljava/lang/Boolean;

    .end local v0           #res:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 6248
    :cond_0
    :goto_0
    return v1

    .line 6244
    :catch_0
    move-exception v2

    goto :goto_0

    .line 6243
    :catch_1
    move-exception v2

    goto :goto_0

    .line 6242
    :catch_2
    move-exception v2

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 2378
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract onLayout(ZIIII)V
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 2438
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2439
    .local v2, count:I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    .line 2440
    const/4 v6, 0x0

    .line 2441
    .local v6, index:I
    const/4 v5, 0x1

    .line 2442
    .local v5, increment:I
    move v3, v2

    .line 2448
    .local v3, end:I
    :goto_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2449
    .local v1, children:[Landroid/view/View;
    move v4, v6

    .local v4, i:I
    :goto_1
    if-eq v4, v3, :cond_2

    .line 2450
    aget-object v0, v1, v4

    .line 2451
    .local v0, child:Landroid/view/View;
    iget v7, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    if-nez v7, :cond_1

    .line 2452
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2453
    const/4 v7, 0x1

    .line 2457
    .end local v0           #child:Landroid/view/View;
    :goto_2
    return v7

    .line 2444
    .end local v1           #children:[Landroid/view/View;
    .end local v3           #end:I
    .end local v4           #i:I
    .end local v5           #increment:I
    .end local v6           #index:I
    :cond_0
    add-int/lit8 v6, v2, -0x1

    .line 2445
    .restart local v6       #index:I
    const/4 v5, -0x1

    .line 2446
    .restart local v5       #increment:I
    const/4 v3, -0x1

    .restart local v3       #end:I
    goto :goto_0

    .line 2449
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #children:[Landroid/view/View;
    .restart local v4       #i:I
    :cond_1
    add-int/2addr v4, v5

    goto :goto_1

    .line 2457
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "child"
    .parameter "event"

    .prologue
    .line 654
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 657
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "child"
    .parameter "event"

    .prologue
    .line 667
    const/4 v0, 0x1

    return v0
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 3567
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_0

    .line 3568
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 3570
    :cond_0
    return-void
.end method

.method protected onViewRemoved(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 3576
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_0

    .line 3577
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 3579
    :cond_0
    return-void
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 986
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v1, :cond_0

    .line 987
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 988
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 990
    .end local v0           #parent:Landroid/view/ViewParent;
    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 3979
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 3980
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3981
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3982
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 3994
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3995
    .local v2, count:I
    if-gtz v2, :cond_1

    .line 4036
    :cond_0
    :goto_0
    return-void

    .line 3999
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4000
    .local v0, children:[Landroid/view/View;
    iput v7, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4002
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 4003
    .local v4, focused:Landroid/view/View;
    iget-object v8, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v8, :cond_6

    const/4 v3, 0x1

    .line 4004
    .local v3, detach:Z
    :goto_1
    const/4 v1, 0x0

    .line 4006
    .local v1, clearChildFocus:Landroid/view/View;
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 4008
    add-int/lit8 v5, v2, -0x1

    .local v5, i:I
    :goto_2
    if-ltz v5, :cond_8

    .line 4009
    aget-object v6, v0, v5

    .line 4011
    .local v6, view:Landroid/view/View;
    iget-object v7, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v7, :cond_2

    .line 4012
    iget-object v7, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v7, p0, v6}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 4015
    :cond_2
    if-ne v6, v4, :cond_3

    .line 4016
    invoke-virtual {v6}, Landroid/view/View;->clearFocusForRemoval()V

    .line 4017
    move-object v1, v6

    .line 4020
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    if-nez v7, :cond_4

    iget-object v7, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v7, :cond_7

    iget-object v7, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 4022
    :cond_4
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 4027
    :cond_5
    :goto_3
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 4029
    iput-object v9, v6, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4030
    aput-object v9, v0, v5

    .line 4008
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .end local v1           #clearChildFocus:Landroid/view/View;
    .end local v3           #detach:Z
    .end local v5           #i:I
    .end local v6           #view:Landroid/view/View;
    :cond_6
    move v3, v7

    .line 4003
    goto :goto_1

    .line 4023
    .restart local v1       #clearChildFocus:Landroid/view/View;
    .restart local v3       #detach:Z
    .restart local v5       #i:I
    .restart local v6       #view:Landroid/view/View;
    :cond_7
    if-eqz v3, :cond_5

    .line 4024
    invoke-virtual {v6}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_3

    .line 4033
    .end local v6           #view:Landroid/view/View;
    :cond_8
    if-eqz v1, :cond_0

    .line 4034
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 1
    .parameter "child"
    .parameter "animate"

    .prologue
    .line 4052
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    .line 4053
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 4056
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 4057
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 4060
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4062
    :cond_3
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 4067
    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 4068
    return-void

    .line 4063
    :cond_5
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_4

    .line 4064
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 3816
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)V

    .line 3817
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3818
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3819
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 3848
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    .line 3849
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3850
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3851
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 3828
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)V

    .line 3829
    return-void
.end method

.method public removeViews(II)V
    .locals 1
    .parameter "start"
    .parameter "count"

    .prologue
    .line 3860
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    .line 3861
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3862
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3863
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 0
    .parameter "start"
    .parameter "count"

    .prologue
    .line 3839
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    .line 3840
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 540
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    invoke-super {p0}, Landroid/view/View;->unFocus()V

    .line 548
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eq v0, p1, :cond_3

    .line 549
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 550
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->unFocus()V

    .line 553
    :cond_2
    iput-object p1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 555
    :cond_3
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 618
    const/4 v0, 0x0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .parameter "disallowIntercept"

    .prologue
    const/high16 v1, 0x8

    .line 2323
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-ne p1, v0, :cond_2

    .line 2338
    :cond_0
    :goto_1
    return-void

    .line 2323
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2328
    :cond_2
    if-eqz p1, :cond_3

    .line 2329
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2335
    :goto_2
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 2336
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 2331
    :cond_3
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_2
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 5
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 2401
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    .line 2403
    .local v0, descendantFocusability:I
    sparse-switch v0, :sswitch_data_0

    .line 2415
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "descendant focusability must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS but is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2405
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 2412
    :cond_0
    :goto_0
    return v1

    .line 2407
    :sswitch_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 2408
    .local v1, took:Z
    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_0

    .line 2411
    .end local v1           #took:Z
    :sswitch_2
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 2412
    .restart local v1       #took:Z
    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_0

    .line 2403
    nop

    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .parameter "child"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 625
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 626
    .local v0, parent:Landroid/view/ViewParent;
    if-nez v0, :cond_1

    .line 634
    :cond_0
    :goto_0
    return v2

    .line 629
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    .line 631
    .local v1, propagate:Z
    if-eqz v1, :cond_0

    .line 634
    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public requestTransitionStart(Landroid/animation/LayoutTransition;)V
    .locals 1
    .parameter "transition"

    .prologue
    .line 5430
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 5431
    .local v0, viewAncestor:Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 5432
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->requestTransitionStart(Landroid/animation/LayoutTransition;)V

    .line 5434
    :cond_0
    return-void
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 5274
    if-eqz p1, :cond_0

    .line 5275
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 5276
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 5277
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 5280
    :cond_0
    return-void
.end method

.method protected resetResolvedLayoutDirection()V
    .locals 5

    .prologue
    .line 5438
    invoke-super {p0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 5441
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 5442
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 5443
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5444
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    const/high16 v4, -0x8000

    if-ne v3, v4, :cond_0

    .line 5445
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 5442
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5448
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected resetResolvedTextDirection()V
    .locals 4

    .prologue
    .line 5452
    invoke-super {p0}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 5455
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 5456
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 5457
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5458
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTextDirection()I

    move-result v3

    if-nez v3, :cond_0

    .line 5459
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 5456
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5462
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public scheduleLayoutAnimation()V
    .locals 1

    .prologue
    .line 4573
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4574
    return-void
.end method

.method public setAddStatesFromChildren(Z)V
    .locals 1
    .parameter "addsStates"

    .prologue
    .line 5377
    if-eqz p1, :cond_0

    .line 5378
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 5383
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    .line 5384
    return-void

    .line 5380
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method public setAlwaysDrawnWithCacheEnabled(Z)V
    .locals 1
    .parameter "always"

    .prologue
    .line 4663
    const/16 v0, 0x4000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4664
    return-void
.end method

.method public setAnimationCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 4627
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4628
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 2646
    if-nez p1, :cond_0

    iget v3, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 2647
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2648
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2649
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2650
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2649
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2653
    .end local v0           #children:[Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_1
    return-void
.end method

.method protected setChildrenDrawingOrderEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 4723
    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4724
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 4694
    const v0, 0x8000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4695
    return-void
.end method

.method public setChildrenLayersEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v3, 0x1

    .line 3250
    iget-boolean v2, p0, Landroid/view/ViewGroup;->mDrawLayers:Z

    if-eq p1, v2, :cond_1

    .line 3251
    iput-boolean p1, p0, Landroid/view/ViewGroup;->mDrawLayers:Z

    .line 3252
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3261
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v1, v2, :cond_1

    .line 3262
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v2, v1

    .line 3263
    .local v0, child:Landroid/view/View;
    iget v2, v0, Landroid/view/View;->mLayerType:I

    if-eqz v2, :cond_0

    .line 3264
    invoke-virtual {v0, v3}, Landroid/view/View;->invalidate(Z)V

    .line 3261
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3268
    .end local v0           #child:Landroid/view/View;
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public setClipChildren(Z)V
    .locals 1
    .parameter "clipChildren"

    .prologue
    .line 3279
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 3280
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1
    .parameter "clipToPadding"

    .prologue
    .line 3291
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 3292
    return-void
.end method

.method public setDescendantFocusability(I)V
    .locals 2
    .parameter "focusability"

    .prologue
    .line 508
    sparse-switch p1, :sswitch_data_0

    .line 514
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :sswitch_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x60001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 518
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x6

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 519
    return-void

    .line 508
    nop

    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 4583
    iput-object p1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 4584
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    .line 4585
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4587
    :cond_0
    return-void
.end method

.method public setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .parameter "animationListener"

    .prologue
    .line 5417
    iput-object p1, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 5418
    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 2
    .parameter "transition"

    .prologue
    .line 3913
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_0

    .line 3914
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->removeTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 3916
    :cond_0
    iput-object p1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    .line 3917
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_1

    .line 3918
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 3920
    :cond_1
    return-void
.end method

.method public setMotionEventSplittingEnabled(Z)V
    .locals 2
    .parameter "split"

    .prologue
    .line 2303
    if-eqz p1, :cond_0

    .line 2304
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2308
    :goto_0
    return-void

    .line 2306
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 3560
    iput-object p1, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 3561
    return-void
.end method

.method public setOnInterceptPenEvent(Ljava/lang/String;)V
    .locals 5
    .parameter "methodName"

    .prologue
    .line 6255
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 6256
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewGroup;->mView_onInterceptPenEvent:Ljava/lang/reflect/Method;

    .line 6264
    :goto_0
    return-void

    .line 6258
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/MotionEvent;

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewGroup;->mView_onInterceptPenEvent:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6260
    :catch_0
    move-exception v0

    .line 6262
    .local v0, nsme:Ljava/lang/NoSuchMethodException;
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mView_onInterceptPenEvent() error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPadding(IIII)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2575
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 2577
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2578
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2582
    :goto_0
    return-void

    .line 2580
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method public setPersistentDrawingCache(I)V
    .locals 1
    .parameter "drawingCacheToKeep"

    .prologue
    .line 4766
    and-int/lit8 v0, p1, 0x3

    iput v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    .line 4767
    return-void
.end method

.method protected setStaticTransformationsEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 3342
    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 3343
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 5474
    const/4 v0, 0x1

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 1
    .parameter "originalView"

    .prologue
    .line 584
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .parameter "originalView"
    .parameter "callback"

    .prologue
    .line 591
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startLayoutAnimation()V
    .locals 1

    .prologue
    .line 4560
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    .line 4561
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4562
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 4564
    :cond_0
    return-void
.end method

.method public startViewTransition(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 5179
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-ne v0, p0, :cond_1

    .line 5180
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 5181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    .line 5183
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5185
    :cond_1
    return-void
.end method

.method unFocus()V
    .locals 1

    .prologue
    .line 715
    invoke-super {p0}, Landroid/view/View;->unFocus()V

    .line 716
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->unFocus()V

    .line 719
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 720
    return-void
.end method

.method updateLocalSystemUiVisibility(II)V
    .locals 4
    .parameter "localValue"
    .parameter "localChanges"

    .prologue
    .line 1229
    invoke-super {p0, p1, p2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)V

    .line 1231
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1232
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1233
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1234
    aget-object v0, v1, v3

    .line 1235
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)V

    .line 1233
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1237
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "view"
    .parameter "params"

    .prologue
    .line 3514
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3515
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid LayoutParams supplied to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3517
    :cond_0
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eq v0, p0, :cond_1

    .line 3518
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given view not a child of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3520
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3521
    return-void
.end method
