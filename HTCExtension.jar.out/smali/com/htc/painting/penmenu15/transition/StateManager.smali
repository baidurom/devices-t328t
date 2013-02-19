.class public Lcom/htc/painting/penmenu15/transition/StateManager;
.super Ljava/lang/Object;
.source "StateManager.java"


# static fields
.field public static final STATE_UNKNOWN:I = -0x1


# instance fields
.field protected mConfigurations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/painting/penmenu15/transition/ViewConfig;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurrentState:Ljava/lang/Integer;

.field protected mLastState:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/transition/StateManager;->mConfigurations:Ljava/util/HashMap;

    .line 33
    return-void
.end method


# virtual methods
.method public addConfig(Lcom/htc/painting/penmenu15/transition/ViewConfig;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/painting/penmenu15/transition/StateManager;->mConfigurations:Ljava/util/HashMap;

    iget v1, p1, Lcom/htc/painting/penmenu15/transition/ViewConfig;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public getCurrenState()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/painting/penmenu15/transition/StateManager;->mCurrentState:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu15/transition/StateManager;->mCurrentState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getLastState()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/painting/penmenu15/transition/StateManager;->mLastState:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu15/transition/StateManager;->mLastState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public setState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/penmenu15/transition/StateManager;->setState(IZ)V

    .line 49
    return-void
.end method

.method public setState(IZ)V
    .locals 6
    .parameter "state"
    .parameter "playAnimation"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 57
    .local v1, newState:Ljava/lang/Integer;
    iget-object v5, p0, Lcom/htc/painting/penmenu15/transition/StateManager;->mConfigurations:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu15/transition/ViewConfig;

    .line 59
    .local v0, config:Lcom/htc/painting/penmenu15/transition/ViewConfig;
    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v5, p0, Lcom/htc/painting/penmenu15/transition/StateManager;->mCurrentState:Ljava/lang/Integer;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/painting/penmenu15/transition/StateManager;->mCurrentState:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, p1, :cond_1

    move v2, v3

    .line 63
    .local v2, stateChanged:Z
    :goto_1
    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    :goto_2
    invoke-virtual {v0, v3}, Lcom/htc/painting/penmenu15/transition/ViewConfig;->enforceConfig(Z)V

    .line 64
    iget-object v3, p0, Lcom/htc/painting/penmenu15/transition/StateManager;->mCurrentState:Ljava/lang/Integer;

    iput-object v3, p0, Lcom/htc/painting/penmenu15/transition/StateManager;->mLastState:Ljava/lang/Integer;

    .line 65
    iput-object v1, p0, Lcom/htc/painting/penmenu15/transition/StateManager;->mCurrentState:Ljava/lang/Integer;

    goto :goto_0

    .end local v2           #stateChanged:Z
    :cond_1
    move v2, v4

    .line 62
    goto :goto_1

    .restart local v2       #stateChanged:Z
    :cond_2
    move v3, v4

    .line 63
    goto :goto_2
.end method
