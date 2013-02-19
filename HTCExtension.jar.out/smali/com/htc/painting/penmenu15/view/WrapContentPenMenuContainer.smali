.class public Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;
.super Landroid/widget/FrameLayout;
.source "WrapContentPenMenuContainer.java"


# static fields
.field private static MODE_DISMISS_PENMENU:I

.field private static MODE_FORCE_PASS_TO_ROOT:I

.field private static MODE_LAUNCH_PENMENU:I

.field private static MODE_NULL:I

.field private static MODE_PASS_TO_CHILD:I


# instance fields
.field private mDispatchMode:I

.field final mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, -0x1

    sput v0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->MODE_NULL:I

    .line 26
    const/16 v0, 0x8

    sput v0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->MODE_PASS_TO_CHILD:I

    .line 27
    const/16 v0, 0xa

    sput v0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->MODE_LAUNCH_PENMENU:I

    .line 28
    const/16 v0, 0xc

    sput v0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->MODE_DISMISS_PENMENU:I

    .line 29
    const/16 v0, 0x14

    sput v0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->MODE_FORCE_PASS_TO_ROOT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 31
    sget v0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->MODE_NULL:I

    iput v0, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mDispatchMode:I

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    .line 63
    new-instance v0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer$1;

    invoke-direct {v0, p0}, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer$1;-><init>(Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;)V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 36
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->init()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    sget v0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->MODE_NULL:I

    iput v0, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mDispatchMode:I

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    .line 63
    new-instance v0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer$1;

    invoke-direct {v0, p0}, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer$1;-><init>(Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;)V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 41
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->init()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    sget v0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->MODE_NULL:I

    iput v0, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mDispatchMode:I

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    .line 63
    new-instance v0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer$1;

    invoke-direct {v0, p0}, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer$1;-><init>(Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;)V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 46
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->init()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;)Lcom/htc/painting/penmenu15/RoundPenMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mDispatchMode:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 24
    sget v0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->MODE_FORCE_PASS_TO_ROOT:I

    return v0
.end method

