.class Lcom/htc/painting/penmenu/StateManager;
.super Ljava/lang/Object;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/penmenu/StateManager$BlockCounter;,
        Lcom/htc/painting/penmenu/StateManager$BlockConditions;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StateManager"


# instance fields
.field private mBlockConditions:Lcom/htc/painting/penmenu/StateManager$BlockConditions;

.field private mContext:Landroid/content/Context;

.field private mPenEnabled:Z

.field private mRawStickyState:Z

.field private mStickyMode:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/htc/painting/penmenu/StateManager$BlockConditions;

    invoke-direct {v0}, Lcom/htc/painting/penmenu/StateManager$BlockConditions;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu/StateManager;->mBlockConditions:Lcom/htc/painting/penmenu/StateManager$BlockConditions;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/painting/penmenu/StateManager;->mStickyMode:Z

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/painting/penmenu/StateManager;->mRawStickyState:Z

    .line 239
    return-void
.end method

.method private getPenEnabled()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/htc/painting/penmenu/StateManager;->mPenEnabled:Z

    if-nez v0, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/htc/painting/penmenu/StateManager;->penDownBefore()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/painting/penmenu/StateManager;->mPenEnabled:Z

    .line 143
    :cond_0
    iget-boolean v0, p0, Lcom/htc/painting/penmenu/StateManager;->mPenEnabled:Z

    return v0
.end method

.method private penDownBefore()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    .line 155
    .local v0, result:Z
    return v0
.end method


# virtual methods
.method public getRawStickyState()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/htc/painting/penmenu/StateManager;->mRawStickyState:Z

    return v0
.end method

.method public getStickyMode()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/htc/painting/penmenu/StateManager;->mStickyMode:Z

    return v0
.end method

.method public getStickyState()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/htc/painting/penmenu/StateManager;->mRawStickyState:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/painting/penmenu/StateManager;->getPenEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/penmenu/StateManager;->mContext:Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Lcom/htc/painting/penmenu/StateManager;->penDownBefore()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/painting/penmenu/StateManager;->mPenEnabled:Z

    .line 50
    return-void
.end method

.method public isBlocked(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/painting/penmenu/StateManager;->mBlockConditions:Lcom/htc/painting/penmenu/StateManager$BlockConditions;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu/StateManager$BlockConditions;->isBlocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setStickyState(Z)V
    .locals 0
    .parameter "shouldShow"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/htc/painting/penmenu/StateManager;->mRawStickyState:Z

    .line 58
    return-void
.end method

.method public updateBlockCondition(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "conditionKey"
    .parameter "block"

    .prologue
    const/4 v3, 0x1

    .line 73
    if-ne p2, v3, :cond_0

    .line 74
    iget-object v2, p0, Lcom/htc/painting/penmenu/StateManager;->mBlockConditions:Lcom/htc/painting/penmenu/StateManager$BlockConditions;

    invoke-virtual {v2, p1}, Lcom/htc/painting/penmenu/StateManager$BlockConditions;->block(Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x0

    .line 85
    .local v0, result:Z
    :goto_0
    return v0

    .line 77
    .end local v0           #result:Z
    :cond_0
    iget-object v2, p0, Lcom/htc/painting/penmenu/StateManager;->mBlockConditions:Lcom/htc/painting/penmenu/StateManager$BlockConditions;

    invoke-virtual {v2, p1}, Lcom/htc/painting/penmenu/StateManager$BlockConditions;->unblock(Ljava/lang/String;)Z

    move-result v1

    .line 78
    .local v1, unblocked:Z
    if-ne v1, v3, :cond_1

    iget-boolean v2, p0, Lcom/htc/painting/penmenu/StateManager;->mStickyMode:Z

    if-ne v2, v3, :cond_1

    .line 79
    const/4 v0, 0x1

    .restart local v0       #result:Z
    goto :goto_0

    .line 81
    .end local v0           #result:Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #result:Z
    goto :goto_0
.end method

.method public wouldShow()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 93
    iget-object v1, p0, Lcom/htc/painting/penmenu/StateManager;->mBlockConditions:Lcom/htc/painting/penmenu/StateManager$BlockConditions;

    #calls: Lcom/htc/painting/penmenu/StateManager$BlockConditions;->isBlocked()Z
    invoke-static {v1}, Lcom/htc/painting/penmenu/StateManager$BlockConditions;->access$000(Lcom/htc/painting/penmenu/StateManager$BlockConditions;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    iget-boolean v1, p0, Lcom/htc/painting/penmenu/StateManager;->mStickyMode:Z

    if-ne v1, v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/StateManager;->getStickyState()Z

    move-result v0

    .line 100
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
