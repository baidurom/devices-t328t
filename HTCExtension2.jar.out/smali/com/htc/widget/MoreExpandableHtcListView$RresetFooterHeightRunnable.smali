.class Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;
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
    name = "RresetFooterHeightRunnable"
.end annotation


# static fields
.field private static final MOVE_MODE:I = 0x1

.field private static final STOP_MODE:I


# instance fields
.field private mMode:I

.field private mRunnableIndex:I

.field final synthetic this$0:Lcom/htc/widget/MoreExpandableHtcListView;


# direct methods
.method private constructor <init>(Lcom/htc/widget/MoreExpandableHtcListView;)V
    .locals 1
    .parameter

    .prologue
    .line 537
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 541
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;->mMode:I

    .line 544
    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;->mRunnableIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 537
    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;)V

    return-void
.end method


# virtual methods
.method getRunnableIndex()I
    .locals 1

    .prologue
    .line 547
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;->mRunnableIndex:I

    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    const v2, 0x7fffffff

    .line 568
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;->mMode:I

    if-nez v0, :cond_0

    .line 570
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;->mRunnableIndex:I

    .line 571
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->ResetActiveRunnableCount()V
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$900(Lcom/htc/widget/MoreExpandableHtcListView;)V

    .line 583
    :goto_0
    return-void

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationRunning:Z
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1000(Lcom/htc/widget/MoreExpandableHtcListView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;->mRunnableIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->isAnyRunnableBefore(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 578
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->adjustFooterHeight()V
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1100(Lcom/htc/widget/MoreExpandableHtcListView;)V

    .line 580
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;->mRunnableIndex:I

    .line 581
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->ResetActiveRunnableCount()V
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$900(Lcom/htc/widget/MoreExpandableHtcListView;)V

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 556
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;->mMode:I

    .line 558
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$804(Lcom/htc/widget/MoreExpandableHtcListView;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;->mRunnableIndex:I

    .line 560
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    .line 561
    return-void
.end method