.method private adjustMenuCenterToContainerBoundery([ILcom/htc/painting/penmenu15/RoundPenMenu;)V
    .locals 7
    .parameter "center"
    .parameter "penmenu"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 185
    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getRoundPanelArea()Landroid/graphics/Rect;

    move-result-object v1

    .line 186
    .local v1, menuArea:Landroid/graphics/Rect;
    invoke-virtual {v1, v5, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 188
    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 189
    .local v2, metrics:Landroid/util/DisplayMetrics;
    new-instance v0, Landroid/graphics/Rect;

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v0, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 190
    .local v0, dispArea:Landroid/graphics/Rect;
    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 191
    iget v3, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 192
    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 193
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 195
    aget v3, p1, v5

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-ge v3, v4, :cond_2

    .line 196
    iget v3, v0, Landroid/graphics/Rect;->left:I

    aput v3, p1, v5

    .line 201
    :cond_0
    :goto_0
    aget v3, p1, v6

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-ge v3, v4, :cond_3

    .line 202
    iget v3, v0, Landroid/graphics/Rect;->top:I

    aput v3, p1, v6

    .line 206
    :cond_1
    :goto_1
    return-void

    .line 197
    :cond_2
    aget v3, p1, v5

    iget v4, v0, Landroid/graphics/Rect;->right:I

    if-le v3, v4, :cond_0

    .line 198
    iget v3, v0, Landroid/graphics/Rect;->right:I

    aput v3, p1, v5

    goto :goto_0

    .line 203
    :cond_3
    aget v3, p1, v6

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    if-le v3, v4, :cond_1

    .line 204
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    aput v3, p1, v6

    goto :goto_1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 51
    return-void
.end method

.method private launchPenMenuAt(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 169
    const/4 v1, 0x2

    new-array v0, v1, [I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    .line 171
    .local v0, center:[I
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    if-eqz v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-direct {p0, v0, v1}, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->adjustMenuCenterToContainerBoundery([ILcom/htc/painting/penmenu15/RoundPenMenu;)V

    .line 174
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getStickyShow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    const/16 v2, 0x329

    invoke-virtual {v1, v2, v4}, Lcom/htc/painting/penmenu15/RoundPenMenu;->setPanel(IZ)V

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    aget v2, v0, v4

    aget v3, v0, v5

    invoke-virtual {v1, v2, v3}, Lcom/htc/painting/penmenu15/RoundPenMenu;->moveCenterTo(II)V

    .line 178
    invoke-direct {p0, v5}, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->showPenMenu(Z)V

    .line 180
    :cond_1
    return v4
.end method

.method private penMenuIsShowing()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getStickyShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, 0x1

    .line 165
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setTouchMode(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "ev"

    .prologue
    .line 144
    iget v1, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mDispatchMode:I

    sget v2, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->MODE_FORCE_PASS_TO_ROOT:I

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 148
    invoke-static {p1}, Lcom/htc/pen/PenEvent;->PenButton(Landroid/view/MotionEvent;)I

    move-result v0

    .line 149
    .local v0, button:I
    const/16 v1, 0x29

    if-ne v0, v1, :cond_1

    .line 150
    sget v1, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->MODE_LAUNCH_PENMENU:I

    iput v1, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mDispatchMode:I

    .line 159
    .end local v0           #button:I
    :cond_0
    :goto_0
    return-void

    .line 151
    .restart local v0       #button:I
    :cond_1
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->penMenuIsShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getTouchableRegion()Landroid/graphics/Region;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->contains(II)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/htc/pen/PenEvent;->isPenEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 154
    sget v1, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->MODE_DISMISS_PENMENU:I

    iput v1, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mDispatchMode:I

    goto :goto_0

    .line 156
    :cond_2
    sget v1, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->MODE_PASS_TO_CHILD:I

    iput v1, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mDispatchMode:I

    goto :goto_0
.end method

.method private showPenMenu(Z)V
    .locals 2
    .parameter "show"

    .prologue
    const/4 v1, 0x1

    .line 210
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->isPinned()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getStickyShow()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 212
    if-eqz p1, :cond_1

    .line 213
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0, v1, v1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->show(ZZ)V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0, v1, v1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->hide(ZZ)V

    goto :goto_0
.end method


# virtual methods
.method public addPenMenu(Lcom/htc/painting/penmenu15/RoundPenMenu;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "penMenu"
    .parameter "params"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    .line 59
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {p0, v0, p2}, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v2, 0x0

    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 91
    .local v0, action:I
    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    iget v3, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mDispatchMode:I

    sget v4, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->MODE_FORCE_PASS_TO_ROOT:I

    if-eq v3, v4, :cond_0

    .line 92
    invoke-direct {p0, v2}, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->showPenMenu(Z)V

    .line 123
    :goto_0
    return v2

    .line 96
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->setTouchMode(Landroid/view/MotionEvent;)V

    .line 99
    iget v3, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mDispatchMode:I

    sget v4, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->MODE_FORCE_PASS_TO_ROOT:I

    if-ne v3, v4, :cond_4

    .line 117
    :cond_1
    :goto_1
    iget v2, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mDispatchMode:I

    sget v3, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->MODE_FORCE_PASS_TO_ROOT:I

    if-eq v2, v3, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 120
    :cond_2
    sget v2, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->MODE_NULL:I

    iput v2, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mDispatchMode:I

    :cond_3
    move v2, v1

    .line 123
    goto :goto_0

    .line 101
    :cond_4
    iget v3, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mDispatchMode:I

    sget v4, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->MODE_PASS_TO_CHILD:I

    if-ne v3, v4, :cond_5

    .line 102
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1

    .line 103
    :cond_5
    iget v3, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mDispatchMode:I

    sget v4, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->MODE_LAUNCH_PENMENU:I

    if-ne v3, v4, :cond_7

    .line 104
    if-nez v0, :cond_6

    .line 105
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->launchPenMenuAt(Landroid/view/MotionEvent;)Z

    .line 107
    :cond_6
    const/4 v1, 0x1

    goto :goto_1

    .line 108
    :cond_7
    iget v3, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mDispatchMode:I

    sget v4, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->MODE_DISMISS_PENMENU:I

    if-ne v3, v4, :cond_1

    .line 109
    if-nez v0, :cond_1

    .line 110
    invoke-direct {p0, v2}, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->showPenMenu(Z)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0, p1, p2}, Lcom/htc/painting/penmenu15/RoundPenMenu;->measure(II)V

    .line 134
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 135
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 137
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 139
    return-void
.end method

.method public passAllTouchEventsToRoot(Z)V
    .locals 4
    .parameter "pass"

    .prologue
    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, processed:Z
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mDispatchMode:I

    sget v2, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->MODE_NULL:I

    if-ne v1, v2, :cond_1

    .line 229
    sget v1, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->MODE_FORCE_PASS_TO_ROOT:I

    iput v1, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mDispatchMode:I

    .line 230
    const/4 v0, 0x1

    .line 240
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 241
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->requestLayout()V

    .line 252
    :goto_1
    return-void

    .line 231
    :cond_1
    if-nez p1, :cond_0

    .line 232
    iget v1, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mDispatchMode:I

    sget v2, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->MODE_FORCE_PASS_TO_ROOT:I

    if-ne v1, v2, :cond_2

    .line 233
    sget v1, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->MODE_NULL:I

    iput v1, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mDispatchMode:I

    .line 235
    :cond_2
    iget v1, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mDispatchMode:I

    sget v2, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->MODE_NULL:I

    if-ne v1, v2, :cond_0

    .line 236
    const/4 v0, 0x1

    goto :goto_0

    .line 243
    :cond_3
    new-instance v1, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer$2;

    invoke-direct {v1, p0, p1}, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer$2;-><init>(Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;Z)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method
