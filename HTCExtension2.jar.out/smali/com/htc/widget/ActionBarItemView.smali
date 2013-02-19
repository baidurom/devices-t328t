.class public Lcom/htc/widget/ActionBarItemView;
.super Landroid/widget/LinearLayout;
.source "ActionBarItemView.java"

# interfaces
.implements Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field public static final MODE_AUTOMOTIVE:I = 0x2

.field public static final MODE_EXTERNAL:I = 0x1


# instance fields
.field private final DISABLE_ALPHA:F

.field private final ENABLE_ALPHA:F

.field private final animDuration:I

.field private animationListener:Landroid/view/animation/Animation$AnimationListener;

.field private clickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private clickListenerChd:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

.field private clickListenerGrp:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

.field private dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

.field private enableShow:Z

.field private forceMultiply:Z

.field private imageButton:Landroid/widget/ImageButton;

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

.field private resource:Landroid/content/res/Resources;

.field private scaleDownAnimator:Landroid/animation/ObjectAnimator;

.field private scaleUpAnimator:Landroid/animation/ObjectAnimator;

.field private skipLayoutChange:Z

.field private supportMode:I

.field private textButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object v3, p0, Lcom/htc/widget/ActionBarItemView;->imageButton:Landroid/widget/ImageButton;

    .line 54
    iput-object v3, p0, Lcom/htc/widget/ActionBarItemView;->resource:Landroid/content/res/Resources;

    .line 90
    iput-object v3, p0, Lcom/htc/widget/ActionBarItemView;->textButton:Landroid/widget/Button;

    .line 134
    iput-object v3, p0, Lcom/htc/widget/ActionBarItemView;->multiplyPaint:Landroid/graphics/Paint;

    .line 144
    const/16 v2, 0x3c

    iput v2, p0, Lcom/htc/widget/ActionBarItemView;->animDuration:I

    .line 146
    iput-object v3, p0, Lcom/htc/widget/ActionBarItemView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    .line 147
    iput-object v3, p0, Lcom/htc/widget/ActionBarItemView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    .line 259
    iput-boolean v5, p0, Lcom/htc/widget/ActionBarItemView;->forceMultiply:Z

    .line 271
    iput-boolean v5, p0, Lcom/htc/widget/ActionBarItemView;->internalForceMultiply:Z

    .line 324
    const v2, 0x3ecccccd

    iput v2, p0, Lcom/htc/widget/ActionBarItemView;->DISABLE_ALPHA:F

    .line 325
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/htc/widget/ActionBarItemView;->ENABLE_ALPHA:F

    .line 351
    iput-boolean v4, p0, Lcom/htc/widget/ActionBarItemView;->skipLayoutChange:Z

    .line 353
    iput-object v3, p0, Lcom/htc/widget/ActionBarItemView;->listHeaderView:Landroid/view/View;

    .line 354
    iput-object v3, p0, Lcom/htc/widget/ActionBarItemView;->listFooterView:Landroid/view/View;

    .line 370
    iput-object v3, p0, Lcom/htc/widget/ActionBarItemView;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    .line 381
    iput-object v3, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 382
    iput-object v3, p0, Lcom/htc/widget/ActionBarItemView;->popupAdapterLst:Ljava/lang/ref/WeakReference;

    .line 402
    iput-object v3, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    .line 403
    iput-object v3, p0, Lcom/htc/widget/ActionBarItemView;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    .line 425
    iput-object v3, p0, Lcom/htc/widget/ActionBarItemView;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 435
    iput-object v3, p0, Lcom/htc/widget/ActionBarItemView;->clickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 445
    iput-object v3, p0, Lcom/htc/widget/ActionBarItemView;->clickListenerChd:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

    .line 446
    iput-object v3, p0, Lcom/htc/widget/ActionBarItemView;->clickListenerGrp:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

    .line 483
    iput-boolean v5, p0, Lcom/htc/widget/ActionBarItemView;->enableShow:Z

    .line 765
    const/high16 v2, -0x8000

    iput v2, p0, Lcom/htc/widget/ActionBarItemView;->supportMode:I

    .line 59
    invoke-direct {p0}, Lcom/htc/widget/ActionBarItemView;->setupAnimationEnv()V

    .line 61
    iput-object v3, p0, Lcom/htc/widget/ActionBarItemView;->resource:Landroid/content/res/Resources;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/ActionBarItemView;->resource:Landroid/content/res/Resources;

    .line 64
    iget-object v2, p0, Lcom/htc/widget/ActionBarItemView;->resource:Landroid/content/res/Resources;

    if-nez v2, :cond_0

    .line 65
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "package resouce null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/ActionBarItemView;->resource:Landroid/content/res/Resources;

    const v3, 0x20e0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 69
    .local v1, width:I
    const/4 v0, -0x1

    .line 71
    .local v0, height:I
    invoke-virtual {p0, v4}, Lcom/htc/widget/ActionBarItemView;->setClickable(Z)V

    .line 72
    invoke-virtual {p0, v4}, Lcom/htc/widget/ActionBarItemView;->setGravity(I)V

    .line 73
    invoke-virtual {p0, v4}, Lcom/htc/widget/ActionBarItemView;->setOrientation(I)V

    .line 74
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/htc/widget/ActionBarItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x209000b

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 79
    const v2, 0x2020048

    invoke-virtual {p0, v2}, Lcom/htc/widget/ActionBarItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/htc/widget/ActionBarItemView;->textButton:Landroid/widget/Button;

    .line 80
    const v2, 0x2020047

    invoke-virtual {p0, v2}, Lcom/htc/widget/ActionBarItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/htc/widget/ActionBarItemView;->imageButton:Landroid/widget/ImageButton;

    .line 83
    iget-object v2, p0, Lcom/htc/widget/ActionBarItemView;->textButton:Landroid/widget/Button;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/widget/ActionBarItemView;->imageButton:Landroid/widget/ImageButton;

    if-nez v2, :cond_2

    .line 84
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "inflate layout resource incorrect"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/ActionBarItemView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/htc/widget/ActionBarItemView;->setInternalMultiplyForceEnabled(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/widget/ActionBarItemView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/htc/widget/ActionBarItemView;->enableShow:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/widget/ActionBarItemView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/htc/widget/ActionBarItemView;->enableShow:Z

    return p1
.end method

.method private cleanPreviousWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 469
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 472
    iput-object v1, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 478
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 479
    iput-object v1, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    .line 481
    :cond_1
    return-void
.end method

.method private setInternalMultiplyForceEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/htc/widget/ActionBarItemView;->internalForceMultiply:Z

    if-eq v0, p1, :cond_0

    .line 278
    iput-boolean p1, p0, Lcom/htc/widget/ActionBarItemView;->internalForceMultiply:Z

    .line 279
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarItemView;->invalidate()V

    .line 281
    :cond_0
    return-void
.end method

.method private setupAnimationEnv()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 153
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    const-string v1, "viewScale"

    new-array v2, v4, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/ActionBarItemView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    .line 158
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 159
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x1e

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 161
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/htc/widget/ActionBarItemView$1;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarItemView$1;-><init>(Lcom/htc/widget/ActionBarItemView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 184
    const-string v1, "viewScale"

    new-array v2, v4, [F

    fill-array-data v2, :array_1

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/ActionBarItemView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    .line 185
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 186
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x3c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 188
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/htc/widget/ActionBarItemView$2;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarItemView$2;-><init>(Lcom/htc/widget/ActionBarItemView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 211
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->multiplyPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->mContext:Landroid/content/Context;

    const-string v2, "multiply_color"

    const/high16 v3, 0x206

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 216
    .local v0, colorID:I
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/ActionBarItemView;->multiplyPaint:Landroid/graphics/Paint;

    .line 217
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->multiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/htc/widget/ActionBarItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->multiplyPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    .line 157
    nop

    :array_0
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 184
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data
.end method

.method private setupAutomotiveMode()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 784
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->textButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 785
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->textButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 788
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->imageButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    .line 790
    const/4 v0, 0x0

    .line 793
    .local v0, lparams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->imageButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_1

    .line 811
    .end local v0           #lparams:Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    return-void

    .line 796
    .restart local v0       #lparams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->imageButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #lparams:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 797
    .restart local v0       #lparams:Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 798
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 799
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 802
    .end local v0           #lparams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 805
    .local v0, lparams:Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 806
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20e0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 808
    invoke-virtual {p0, v0}, Lcom/htc/widget/ActionBarItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 809
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/htc/widget/ActionBarItemView;->setGravity(I)V

    .line 810
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarItemView;->requestLayout()V

    goto :goto_0
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 1
    .parameter "footerView"

    .prologue
    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/ActionBarItemView;->listFooterView:Landroid/view/View;

    .line 367
    iput-object p1, p0, Lcom/htc/widget/ActionBarItemView;->listFooterView:Landroid/view/View;

    .line 368
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 1
    .parameter "headerView"

    .prologue
    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/ActionBarItemView;->listHeaderView:Landroid/view/View;

    .line 360
    iput-object p1, p0, Lcom/htc/widget/ActionBarItemView;->listHeaderView:Landroid/view/View;

    .line 361
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 576
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarItemView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 579
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->internalDismiss()V

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 584
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->internalDismiss()V

    .line 585
    :cond_1
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 288
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v5}, Lcom/htc/widget/ActionBarItemView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 294
    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget/ActionBarItemView;->internalForceMultiply:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/widget/ActionBarItemView;->forceMultiply:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->multiplyPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    .line 296
    const/4 v7, 0x0

    .line 299
    .local v7, canvasCount:I
    iget v0, p0, Lcom/htc/widget/ActionBarItemView;->mScrollX:I

    int-to-float v1, v0

    iget v0, p0, Lcom/htc/widget/ActionBarItemView;->mScrollY:I

    int-to-float v2, v0

    iget v0, p0, Lcom/htc/widget/ActionBarItemView;->mScrollX:I

    invoke-virtual {p0}, Lcom/htc/widget/ActionBarItemView;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/htc/widget/ActionBarItemView;->mScrollY:I

    invoke-virtual {p0}, Lcom/htc/widget/ActionBarItemView;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v7

    .line 300
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 303
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->multiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 304
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 308
    .end local v7           #canvasCount:I
    :goto_0
    return-void

    .line 307
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->imageButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->imageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->textButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->textButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public isBubbleWindowShow()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 590
    iget-object v4, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v4}, Lcom/htc/widget/ListPopupBubbleWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 591
    .local v1, currentShowLst:Z
    :goto_0
    iget-object v4, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v4}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v2

    .line 593
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

    .line 590
    goto :goto_0

    .restart local v1       #currentShowLst:Z
    :cond_3
    move v0, v3

    .line 591
    goto :goto_1
.end method

.method protected measureContentWidth(Landroid/widget/BaseExpandableListAdapter;)I
    .locals 17
    .parameter "adapter"

    .prologue
    .line 656
    const/4 v5, 0x0

    .line 657
    .local v5, childItemView:Landroid/view/View;
    const/4 v12, 0x0

    .line 660
    .local v12, groupItemView:Landroid/view/View;
    if-nez p1, :cond_1

    .line 661
    const/4 v15, 0x0

    .line 722
    :cond_0
    return v15

    .line 663
    :cond_1
    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 664
    .local v16, widthMeasureSpec:I
    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 666
    .local v14, heightMeasureSpec:I
    const/high16 v13, -0x8000

    .line 667
    .local v13, groupPositionType:I
    const/high16 v10, -0x8000

    .line 668
    .local v10, groupConvertType:I
    const/high16 v15, -0x8000

    .line 671
    .local v15, maximumWidth:I
    const/4 v2, 0x0

    .local v2, loopi:I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/BaseExpandableListAdapter;->getGroupCount()I

    move-result v11

    .local v11, groupCount:I
    :goto_0
    if-ge v2, v11, :cond_0

    .line 673
    invoke-virtual/range {p1 .. p1}, Landroid/widget/BaseExpandableListAdapter;->getGroupCount()I

    move-result v1

    if-eq v1, v11, :cond_2

    .line 674
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "multiple thread access"

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 676
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/BaseExpandableListAdapter;->getGroupType(I)I

    move-result v13

    .line 679
    if-eq v13, v10, :cond_3

    .line 681
    move v10, v13

    .line 682
    const/4 v12, 0x0

    .line 686
    :cond_3
    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1, v12, v4}, Landroid/widget/BaseExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 688
    if-eqz v12, :cond_4

    .line 690
    move/from16 v0, v16

    invoke-virtual {v12, v0, v14}, Landroid/view/View;->measure(II)V

    .line 691
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 694
    :cond_4
    const/high16 v9, -0x8000

    .line 695
    .local v9, childPositionType:I
    const/high16 v7, -0x8000

    .line 697
    .local v7, childConvertType:I
    const/4 v3, 0x0

    .local v3, loopj:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/BaseExpandableListAdapter;->getChildrenCount(I)I

    move-result v8

    .local v8, childCount:I
    :goto_1
    if-ge v3, v8, :cond_8

    .line 699
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/BaseExpandableListAdapter;->getChildrenCount(I)I

    move-result v1

    if-eq v1, v8, :cond_5

    .line 700
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "multiple thread access"

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 702
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/widget/BaseExpandableListAdapter;->getChildType(II)I

    move-result v9

    .line 705
    if-eq v9, v7, :cond_6

    .line 707
    move v7, v9

    .line 708
    const/4 v5, 0x0

    .line 712
    :cond_6
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/widget/BaseExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 714
    if-eqz v5, :cond_7

    .line 716
    move/from16 v0, v16

    invoke-virtual {v5, v0, v14}, Landroid/view/View;->measure(II)V

    .line 717
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 697
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 671
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected measureContentWidth(Landroid/widget/ListAdapter;)I
    .locals 10
    .parameter "adapter"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 599
    const/4 v2, 0x0

    .line 602
    .local v2, childItemView:Landroid/view/View;
    if-nez p1, :cond_1

    .line 650
    :cond_0
    :goto_0
    return v6

    .line 605
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 606
    .local v7, widthMeasureSpec:I
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 608
    .local v4, heightMeasureSpec:I
    const/high16 v3, -0x8000

    .line 609
    .local v3, childPositionType:I
    const/high16 v1, -0x8000

    .line 610
    .local v1, childConvertType:I
    const/high16 v6, -0x8000

    .line 613
    .local v6, maximumWidth:I
    const/4 v5, 0x0

    .local v5, loop:I
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .local v0, adapterCount:I
    :goto_1
    if-ge v5, v0, :cond_6

    .line 615
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    if-eq v9, v0, :cond_2

    .line 616
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "multiple thread access"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 618
    :cond_2
    invoke-interface {p1, v5}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    .line 621
    if-eq v3, v1, :cond_3

    .line 623
    move v1, v3

    .line 624
    const/4 v2, 0x0

    .line 628
    :cond_3
    instance-of v9, p1, Landroid/widget/ArrayAdapter;

    if-eqz v9, :cond_4

    move-object v2, v8

    .end local v2           #childItemView:Landroid/view/View;
    :cond_4
    invoke-interface {p1, v5, v2, v8}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 630
    .restart local v2       #childItemView:Landroid/view/View;
    if-eqz v2, :cond_5

    .line 632
    invoke-virtual {v2, v7, v4}, Landroid/view/View;->measure(II)V

    .line 633
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 613
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 638
    :cond_6
    iget-object v8, p0, Lcom/htc/widget/ActionBarItemView;->listHeaderView:Landroid/view/View;

    if-eqz v8, :cond_7

    .line 640
    iget-object v8, p0, Lcom/htc/widget/ActionBarItemView;->listHeaderView:Landroid/view/View;

    invoke-virtual {v8, v7, v4}, Landroid/view/View;->measure(II)V

    .line 641
    iget-object v8, p0, Lcom/htc/widget/ActionBarItemView;->listHeaderView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 644
    :cond_7
    iget-object v8, p0, Lcom/htc/widget/ActionBarItemView;->listFooterView:Landroid/view/View;

    if-eqz v8, :cond_0

    .line 646
    iget-object v8, p0, Lcom/htc/widget/ActionBarItemView;->listFooterView:Landroid/view/View;

    invoke-virtual {v8, v7, v4}, Landroid/view/View;->measure(II)V

    .line 647
    iget-object v8, p0, Lcom/htc/widget/ActionBarItemView;->listFooterView:Landroid/view/View;

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

    .line 314
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarItemView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 315
    invoke-direct {p0}, Lcom/htc/widget/ActionBarItemView;->cleanPreviousWindow()V

    .line 317
    iput-object v1, p0, Lcom/htc/widget/ActionBarItemView;->listHeaderView:Landroid/view/View;

    .line 318
    iput-object v1, p0, Lcom/htc/widget/ActionBarItemView;->listFooterView:Landroid/view/View;

    .line 319
    iput-object v1, p0, Lcom/htc/widget/ActionBarItemView;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    .line 321
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 322
    return-void
