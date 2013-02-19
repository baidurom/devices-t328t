.class public Lcom/htc/painting/penmenu15/core/PenMenuStateManager;
.super Lcom/htc/painting/penmenu15/transition/StateManager;
.source "PenMenuStateManager.java"

# interfaces
.implements Lcom/htc/painting/penmenu15/core/CurrentPenContainer$CurrentPenChangedListener;
.implements Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;
.implements Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;
.implements Lcom/htc/painting/penmenu15/view/ActionPanel$OnActionPanelClickedListener;
.implements Lcom/htc/painting/penmenu/highlight/IHighlightConfiguration$IHightlightConfigListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockCounter;,
        Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockConditions;
    }
.end annotation


# static fields
.field public static final STATE_ACTIONPANEL:I = 0xc8

.field private static final STATE_HIDDEN:I = 0xcb

.field public static final STATE_OPTIONPANEL:I = 0xc9

.field private static final TAG:Ljava/lang/String; = "StateManager"


# instance fields
.field private mActionListener:Lcom/htc/painting/penmenu15/OnActionPerformListener;

.field private mActionPanel:Lcom/htc/painting/penmenu15/view/ActionPanel;

.field private mBlockConditions:Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockConditions;

.field private mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

.field private mDestroyed:Z

.field private mHLConfig:Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;

.field private mInternalHLListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu15/core/InternalHLConfigListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuConfigState:I

.field private mMonitors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu15/PenMenu$PenMenuShowHideMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

.field private mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

.field private mPenTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu15/core/PenRepresentation;",
            ">;"
        }
    .end annotation
.end field

.field private mQuickEraserMode:Z

.field private mStickyShow:Z

