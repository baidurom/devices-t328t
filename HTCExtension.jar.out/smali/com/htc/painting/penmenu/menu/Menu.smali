.class public Lcom/htc/painting/penmenu/menu/Menu;
.super Landroid/widget/FrameLayout;
.source "Menu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/penmenu/menu/Menu$State;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Menu"


# instance fields
.field private final COLLAPSE_MENU_ANIM_DURATION:I

.field private final COLLAPSE_OPTION_ANIM_DURATION:I

.field private final EXPAND_ANIM_DURATION:I

.field private mCollapseAnimListener:Landroid/view/animation/Animation$AnimationListener;

.field protected mCollapseAnimSet:Landroid/view/animation/AnimationSet;

.field private mExpandAnimListener:Landroid/view/animation/Animation$AnimationListener;

.field protected mExpandAnimSet:Landroid/view/animation/AnimationSet;

.field private mMenuPanel:Lcom/htc/painting/penmenu/menu/MenuPanel;

.field protected mOnCollapseListener:Lcom/htc/painting/penmenu/menu/OnCollapseListener;

.field private mOption:Lcom/htc/painting/penmenu/menu/Option;

.field private mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

.field protected mState:Lcom/htc/painting/penmenu/menu/Menu$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/painting/penmenu/menu/Menu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/painting/penmenu/menu/Menu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 168
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    new-instance v0, Lcom/htc/painting/penmenu/menu/Menu$1;

    invoke-direct {v0, p0}, Lcom/htc/painting/penmenu/menu/Menu$1;-><init>(Lcom/htc/painting/penmenu/menu/Menu;)V

    iput-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu;->mExpandAnimListener:Landroid/view/animation/Animation$AnimationListener;

    .line 67
    new-instance v0, Lcom/htc/painting/penmenu/menu/Menu$2;

    invoke-direct {v0, p0}, Lcom/htc/painting/penmenu/menu/Menu$2;-><init>(Lcom/htc/painting/penmenu/menu/Menu;)V

    iput-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu;->mCollapseAnimListener:Landroid/view/animation/Animation$AnimationListener;

    .line 170
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/menu/Menu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20e00dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/painting/penmenu/menu/Menu;->EXPAND_ANIM_DURATION:I

    .line 171
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/menu/Menu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20e00dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/painting/penmenu/menu/Menu;->COLLAPSE_MENU_ANIM_DURATION:I

    .line 172
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/menu/Menu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20e00de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/painting/penmenu/menu/Menu;->COLLAPSE_OPTION_ANIM_DURATION:I

    .line 174
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/menu/Menu;->init()V

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/htc/painting/penmenu/menu/Menu;)Lcom/htc/painting/penmenu/menu/MenuPanel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu;->mMenuPanel:Lcom/htc/painting/penmenu/menu/MenuPanel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/painting/penmenu/menu/Menu;)Lcom/htc/painting/penmenu/menu/Option;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    return-object v0
.end method

