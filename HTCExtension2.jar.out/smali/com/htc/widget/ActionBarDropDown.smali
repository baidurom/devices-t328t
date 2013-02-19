.class public Lcom/htc/widget/ActionBarDropDown;
.super Landroid/widget/LinearLayout;
.source "ActionBarDropDown.java"

# interfaces
.implements Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/htc/widget/ActionBarContainer$OnResourceUpdateListener;


# static fields
.field public static final MODE_AUTOMOTIVE:I = 0x2

.field public static final MODE_EXTERNAL:I = 0x1


# instance fields
.field private final animDuration:I

.field private animationListener:Landroid/view/animation/Animation$AnimationListener;

.field private arrowView:Landroid/view/View;

.field private clickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private clickListenerChd:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

.field private clickListenerGrp:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

.field private dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

.field private enableShow:Z

.field private forceMultiply:Z

.field private internalForceMultiply:Z

.field private listFooterView:Landroid/view/View;

.field private listHeaderView:Landroid/view/View;

.field private multiplyPaint:Landroid/graphics/Paint;

.field private popupAdapterExp:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/BaseExpandableListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private popupAdapterLst:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

.field private popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

.field private primaryMargin:I

.field private primaryView:Landroid/widget/TextView;

.field private resource:Landroid/content/res/Resources;

.field private scaleDownAnimator:Landroid/animation/ObjectAnimator;

.field private scaleUpAnimator:Landroid/animation/ObjectAnimator;

.field private secondaryView:Landroid/widget/TextView;

.field private skipLayoutChange:Z

