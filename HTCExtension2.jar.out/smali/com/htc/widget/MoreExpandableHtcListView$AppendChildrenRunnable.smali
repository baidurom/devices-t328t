.class Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;
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
    name = "AppendChildrenRunnable"
.end annotation


# static fields
.field private static final MOVE_MODE:I = 0x1

.field private static final STOP_MODE:I


# instance fields
.field private mMode:I

.field mNewChildren:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRunnableIndex:I

.field mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

.field final synthetic this$0:Lcom/htc/widget/MoreExpandableHtcListView;


# direct methods
.method private constructor <init>(Lcom/htc/widget/MoreExpandableHtcListView;)V
    .locals 1
    .parameter

    .prologue
    .line 702
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 704
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    .line 707
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->mNewChildren:Ljava/util/LinkedList;

    .line 711
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->mMode:I

    .line 714
    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->mRunnableIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 702
    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;)V

    return-void
.end method


# virtual methods
.method getRunnableIndex()I
    .locals 1

    .prologue
    .line 717
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->mRunnableIndex:I

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    const v3, 0x7fffffff

    .line 752
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->mMode:I

    if-nez v0, :cond_0

    .line 754
    iput v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->mRunnableIndex:I

    .line 755
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->ResetActiveRunnableCount()V
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$900(Lcom/htc/widget/MoreExpandableHtcListView;)V

    .line 783
    :goto_0
    return-void

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationRunning:Z
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1000(Lcom/htc/widget/MoreExpandableHtcListView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->mRunnableIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->isAnyRunnableBefore(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 759
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 762
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->mMode:I

    .line 763
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildrenCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 764
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->mNewChildren:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->setHideViewFlag(II)V

    .line 765
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->mNewChildren:Ljava/util/LinkedList;

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->appendChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 766
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    const/4 v1, 0x1

    #setter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationRunning:Z
    invoke-static {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1002(Lcom/htc/widget/MoreExpandableHtcListView;Z)Z

    .line 767
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;
    invoke-static {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v1, v2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getIndexOfMoreExpandableItemInfo(Lcom/htc/widget/MoreExpandableItemInfo;)I

    move-result v1

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->setToTop(I)V
    invoke-static {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1400(Lcom/htc/widget/MoreExpandableHtcListView;I)V

    .line 769
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    #setter for: Lcom/htc/widget/MoreExpandableHtcListView;->mExpandedTargetItem:Lcom/htc/widget/MoreExpandableItemInfo;
    invoke-static {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1502(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableItemInfo;)Lcom/htc/widget/MoreExpandableItemInfo;

    .line 770
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v0, v0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendChildrenIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->mNewChildren:Ljava/util/LinkedList;

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;->start(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    .line 780
    :goto_1
    iput v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->mRunnableIndex:I

    .line 781
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->ResetActiveRunnableCount()V
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$900(Lcom/htc/widget/MoreExpandableHtcListView;)V

    goto :goto_0

    .line 773
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->unSetHideViewFlag()V

    goto :goto_1

    .line 776
    :cond_4
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->mNewChildren:Ljava/util/LinkedList;

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->appendChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)Z

    .line 777
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->resetFooterHeight()V
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1300(Lcom/htc/widget/MoreExpandableHtcListView;)V

    goto :goto_1
.end method

.method public start(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V
    .locals 2
    .parameter "self"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 727
    .local p2, newChildren:Ljava/util/LinkedList;,"Ljava/util/LinkedList<+Lcom/htc/widget/MoreExpandableItemInfo;>;"
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    if-nez v0, :cond_1

    .line 728
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    .line 729
    iput-object p2, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->mNewChildren:Ljava/util/LinkedList;

    .line 740
    :goto_0
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->mRunnableIndex:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 741
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$804(Lcom/htc/widget/MoreExpandableHtcListView;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->mRunnableIndex:I

    .line 743
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->mMode:I

    .line 744
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    .line 745
    return-void

    .line 730
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 731
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->mNewChildren:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 733
    :cond_2
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    .line 734
    iput-object p2, p0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->mNewChildren:Ljava/util/LinkedList;

    goto :goto_0
.end method
