.class Lcom/htc/widget/HtcListView$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HtcListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/HtcListView;->startDelGoneAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcListView;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcListView;)V
    .locals 0
    .parameter

    .prologue
    .line 5154
    iput-object p1, p0, Lcom/htc/widget/HtcListView$7;->this$0:Lcom/htc/widget/HtcListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .parameter "animation"

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    .line 5158
    iget-object v3, p0, Lcom/htc/widget/HtcListView$7;->this$0:Lcom/htc/widget/HtcListView;

    #getter for: Lcom/htc/widget/HtcListView;->mDelViewList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/widget/HtcListView;->access$1900(Lcom/htc/widget/HtcListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5159
    .local v2, size:I
    const/4 v0, 0x0

    .line 5160
    .local v0, child:Landroid/view/View;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 5161
    iget-object v3, p0, Lcom/htc/widget/HtcListView$7;->this$0:Lcom/htc/widget/HtcListView;

    #getter for: Lcom/htc/widget/HtcListView;->mDelViewList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/widget/HtcListView;->access$1900(Lcom/htc/widget/HtcListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #child:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 5162
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleX(F)V

    .line 5163
    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleY(F)V

    .line 5164
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 5160
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5166
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/HtcListView$7;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v3, v3, Lcom/htc/widget/HtcListView;->mDeleteMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v3, :cond_1

    .line 5167
    iget-object v3, p0, Lcom/htc/widget/HtcListView$7;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v3, v3, Lcom/htc/widget/HtcListView;->mDeleteMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v3}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 5168
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcListView$7;->this$0:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 5169
    iget-object v3, p0, Lcom/htc/widget/HtcListView$7;->this$0:Lcom/htc/widget/HtcListView;

    iput-boolean v5, v3, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    .line 5170
    iget-object v3, p0, Lcom/htc/widget/HtcListView$7;->this$0:Lcom/htc/widget/HtcListView;

    iput-boolean v5, v3, Lcom/htc/widget/HtcListView;->mInDeleteAnimation:Z

    .line 5171
    iget-object v3, p0, Lcom/htc/widget/HtcListView$7;->this$0:Lcom/htc/widget/HtcListView;

    #getter for: Lcom/htc/widget/HtcListView;->mDelPosList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/widget/HtcListView;->access$2000(Lcom/htc/widget/HtcListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 5172
    iget-object v3, p0, Lcom/htc/widget/HtcListView$7;->this$0:Lcom/htc/widget/HtcListView;

    #getter for: Lcom/htc/widget/HtcListView;->mDelOriViewTopList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/widget/HtcListView;->access$2100(Lcom/htc/widget/HtcListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 5173
    iget-object v3, p0, Lcom/htc/widget/HtcListView$7;->this$0:Lcom/htc/widget/HtcListView;

    #getter for: Lcom/htc/widget/HtcListView;->mDelViewList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/widget/HtcListView;->access$1900(Lcom/htc/widget/HtcListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 5177
    :goto_1
    iget-object v3, p0, Lcom/htc/widget/HtcListView$7;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v3, v3, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/widget/HtcListView$7;->this$0:Lcom/htc/widget/HtcListView;

    #getter for: Lcom/htc/widget/HtcListView;->mOriAdapter:Landroid/widget/ListAdapter;
    invoke-static {v3}, Lcom/htc/widget/HtcListView;->access$2200(Lcom/htc/widget/HtcListView;)Landroid/widget/ListAdapter;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 5178
    iget-object v3, p0, Lcom/htc/widget/HtcListView$7;->this$0:Lcom/htc/widget/HtcListView;

    #getter for: Lcom/htc/widget/HtcListView;->mOriAdapter:Landroid/widget/ListAdapter;
    invoke-static {v3}, Lcom/htc/widget/HtcListView;->access$2200(Lcom/htc/widget/HtcListView;)Landroid/widget/ListAdapter;

    move-result-object v3

    instance-of v3, v3, Lcom/htc/widget/HtcExpandableListConnector;

    if-eqz v3, :cond_5

    .line 5179
    iget-object v3, p0, Lcom/htc/widget/HtcListView$7;->this$0:Lcom/htc/widget/HtcListView;

    #getter for: Lcom/htc/widget/HtcListView;->mOriAdapter:Landroid/widget/ListAdapter;
    invoke-static {v3}, Lcom/htc/widget/HtcListView;->access$2200(Lcom/htc/widget/HtcListView;)Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v3}, Lcom/htc/widget/HtcExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v3

    check-cast v3, Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 5187
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/htc/widget/HtcListView$7;->this$0:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/htc/widget/HtcListView$7;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v3, v3, Lcom/htc/widget/HtcAbsListView;->mDeleteAnimationListener:Lcom/htc/widget/HtcAbsListView$DeleteAnimationListener;

    if-eqz v3, :cond_3

    .line 5188
    iget-object v3, p0, Lcom/htc/widget/HtcListView$7;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v3, v3, Lcom/htc/widget/HtcAbsListView;->mDeleteAnimationListener:Lcom/htc/widget/HtcAbsListView$DeleteAnimationListener;

    invoke-interface {v3}, Lcom/htc/widget/HtcAbsListView$DeleteAnimationListener;->onAnimationEnd()V

    .line 5190
    :cond_3
    return-void

    .line 5175
    :cond_4
    iget-object v3, p0, Lcom/htc/widget/HtcListView$7;->this$0:Lcom/htc/widget/HtcListView;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/htc/widget/HtcListView;->mDelAnimationFlag:Z

    goto :goto_1

    .line 5180
    :cond_5
    iget-object v3, p0, Lcom/htc/widget/HtcListView$7;->this$0:Lcom/htc/widget/HtcListView;

    #getter for: Lcom/htc/widget/HtcListView;->mOriAdapter:Landroid/widget/ListAdapter;
    invoke-static {v3}, Lcom/htc/widget/HtcListView;->access$2200(Lcom/htc/widget/HtcListView;)Landroid/widget/ListAdapter;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/BaseAdapter;

    if-eqz v3, :cond_6

    .line 5181
    iget-object v3, p0, Lcom/htc/widget/HtcListView$7;->this$0:Lcom/htc/widget/HtcListView;

    #getter for: Lcom/htc/widget/HtcListView;->mOriAdapter:Landroid/widget/ListAdapter;
    invoke-static {v3}, Lcom/htc/widget/HtcListView;->access$2200(Lcom/htc/widget/HtcListView;)Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 5182
    :cond_6
    iget-object v3, p0, Lcom/htc/widget/HtcListView$7;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v3, v3, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    if-eqz v3, :cond_2

    .line 5183
    iget-object v3, p0, Lcom/htc/widget/HtcListView$7;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v3, v3, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;->onChanged()V

    goto :goto_2
.end method