.field private supportMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/high16 v5, -0x8000

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 69
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 54
    iput-object v3, p0, Lcom/htc/widget/ActionBarDropDown;->resource:Landroid/content/res/Resources;

    .line 56
    iput-object v3, p0, Lcom/htc/widget/ActionBarDropDown;->primaryView:Landroid/widget/TextView;

    .line 57
    iput-object v3, p0, Lcom/htc/widget/ActionBarDropDown;->secondaryView:Landroid/widget/TextView;

    .line 110
    iput v5, p0, Lcom/htc/widget/ActionBarDropDown;->primaryMargin:I

    .line 311
    iput-object v3, p0, Lcom/htc/widget/ActionBarDropDown;->arrowView:Landroid/view/View;

    .line 314
    iput-object v3, p0, Lcom/htc/widget/ActionBarDropDown;->multiplyPaint:Landroid/graphics/Paint;

    .line 337
    const/16 v2, 0x3c

    iput v2, p0, Lcom/htc/widget/ActionBarDropDown;->animDuration:I

    .line 339
    iput-object v3, p0, Lcom/htc/widget/ActionBarDropDown;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    .line 340
    iput-object v3, p0, Lcom/htc/widget/ActionBarDropDown;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    .line 461
    iput-boolean v4, p0, Lcom/htc/widget/ActionBarDropDown;->forceMultiply:Z

    .line 473
    iput-boolean v4, p0, Lcom/htc/widget/ActionBarDropDown;->internalForceMultiply:Z

    .line 538
    iput-boolean v6, p0, Lcom/htc/widget/ActionBarDropDown;->skipLayoutChange:Z

    .line 540
    iput-object v3, p0, Lcom/htc/widget/ActionBarDropDown;->listHeaderView:Landroid/view/View;

    .line 541
    iput-object v3, p0, Lcom/htc/widget/ActionBarDropDown;->listFooterView:Landroid/view/View;

    .line 561
    iput-object v3, p0, Lcom/htc/widget/ActionBarDropDown;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    .line 572
    iput-object v3, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 573
    iput-object v3, p0, Lcom/htc/widget/ActionBarDropDown;->popupAdapterLst:Ljava/lang/ref/WeakReference;

    .line 593
    iput-object v3, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    .line 594
    iput-object v3, p0, Lcom/htc/widget/ActionBarDropDown;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    .line 616
    iput-object v3, p0, Lcom/htc/widget/ActionBarDropDown;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 630
    iput-object v3, p0, Lcom/htc/widget/ActionBarDropDown;->clickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 640
    iput-object v3, p0, Lcom/htc/widget/ActionBarDropDown;->clickListenerChd:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

    .line 641
    iput-object v3, p0, Lcom/htc/widget/ActionBarDropDown;->clickListenerGrp:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

    .line 678
    iput-boolean v4, p0, Lcom/htc/widget/ActionBarDropDown;->enableShow:Z

    .line 983
    iput v5, p0, Lcom/htc/widget/ActionBarDropDown;->supportMode:I

    .line 71
    iput-object v3, p0, Lcom/htc/widget/ActionBarDropDown;->resource:Landroid/content/res/Resources;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->resource:Landroid/content/res/Resources;

    .line 74
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->resource:Landroid/content/res/Resources;

    if-nez v2, :cond_0

    .line 75
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "package resouce null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->resource:Landroid/content/res/Resources;

    const v3, 0x2050001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 80
    .local v1, padding:I
    invoke-virtual {p0, v1, v4, v1, v4}, Lcom/htc/widget/ActionBarDropDown;->setPadding(IIII)V

    .line 81
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/htc/widget/ActionBarDropDown;->setGravity(I)V

    .line 82
    invoke-virtual {p0, v4}, Lcom/htc/widget/ActionBarDropDown;->setOrientation(I)V

    .line 83
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/htc/widget/ActionBarDropDown;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x209000a

    invoke-virtual {v2, v3, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 88
    const v2, 0x2020046

    invoke-virtual {p0, v2}, Lcom/htc/widget/ActionBarDropDown;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->arrowView:Landroid/view/View;

    .line 89
    const v2, 0x2020044

    invoke-virtual {p0, v2}, Lcom/htc/widget/ActionBarDropDown;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->primaryView:Landroid/widget/TextView;

    .line 90
    const v2, 0x2020045

    invoke-virtual {p0, v2}, Lcom/htc/widget/ActionBarDropDown;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->secondaryView:Landroid/widget/TextView;

    .line 93
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->primaryView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->secondaryView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->arrowView:Landroid/view/View;

    if-nez v2, :cond_2

    .line 94
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "inflate layout resource incorrect"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :cond_2
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->primaryView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, lparams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->primaryView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #lparams:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 104
    .restart local v0       #lparams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v2, p0, Lcom/htc/widget/ActionBarDropDown;->primaryMargin:I

    .line 107
    .end local v0           #lparams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    invoke-direct {p0}, Lcom/htc/widget/ActionBarDropDown;->updateLayoutEnvironment()V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "mode"

    .prologue
    const/4 v0, 0x2

    .line 61
    invoke-direct {p0, p1}, Lcom/htc/widget/ActionBarDropDown;-><init>(Landroid/content/Context;)V

    .line 63
    if-ne p2, v0, :cond_0

    .line 64
    invoke-virtual {p0, v0}, Lcom/htc/widget/ActionBarDropDown;->setSupportMode(I)V

    .line 65
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/ActionBarDropDown;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/htc/widget/ActionBarDropDown;->setupFontEnvironment()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/widget/ActionBarDropDown;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/htc/widget/ActionBarDropDown;->setInternalMultiplyForceEnabled(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/widget/ActionBarDropDown;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/htc/widget/ActionBarDropDown;->enableShow:Z

    return v0
.end method

.method static synthetic access$202(Lcom/htc/widget/ActionBarDropDown;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/htc/widget/ActionBarDropDown;->enableShow:Z

    return p1
.end method

.method private cleanPreviousWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 664
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 667
    iput-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 673
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 674
    iput-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    .line 676
    :cond_1
    return-void
.end method

.method private setInternalMultiplyForceEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 478
    iget-boolean v0, p0, Lcom/htc/widget/ActionBarDropDown;->internalForceMultiply:Z

    if-eq v0, p1, :cond_0

    .line 480
    iput-boolean p1, p0, Lcom/htc/widget/ActionBarDropDown;->internalForceMultiply:Z

    .line 481
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarDropDown;->invalidate()V

    .line 483
    :cond_0
    return-void
.end method

.method private setupAnimationEnv()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 345
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    const-string v1, "viewScale"

    new-array v2, v4, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    .line 350
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 351
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x1e

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 353
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/htc/widget/ActionBarDropDown$2;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarDropDown$2;-><init>(Lcom/htc/widget/ActionBarDropDown;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 376
    const-string v1, "viewScale"

    new-array v2, v4, [F

    fill-array-data v2, :array_1

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    .line 377
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 378
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x3c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 380
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/htc/widget/ActionBarDropDown$3;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarDropDown$3;-><init>(Lcom/htc/widget/ActionBarDropDown;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 403
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->multiplyPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->mContext:Landroid/content/Context;

    const-string v2, "multiply_color"

    const/high16 v3, 0x206

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 408
    .local v0, colorID:I
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->multiplyPaint:Landroid/graphics/Paint;

    .line 409
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->multiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/htc/widget/ActionBarDropDown;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 410
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->multiplyPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    .line 349
    nop

    :array_0
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 376
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data
.end method

.method private setupAutomotiveMode()V
    .locals 7

    .prologue
    const/high16 v6, 0x205

    const/4 v5, 0x0

    .line 1034
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->resource:Landroid/content/res/Resources;

    const v3, 0x20e0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    neg-int v2, v2

    iput v2, p0, Lcom/htc/widget/ActionBarDropDown;->primaryMargin:I

    .line 1037
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->primaryView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/htc/widget/ActionBarDropDown;->mContext:Landroid/content/Context;

    const v4, 0x203007b

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1038
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->secondaryView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/htc/widget/ActionBarDropDown;->mContext:Landroid/content/Context;

    const v4, 0x203007d

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1041
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1045
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1046
    .local v0, lparams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/htc/widget/ActionBarDropDown;->primaryMargin:I

    neg-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1050
    .end local v0           #lparams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->arrowView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->arrowView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1054
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->arrowView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1055
    .local v0, lparams:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->resource:Landroid/content/res/Resources;

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1059
    .end local v0           #lparams:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/ActionBarDropDown;->setArrowEnabled(Z)V

    .line 1079
    new-instance v2, Lcom/htc/widget/ActionBarDropDown$4;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarDropDown$4;-><init>(Lcom/htc/widget/ActionBarDropDown;)V

    invoke-virtual {p0, v2}, Lcom/htc/widget/ActionBarDropDown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1087
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->resource:Landroid/content/res/Resources;

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1090
    .local v1, paddingOffset:I
    invoke-virtual {p0, v1, v5, v1, v5}, Lcom/htc/widget/ActionBarDropDown;->setPadding(IIII)V

    .line 1091
    invoke-direct {p0}, Lcom/htc/widget/ActionBarDropDown;->updateLayoutEnvironment()V

    .line 1092
    return-void
.end method

.method private setupFontEnvironment()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 151
    iget v3, p0, Lcom/htc/widget/ActionBarDropDown;->supportMode:I

    if-eq v3, v5, :cond_0

    iget-object v3, p0, Lcom/htc/widget/ActionBarDropDown;->primaryView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/ActionBarDropDown;->secondaryView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/ActionBarDropDown;->primaryView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 158
    .local v0, lparams1:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/htc/widget/ActionBarDropDown;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 161
    .local v1, lparams2:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/htc/widget/ActionBarDropDown;->resource:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->fontsize:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 179
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarDropDown;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/ActionBarDropDown;->primaryView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/widget/ActionBarDropDown;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v2, v3, 0x2

    .line 181
    .local v2, offset:I
    iput v2, p0, Lcom/htc/widget/ActionBarDropDown;->primaryMargin:I

    .line 182
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 183
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 165
    .end local v2           #offset:I
    :pswitch_2
    iput v4, p0, Lcom/htc/widget/ActionBarDropDown;->primaryMargin:I

    .line 166
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 167
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 172
    :pswitch_3
    iget-object v3, p0, Lcom/htc/widget/ActionBarDropDown;->resource:Landroid/content/res/Resources;

    const v4, 0x2050003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 173
    iget-object v3, p0, Lcom/htc/widget/ActionBarDropDown;->resource:Landroid/content/res/Resources;

    const v4, 0x205000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 174
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v3, p0, Lcom/htc/widget/ActionBarDropDown;->primaryMargin:I

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private updateLayoutEnvironment()V
    .locals 8

    .prologue
    const/16 v7, 0xf

    const/16 v6, 0xa

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 118
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->primaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->secondaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->primaryView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    const/4 v0, 0x0

    .line 122
    .local v0, lparams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->primaryView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #lparams:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 124
    .restart local v0       #lparams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 127
    invoke-virtual {v0, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 128
    invoke-virtual {v0, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 129
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 131
    iget v1, p0, Lcom/htc/widget/ActionBarDropDown;->supportMode:I

    if-ne v1, v5, :cond_2

    .line 132
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->primaryView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->mContext:Landroid/content/Context;

    const v3, 0x203007b

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 145
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarDropDown;->requestLayout()V

    goto :goto_0

    .line 136
    :cond_3
    iget v1, p0, Lcom/htc/widget/ActionBarDropDown;->primaryMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 137
    invoke-virtual {v0, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 138
    invoke-virtual {v0, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 140
    iget v1, p0, Lcom/htc/widget/ActionBarDropDown;->supportMode:I

    if-ne v1, v5, :cond_2

    .line 141
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->primaryView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->mContext:Landroid/content/Context;

    const v3, 0x203007c

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 1
    .parameter "footerView"

    .prologue
    .line 557
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->listFooterView:Landroid/view/View;

    .line 558
    iput-object p1, p0, Lcom/htc/widget/ActionBarDropDown;->listFooterView:Landroid/view/View;

    .line 559
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 1
    .parameter "headerView"

    .prologue
    .line 546
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->listHeaderView:Landroid/view/View;

    .line 547
    iput-object p1, p0, Lcom/htc/widget/ActionBarDropDown;->listHeaderView:Landroid/view/View;

    .line 548
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 776
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarDropDown;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 779
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->internalDismiss()V

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 784
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->internalDismiss()V

    .line 785
    :cond_1
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 494
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v5}, Lcom/htc/widget/ActionBarDropDown;->setLayerType(ILandroid/graphics/Paint;)V

    .line 500
    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget/ActionBarDropDown;->internalForceMultiply:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/widget/ActionBarDropDown;->forceMultiply:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->multiplyPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    .line 502
    const/4 v7, 0x0

    .line 505
    .local v7, canvasCount:I
    iget v0, p0, Lcom/htc/widget/ActionBarDropDown;->mScrollX:I

    int-to-float v1, v0

    iget v0, p0, Lcom/htc/widget/ActionBarDropDown;->mScrollY:I

    int-to-float v2, v0

    iget v0, p0, Lcom/htc/widget/ActionBarDropDown;->mScrollX:I

    invoke-virtual {p0}, Lcom/htc/widget/ActionBarDropDown;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/htc/widget/ActionBarDropDown;->mScrollY:I

    invoke-virtual {p0}, Lcom/htc/widget/ActionBarDropDown;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v7

    .line 506
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 509
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->multiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 510
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 514
    .end local v7           #canvasCount:I
    :goto_0
    return-void

    .line 513
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getPrimaryText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->primaryView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->primaryView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getPrimaryVisibility()I
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->primaryView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->primaryView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    goto :goto_0
.end method

.method public getSecondaryText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->secondaryView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getSecondaryVisibility()I
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->secondaryView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    goto :goto_0
.end method

.method public isBubbleWindowShow()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 790
    iget-object v4, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v4}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 791
    .local v1, currentShowLst:Z
    :goto_0
    iget-object v4, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v4}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v2

    .line 793
    .local v0, currentShowExp:Z
    :goto_1
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    return v3

    .end local v0           #currentShowExp:Z
    .end local v1           #currentShowLst:Z
    :cond_2
    move v1, v3

    .line 790
    goto :goto_0

    .restart local v1       #currentShowLst:Z
    :cond_3
    move v0, v3

    .line 791
    goto :goto_1
.end method

.method protected measureContentWidth(Landroid/widget/BaseExpandableListAdapter;)I
    .locals 17
    .parameter "adapter"

    .prologue
    .line 861
    const/4 v5, 0x0

    .line 862
    .local v5, childItemView:Landroid/view/View;
    const/4 v12, 0x0

    .line 865
    .local v12, groupItemView:Landroid/view/View;
    if-nez p1, :cond_1

    .line 866
    const/4 v15, 0x0

    .line 927
    :cond_0
    return v15

    .line 868
    :cond_1
    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 869
    .local v16, widthMeasureSpec:I
    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 871
    .local v14, heightMeasureSpec:I
    const/high16 v13, -0x8000

    .line 872
    .local v13, groupPositionType:I
    const/high16 v10, -0x8000

    .line 873
    .local v10, groupConvertType:I
    const/high16 v15, -0x8000

    .line 876
    .local v15, maximumWidth:I
    const/4 v2, 0x0

    .local v2, loopi:I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/BaseExpandableListAdapter;->getGroupCount()I

    move-result v11

    .local v11, groupCount:I
    :goto_0
    if-ge v2, v11, :cond_0

    .line 878
    invoke-virtual/range {p1 .. p1}, Landroid/widget/BaseExpandableListAdapter;->getGroupCount()I

    move-result v1

    if-eq v1, v11, :cond_2

    .line 879
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "multiple thread access"

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 881
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/BaseExpandableListAdapter;->getGroupType(I)I

    move-result v13

    .line 884
    if-eq v13, v10, :cond_3

    .line 886
    move v10, v13

    .line 887
    const/4 v12, 0x0

    .line 891
    :cond_3
    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1, v12, v4}, Landroid/widget/BaseExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 893
    if-eqz v12, :cond_4

    .line 895
    move/from16 v0, v16

    invoke-virtual {v12, v0, v14}, Landroid/view/View;->measure(II)V

    .line 896
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 899
    :cond_4
    const/high16 v9, -0x8000

    .line 900
    .local v9, childPositionType:I
    const/high16 v7, -0x8000

    .line 902
    .local v7, childConvertType:I
    const/4 v3, 0x0

    .local v3, loopj:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/BaseExpandableListAdapter;->getChildrenCount(I)I

    move-result v8

    .local v8, childCount:I
    :goto_1
    if-ge v3, v8, :cond_8

    .line 904
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/BaseExpandableListAdapter;->getChildrenCount(I)I

    move-result v1

    if-eq v1, v8, :cond_5

    .line 905
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "multiple thread access"

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 907
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/widget/BaseExpandableListAdapter;->getChildType(II)I

    move-result v9

    .line 910
    if-eq v9, v7, :cond_6

    .line 912
    move v7, v9

    .line 913
    const/4 v5, 0x0

    .line 917
    :cond_6
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/widget/BaseExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 919
    if-eqz v5, :cond_7

    .line 921
    move/from16 v0, v16

    invoke-virtual {v5, v0, v14}, Landroid/view/View;->measure(II)V

    .line 922
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 902
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 876
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected measureContentWidth(Landroid/widget/ListAdapter;)I
    .locals 11
    .parameter "adapter"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 803
    const/4 v2, 0x0

    .line 806
    .local v2, childItemView:Landroid/view/View;
    if-nez p1, :cond_1

    .line 855
    :cond_0
    :goto_0
    return v6

    .line 809
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 810
    .local v7, widthMeasureSpec:I
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 812
    .local v4, heightMeasureSpec:I
    const/high16 v3, -0x8000

    .line 813
    .local v3, childPositionType:I
    const/high16 v1, -0x8000

    .line 814
    .local v1, childConvertType:I
    const/high16 v6, -0x8000

    .line 817
    .local v6, maximumWidth:I
    const/4 v5, 0x0

    .local v5, loop:I
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .local v0, adapterCount:I
    :goto_1
    if-ge v5, v0, :cond_6

    .line 819
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    if-eq v9, v0, :cond_2

    .line 820
    const-string v9, "ActionBarDropDown"

    const-string v10, "adapter changed during measureContentWidth"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_2
    invoke-interface {p1, v5}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    .line 826
    if-eq v3, v1, :cond_3

    .line 828
    move v1, v3

    .line 829
    const/4 v2, 0x0

    .line 833
    :cond_3
    instance-of v9, p1, Landroid/widget/ArrayAdapter;

    if-eqz v9, :cond_4

    move-object v2, v8

    .end local v2           #childItemView:Landroid/view/View;
    :cond_4
    invoke-interface {p1, v5, v2, v8}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 835
    .restart local v2       #childItemView:Landroid/view/View;
    if-eqz v2, :cond_5

    .line 837
    invoke-virtual {v2, v7, v4}, Landroid/view/View;->measure(II)V

    .line 838
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 817
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 843
    :cond_6
    iget-object v8, p0, Lcom/htc/widget/ActionBarDropDown;->listHeaderView:Landroid/view/View;

    if-eqz v8, :cond_7

    .line 845
    iget-object v8, p0, Lcom/htc/widget/ActionBarDropDown;->listHeaderView:Landroid/view/View;

    invoke-virtual {v8, v7, v4}, Landroid/view/View;->measure(II)V

    .line 846
    iget-object v8, p0, Lcom/htc/widget/ActionBarDropDown;->listHeaderView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 849
    :cond_7
    iget-object v8, p0, Lcom/htc/widget/ActionBarDropDown;->listFooterView:Landroid/view/View;

    if-eqz v8, :cond_0

    .line 851
    iget-object v8, p0, Lcom/htc/widget/ActionBarDropDown;->listFooterView:Landroid/view/View;

    invoke-virtual {v8, v7, v4}, Landroid/view/View;->measure(II)V

    .line 852
    iget-object v8, p0, Lcom/htc/widget/ActionBarDropDown;->listFooterView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 524
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarDropDown;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 525
    invoke-direct {p0}, Lcom/htc/widget/ActionBarDropDown;->cleanPreviousWindow()V

    .line 527
    iput-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->listHeaderView:Landroid/view/View;

    .line 528
    iput-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->listFooterView:Landroid/view/View;

    .line 529
    iput-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    .line 531
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 532
    return-void
.end method

.method public onDismiss()V
    .locals 1

    .prologue
    .line 937
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/ActionBarDropDown;->skipLayoutChange:Z

    .line 938
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/ActionBarDropDown;->setMultiplyForceEnabled(Z)V

    .line 940
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarDropDown;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 942
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    invoke-interface {v0}, Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;->onDismiss()V

    .line 944
    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 953
    iget-boolean v0, p0, Lcom/htc/widget/ActionBarDropDown;->skipLayoutChange:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 970
    :cond_0
    :goto_0
    return-void

    .line 957
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarDropDown;->isBubbleWindowShow()Z

    move-result v0

    if-nez v0, :cond_2

    .line 958
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarDropDown;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 962
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarDropDown;->isShown()Z

    move-result v0

    if-nez v0, :cond_3

    .line 963
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarDropDown;->dismiss()V

    goto :goto_0

    .line 966
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->show()V

    .line 967
    :cond_4
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->show()V

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 978
    const/4 v0, 0x0

    return v0
.end method

.method public onResourceUpdate()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 993
    iget v0, p0, Lcom/htc/widget/ActionBarDropDown;->supportMode:I

    if-ne v0, v3, :cond_0

    .line 1010
    :goto_0
    return-void

    .line 999
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->primaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1000
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->primaryView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->mContext:Landroid/content/Context;

    const v2, 0x2030052

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1002
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->secondaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1003
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->secondaryView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->mContext:Landroid/content/Context;

    const v2, 0x2030057

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1006
    :cond_2
    iget v0, p0, Lcom/htc/widget/ActionBarDropDown;->supportMode:I

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    .line 1007
    invoke-direct {p0}, Lcom/htc/widget/ActionBarDropDown;->setupFontEnvironment()V

    .line 1009
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarDropDown;->requestLayout()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarDropDown;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 458
    :goto_0
    return v0

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->arrowView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->arrowView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 436
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 458
    :cond_1
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 439
    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 440
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 444
    :pswitch_2
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 445
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 449
    :pswitch_3
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 450
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 452
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/htc/widget/ActionBarDropDown;->setViewScale(F)V

    .line 453
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/widget/ActionBarDropDown;->setInternalMultiplyForceEnabled(Z)V

    goto :goto_1

    .line 436
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setAdapter(Landroid/widget/BaseExpandableListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    const/4 v1, 0x0

    .line 599
    iput-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    .line 600
    if-eqz p1, :cond_2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    .line 603
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 604
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_1

    .line 608
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->dismiss()V

    .line 610
    :cond_1
    iput-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 611
    iput-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->popupAdapterLst:Ljava/lang/ref/WeakReference;

    .line 612
    return-void

    :cond_2
    move-object v0, v1

    .line 600
    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    const/4 v1, 0x0

    .line 578
    iput-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->popupAdapterLst:Ljava/lang/ref/WeakReference;

    .line 579
    if-eqz p1, :cond_2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->popupAdapterLst:Ljava/lang/ref/WeakReference;

    .line 582
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 583
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_1

    .line 587
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->dismiss()V

    .line 589
    :cond_1
    iput-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    .line 590
    iput-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    .line 591
    return-void

    :cond_2
    move-object v0, v1

    .line 579
    goto :goto_0
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 624
    iput-object p1, p0, Lcom/htc/widget/ActionBarDropDown;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 626
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 628
    :cond_1
    return-void
.end method

.method public setArrowEnabled(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 318
    invoke-virtual {p0, p1}, Lcom/htc/widget/ActionBarDropDown;->setClickable(Z)V

    .line 319
    invoke-direct {p0}, Lcom/htc/widget/ActionBarDropDown;->setupAnimationEnv()V

    .line 321
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->arrowView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->arrowView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz p1, :cond_1

    move v2, v0

    :goto_0
    if-eq v3, v2, :cond_0

    .line 322
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->arrowView:Landroid/view/View;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 323
    :cond_0
    return-void

    :cond_1
    move v2, v1

    .line 321
    goto :goto_0

    :cond_2
    move v0, v1

    .line 322
    goto :goto_1
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 0
    .parameter "layerType"
    .parameter "paint"

    .prologue
    .line 421
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 422
    return-void
.end method

.method public setMultiplyForceEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 466
    iget-boolean v0, p0, Lcom/htc/widget/ActionBarDropDown;->forceMultiply:Z

    if-eq v0, p1, :cond_0

    .line 468
    iput-boolean p1, p0, Lcom/htc/widget/ActionBarDropDown;->forceMultiply:Z

    .line 469
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarDropDown;->invalidate()V

    .line 471
    :cond_0
    return-void
.end method

.method public setOnChildClickListener(Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 645
    iput-object p1, p0, Lcom/htc/widget/ActionBarDropDown;->clickListenerChd:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

    .line 647
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->clickListenerChd:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnChildClickListener(Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;)V

    .line 649
    :cond_0
    return-void
.end method

.method public setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 566
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    .line 567
    iput-object p1, p0, Lcom/htc/widget/ActionBarDropDown;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    .line 568
    return-void
.end method

.method public setOnGroupClickListener(Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 653
    iput-object p1, p0, Lcom/htc/widget/ActionBarDropDown;->clickListenerGrp:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

    .line 655
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->clickListenerGrp:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnGroupClickListener(Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;)V

    .line 657
    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 634
    iput-object p1, p0, Lcom/htc/widget/ActionBarDropDown;->clickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 636
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->clickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->clickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 638
    :cond_1
    return-void
.end method

.method public setPrimaryText(I)V
    .locals 1
    .parameter "resource"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->primaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->primaryView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 222
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryVisibility(I)V

    .line 224
    :cond_0
    return-void
.end method

.method public setPrimaryText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->primaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->primaryView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryVisibility(I)V

    .line 215
    :cond_0
    return-void
.end method

.method public setPrimaryVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->primaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->primaryView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->primaryView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    invoke-direct {p0}, Lcom/htc/widget/ActionBarDropDown;->updateLayoutEnvironment()V

    .line 269
    :cond_0
    return-void
.end method

.method public setSecondaryText(I)V
    .locals 1
    .parameter "resource"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->secondaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 240
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    .line 242
    :cond_0
    return-void
.end method

.method public setSecondaryText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->secondaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    .line 233
    :cond_0
    return-void
.end method

.method public setSecondaryVisibility(I)V
    .locals 5
    .parameter "visibility"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 273
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->secondaryView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eq v2, p1, :cond_0

    .line 275
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    invoke-direct {p0}, Lcom/htc/widget/ActionBarDropDown;->updateLayoutEnvironment()V

    .line 279
    iget v2, p0, Lcom/htc/widget/ActionBarDropDown;->supportMode:I

    if-eq v2, v4, :cond_0

    const/16 v2, 0x8

    if-eq p1, v2, :cond_0

    .line 282
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->resource:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontsize:I

    if-ne v2, v4, :cond_1

    .line 284
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 285
    .local v1, widthMeasureSpec:I
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 287
    .local v0, heightMeasureSpec:I
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v0}, Landroid/widget/TextView;->measure(II)V

    .line 290
    new-instance v2, Lcom/htc/widget/ActionBarDropDown$1;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarDropDown$1;-><init>(Lcom/htc/widget/ActionBarDropDown;)V

    invoke-virtual {p0, v2}, Lcom/htc/widget/ActionBarDropDown;->post(Ljava/lang/Runnable;)Z

    .line 307
    .end local v0           #heightMeasureSpec:I
    .end local v1           #widthMeasureSpec:I
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/ActionBarDropDown;->setupFontEnvironment()V

    .line 303
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarDropDown;->requestLayout()V

    goto :goto_0
.end method

.method public setSupportMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    const/4 v1, 0x2

    .line 1020
    iget v0, p0, Lcom/htc/widget/ActionBarDropDown;->supportMode:I

    if-ne v0, p1, :cond_1

    .line 1028
    :cond_0
    :goto_0
    return-void

    .line 1023
    :cond_1
    if-ne p1, v1, :cond_0

    .line 1025
    iput v1, p0, Lcom/htc/widget/ActionBarDropDown;->supportMode:I

    .line 1026
    invoke-direct {p0}, Lcom/htc/widget/ActionBarDropDown;->setupAutomotiveMode()V

    goto :goto_0
.end method

.method protected setViewScale(F)V
    .locals 0
    .parameter "ratio"

    .prologue
    .line 332
    invoke-virtual {p0, p1}, Lcom/htc/widget/ActionBarDropDown;->setScaleX(F)V

    .line 333
    invoke-virtual {p0, p1}, Lcom/htc/widget/ActionBarDropDown;->setScaleY(F)V

    .line 334
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ActionBarDropDown;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/ActionBarDropDown;->enableShow:Z

    .line 693
    :goto_0
    return-void

    .line 687
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/ActionBarDropDown;->enableShow:Z

    .line 688
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarDropDown;->showInternal()V

    goto :goto_0
.end method

.method public showInternal()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 704
    invoke-direct {p0}, Lcom/htc/widget/ActionBarDropDown;->cleanPreviousWindow()V

    .line 707
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v1, :cond_1

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->popupAdapterLst:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->popupAdapterLst:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 713
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->resource:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 715
    .local v0, maxWindowWidth:I
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarDropDown;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 716
    new-instance v1, Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 719
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->listHeaderView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->listHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow;->addHeaderView(Landroid/view/View;)V

    .line 720
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->listFooterView:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->listFooterView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow;->addFooterView(Landroid/view/View;)V

    .line 723
    :cond_3
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 724
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->clickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 725
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->popupAdapterLst:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    invoke-virtual {v2, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 726
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v1, p0}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V

    .line 727
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->arrowView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow;->setAnchorView(Landroid/view/View;)V

    .line 728
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v1, v3}, Lcom/htc/widget/ListPopupBubbleWindow;->setModal(Z)V

    .line 731
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v1, v5}, Lcom/htc/widget/ListPopupBubbleWindow;->setInputMethodMode(I)V

    .line 732
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->popupAdapterLst:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, v1}, Lcom/htc/widget/ActionBarDropDown;->measureContentWidth(Landroid/widget/ListAdapter;)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->setContentWidth(I)V

    .line 734
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/ListPopupBubbleWindow;->show()V

    .line 735
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/ListPopupBubbleWindow;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 737
    invoke-virtual {p0, v3}, Lcom/htc/widget/ActionBarDropDown;->setMultiplyForceEnabled(Z)V

    .line 738
    iput-boolean v4, p0, Lcom/htc/widget/ActionBarDropDown;->skipLayoutChange:Z

    goto/16 :goto_0

    .line 743
    .end local v0           #maxWindowWidth:I
    :cond_4
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 745
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->resource:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 747
    .restart local v0       #maxWindowWidth:I
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarDropDown;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 748
    new-instance v1, Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    .line 751
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 752
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->clickListenerChd:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnChildClickListener(Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;)V

    .line 753
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->clickListenerGrp:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnGroupClickListener(Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;)V

    .line 754
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->clickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 755
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListAdapter;

    invoke-virtual {v2, v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 756
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v1, p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V

    .line 757
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->arrowView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAnchorView(Landroid/view/View;)V

    .line 758
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v1, v3}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setModal(Z)V

    .line 761
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v1, v5}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setInputMethodMode(I)V

    .line 762
    iget-object v2, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {p0, v1}, Lcom/htc/widget/ActionBarDropDown;->measureContentWidth(Landroid/widget/BaseExpandableListAdapter;)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setContentWidth(I)V

    .line 764
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->show()V

    .line 765
    iget-object v1, p0, Lcom/htc/widget/ActionBarDropDown;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->getExpandableListView()Lcom/htc/widget/HtcExpandableListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcExpandableListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 768
    invoke-virtual {p0, v3}, Lcom/htc/widget/ActionBarDropDown;->setMultiplyForceEnabled(Z)V

    .line 769
    iput-boolean v4, p0, Lcom/htc/widget/ActionBarDropDown;->skipLayoutChange:Z

    goto/16 :goto_0
.end method
