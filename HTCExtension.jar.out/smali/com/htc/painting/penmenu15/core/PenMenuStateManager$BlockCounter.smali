.class Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockCounter;
.super Ljava/lang/Object;
.source "PenMenuStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu15/core/PenMenuStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BlockCounter"
.end annotation


# instance fields
.field private mCount:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 534
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 535
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockCounter;->mCount:I

    return-void
.end method


# virtual methods
.method public block()V
    .locals 1

    .prologue
    .line 550
    iget v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockCounter;->mCount:I

    if-gez v0, :cond_0

    .line 551
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockCounter;->mCount:I

    .line 554
    :cond_0
    iget v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockCounter;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockCounter;->mCount:I

    .line 555
    return-void
.end method

.method public isBlocked()Z
    .locals 1

    .prologue
    .line 542
    iget v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockCounter;->mCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unblock(Z)Z
    .locals 3
    .parameter "force"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 562
    iget v2, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockCounter;->mCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockCounter;->mCount:I

    .line 563
    iget v2, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockCounter;->mCount:I

    if-ltz v2, :cond_0

    if-ne p1, v0, :cond_1

    .line 564
    :cond_0
    iput v1, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockCounter;->mCount:I

    .line 567
    :cond_1
    iget v2, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockCounter;->mCount:I

    if-nez v2, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