.end method

.method public onDismiss()V
    .locals 1

    .prologue
    .line 728
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/ActionBarItemView;->skipLayoutChange:Z

    .line 729
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/ActionBarItemView;->setMultiplyForceEnabled(Z)V

    .line 730
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarItemView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 732
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    invoke-interface {v0}, Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;->onDismiss()V

    .line 734
    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 739
    iget-boolean v0, p0, Lcom/htc/widget/ActionBarItemView;->skipLayoutChange:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 743
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarItemView;->isBubbleWindowShow()Z

    move-result v0

    if-nez v0, :cond_2

    .line 744
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarItemView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 748
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarItemView;->isShown()Z

    move-result v0

    if-nez v0, :cond_3

    .line 749
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarItemView;->dismiss()V

    goto :goto_0

    .line 752
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->show()V

    .line 753
    :cond_4
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->show()V

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 760
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarItemView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 256
    :goto_0
    return v0

    .line 234
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 256
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 237
    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 238
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 242
    :pswitch_2
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 243
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 247
    :pswitch_3
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 248
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 250
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/htc/widget/ActionBarItemView;->setViewScale(F)V

    .line 251
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/widget/ActionBarItemView;->setInternalMultiplyForceEnabled(Z)V

    goto :goto_1

    .line 234
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

    .line 408
    iput-object v1, p0, Lcom/htc/widget/ActionBarItemView;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    .line 409
    if-eqz p1, :cond_2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v0, p0, Lcom/htc/widget/ActionBarItemView;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    .line 412
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 413
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ListPopupBubbleWindow;->dismiss()V

    .line 419
    :cond_1
    iput-object v1, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 420
    iput-object v1, p0, Lcom/htc/widget/ActionBarItemView;->popupAdapterLst:Ljava/lang/ref/WeakReference;

    .line 421
    return-void

    :cond_2
    move-object v0, v1

    .line 409
    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    const/4 v1, 0x0

    .line 387
    iput-object v1, p0, Lcom/htc/widget/ActionBarItemView;->popupAdapterLst:Ljava/lang/ref/WeakReference;

    .line 388
    if-eqz p1, :cond_2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v0, p0, Lcom/htc/widget/ActionBarItemView;->popupAdapterLst:Ljava/lang/ref/WeakReference;

    .line 391
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 392
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->dismiss()V

    .line 398
    :cond_1
    iput-object v1, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    .line 399
    iput-object v1, p0, Lcom/htc/widget/ActionBarItemView;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    .line 400
    return-void

    :cond_2
    move-object v0, v1

    .line 388
    goto :goto_0
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 429
    iput-object p1, p0, Lcom/htc/widget/ActionBarItemView;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 431
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 433
    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarItemView;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 336
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->imageButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 338
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->imageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 339
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->imageButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_3

    const/high16 v0, 0x3f80

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 342
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->textButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->textButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 339
    :cond_3
    const v0, 0x3ecccccd

    goto :goto_1