.method private setupCollapseAnimation()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/high16 v1, 0x3f80

    .line 234
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v3, p0, Lcom/htc/painting/penmenu/menu/Menu;->mCollapseAnimSet:Landroid/view/animation/AnimationSet;

    .line 235
    iget-object v3, p0, Lcom/htc/painting/penmenu/menu/Menu;->mCollapseAnimSet:Landroid/view/animation/AnimationSet;

    iget-object v4, p0, Lcom/htc/painting/penmenu/menu/Menu;->mCollapseAnimListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 238
    iget-object v3, p0, Lcom/htc/painting/penmenu/menu/Menu;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/menu/Option;->getState()Lcom/htc/painting/penmenu/menu/Option$State;

    move-result-object v3

    sget-object v4, Lcom/htc/painting/penmenu/menu/Option$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Option$State;

    if-ne v3, v4, :cond_0

    .line 239
    iget-object v3, p0, Lcom/htc/painting/penmenu/menu/Menu;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/PenMenu;->getBasePanelSize()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/painting/penmenu/menu/Menu;->mMenuPanel:Lcom/htc/painting/penmenu/menu/MenuPanel;

    invoke-virtual {v4}, Lcom/htc/painting/penmenu/menu/MenuPanel;->getSize()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 245
    .local v2, shrinkRatio:F
    :goto_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v6, v1

    move v7, v5

    move v8, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 247
    .local v0, largeToSmall:Landroid/view/animation/ScaleAnimation;
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/Option;->getState()Lcom/htc/painting/penmenu/menu/Option$State;

    move-result-object v1

    sget-object v3, Lcom/htc/painting/penmenu/menu/Option$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Option$State;

    if-ne v1, v3, :cond_1

    .line 248
    iget v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->COLLAPSE_MENU_ANIM_DURATION:I

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 253
    :goto_1
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mCollapseAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 254
    return-void

    .line 242
    .end local v0           #largeToSmall:Landroid/view/animation/ScaleAnimation;
    .end local v2           #shrinkRatio:F
    :cond_0
    iget-object v3, p0, Lcom/htc/painting/penmenu/menu/Menu;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/PenMenu;->getBasePanelSize()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/painting/penmenu/menu/Menu;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    invoke-virtual {v4}, Lcom/htc/painting/penmenu/menu/Option;->getSize()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .restart local v2       #shrinkRatio:F
    goto :goto_0

    .line 251
    .restart local v0       #largeToSmall:Landroid/view/animation/ScaleAnimation;
    :cond_1
    iget v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->COLLAPSE_OPTION_ANIM_DURATION:I

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    goto :goto_1
.end method

.method private setupExpandAnimation()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/high16 v2, 0x3f80

    .line 210
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v3, p0, Lcom/htc/painting/penmenu/menu/Menu;->mExpandAnimSet:Landroid/view/animation/AnimationSet;

    .line 211
    iget-object v3, p0, Lcom/htc/painting/penmenu/menu/Menu;->mExpandAnimSet:Landroid/view/animation/AnimationSet;

    iget-object v4, p0, Lcom/htc/painting/penmenu/menu/Menu;->mExpandAnimListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 214
    iget-object v3, p0, Lcom/htc/painting/penmenu/menu/Menu;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/menu/Option;->getState()Lcom/htc/painting/penmenu/menu/Option$State;

    move-result-object v3

    sget-object v4, Lcom/htc/painting/penmenu/menu/Option$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Option$State;

    if-ne v3, v4, :cond_0

    .line 215
    iget-object v3, p0, Lcom/htc/painting/penmenu/menu/Menu;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/PenMenu;->getBasePanelSize()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/painting/penmenu/menu/Menu;->mMenuPanel:Lcom/htc/painting/penmenu/menu/MenuPanel;

    invoke-virtual {v4}, Lcom/htc/painting/penmenu/menu/MenuPanel;->getSize()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 221
    .local v1, shrinkRatio:F
    :goto_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v6, v2

    move v7, v5

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 223
    .local v0, smallToLarge:Landroid/view/animation/ScaleAnimation;
    iget-object v2, p0, Lcom/htc/painting/penmenu/menu/Menu;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/menu/Option;->getState()Lcom/htc/painting/penmenu/menu/Option$State;

    move-result-object v2

    sget-object v3, Lcom/htc/painting/penmenu/menu/Option$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Option$State;

    if-ne v2, v3, :cond_1

    .line 224
    iget v2, p0, Lcom/htc/painting/penmenu/menu/Menu;->EXPAND_ANIM_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 229
    :goto_1
    iget-object v2, p0, Lcom/htc/painting/penmenu/menu/Menu;->mExpandAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 230
    return-void

    .line 218
    .end local v0           #smallToLarge:Landroid/view/animation/ScaleAnimation;
    .end local v1           #shrinkRatio:F
    :cond_0
    iget-object v3, p0, Lcom/htc/painting/penmenu/menu/Menu;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/PenMenu;->getBasePanelSize()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/painting/penmenu/menu/Menu;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    invoke-virtual {v4}, Lcom/htc/painting/penmenu/menu/Option;->getSize()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .restart local v1       #shrinkRatio:F
    goto :goto_0

    .line 227
    .restart local v0       #smallToLarge:Landroid/view/animation/ScaleAnimation;
    :cond_1
    iget v2, p0, Lcom/htc/painting/penmenu/menu/Menu;->EXPAND_ANIM_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    goto :goto_1
