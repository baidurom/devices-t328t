.class Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;
.super Ljava/lang/Object;
.source "MoreExpandableHtcListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/MoreExpandableHtcListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppendRootRunnable"
.end annotation


# static fields
.field private static final MOVE_MODE:I = 0x1

.field private static final STOP_MODE:I


# instance fields
.field mItemList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mRunnableIndex:I

.field final synthetic this$0:Lcom/htc/widget/MoreExpandableHtcListView;


# direct methods
.method private constructor <init>(Lcom/htc/widget/MoreExpandableHtcListView;)V
    .locals 1
    .parameter

    .prologue
    .line 970
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 973
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;->mItemList:Ljava/util/LinkedList;

    .line 978
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;->mMode:I

    .line 981
    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;->mRunnableIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 970
    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;)V

    return-void
.end method


# virtual methods
.method getRunnableIndex()I
    .locals 1

    .prologue
    .line 984
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;->mRunnableIndex:I

    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    const v2, 0x7fffffff

    .line 1010
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;->mMode:I

    if-nez v0, :cond_0

    .line 1012
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;->mRunnableIndex:I

    .line 1013
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->ResetActiveRunnableCount()V
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$900(Lcom/htc/widget/MoreExpandableHtcListView;)V

    .line 1030
    :goto_0
    return-void

    .line 1016
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationRunning:Z
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1000(Lcom/htc/widget/MoreExpandableHtcListView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;->mRunnableIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->isAnyRunnableBefore(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1017
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1020
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->appendRoot(Ljava/util/LinkedList;)V

    .line 1021
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;->mMode:I

    .line 1023
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1025
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->resetFooterHeight()V
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1300(Lcom/htc/widget/MoreExpandableHtcListView;)V

    .line 1027
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;->mRunnableIndex:I

    .line 1028
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->ResetActiveRunnableCount()V
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$900(Lcom/htc/widget/MoreExpandableHtcListView;)V

    goto :goto_0
.end method

.method public start(Ljava/util/LinkedList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 995
    .local p1, itemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<+Lcom/htc/widget/MoreExpandableItemInfo;>;"
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;->mItemList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 997
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;->mMode:I

    .line 999
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;->mRunnableIndex:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$804(Lcom/htc/widget/MoreExpandableHtcListView;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;->mRunnableIndex:I

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    .line 1003
    return-void
.end method