.field private mStickyStrokeVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/painting/penmenu15/RoundPenMenu;)V
    .locals 3
    .parameter "ctx"
    .parameter "penmenu"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/transition/StateManager;-><init>()V

    .line 60
    new-instance v0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockConditions;

    invoke-direct {v0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockConditions;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mBlockConditions:Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockConditions;

    .line 69
    iput-boolean v1, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mStickyShow:Z

    .line 70
    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mMenuConfigState:I

    .line 73
    iput-boolean v1, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mDestroyed:Z

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mStickyStrokeVisible:Z

    .line 77
    iput-boolean v1, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mQuickEraserMode:Z

    .line 80
    iput-object v2, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mPenTypes:Ljava/util/List;

    .line 82
    iput-object v2, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mActionListener:Lcom/htc/painting/penmenu15/OnActionPerformListener;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mMonitors:Ljava/util/List;

    .line 706
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mInternalHLListeners:Ljava/util/List;

    .line 93
    iput-object p2, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    .line 94
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->init()V

    .line 95
    return-void
.end method

.method private applyPenToPaintingView()V
    .locals 6

    .prologue
    .line 335
    iget-object v3, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    if-eqz v3, :cond_1

    .line 336
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->refreshActionPanelButtons()V

    .line 338
    iget-object v3, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->getPenType()Lcom/htc/painting/penmenu15/core/PenType;

    move-result-object v1

    .line 339
    .local v1, penType:Lcom/htc/painting/penmenu15/core/PenType;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/core/PenType;->getRawPen()Lcom/htc/painting/tool/pen/Pen;

    move-result-object v3

    if-nez v3, :cond_2

    .line 340
    :cond_0
    const-string v3, "StateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPaintingViewStroke - no PenType found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/painting/penmenu15/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    .end local v1           #penType:Lcom/htc/painting/penmenu15/core/PenType;
    :cond_1
    :goto_0
    return-void

    .line 344
    .restart local v1       #penType:Lcom/htc/painting/penmenu15/core/PenType;
    :cond_2
    new-instance v2, Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct {v2}, Lcom/htc/painting/engine/StrokeProperties;-><init>()V

    .line 345
    .local v2, sp:Lcom/htc/painting/engine/StrokeProperties;
    iget-object v3, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/painting/engine/StrokeProperties;->setColor(I)V

    .line 346
    iget-object v3, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->getSize()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/htc/painting/engine/StrokeProperties;->setWidth(F)V

    .line 347
    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/core/PenType;->isEraser()Z

    move-result v0

    .line 348
    .local v0, isEraser:Z
    invoke-virtual {v2, v0}, Lcom/htc/painting/engine/StrokeProperties;->setEraser(Z)V

    .line 350
    iget-object v3, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/core/PenType;->getRawPen()Lcom/htc/painting/tool/pen/Pen;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView;->setPen(Lcom/htc/painting/tool/pen/Pen;Lcom/htc/painting/engine/StrokeProperties;)V

    goto :goto_0
.end method

.method private computeState()I
    .locals 2

    .prologue
    .line 196
    iget v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mMenuConfigState:I

    .line 197
    .local v0, result:I
    iget-boolean v1, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mStickyShow:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mBlockConditions:Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockConditions;

    #calls: Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockConditions;->isBlocked()Z
    invoke-static {v1}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockConditions;->access$000(Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockConditions;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    :cond_0
    const/16 v0, 0xcb

    .line 201
    :cond_1
    return v0
.end method

.method private init()V
    .locals 11

    .prologue
    .line 154
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 157
    .local v0, in:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 159
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x3f00

    const/4 v8, 0x1

    const/high16 v9, 0x3f00

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 162
    .local v1, out:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 164
    new-instance v10, Lcom/htc/painting/penmenu15/transition/ViewConfig;

    const/16 v2, 0xcb

    invoke-direct {v10, v2}, Lcom/htc/painting/penmenu15/transition/ViewConfig;-><init>(I)V

    .line 165
    .local v10, hiddenConfig:Lcom/htc/painting/penmenu15/transition/ViewConfig;
    iget-object v2, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    const/4 v3, 0x4

    invoke-virtual {v10, v2, v3, v0, v1}, Lcom/htc/painting/penmenu15/transition/ViewConfig;->addView(Landroid/view/View;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 166
    invoke-virtual {p0, v10}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->addConfig(Lcom/htc/painting/penmenu15/transition/ViewConfig;)V

    .line 168
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->onShowStateChanged(Z)V

    .line 169
    return-void
.end method

.method private notifyInternalHLListeners(Lcom/htc/painting/penmenu15/core/InternalHLConfigListener$CHANGE_TYPE;)V
    .locals 3
    .parameter "type"

    .prologue
    .line 755
    iget-object v2, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mInternalHLListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu15/core/InternalHLConfigListener;

    .line 756
    .local v1, list:Lcom/htc/painting/penmenu15/core/InternalHLConfigListener;
    invoke-interface {v1, p1}, Lcom/htc/painting/penmenu15/core/InternalHLConfigListener;->onInternalHighlightConfigChanged(Lcom/htc/painting/penmenu15/core/InternalHLConfigListener$CHANGE_TYPE;)V

    goto :goto_0

    .line 758
    .end local v1           #list:Lcom/htc/painting/penmenu15/core/InternalHLConfigListener;
    :cond_0
    return-void
.end method

.method private notifyShowHideMonitors(ZZ)V
    .locals 4
    .parameter "stickyShow"
    .parameter "currentlyShown"

    .prologue
    .line 184
    iget-object v3, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mMonitors:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 185
    iget-object v3, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mMonitors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 186
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 187
    iget-object v3, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mMonitors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/penmenu15/PenMenu$PenMenuShowHideMonitor;

    .line 188
    .local v2, monitor:Lcom/htc/painting/penmenu15/PenMenu$PenMenuShowHideMonitor;
    if-eqz v2, :cond_0

    .line 189
    invoke-interface {v2, p1, p2}, Lcom/htc/painting/penmenu15/PenMenu$PenMenuShowHideMonitor;->onChange(ZZ)V

    .line 186
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #monitor:Lcom/htc/painting/penmenu15/PenMenu$PenMenuShowHideMonitor;
    :cond_1
    return-void
.end method

.method private onShowStateChanged(Z)V
    .locals 6
    .parameter "playAnimation"

    .prologue
    const/16 v5, 0xcb

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 172
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->getCurrenState()I

    move-result v4

    if-eq v4, v5, :cond_1

    move v1, v2

    .line 173
    .local v1, wasShown:Z
    :goto_0
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->computeState()I

    move-result v4

    invoke-super {p0, v4, p1}, Lcom/htc/painting/penmenu15/transition/StateManager;->setState(IZ)V

    .line 175
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->getCurrenState()I

    move-result v4

    if-eq v4, v5, :cond_2

    move v0, v2

    .line 178
    .local v0, isShown:Z
    :goto_1
    if-eq v1, v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->getStickyShow()Z

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->notifyShowHideMonitors(ZZ)V

    .line 181
    :cond_0
    return-void

    .end local v0           #isShown:Z
    .end local v1           #wasShown:Z
    :cond_1
    move v1, v3

    .line 172
    goto :goto_0

    .restart local v1       #wasShown:Z
    :cond_2
    move v0, v3

    .line 175
    goto :goto_1
.end method

.method private onStrokeVisibilityChanged()V
    .locals 5

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->isStrokeVisible()Z

    move-result v1

    .line 386
    .local v1, visible:Z
    iget-object v2, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    if-eqz v2, :cond_0

    .line 387
    if-eqz v1, :cond_2

    const/16 v0, 0xff

    .line 389
    .local v0, alpha:I
    :goto_0
    iget-object v2, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    invoke-interface {v2, v0}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView;->setDisplayAlpha(I)V

    .line 393
    .end local v0           #alpha:I
    :cond_0
    iget-object v2, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mActionPanel:Lcom/htc/painting/penmenu15/view/ActionPanel;

    if-eqz v2, :cond_1

    .line 394
    iget-object v2, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mActionPanel:Lcom/htc/painting/penmenu15/view/ActionPanel;

    iget-object v3, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    iget-boolean v4, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mStickyStrokeVisible:Z

    invoke-virtual {v2, v3, v4}, Lcom/htc/painting/penmenu15/view/ActionPanel;->updateButtons(Lcom/htc/painting/engine/IStrokeNotifyPaintingView;Z)V

    .line 396
    :cond_1
    return-void

    .line 387
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshActionPanelButtons()V
    .locals 3

    .prologue
    .line 656
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mActionPanel:Lcom/htc/painting/penmenu15/view/ActionPanel;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mActionPanel:Lcom/htc/painting/penmenu15/view/ActionPanel;

    iget-object v1, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    iget-boolean v2, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mStickyStrokeVisible:Z

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/penmenu15/view/ActionPanel;->updateButtons(Lcom/htc/painting/engine/IStrokeNotifyPaintingView;Z)V

    .line 659
    :cond_0
    return-void
.end method


# virtual methods
.method public addInternalHighlightListener(Lcom/htc/painting/penmenu15/core/InternalHLConfigListener;)V
    .locals 1
    .parameter "list"

    .prologue
    .line 737
    if-eqz p1, :cond_0

    .line 738
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mInternalHLListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    :cond_0
    return-void
.end method

.method public addShowHideMonitor(Lcom/htc/painting/penmenu15/PenMenu$PenMenuShowHideMonitor;)V
    .locals 1
    .parameter "monitor"

    .prologue
    .line 795
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mMonitors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 796
    return-void
.end method

.method public findPenAndApply(Lcom/htc/painting/penmenu15/core/PenRepresentation;)Lcom/htc/painting/penmenu15/core/PenRepresentation;
    .locals 3
    .parameter "pen"

    .prologue
    .line 142
    iget-object v2, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mPenTypes:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 143
    iget-object v2, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mPenTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu15/core/PenRepresentation;

    .line 144
    .local v1, target:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    invoke-interface {p1, v1}, Lcom/htc/painting/penmenu15/core/PenRepresentation;->samePenType(Lcom/htc/painting/penmenu15/core/PenRepresentation;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    invoke-interface {v1, p1}, Lcom/htc/painting/penmenu15/core/PenRepresentation;->copyFrom(Lcom/htc/painting/penmenu15/core/PenRepresentation;)Z

    .line 150
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #target:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConfigState()I
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/htc/painting/penmenu15/transition/StateManager;->mCurrentState:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mMenuConfigState:I

    goto :goto_0
.end method

.method public getEraserMode()Z
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mQuickEraserMode:Z

    return v0
.end method

.method public getHLConfig()Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mHLConfig:Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;

    return-object v0
.end method

.method public getPenTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu15/core/PenRepresentation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mPenTypes:Ljava/util/List;

    return-object v0
.end method

.method public getStickyShow()Z
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mStickyShow:Z

    return v0
.end method

.method public getStickyStrokeVisible()Z
    .locals 1

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mStickyStrokeVisible:Z

    return v0
.end method

.method public initialize(Lcom/htc/painting/penmenu15/view/ActionPanel;Lcom/htc/painting/penmenu15/core/CurrentPenContainer;)V
    .locals 1
    .parameter "panel"
    .parameter "curPen"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mActionPanel:Lcom/htc/painting/penmenu15/view/ActionPanel;

    .line 103
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mActionPanel:Lcom/htc/painting/penmenu15/view/ActionPanel;

    invoke-virtual {v0, p0}, Lcom/htc/painting/penmenu15/view/ActionPanel;->addOnActionPanelClickedListener(Lcom/htc/painting/penmenu15/view/ActionPanel$OnActionPanelClickedListener;)V

    .line 104
    iput-object p2, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    .line 105
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    invoke-virtual {v0, p0}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->addCurrentPenChangedListener(Lcom/htc/painting/penmenu15/core/CurrentPenContainer$CurrentPenChangedListener;)V

    .line 106
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->applyPenToPaintingView()V

    .line 107
    return-void
.end method

.method public isBlockedBy(Ljava/lang/String;)Z
    .locals 1
    .parameter "conditionKey"

    .prologue
    .line 529
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mBlockConditions:Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockConditions;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockConditions;->isBlocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isContentReady()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mDestroyed:Z

    return v0
.end method

.method public isHighlightEnabled()Z
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mHLConfig:Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStrokeVisible()Z
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->getStickyStrokeVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "key_force_off"

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->isBlockedBy(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mStickyShow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mBlockConditions:Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockConditions;

    #calls: Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockConditions;->isBlocked()Z
    invoke-static {v0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockConditions;->access$000(Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockConditions;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markDestroyed()V
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mDestroyed:Z

    .line 306
    return-void
.end method

.method public onActionPanelClicked(I)V
    .locals 2
    .parameter "actionId"

    .prologue
    .line 676
    const/4 v0, 0x0

    .line 677
    .local v0, ignore:Z
    iget-object v1, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mActionListener:Lcom/htc/painting/penmenu15/OnActionPerformListener;

    if-eqz v1, :cond_0

    .line 678
    iget-object v1, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mActionListener:Lcom/htc/painting/penmenu15/OnActionPerformListener;

    invoke-interface {v1, p1}, Lcom/htc/painting/penmenu15/OnActionPerformListener;->onActionPerform(I)Z

    move-result v0

    .line 680
    :cond_0
    if-eqz v0, :cond_2

    .line 703
    :cond_1
    :goto_0
    return-void

    .line 683
    :cond_2
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 690
    :sswitch_0
    iget-object v1, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    if-eqz v1, :cond_1

    .line 691
    iget-object v1, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    invoke-interface {v1}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView;->undo()V

    goto :goto_0

    .line 685
    :sswitch_1
    iget-object v1, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    if-eqz v1, :cond_1

    .line 686
    iget-object v1, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    invoke-interface {v1}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView;->clearAll()V

    goto :goto_0

    .line 695
    :sswitch_2
    iget-object v1, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    if-eqz v1, :cond_1

    .line 696
    iget-object v1, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    invoke-interface {v1}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView;->redo()V

    goto :goto_0

    .line 700
    :sswitch_3
    iget-boolean v1, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mStickyStrokeVisible:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->setStickyStrokeVisible(Z)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 683
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_3
        0x12c -> :sswitch_1
        0x190 -> :sswitch_2
    .end sparse-switch
.end method

.method public onClearAll()V
    .locals 0

    .prologue
    .line 652
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->refreshActionPanelButtons()V

    .line 653
    return-void
.end method

.method public onCurrentPenChanged(Ljava/lang/String;Lcom/htc/painting/penmenu15/core/PenRepresentation;Lcom/htc/painting/penmenu15/core/PenRepresentation;)V
    .locals 5
    .parameter "key"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 577
    iget-boolean v3, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mQuickEraserMode:Z

    if-nez v3, :cond_0

    .line 578
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->applyPenToPaintingView()V

    .line 581
    :cond_0
    iget-object v3, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mHLConfig:Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;

    if-eqz v3, :cond_2

    .line 582
    const/4 v0, 0x0

    .line 583
    .local v0, highlighterOn:Z
    iget-object v3, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->getPenType()Lcom/htc/painting/penmenu15/core/PenType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/painting/penmenu15/core/PenType;->isHighlighter()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 584
    const/4 v0, 0x1

    .line 587
    :cond_1
    iget-object v3, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mHLConfig:Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;->getConfigState()I

    move-result v2

    .line 588
    .local v2, oldState:I
    if-eqz v0, :cond_3

    const/16 v1, 0x65

    .line 590
    .local v1, newState:I
    :goto_0
    if-eq v2, v1, :cond_2

    .line 591
    iget-object v3, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mHLConfig:Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;

    const-string v4, "com.htc.penmenu"

    invoke-virtual {v3, v1, v4}, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;->setConfigState(ILjava/lang/String;)V

    .line 594
    .end local v0           #highlighterOn:Z
    .end local v1           #newState:I
    .end local v2           #oldState:I
    :cond_2
    return-void

    .line 588
    .restart local v0       #highlighterOn:Z
    .restart local v2       #oldState:I
    :cond_3
    const/16 v1, 0x64

    goto :goto_0
.end method

.method public onHighlightOptionsChanged(Ljava/lang/String;Lcom/htc/painting/penmenu/highlight/IHighlightConfiguration;Ljava/lang/String;)V
    .locals 3
    .parameter "changedOption"
    .parameter "config"
    .parameter "modifierKey"

    .prologue
    .line 778
    const-string v0, "Highlight"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PenMenu onHighlightOptionsChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    sget-object v0, Lcom/htc/painting/penmenu15/core/InternalHLConfigListener$CHANGE_TYPE;->COLOR:Lcom/htc/painting/penmenu15/core/InternalHLConfigListener$CHANGE_TYPE;

    invoke-direct {p0, v0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->notifyInternalHLListeners(Lcom/htc/painting/penmenu15/core/InternalHLConfigListener$CHANGE_TYPE;)V

    .line 780
    return-void
.end method

.method public onHighlightStateChanged(ILcom/htc/painting/penmenu/highlight/IHighlightConfiguration;Ljava/lang/String;)V
    .locals 3
    .parameter "newState"
    .parameter "config"
    .parameter "modifierKey"

    .prologue
    .line 767
    const-string v0, "Highlight"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PenMenu onHighlightStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    sget-object v0, Lcom/htc/painting/penmenu15/core/InternalHLConfigListener$CHANGE_TYPE;->STATE:Lcom/htc/painting/penmenu15/core/InternalHLConfigListener$CHANGE_TYPE;

    invoke-direct {p0, v0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->notifyInternalHLListeners(Lcom/htc/painting/penmenu15/core/InternalHLConfigListener$CHANGE_TYPE;)V

    .line 769
    return-void
.end method

.method public onRedo()V
    .locals 0

    .prologue
    .line 643
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->refreshActionPanelButtons()V

    .line 644
    return-void
.end method

.method public onStrokeBegin(Lcom/htc/painting/engine/StrokeEventArg$StrokeMoveEventArg;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 602
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->isPinned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->setStickyShow(ZZ)V

    .line 606
    :cond_0
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->refreshActionPanelButtons()V

    .line 607
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    if-eqz v0, :cond_1

    .line 608
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->markLastUsed(J)V

    .line 610
    :cond_1
    return-void
.end method

.method public onStrokeEnd(Lcom/htc/painting/engine/StrokeEventArg$StrokeMoveEventArg;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 618
    return-void
.end method

.method public onStrokeStatusChange(Lcom/htc/painting/engine/StrokeEventArg$StrokeStatusChangeEventArg;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 626
    return-void
.end method

.method public onUndo()V
    .locals 0

    .prologue
    .line 634
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->refreshActionPanelButtons()V

    .line 635
    return-void
.end method

.method public removeInternalHighlightListener(Lcom/htc/painting/penmenu15/core/InternalHLConfigListener;)V
    .locals 1
    .parameter "list"

    .prologue
    .line 747
    if-eqz p1, :cond_0

    .line 748
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mInternalHLListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 750
    :cond_0
    return-void
.end method

.method public removeShowHideMonitor(Lcom/htc/painting/penmenu15/PenMenu$PenMenuShowHideMonitor;)V
    .locals 1
    .parameter "monitor"

    .prologue
    .line 803
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mMonitors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 804
    return-void
.end method

.method public setBlockCondition(Ljava/lang/String;Z)V
    .locals 3
    .parameter "conditionKey"
    .parameter "block"

    .prologue
    const/4 v2, 0x1

    .line 510
    if-ne p2, v2, :cond_2

    .line 511
    iget-object v1, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mBlockConditions:Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockConditions;

    invoke-virtual {v1, p1}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockConditions;->block(Ljava/lang/String;)V

    .line 518
    :cond_0
    :goto_0
    const-string v1, "key_force_off"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 519
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->onStrokeVisibilityChanged()V

    .line 521
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->onShowStateChanged(Z)V

    .line 522
    return-void

    .line 513
    :cond_2
    iget-object v1, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mBlockConditions:Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockConditions;

    invoke-virtual {v1, p1}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockConditions;->unblock(Ljava/lang/String;)Z

    move-result v0

    .line 514
    .local v0, unblocked:Z
    if-ne v0, v2, :cond_0

    .line 515
    iget-object v1, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mBlockConditions:Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockConditions;

    #calls: Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockConditions;->unBlockInPersistentBlockConditions()V
    invoke-static {v1}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockConditions;->access$100(Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockConditions;)V

    goto :goto_0
.end method

.method public setEraserMode(ZI)V
    .locals 4
    .parameter "eraserOn"
    .parameter "minSize"

    .prologue
    .line 232
    iput-boolean p1, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mQuickEraserMode:Z

    .line 238
    new-instance v1, Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct {v1}, Lcom/htc/painting/engine/StrokeProperties;-><init>()V

    .line 240
    .local v1, sp:Lcom/htc/painting/engine/StrokeProperties;
    if-eqz p1, :cond_1

    .line 241
    iget-object v2, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    if-eqz v2, :cond_0

    .line 242
    iget-object v2, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->getSize()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4020

    mul-float/2addr v2, v3

    int-to-float v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 251
    .local v0, eraserSize:F
    invoke-virtual {v1, v0}, Lcom/htc/painting/engine/StrokeProperties;->setWidth(F)V

    .line 252
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/painting/engine/StrokeProperties;->setEraser(Z)V

    .line 253
    iget-object v2, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    invoke-interface {v2, v1}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView;->setStrokeProperties(Lcom/htc/painting/engine/StrokeProperties;)V

    .line 261
    .end local v0           #eraserSize:F
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->applyPenToPaintingView()V

    goto :goto_0
.end method

.method public setHighLightConfiguration(Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;)V
    .locals 1
    .parameter "highlightConfig"

    .prologue
    .line 714
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mHLConfig:Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mHLConfig:Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;

    invoke-virtual {v0, p0}, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;->removeHighlightConfigListener(Lcom/htc/painting/penmenu/highlight/IHighlightConfiguration$IHightlightConfigListener;)V

    .line 717
    :cond_0
    iput-object p1, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mHLConfig:Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;

    .line 718
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mHLConfig:Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;

    if-eqz v0, :cond_1

    .line 719
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mHLConfig:Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;

    invoke-virtual {v0, p0}, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;->addHighlightConfigListener(Lcom/htc/painting/penmenu/highlight/IHighlightConfiguration$IHightlightConfigListener;)V

    .line 721
    :cond_1
    sget-object v0, Lcom/htc/painting/penmenu15/core/InternalHLConfigListener$CHANGE_TYPE;->PROVISION:Lcom/htc/painting/penmenu15/core/InternalHLConfigListener$CHANGE_TYPE;

    invoke-direct {p0, v0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->notifyInternalHLListeners(Lcom/htc/painting/penmenu15/core/InternalHLConfigListener$CHANGE_TYPE;)V

    .line 722
    return-void
.end method

.method public setOnActionPerformListener(Lcom/htc/painting/penmenu15/OnActionPerformListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 667
    iput-object p1, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mActionListener:Lcom/htc/painting/penmenu15/OnActionPerformListener;

    .line 668
    return-void
.end method

.method public setPaintingView(Lcom/htc/painting/engine/IStrokeNotifyPaintingView;)V
    .locals 1
    .parameter "paintingView"

    .prologue
    .line 322
    iput-object p1, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    .line 323
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    invoke-interface {v0, p0}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView;->setOnStrokeListener(Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;)V

    .line 326
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mPaintingView:Lcom/htc/painting/engine/IStrokeNotifyPaintingView;

    invoke-interface {v0, p0}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView;->setOnPaintingViewListener(Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;)V

    .line 329
    :cond_0
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->applyPenToPaintingView()V

    .line 330
    return-void
.end method

.method public setPenTypes(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu15/core/PenRepresentation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, penTypes:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/core/PenRepresentation;>;"
    iput-object p1, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mPenTypes:Ljava/util/List;

    .line 123
    return-void
.end method

.method public setState(IZ)V
    .locals 0
    .parameter "state"
    .parameter "playAnimation"

    .prologue
    .line 212
    iput p1, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mMenuConfigState:I

    .line 213
    invoke-direct {p0, p2}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->onShowStateChanged(Z)V

    .line 214
    return-void
.end method

.method public setStickyShow(ZZ)V
    .locals 1
    .parameter "show"
    .parameter "playEffect"

    .prologue
    .line 276
    iput-boolean p1, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mStickyShow:Z

    .line 277
    if-eqz p1, :cond_0

    .line 278
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mBlockConditions:Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockConditions;

    #calls: Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockConditions;->unBlockInPersistentBlockConditions()V
    invoke-static {v0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockConditions;->access$100(Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockConditions;)V

    .line 280
    :cond_0
    invoke-direct {p0, p2}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->onShowStateChanged(Z)V

    .line 281
    return-void
.end method

.method public setStickyStrokeVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 359
    iput-boolean p1, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->mStickyStrokeVisible:Z

    .line 362
    if-eqz p1, :cond_0

    .line 363
    const-string v0, "key_force_off"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->setBlockCondition(Ljava/lang/String;Z)V

    .line 365
    :cond_0
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager;->onStrokeVisibilityChanged()V

    .line 366
    return-void
.end method