.end method


# virtual methods
.method public addOnOptionChangeListener(Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu/menu/Option;->addOnOptionChangeListener(Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;)V

    .line 113
    :cond_0
    return-void
.end method

.method public changeState(I)Lcom/htc/painting/penmenu/menu/Menu$State;
    .locals 3
    .parameter "selectedMenuId"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu;->mState:Lcom/htc/painting/penmenu/menu/Menu$State;

    .line 375
    .local v0, ret:Lcom/htc/painting/penmenu/menu/Menu$State;
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mState:Lcom/htc/painting/penmenu/menu/Menu$State;

    sget-object v2, Lcom/htc/painting/penmenu/menu/Menu$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Menu$State;

    if-ne v1, v2, :cond_1

    .line 376
    invoke-virtual {p0, p1}, Lcom/htc/painting/penmenu/menu/Menu;->expand(I)V

    .line 377
    sget-object v0, Lcom/htc/painting/penmenu/menu/Menu$State;->EXPAND:Lcom/htc/painting/penmenu/menu/Menu$State;

    .line 383
    :cond_0
    :goto_0
    return-object v0

    .line 379
    :cond_1
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mState:Lcom/htc/painting/penmenu/menu/Menu$State;

    sget-object v2, Lcom/htc/painting/penmenu/menu/Menu$State;->EXPAND:Lcom/htc/painting/penmenu/menu/Menu$State;

    if-ne v1, v2, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/menu/Menu;->collapse()V

    .line 381
    sget-object v0, Lcom/htc/painting/penmenu/menu/Menu$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Menu$State;

    goto :goto_0
.end method

.method public collapse()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 333
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mState:Lcom/htc/painting/penmenu/menu/Menu$State;

    sget-object v2, Lcom/htc/painting/penmenu/menu/Menu$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Menu$State;

    if-ne v1, v2, :cond_1

    .line 335
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    invoke-virtual {v1, v3}, Lcom/htc/painting/penmenu/menu/Option;->hideOptionPanel(Z)V

    .line 336
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mMenuPanel:Lcom/htc/painting/penmenu/menu/MenuPanel;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/MenuPanel;->shrink()V

    .line 337
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mOnCollapseListener:Lcom/htc/painting/penmenu/menu/OnCollapseListener;

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mOnCollapseListener:Lcom/htc/painting/penmenu/menu/OnCollapseListener;

    invoke-interface {v1}, Lcom/htc/painting/penmenu/menu/OnCollapseListener;->onCollapseFinish()V

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    sget-object v1, Lcom/htc/painting/penmenu/menu/Menu$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Menu$State;

    iput-object v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mState:Lcom/htc/painting/penmenu/menu/Menu$State;

    .line 345
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/PenMenu;->isAnimactionEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 346
    invoke-direct {p0}, Lcom/htc/painting/penmenu/menu/Menu;->setupCollapseAnimation()V

    .line 347
    new-instance v0, Landroid/view/animation/LayoutAnimationController;

    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mCollapseAnimSet:Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    .line 348
    .local v0, animController:Landroid/view/animation/LayoutAnimationController;
    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/menu/Menu;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    goto :goto_0

    .line 351
    .end local v0           #animController:Landroid/view/animation/LayoutAnimationController;
    :cond_2
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mMenuPanel:Lcom/htc/painting/penmenu/menu/MenuPanel;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/MenuPanel;->display()V

    .line 352
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    if-eqz v1, :cond_3

    .line 353
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    invoke-virtual {v1, v3}, Lcom/htc/painting/penmenu/menu/Option;->hideOptionPanel(Z)V

    .line 355
    :cond_3
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mMenuPanel:Lcom/htc/painting/penmenu/menu/MenuPanel;

    if-eqz v1, :cond_4

    .line 356
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mMenuPanel:Lcom/htc/painting/penmenu/menu/MenuPanel;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/MenuPanel;->shrink()V

    .line 358
    :cond_4
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mOnCollapseListener:Lcom/htc/painting/penmenu/menu/OnCollapseListener;

    if-eqz v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mOnCollapseListener:Lcom/htc/painting/penmenu/menu/OnCollapseListener;

    invoke-interface {v1}, Lcom/htc/painting/penmenu/menu/OnCollapseListener;->onCollapseFinish()V

    goto :goto_0
.end method

.method public expand(I)V
    .locals 3
    .parameter "selectedMenuId"

    .prologue
    .line 303
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mState:Lcom/htc/painting/penmenu/menu/Menu$State;

    sget-object v2, Lcom/htc/painting/penmenu/menu/Menu$State;->EXPAND:Lcom/htc/painting/penmenu/menu/Menu$State;

    if-ne v1, v2, :cond_0

    .line 321
    :goto_0
    return-void

    .line 306
    :cond_0
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 307
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    sget-object v2, Lcom/htc/painting/penmenu/menu/Option$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Option$State;

    invoke-virtual {v1, v2, p1}, Lcom/htc/painting/penmenu/menu/Option;->setState(Lcom/htc/painting/penmenu/menu/Option$State;I)V

    .line 312
    :goto_1
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/PenMenu;->isAnimactionEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 313
    invoke-direct {p0}, Lcom/htc/painting/penmenu/menu/Menu;->setupExpandAnimation()V

    .line 314
    new-instance v0, Landroid/view/animation/LayoutAnimationController;

    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mExpandAnimSet:Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    .line 315
    .local v0, animController:Landroid/view/animation/LayoutAnimationController;
    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/menu/Menu;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    goto :goto_0

    .line 310
    .end local v0           #animController:Landroid/view/animation/LayoutAnimationController;
    :cond_1
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    sget-object v2, Lcom/htc/painting/penmenu/menu/Option$State;->EXPAND:Lcom/htc/painting/penmenu/menu/Option$State;

    invoke-virtual {v1, v2, p1}, Lcom/htc/painting/penmenu/menu/Option;->setState(Lcom/htc/painting/penmenu/menu/Option$State;I)V

    goto :goto_1

    .line 318
    :cond_2
    sget-object v1, Lcom/htc/painting/penmenu/menu/Menu$State;->EXPAND:Lcom/htc/painting/penmenu/menu/Menu$State;

    iput-object v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mState:Lcom/htc/painting/penmenu/menu/Menu$State;

    .line 319
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mMenuPanel:Lcom/htc/painting/penmenu/menu/MenuPanel;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/MenuPanel;->display()V

    goto :goto_0
.end method

.method getCorner()Lcom/htc/painting/penmenu/PenMenu$DockCorner;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/PenMenu;->getCorner()Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    move-result-object v0

    return-object v0
.end method

.method public getInnerRadius()I
    .locals 2

    .prologue
    .line 411
    const/4 v0, 0x0

    .line 413
    .local v0, size:I
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/PenMenu;->getBasePanelSize()I

    move-result v0

    .line 417
    :cond_0
    return v0
.end method

.method public getMenuCount()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/PenMenu;->getMenuCount()I

    move-result v0

    .line 137
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMenuItem(I)Lcom/htc/painting/penmenu/menu/MenuItem;
    .locals 3
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 116
    iget-object v2, p0, Lcom/htc/painting/penmenu/menu/Menu;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    if-nez v2, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-object v1

    .line 119
    :cond_1
    iget-object v2, p0, Lcom/htc/painting/penmenu/menu/Menu;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v2, p1}, Lcom/htc/painting/penmenu/PenMenu;->getMenuOptions(I)Lcom/htc/painting/penmenu/menu/MenuOptions;

    move-result-object v0

    .line 120
    .local v0, menuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;

    move-result-object v1

    goto :goto_0
