.class Landroid/widget/ListView$CheckForPressAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ListView$CheckForPressAnimation;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/ListView$CheckForPressAnimation;


# direct methods
.method constructor <init>(Landroid/widget/ListView$CheckForPressAnimation;)V
    .locals 0
    .parameter

    .prologue
    .line 4116
    iput-object p1, p0, Landroid/widget/ListView$CheckForPressAnimation$1;->this$1:Landroid/widget/ListView$CheckForPressAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 4119
    iget-object v0, p0, Landroid/widget/ListView$CheckForPressAnimation$1;->this$1:Landroid/widget/ListView$CheckForPressAnimation;

    iget-object v0, v0, Landroid/widget/ListView$CheckForPressAnimation;->this$0:Landroid/widget/ListView;

    iget-object v0, v0, Landroid/widget/ListView;->mPressMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 4120
    iget-object v0, p0, Landroid/widget/ListView$CheckForPressAnimation$1;->this$1:Landroid/widget/ListView$CheckForPressAnimation;

    iget-object v0, v0, Landroid/widget/ListView$CheckForPressAnimation;->this$0:Landroid/widget/ListView;

    iget-object v0, v0, Landroid/widget/ListView;->mPressMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 4121
    :cond_0
    return-void
.end method
