.class Lcom/htc/widget/HtcExpandableListView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HtcExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/HtcExpandableListView;->releaseItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcExpandableListView;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcExpandableListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1933
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListView$2;->this$0:Lcom/htc/widget/HtcExpandableListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 1936
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$2;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v0, v0, Lcom/htc/widget/HtcExpandableListView;->mReleaseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 1937
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$2;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v0, v0, Lcom/htc/widget/HtcExpandableListView;->mReleaseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 1938
    :cond_0
    return-void
.end method