.end method

.method public getMenuOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/menu/MenuOptions",
            "<+",
            "Lcom/htc/painting/penmenu/menu/OptionItem;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/PenMenu;->getMenuOptionsList()Ljava/util/List;

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMenuPanelSize()I
    .locals 2

    .prologue
    .line 421
    const/4 v1, 0x0

    .line 423
    .local v1, size:I
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu;->mMenuPanel:Lcom/htc/painting/penmenu/menu/MenuPanel;

    .line 424
    .local v0, menuPanel:Lcom/htc/painting/penmenu/menu/MenuPanel;
    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/MenuPanel;->getSize()I

    move-result v1

    .line 428
    :cond_0
    return v1
.end method

.method public getOptionPanelSize()I
    .locals 2

    .prologue
    .line 436
    const/4 v1, 0x0

    .line 438
    .local v1, size:I
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    .line 439
    .local v0, option:Lcom/htc/painting/penmenu/menu/Option;
    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/Option;->getSize()I

    move-result v1

    .line 443
    :cond_0
    return v1
.end method

.method public getState()Lcom/htc/painting/penmenu/menu/Menu$State;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu;->mState:Lcom/htc/painting/penmenu/menu/Menu$State;

    return-object v0
.end method

.method public handlePenEvent(ZLandroid/view/MotionEvent;)Z
    .locals 2
    .parameter "isMenuPanel"
    .parameter "event"

    .prologue
    .line 451
    const/4 v0, 0x0

    .line 453
    .local v0, ret:Z
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 454
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mMenuPanel:Lcom/htc/painting/penmenu/menu/MenuPanel;

    invoke-virtual {v1, p2}, Lcom/htc/painting/penmenu/menu/MenuPanel;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 459
    :goto_0
    return v0

    .line 456
    :cond_0
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    invoke-virtual {v1, p2}, Lcom/htc/painting/penmenu/menu/Option;->handlePenEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/menu/Menu;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 183
    .local v0, inflator:Landroid/view/LayoutInflater;
    const v1, 0x209006e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 184
    const v1, 0x202014e

    invoke-virtual {p0, v1}, Lcom/htc/painting/penmenu/menu/Menu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu/menu/MenuPanel;

    iput-object v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mMenuPanel:Lcom/htc/painting/penmenu/menu/MenuPanel;

    .line 186
    const v1, 0x202014d

    invoke-virtual {p0, v1}, Lcom/htc/painting/penmenu/menu/Menu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu/menu/Option;

    iput-object v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    .line 187
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    sget-object v2, Lcom/htc/painting/penmenu/menu/Option$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Option$State;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/painting/penmenu/menu/Option;->setState(Lcom/htc/painting/penmenu/menu/Option$State;I)V

    .line 188
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    iget-object v2, p0, Lcom/htc/painting/penmenu/menu/Menu;->mMenuPanel:Lcom/htc/painting/penmenu/menu/MenuPanel;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/menu/MenuPanel;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/painting/penmenu/menu/Option;->setInnerRadius(I)V

    .line 190
    sget-object v1, Lcom/htc/painting/penmenu/menu/Menu$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Menu$State;

    iput-object v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mState:Lcom/htc/painting/penmenu/menu/Menu$State;

    .line 191
    return-void
