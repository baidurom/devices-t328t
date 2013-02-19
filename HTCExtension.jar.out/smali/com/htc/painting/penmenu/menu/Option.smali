.class public Lcom/htc/painting/penmenu/menu/Option;
.super Landroid/widget/FrameLayout;
.source "Option.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/penmenu/menu/Option$1;,
        Lcom/htc/painting/penmenu/menu/Option$ExpandAnimListener;,
        Lcom/htc/painting/penmenu/menu/Option$CollapseAnimListener;,
        Lcom/htc/painting/penmenu/menu/Option$State;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Option"


# instance fields
.field private final COLLAPSE_ANIM_DURATION:I

.field private final EXPAND_ANIM_DURATION:I

.field private mCollapseAnimListener:Lcom/htc/painting/penmenu/menu/Option$CollapseAnimListener;

.field protected mCollapseAnimSet:Landroid/view/animation/AnimationSet;

.field private mExpandAnimListener:Landroid/view/animation/Animation$AnimationListener;

.field protected mExpandAnimSet:Landroid/view/animation/AnimationSet;

.field private mInnerRadius:I

.field private mMenuId:I

.field protected mOnCollapseListener:Lcom/htc/painting/penmenu/menu/OnCollapseListener;

.field private mOnOptionChangeListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionPanel:Lcom/htc/painting/penmenu/menu/OptionPanel;

.field private mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

.field protected mState:Lcom/htc/painting/penmenu/menu/Option$State;

.field private mTargetMenuId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/painting/penmenu/menu/Option;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/painting/penmenu/menu/Option;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 130
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu/menu/Option;->mOnOptionChangeListener:Ljava/util/List;

    .line 132
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/menu/Option;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20e00df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/painting/penmenu/menu/Option;->EXPAND_ANIM_DURATION:I

    .line 133
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/menu/Option;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20e00e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/painting/penmenu/menu/Option;->COLLAPSE_ANIM_DURATION:I

    .line 135
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/menu/Option;->init()V

    .line 136
    return-void
.end method

.method static synthetic access$200(Lcom/htc/painting/penmenu/menu/Option;)Lcom/htc/painting/penmenu/menu/OptionPanel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Option;->mOptionPanel:Lcom/htc/painting/penmenu/menu/OptionPanel;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/painting/penmenu/menu/Option;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/htc/painting/penmenu/menu/Option;->mMenuId:I

    return p1
.end method