.end method

.method public setIcon(I)V
    .locals 1
    .parameter "resource"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->imageButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->imageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 130
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->imageButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->imageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 124
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->imageButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->imageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    :cond_0
    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 0
    .parameter "layerType"
    .parameter "paint"

    .prologue
    .line 225
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 226
    return-void
.end method

.method protected setMultiplyColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 816
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->multiplyPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->multiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 823
    :cond_0
    return-void
.end method

.method public setMultiplyForceEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/htc/widget/ActionBarItemView;->forceMultiply:Z

    if-eq v0, p1, :cond_0

    .line 266
    iput-boolean p1, p0, Lcom/htc/widget/ActionBarItemView;->forceMultiply:Z

    .line 267
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarItemView;->invalidate()V

    .line 269
    :cond_0
    return-void
.end method

.method public setOnChildClickListener(Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 450
    iput-object p1, p0, Lcom/htc/widget/ActionBarItemView;->clickListenerChd:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

    .line 452
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->clickListenerChd:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnChildClickListener(Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;)V

    .line 454
    :cond_0
    return-void
.end method

.method public setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/ActionBarItemView;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    .line 376
    iput-object p1, p0, Lcom/htc/widget/ActionBarItemView;->dismissListener:Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;

    .line 377
    return-void
.end method

.method public setOnGroupClickListener(Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 458
    iput-object p1, p0, Lcom/htc/widget/ActionBarItemView;->clickListenerGrp:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

    .line 460
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->clickListenerGrp:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnGroupClickListener(Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;)V

    .line 462
    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 439
    iput-object p1, p0, Lcom/htc/widget/ActionBarItemView;->clickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 441
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->clickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->clickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 443
    :cond_1
    return-void
.end method

.method public setSupportMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    const/4 v1, 0x2

    .line 771
    iget v0, p0, Lcom/htc/widget/ActionBarItemView;->supportMode:I

    if-ne v0, p1, :cond_1

    .line 779
    :cond_0
    :goto_0
    return-void

    .line 774
    :cond_1
    if-ne p1, v1, :cond_0

    .line 776
    iput v1, p0, Lcom/htc/widget/ActionBarItemView;->supportMode:I

    .line 777
    invoke-direct {p0}, Lcom/htc/widget/ActionBarItemView;->setupAutomotiveMode()V

    goto :goto_0
.end method

.method public setText(I)V
    .locals 1
    .parameter "resource"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->textButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->textButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 107
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->textButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->textButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :cond_0
    return-void
.end method

.method protected setViewScale(F)V
    .locals 0
    .parameter "ratio"

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/htc/widget/ActionBarItemView;->setScaleX(F)V

    .line 140
    invoke-virtual {p0, p1}, Lcom/htc/widget/ActionBarItemView;->setScaleY(F)V

    .line 141
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ActionBarItemView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/ActionBarItemView;->enableShow:Z

    .line 498
    :goto_0
    return-void

    .line 492
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/ActionBarItemView;->enableShow:Z

    .line 493
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarItemView;->showInternal()V

    goto :goto_0
.end method

.method public showInternal()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 505
    invoke-direct {p0}, Lcom/htc/widget/ActionBarItemView;->cleanPreviousWindow()V

    .line 508
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    if-eqz v1, :cond_1

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->popupAdapterLst:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->popupAdapterLst:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 514
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->resource:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 516
    .local v0, maxWindowWidth:I
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarItemView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 517
    new-instance v1, Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v2, p0, Lcom/htc/widget/ActionBarItemView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    .line 520
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->listHeaderView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v2, p0, Lcom/htc/widget/ActionBarItemView;->listHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow;->addHeaderView(Landroid/view/View;)V

    .line 521
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->listFooterView:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v2, p0, Lcom/htc/widget/ActionBarItemView;->listFooterView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow;->addFooterView(Landroid/view/View;)V

    .line 524
    :cond_3
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v2, p0, Lcom/htc/widget/ActionBarItemView;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 525
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v2, p0, Lcom/htc/widget/ActionBarItemView;->clickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 526
    iget-object v2, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->popupAdapterLst:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    invoke-virtual {v2, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 527
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v1, p0}, Lcom/htc/widget/ListPopupBubbleWindow;->setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V

    .line 528
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v1, p0}, Lcom/htc/widget/ListPopupBubbleWindow;->setAnchorView(Landroid/view/View;)V

    .line 529
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v1, v3}, Lcom/htc/widget/ListPopupBubbleWindow;->setModal(Z)V

    .line 532
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v1, v5}, Lcom/htc/widget/ListPopupBubbleWindow;->setInputMethodMode(I)V

    .line 533
    iget-object v2, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->popupAdapterLst:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, v1}, Lcom/htc/widget/ActionBarItemView;->measureContentWidth(Landroid/widget/ListAdapter;)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->setContentWidth(I)V

    .line 535
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/ListPopupBubbleWindow;->show()V

    .line 536
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleLst:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/ListPopupBubbleWindow;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 538
    invoke-virtual {p0, v3}, Lcom/htc/widget/ActionBarItemView;->setMultiplyForceEnabled(Z)V

    .line 539
    iput-boolean v4, p0, Lcom/htc/widget/ActionBarItemView;->skipLayoutChange:Z

    goto/16 :goto_0

    .line 544
    .end local v0           #maxWindowWidth:I
    :cond_4
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 546
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->resource:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 548
    .restart local v0       #maxWindowWidth:I
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarItemView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 549
    new-instance v1, Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v2, p0, Lcom/htc/widget/ActionBarItemView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    .line 552
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v2, p0, Lcom/htc/widget/ActionBarItemView;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 553
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v2, p0, Lcom/htc/widget/ActionBarItemView;->clickListenerChd:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnChildClickListener(Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;)V

    .line 554
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v2, p0, Lcom/htc/widget/ActionBarItemView;->clickListenerGrp:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnGroupClickListener(Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;)V

    .line 555
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v2, p0, Lcom/htc/widget/ActionBarItemView;->clickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 556
    iget-object v2, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListAdapter;

    invoke-virtual {v2, v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 557
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v1, p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V

    .line 558
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v1, p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setAnchorView(Landroid/view/View;)V

    .line 559
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v1, v3}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setModal(Z)V

    .line 562
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v1, v5}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setInputMethodMode(I)V

    .line 563
    iget-object v2, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->popupAdapterExp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {p0, v1}, Lcom/htc/widget/ActionBarItemView;->measureContentWidth(Landroid/widget/BaseExpandableListAdapter;)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->setContentWidth(I)V

    .line 565
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->show()V

    .line 566
    iget-object v1, p0, Lcom/htc/widget/ActionBarItemView;->popupBubbleExp:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->getExpandableListView()Lcom/htc/widget/HtcExpandableListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcExpandableListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 568
    invoke-virtual {p0, v3}, Lcom/htc/widget/ActionBarItemView;->setMultiplyForceEnabled(Z)V

    .line 569
    iput-boolean v4, p0, Lcom/htc/widget/ActionBarItemView;->skipLayoutChange:Z

    goto/16 :goto_0
.end method