.end method

.method isDestroyed()Z
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    if-nez v0, :cond_0

    .line 464
    const/4 v0, 0x1

    .line 466
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    goto :goto_0
.end method

.method public onChange(I)V
    .locals 1
    .parameter "menuId"

    .prologue
    .line 396
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu/PenMenu;->setSelectedMenuId(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu/PenMenu;->getMenuOptions(I)Lcom/htc/painting/penmenu/menu/MenuOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu/menu/Option;->changeOptions(I)V

    goto :goto_0
.end method

.method public onPenDataStateChanged(Z)V
    .locals 1
    .parameter "ready"

    .prologue
    .line 479
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    .line 480
    .local v0, option:Lcom/htc/painting/penmenu/menu/Option;
    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu/menu/Option;->onPenDataStateChanged(Z)V

    .line 483
    :cond_0
    return-void
.end method

.method public releaseResources()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 198
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu;->mMenuPanel:Lcom/htc/painting/penmenu/menu/MenuPanel;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/MenuPanel;->releaseIcon()V

    .line 199
    iput-object v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mMenuPanel:Lcom/htc/painting/penmenu/menu/MenuPanel;

    .line 201
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/Option;->releaseResource()V

    .line 202
    iput-object v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    .line 204
    iput-object v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mOnCollapseListener:Lcom/htc/painting/penmenu/menu/OnCollapseListener;

    .line 206
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/menu/Menu;->removeAllViews()V

    .line 207
    return-void
.end method

.method public setOnCollapseListener(Lcom/htc/painting/penmenu/menu/OnCollapseListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 288
    iput-object p1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mOnCollapseListener:Lcom/htc/painting/penmenu/menu/OnCollapseListener;

    .line 289
    return-void
.end method

.method public setPenMenu(Lcom/htc/painting/penmenu/PenMenu;)V
    .locals 2
    .parameter "penMenu"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    .line 95
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu;->mMenuPanel:Lcom/htc/painting/penmenu/menu/MenuPanel;

    invoke-virtual {v0, p0}, Lcom/htc/painting/penmenu/menu/MenuPanel;->setMenu(Lcom/htc/painting/penmenu/menu/Menu;)V

    .line 96
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/menu/Option;->setPenMenu(Lcom/htc/painting/penmenu/PenMenu;)V

    .line 99
    :cond_0
    return-void
.end method

.method public setState(Lcom/htc/painting/penmenu/menu/Menu$State;I)V
    .locals 2
    .parameter "state"
    .parameter "selectedMenuId"

    .prologue
    .line 261
    iput-object p1, p0, Lcom/htc/painting/penmenu/menu/Menu;->mState:Lcom/htc/painting/penmenu/menu/Menu$State;

    .line 262
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu;->mState:Lcom/htc/painting/penmenu/menu/Menu$State;

    sget-object v1, Lcom/htc/painting/penmenu/menu/Menu$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Menu$State;

    if-ne v0, v1, :cond_1

    .line 263
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu;->mMenuPanel:Lcom/htc/painting/penmenu/menu/MenuPanel;

    sget-object v1, Lcom/htc/painting/penmenu/menu/MenuPanel$State;->SHRINK:Lcom/htc/painting/penmenu/menu/MenuPanel$State;

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/menu/MenuPanel;->setState(Lcom/htc/painting/penmenu/menu/MenuPanel$State;)V

    .line 264
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    sget-object v1, Lcom/htc/painting/penmenu/menu/Option$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Option$State;

    invoke-virtual {v0, v1, p2}, Lcom/htc/painting/penmenu/menu/Option;->setState(Lcom/htc/painting/penmenu/menu/Option$State;I)V

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu;->mMenuPanel:Lcom/htc/painting/penmenu/menu/MenuPanel;

    sget-object v1, Lcom/htc/painting/penmenu/menu/MenuPanel$State;->FULL:Lcom/htc/painting/penmenu/menu/MenuPanel$State;

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/menu/MenuPanel;->setState(Lcom/htc/painting/penmenu/menu/MenuPanel$State;)V

    .line 268
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu;->mOption:Lcom/htc/painting/penmenu/menu/Option;

    sget-object v1, Lcom/htc/painting/penmenu/menu/Option$State;->EXPAND:Lcom/htc/painting/penmenu/menu/Option$State;

    invoke-virtual {v0, v1, p2}, Lcom/htc/painting/penmenu/menu/Option;->setState(Lcom/htc/painting/penmenu/menu/Option$State;I)V

    goto :goto_0
.end method

.method updateUseTime()Z
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Menu;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/PenMenu;->setUseTime(Z)Z

    move-result v0

    return v0
.end method
