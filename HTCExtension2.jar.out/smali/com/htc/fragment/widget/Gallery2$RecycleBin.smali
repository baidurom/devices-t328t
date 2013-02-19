.class public Lcom/htc/fragment/widget/Gallery2$RecycleBin;
.super Ljava/lang/Object;
.source "Gallery2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fragment/widget/Gallery2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
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

.field final synthetic this$0:Lcom/htc/fragment/widget/Gallery2;


# direct methods
.method protected constructor <init>(Lcom/htc/fragment/widget/Gallery2;)V
    .locals 1
    .parameter

    .prologue
    .line 2039
    iput-object p1, p0, Lcom/htc/fragment/widget/Gallery2$RecycleBin;->this$0:Lcom/htc/fragment/widget/Gallery2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2040
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/Gallery2$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 8

    .prologue
    .line 2064
    iget-object v2, p0, Lcom/htc/fragment/widget/Gallery2$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    .line 2065
    .local v2, scrapHeap:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/view/View;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2066
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2067
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 2068
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 2070
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_0

    .line 2073
    iget-object v4, p0, Lcom/htc/fragment/widget/Gallery2$RecycleBin;->this$0:Lcom/htc/fragment/widget/Gallery2;

    iget-object v4, v4, Lcom/htc/fragment/widget/Gallery2;->mHook:Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

    const/4 v5, -0x1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v4, v3, v5, v6, v7}, Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 2066
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2082
    .end local v3           #view:Landroid/view/View;
    :cond_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 2084
    return-void
.end method

.method get(I)Landroid/view/View;
    .locals 2
    .parameter "position"

    .prologue
    .line 2051
    iget-object v1, p0, Lcom/htc/fragment/widget/Gallery2$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2052
    .local v0, result:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2054
    iget-object v1, p0, Lcom/htc/fragment/widget/Gallery2$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 2059
    :cond_0
    return-object v0
.end method

.method put(ILandroid/view/View;)V
    .locals 1
    .parameter "position"
    .parameter "v"

    .prologue
    .line 2043
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery2$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2047
    return-void
.end method