.method static synthetic access$400(Lcom/htc/painting/penmenu/menu/Option;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/htc/painting/penmenu/menu/Option;->mTargetMenuId:I

    return v0
.end method

.method private setupAnimation()V
    .locals 12

    .prologue
    .line 158
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v3, p0, Lcom/htc/painting/penmenu/menu/Option;->mExpandAnimSet:Landroid/view/animation/AnimationSet;

    .line 159
    new-instance v3, Lcom/htc/painting/penmenu/menu/Option$ExpandAnimListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/htc/painting/penmenu/menu/Option$ExpandAnimListener;-><init>(Lcom/htc/painting/penmenu/menu/Option;Lcom/htc/painting/penmenu/menu/Option$1;)V

    iput-object v3, p0, Lcom/htc/painting/penmenu/menu/Option;->mExpandAnimListener:Landroid/view/animation/Animation$AnimationListener;

    .line 160
    iget-object v3, p0, Lcom/htc/painting/penmenu/menu/Option;->mExpandAnimSet:Landroid/view/animation/AnimationSet;

    iget-object v4, p0, Lcom/htc/painting/penmenu/menu/Option;->mExpandAnimListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 162
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v3, p0, Lcom/htc/painting/penmenu/menu/Option;->mCollapseAnimSet:Landroid/view/animation/AnimationSet;

    .line 163
    new-instance v3, Lcom/htc/painting/penmenu/menu/Option$CollapseAnimListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/htc/painting/penmenu/menu/Option$CollapseAnimListener;-><init>(Lcom/htc/painting/penmenu/menu/Option;Lcom/htc/painting/penmenu/menu/Option$1;)V

    iput-object v3, p0, Lcom/htc/painting/penmenu/menu/Option;->mCollapseAnimListener:Lcom/htc/painting/penmenu/menu/Option$CollapseAnimListener;

    .line 164
    iget-object v3, p0, Lcom/htc/painting/penmenu/menu/Option;->mCollapseAnimSet:Landroid/view/animation/AnimationSet;

    iget-object v4, p0, Lcom/htc/painting/penmenu/menu/Option;->mCollapseAnimListener:Lcom/htc/painting/penmenu/menu/Option$CollapseAnimListener;

    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 166
    iget-object v3, p0, Lcom/htc/painting/penmenu/menu/Option;->mOptionPanel:Lcom/htc/painting/penmenu/menu/OptionPanel;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/menu/OptionPanel;->getSize()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/painting/penmenu/menu/Option;->mOptionPanel:Lcom/htc/painting/penmenu/menu/OptionPanel;

    invoke-virtual {v4}, Lcom/htc/painting/penmenu/menu/OptionPanel;->getSize()I

    move-result v4

    iget v5, p0, Lcom/htc/painting/penmenu/menu/Option;->mInnerRadius:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    div-float v11, v3, v4

    .line 172
    .local v11, expandRatio:F
    const/high16 v3, 0x3f80

    div-float v1, v3, v11

    .line 177
    .local v1, shrinkRatio:F
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f80

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    const/high16 v8, 0x3f80

    move v3, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 179
    .local v0, smallToLarge:Landroid/view/animation/ScaleAnimation;
    iget v3, p0, Lcom/htc/painting/penmenu/menu/Option;->EXPAND_ANIM_DURATION:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 180
    iget-object v3, p0, Lcom/htc/painting/penmenu/menu/Option;->mExpandAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 182
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f80

    const/high16 v5, 0x3f80

    const/4 v7, 0x1

    const/high16 v8, 0x3f80

    const/4 v9, 0x1

    const/high16 v10, 0x3f80

    move v4, v1

    move v6, v1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 184
    .local v2, largeToSmall:Landroid/view/animation/ScaleAnimation;
    iget v3, p0, Lcom/htc/painting/penmenu/menu/Option;->COLLAPSE_ANIM_DURATION:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 185
    iget-object v3, p0, Lcom/htc/painting/penmenu/menu/Option;->mCollapseAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 186
    return-void
.end method


# virtual methods
.method public addOnOptionChangeListener(Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Option;->mOnOptionChangeListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    return-void
.end method

.method public changeOptions(I)V
    .locals 2
    .parameter "menuId"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Option;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu/PenMenu;->getMenuOptions(I)Lcom/htc/painting/penmenu/menu/MenuOptions;

    move-result-object v0

    if-nez v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Option;->mState:Lcom/htc/painting/penmenu/menu/Option$State;

    sget-object v1, Lcom/htc/painting/penmenu/menu/Option$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Option$State;

    if-ne v0, v1, :cond_1

    .line 272
    iput p1, p0, Lcom/htc/painting/penmenu/menu/Option;->mMenuId:I

    .line 274
    :cond_1
    iput p1, p0, Lcom/htc/painting/penmenu/menu/Option;->mTargetMenuId:I

    .line 275
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/menu/Option;->changeState()Lcom/htc/painting/penmenu/menu/Option$State;

    goto :goto_0
.end method

.method public changeState()Lcom/htc/painting/penmenu/menu/Option$State;
    .locals 4

    .prologue
    .line 221
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Option;->mState:Lcom/htc/painting/penmenu/menu/Option$State;

    .line 222
    .local v1, ret:Lcom/htc/painting/penmenu/menu/Option$State;
    iget-object v2, p0, Lcom/htc/painting/penmenu/menu/Option;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/PenMenu;->isAnimactionEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    iget-object v2, p0, Lcom/htc/painting/penmenu/menu/Option;->mState:Lcom/htc/painting/penmenu/menu/Option$State;

    sget-object v3, Lcom/htc/painting/penmenu/menu/Option$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Option$State;

    if-ne v2, v3, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/menu/Option;->expand()V

    .line 245
    :goto_0
    return-object v1

    .line 229
    :cond_0
    iget-object v2, p0, Lcom/htc/painting/penmenu/menu/Option;->mCollapseAnimListener:Lcom/htc/painting/penmenu/menu/Option$CollapseAnimListener;

    sget-object v3, Lcom/htc/painting/penmenu/menu/Option$State;->EXPAND:Lcom/htc/painting/penmenu/menu/Option$State;

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/menu/Option$CollapseAnimListener;->setToState(Lcom/htc/painting/penmenu/menu/Option$State;)V

    .line 230
    new-instance v0, Landroid/view/animation/LayoutAnimationController;

    iget-object v2, p0, Lcom/htc/painting/penmenu/menu/Option;->mCollapseAnimSet:Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    .line 231
    .local v0, animController:Landroid/view/animation/LayoutAnimationController;
    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/menu/Option;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    goto :goto_0

    .line 235
    .end local v0           #animController:Landroid/view/animation/LayoutAnimationController;
    :cond_1
    iget v2, p0, Lcom/htc/painting/penmenu/menu/Option;->mTargetMenuId:I

    iput v2, p0, Lcom/htc/painting/penmenu/menu/Option;->mMenuId:I

    .line 236
    iget-object v2, p0, Lcom/htc/painting/penmenu/menu/Option;->mState:Lcom/htc/painting/penmenu/menu/Option$State;

    sget-object v3, Lcom/htc/painting/penmenu/menu/Option$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Option$State;

    if-ne v2, v3, :cond_2

    .line 238
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/menu/Option;->expand()V

    goto :goto_0

    .line 241
    :cond_2
    sget-object v2, Lcom/htc/painting/penmenu/menu/Option$State;->EXPAND:Lcom/htc/painting/penmenu/menu/Option$State;

    iput-object v2, p0, Lcom/htc/painting/penmenu/menu/Option;->mState:Lcom/htc/painting/penmenu/menu/Option$State;

    .line 242
    iget-object v2, p0, Lcom/htc/painting/penmenu/menu/Option;->mOptionPanel:Lcom/htc/painting/penmenu/menu/OptionPanel;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/menu/OptionPanel;->display()V

    goto :goto_0
.end method

.method public collapse()V
    .locals 3

    .prologue
    .line 283
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Option;->mState:Lcom/htc/painting/penmenu/menu/Option$State;

    sget-object v2, Lcom/htc/painting/penmenu/menu/Option$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Option$State;

    if-ne v1, v2, :cond_0

    .line 284
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Option;->mOnCollapseListener:Lcom/htc/painting/penmenu/menu/OnCollapseListener;

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Option;->mOnCollapseListener:Lcom/htc/painting/penmenu/menu/OnCollapseListener;

    invoke-interface {v1}, Lcom/htc/painting/penmenu/menu/OnCollapseListener;->onCollapseFinish()V

    .line 298
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Option;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/PenMenu;->isAnimactionEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Option;->mCollapseAnimListener:Lcom/htc/painting/penmenu/menu/Option$CollapseAnimListener;

    sget-object v2, Lcom/htc/painting/penmenu/menu/Option$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Option$State;

    invoke-virtual {v1, v2}, Lcom/htc/painting/penmenu/menu/Option$CollapseAnimListener;->setToState(Lcom/htc/painting/penmenu/menu/Option$State;)V

    .line 291
    new-instance v0, Landroid/view/animation/LayoutAnimationController;

    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Option;->mCollapseAnimSet:Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    .line 292
    .local v0, animController:Landroid/view/animation/LayoutAnimationController;
    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/menu/Option;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    goto :goto_0

    .line 295
    .end local v0           #animController:Landroid/view/animation/LayoutAnimationController;
    :cond_1
    sget-object v1, Lcom/htc/painting/penmenu/menu/Option$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Option$State;

    iput-object v1, p0, Lcom/htc/painting/penmenu/menu/Option;->mState:Lcom/htc/painting/penmenu/menu/Option$State;

    .line 296
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Option;->mOptionPanel:Lcom/htc/painting/penmenu/menu/OptionPanel;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/OptionPanel;->shrink()V

    goto :goto_0
.end method

.method public expand()V
    .locals 3

    .prologue
    .line 305
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Option;->mState:Lcom/htc/painting/penmenu/menu/Option$State;

    sget-object v2, Lcom/htc/painting/penmenu/menu/Option$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Option$State;

    if-eq v1, v2, :cond_0

    .line 319
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Option;->mOptionPanel:Lcom/htc/painting/penmenu/menu/OptionPanel;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/OptionPanel;->display()V

    .line 310
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Option;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/PenMenu;->isAnimactionEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 311
    new-instance v0, Landroid/view/animation/LayoutAnimationController;

    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Option;->mExpandAnimSet:Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    .line 312
    .local v0, animController:Landroid/view/animation/LayoutAnimationController;
    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu/menu/Option;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    goto :goto_0

    .line 315
    .end local v0           #animController:Landroid/view/animation/LayoutAnimationController;
    :cond_1
    sget-object v1, Lcom/htc/painting/penmenu/menu/Option$State;->EXPAND:Lcom/htc/painting/penmenu/menu/Option$State;

    iput-object v1, p0, Lcom/htc/painting/penmenu/menu/Option;->mState:Lcom/htc/painting/penmenu/menu/Option$State;

    .line 316
    iget v1, p0, Lcom/htc/painting/penmenu/menu/Option;->mTargetMenuId:I

    iput v1, p0, Lcom/htc/painting/penmenu/menu/Option;->mMenuId:I

    .line 317
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Option;->mOptionPanel:Lcom/htc/painting/penmenu/menu/OptionPanel;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/OptionPanel;->display()V

    goto :goto_0
.end method

.method public getCurrentColor()I
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Option;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/PenMenu;->getCurrentPenColor()I

    move-result v0

    return v0
.end method

.method getInnerRadius()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/htc/painting/penmenu/menu/Option;->mInnerRadius:I

    return v0
.end method

.method getMenuId()I
    .locals 1

    .prologue
    .line 456
    iget v0, p0, Lcom/htc/painting/penmenu/menu/Option;->mMenuId:I

    return v0
.end method

.method public getOptionItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/htc/painting/penmenu/menu/OptionItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Option;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    iget v2, p0, Lcom/htc/painting/penmenu/menu/Option;->mMenuId:I

    invoke-virtual {v1, v2}, Lcom/htc/painting/penmenu/PenMenu;->getMenuOptions(I)Lcom/htc/painting/penmenu/menu/MenuOptions;

    move-result-object v0

    .line 105
    .local v0, menuOptions:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    if-nez v0, :cond_0

    .line 106
    const/4 v1, 0x0

    .line 108
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getOptionItems()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getOptionItemsCopy()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/htc/painting/penmenu/menu/OptionItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/menu/Option;->getOptionItems()Ljava/util/List;

    move-result-object v0

    .line 114
    .local v0, realOptions:Ljava/util/List;,"Ljava/util/List<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    const/4 v1, 0x0

    .line 115
    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    if-eqz v0, :cond_0

    .line 116
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 118
    .restart local v1       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    :cond_0
    return-object v1
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 425
    const/4 v0, 0x0

    .line 427
    .local v0, size:I
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Option;->mOptionPanel:Lcom/htc/painting/penmenu/menu/OptionPanel;

    if-eqz v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Option;->mOptionPanel:Lcom/htc/painting/penmenu/menu/OptionPanel;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/OptionPanel;->getSize()I

    move-result v0

    .line 431
    :cond_0
    return v0
.end method

.method public getState()Lcom/htc/painting/penmenu/menu/Option$State;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Option;->mState:Lcom/htc/painting/penmenu/menu/Option$State;

    return-object v0
.end method

.method handlePenEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Option;->mOptionPanel:Lcom/htc/painting/penmenu/menu/OptionPanel;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu/menu/OptionPanel;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public hideOptionPanel(Z)V
    .locals 1
    .parameter "hide"

    .prologue
    .line 323
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 324
    sget-object v0, Lcom/htc/painting/penmenu/menu/Option$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Option$State;

    iput-object v0, p0, Lcom/htc/painting/penmenu/menu/Option;->mState:Lcom/htc/painting/penmenu/menu/Option$State;

    .line 325
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Option;->mOptionPanel:Lcom/htc/painting/penmenu/menu/OptionPanel;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/OptionPanel;->shrink()V

    .line 331
    :goto_0
    return-void

    .line 328
    :cond_0
    sget-object v0, Lcom/htc/painting/penmenu/menu/Option$State;->EXPAND:Lcom/htc/painting/penmenu/menu/Option$State;

    iput-object v0, p0, Lcom/htc/painting/penmenu/menu/Option;->mState:Lcom/htc/painting/penmenu/menu/Option$State;

    .line 329
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Option;->mOptionPanel:Lcom/htc/painting/penmenu/menu/OptionPanel;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/OptionPanel;->display()V

    goto :goto_0
.end method

.method protected init()V
    .locals 3

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/menu/Option;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 148
    .local v0, inflator:Landroid/view/LayoutInflater;
    const v1, 0x209006f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 150
    sget-object v1, Lcom/htc/painting/penmenu/menu/Option$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Option$State;

    iput-object v1, p0, Lcom/htc/painting/penmenu/menu/Option;->mState:Lcom/htc/painting/penmenu/menu/Option$State;

    .line 152
    const v1, 0x202014f

    invoke-virtual {p0, v1}, Lcom/htc/painting/penmenu/menu/Option;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu/menu/OptionPanel;

    iput-object v1, p0, Lcom/htc/painting/penmenu/menu/Option;->mOptionPanel:Lcom/htc/painting/penmenu/menu/OptionPanel;

    .line 153
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Option;->mOptionPanel:Lcom/htc/painting/penmenu/menu/OptionPanel;

    invoke-virtual {v1, p0}, Lcom/htc/painting/penmenu/menu/OptionPanel;->setOption(Lcom/htc/painting/penmenu/menu/Option;)V

    .line 154
    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/Option;->mOptionPanel:Lcom/htc/painting/penmenu/menu/OptionPanel;

    sget-object v2, Lcom/htc/painting/penmenu/menu/OptionPanel$State;->SHRINK:Lcom/htc/painting/penmenu/menu/OptionPanel$State;

    invoke-virtual {v1, v2}, Lcom/htc/painting/penmenu/menu/OptionPanel;->setState(Lcom/htc/painting/penmenu/menu/OptionPanel$State;)V

    .line 155
    return-void
.end method

.method isDestroyed()Z
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Option;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    if-nez v0, :cond_0

    .line 450
    const/4 v0, 0x1

    .line 452
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Option;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    goto :goto_0
.end method

.method public onChange(I)V
    .locals 3
    .parameter "optionId"

    .prologue
    .line 257
    iget-object v2, p0, Lcom/htc/painting/penmenu/menu/Option;->mOnOptionChangeListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;

    .line 258
    .local v1, listener:Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;
    iget v2, p0, Lcom/htc/painting/penmenu/menu/Option;->mMenuId:I

    invoke-interface {v1, v2, p1}, Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;->onOptionChanged(II)V

    goto :goto_0

    .line 260
    .end local v1           #listener:Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;
    :cond_0
    return-void
.end method

.method onPenDataStateChanged(Z)V
    .locals 3
    .parameter "ready"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Option;->mOptionPanel:Lcom/htc/painting/penmenu/menu/OptionPanel;

    .line 461
    .local v0, panel:Lcom/htc/painting/penmenu/menu/OptionPanel;
    if-eqz v0, :cond_0

    .line 462
    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/penmenu/menu/OptionPanel;->setMenuHidden(ZI)V

    .line 465
    :cond_0
    return-void

    .line 462
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public releaseResource()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Option;->mOnOptionChangeListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 445
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/menu/Option;->removeAllViews()V

    .line 446
    return-void
.end method

.method setInnerRadius(I)V
    .locals 0
    .parameter "radius"

    .prologue
    .line 78
    iput p1, p0, Lcom/htc/painting/penmenu/menu/Option;->mInnerRadius:I

    .line 80
    invoke-direct {p0}, Lcom/htc/painting/penmenu/menu/Option;->setupAnimation()V

    .line 81
    return-void
.end method

.method public setPenMenu(Lcom/htc/painting/penmenu/PenMenu;)V
    .locals 0
    .parameter "penMenu"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/htc/painting/penmenu/menu/Option;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    .line 93
    return-void
.end method

.method public setState(Lcom/htc/painting/penmenu/menu/Option$State;I)V
    .locals 2
    .parameter "state"
    .parameter "selectedMenuId"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/htc/painting/penmenu/menu/Option;->mState:Lcom/htc/painting/penmenu/menu/Option$State;

    .line 194
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Option;->mState:Lcom/htc/painting/penmenu/menu/Option$State;

    sget-object v1, Lcom/htc/painting/penmenu/menu/Option$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Option$State;

    if-ne v0, v1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Option;->mOptionPanel:Lcom/htc/painting/penmenu/menu/OptionPanel;

    sget-object v1, Lcom/htc/painting/penmenu/menu/OptionPanel$State;->SHRINK:Lcom/htc/painting/penmenu/menu/OptionPanel$State;

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/menu/OptionPanel;->setState(Lcom/htc/painting/penmenu/menu/OptionPanel$State;)V

    .line 201
    :goto_0
    return-void

    .line 198
    :cond_0
    iput p2, p0, Lcom/htc/painting/penmenu/menu/Option;->mMenuId:I

    .line 199
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Option;->mOptionPanel:Lcom/htc/painting/penmenu/menu/OptionPanel;

    sget-object v1, Lcom/htc/painting/penmenu/menu/OptionPanel$State;->FULL:Lcom/htc/painting/penmenu/menu/OptionPanel$State;

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/menu/OptionPanel;->setState(Lcom/htc/painting/penmenu/menu/OptionPanel$State;)V

    goto :goto_0
.end method

.method public updateUseTime()Z
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/Option;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/PenMenu;->setUseTime(Z)Z

    move-result v0

    return v0
.end method
