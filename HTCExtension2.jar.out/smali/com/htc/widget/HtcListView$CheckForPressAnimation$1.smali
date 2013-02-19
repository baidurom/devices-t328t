.class Lcom/htc/widget/HtcListView$CheckForPressAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HtcListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/HtcListView$CheckForPressAnimation;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/widget/HtcListView$CheckForPressAnimation;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcListView$CheckForPressAnimation;)V
    .locals 0
    .parameter

    .prologue
    .line 4231
    iput-object p1, p0, Lcom/htc/widget/HtcListView$CheckForPressAnimation$1;->this$1:Lcom/htc/widget/HtcListView$CheckForPressAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 4234
    iget-object v0, p0, Lcom/htc/widget/HtcListView$CheckForPressAnimation$1;->this$1:Lcom/htc/widget/HtcListView$CheckForPressAnimation;

    iget-object v0, v0, Lcom/htc/widget/HtcListView$CheckForPressAnimation;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mPressMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 4235
    iget-object v0, p0, Lcom/htc/widget/HtcListView$CheckForPressAnimation$1;->this$1:Lcom/htc/widget/HtcListView$CheckForPressAnimation;

    iget-object v0, v0, Lcom/htc/widget/HtcListView$CheckForPressAnimation;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mPressMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 4236
    :cond_0
    return-void
.end method
