.class Lcom/htc/view/table/AbstractTableView$SelectionPadding;
.super Ljava/lang/Object;
.source "AbstractTableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/view/table/AbstractTableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionPadding"
.end annotation


# instance fields
.field private bottomPadding:I

.field private leftPadding:I

.field private lock:Z

.field private rightPadding:I

.field final synthetic this$0:Lcom/htc/view/table/AbstractTableView;

.field private topPadding:I


# direct methods
.method public constructor <init>(Lcom/htc/view/table/AbstractTableView;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3732
    iput-object p1, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->this$0:Lcom/htc/view/table/AbstractTableView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3733
    iput-boolean v0, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->lock:Z

    .line 3734
    iput v0, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->leftPadding:I

    .line 3735
    iput v0, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->rightPadding:I

    .line 3736
    iput v0, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->topPadding:I

    .line 3737
    iput v0, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->bottomPadding:I

    .line 3738
    return-void
.end method


# virtual methods
.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 3798
    iget v0, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->bottomPadding:I

    return v0
.end method

.method public getLeftPadding()I
    .locals 1

    .prologue
    .line 3774
    iget v0, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->leftPadding:I

    return v0
.end method

.method public getRightPadding()I
    .locals 1

    .prologue
    .line 3790
    iget v0, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->rightPadding:I

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 3782
    iget v0, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->topPadding:I

    return v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 3758
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->lock:Z

    .line 3759
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1
    .parameter "leftPadding"
    .parameter "topPadding"
    .parameter "rightPadding"
    .parameter "bottomPadding"

    .prologue
    .line 3745
    iget-boolean v0, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->lock:Z

    if-nez v0, :cond_0

    .line 3746
    iput p1, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->leftPadding:I

    .line 3747
    iput p2, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->topPadding:I

    .line 3748
    iput p3, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->rightPadding:I

    .line 3749
    iput p4, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->bottomPadding:I

    .line 3751
    :cond_0
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 3766
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->lock:Z

    .line 3767
    return-void
.end method
