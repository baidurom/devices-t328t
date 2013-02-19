.class Lcom/htc/fragment/widget/FastScroller$RecycleBin;
.super Ljava/lang/Object;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fragment/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private final mScrapHeap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/fragment/widget/FastScroller;


# direct methods
.method constructor <init>(Lcom/htc/fragment/widget/FastScroller;)V
    .locals 1
    .parameter

    .prologue
    .line 2597
    iput-object p1, p0, Lcom/htc/fragment/widget/FastScroller$RecycleBin;->this$0:Lcom/htc/fragment/widget/FastScroller;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2598
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/FastScroller$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .prologue
    .line 2623
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    .line 2624
    .local v0, scrapHeap:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/view/View;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2625
    return-void
.end method

.method get(I)Landroid/view/View;
    .locals 2
    .parameter "position"

    .prologue
    .line 2611
    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2612
    .local v0, result:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2619
    :cond_0
    return-object v0
.end method

.method public put(ILandroid/view/View;)V
    .locals 1
    .parameter "position"
    .parameter "v"

    .prologue
    .line 2605
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2606
    return-void
.end method
