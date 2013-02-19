.class Lcom/htc/widget/HtcAbsListView$FlingRunnable$1;
.super Ljava/lang/Object;
.source "HtcAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcAbsListView$FlingRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/widget/HtcAbsListView$FlingRunnable;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcAbsListView$FlingRunnable;)V
    .locals 0
    .parameter

    .prologue
    .line 4082
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable$1;->this$1:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 4084
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable$1;->this$1:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    iget-object v4, v4, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mActivePointerId:I
    invoke-static {v4}, Lcom/htc/widget/HtcAbsListView;->access$800(Lcom/htc/widget/HtcAbsListView;)I

    move-result v0

    .line 4085
    .local v0, activeId:I
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable$1;->this$1:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    iget-object v4, v4, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v4}, Lcom/htc/widget/HtcAbsListView;->access$900(Lcom/htc/widget/HtcAbsListView;)Landroid/view/VelocityTracker;

    move-result-object v2

    .line 4086
    .local v2, vt:Landroid/view/VelocityTracker;
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable$1;->this$1:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    #getter for: Lcom/htc/widget/HtcAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v4}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->access$1000(Lcom/htc/widget/HtcAbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v1

    .line 4087
    .local v1, scroller:Landroid/widget/OverScroller;
    if-eqz v2, :cond_0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 4103
    :cond_0
    :goto_0
    return-void

    .line 4091
    :cond_1
    const/16 v4, 0x3e8

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable$1;->this$1:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    iget-object v5, v5, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mMaximumVelocity:I
    invoke-static {v5}, Lcom/htc/widget/HtcAbsListView;->access$1100(Lcom/htc/widget/HtcAbsListView;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4092
    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    neg-float v3, v4

    .line 4094
    .local v3, yvel:F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable$1;->this$1:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    iget-object v5, v5, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mMinimumVelocity:I
    invoke-static {v5}, Lcom/htc/widget/HtcAbsListView;->access$1200(Lcom/htc/widget/HtcAbsListView;)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Landroid/widget/OverScroller;->isScrollingInDirection(FF)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4097
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable$1;->this$1:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    iget-object v4, v4, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    const-wide/16 v5, 0x28

    invoke-virtual {v4, p0, v5, v6}, Lcom/htc/widget/HtcAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 4099
    :cond_2
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable$1;->this$1:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-virtual {v4}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->endFling()V

    .line 4100
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable$1;->this$1:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    iget-object v4, v4, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v5, 0x3

    iput v5, v4, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    .line 4101
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$FlingRunnable$1;->this$1:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    iget-object v4, v4, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAbsListView;->reportScrollStateChange(I)V

    goto :goto_0
.end method
