.class Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;
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
    name = "DeleteItemRunnable"
.end annotation


# static fields
.field private static final MOVE_MODE:I = 0x1

.field private static final STOP_MODE:I


# instance fields
.field private mDeletePositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mPosition:I

.field private mRunnableIndex:I

.field final synthetic this$0:Lcom/htc/widget/MoreExpandableHtcListView;


# direct methods
.method private constructor <init>(Lcom/htc/widget/MoreExpandableHtcListView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1036
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1039
    iput v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;->mPosition:I

    .line 1040
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;->mDeletePositions:Ljava/util/ArrayList;

    .line 1045
    iput v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;->mMode:I

    .line 1048
    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;->mRunnableIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1036
    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;)V

    return-void
.end method


# virtual methods
.method getRunnableIndex()I
    .locals 1

    .prologue
    .line 1051
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;->mRunnableIndex:I

    return v0
.end method

.method public run()V
    .locals 5

    .prologue
    const v4, 0x7fffffff

    .line 1077
    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;->mMode:I

    if-nez v2, :cond_0

    .line 1079
    iput v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;->mRunnableIndex:I

    .line 1080
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->ResetActiveRunnableCount()V
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$900(Lcom/htc/widget/MoreExpandableHtcListView;)V

    .line 1100
    :goto_0
    return-void

    .line 1083
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationRunning:Z
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1000(Lcom/htc/widget/MoreExpandableHtcListView;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;->mRunnableIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->isAnyRunnableBefore(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1084
    :cond_1
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, p0, v3, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1089
    :cond_2
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;->mDeletePositions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1090
    .local v0, i:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/MoreExpandableBaseAdapter;->deleteItem(I)V

    goto :goto_1

    .line 1092
    .end local v0           #i:Ljava/lang/Integer;
    :cond_3
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;->mDeletePositions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1094
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;->mMode:I

    .line 1095
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->resetFooterHeight()V
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1300(Lcom/htc/widget/MoreExpandableHtcListView;)V

    .line 1097
    iput v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;->mRunnableIndex:I

    .line 1098
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->ResetActiveRunnableCount()V
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$900(Lcom/htc/widget/MoreExpandableHtcListView;)V

    goto :goto_0
.end method

.method public start(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1061
    iput p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;->mPosition:I

    .line 1062
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;->mDeletePositions:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1064
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;->mMode:I

    .line 1066
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;->mRunnableIndex:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$804(Lcom/htc/widget/MoreExpandableHtcListView;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;->mRunnableIndex:I

    .line 1069
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    .line 1070
    return-void
.end method
