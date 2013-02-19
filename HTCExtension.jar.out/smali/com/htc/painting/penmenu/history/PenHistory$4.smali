.class Lcom/htc/painting/penmenu/history/PenHistory$4;
.super Ljava/lang/Object;
.source "PenHistory.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/painting/penmenu/history/PenHistory;->getHideBackgroundAnimation()Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/penmenu/history/PenHistory;


# direct methods
.method constructor <init>(Lcom/htc/painting/penmenu/history/PenHistory;)V
    .locals 0
    .parameter

    .prologue
    .line 535
    iput-object p1, p0, Lcom/htc/painting/penmenu/history/PenHistory$4;->this$0:Lcom/htc/painting/penmenu/history/PenHistory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory$4;->this$0:Lcom/htc/painting/penmenu/history/PenHistory;

    #getter for: Lcom/htc/painting/penmenu/history/PenHistory;->mBackgroundView:Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;
    invoke-static {v0}, Lcom/htc/painting/penmenu/history/PenHistory;->access$000(Lcom/htc/painting/penmenu/history/PenHistory;)Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/history/PenHistoryBackgroundView;->setVisibility(I)V

    .line 547
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory$4;->this$0:Lcom/htc/painting/penmenu/history/PenHistory;

    #getter for: Lcom/htc/painting/penmenu/history/PenHistory;->mOnCollapseListener:Lcom/htc/painting/penmenu/menu/OnCollapseListener;
    invoke-static {v0}, Lcom/htc/painting/penmenu/history/PenHistory;->access$200(Lcom/htc/painting/penmenu/history/PenHistory;)Lcom/htc/painting/penmenu/menu/OnCollapseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory$4;->this$0:Lcom/htc/painting/penmenu/history/PenHistory;

    #getter for: Lcom/htc/painting/penmenu/history/PenHistory;->mOnCollapseListener:Lcom/htc/painting/penmenu/menu/OnCollapseListener;
    invoke-static {v0}, Lcom/htc/painting/penmenu/history/PenHistory;->access$200(Lcom/htc/painting/penmenu/history/PenHistory;)Lcom/htc/painting/penmenu/menu/OnCollapseListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/painting/penmenu/menu/OnCollapseListener;->onCollapseFinish()V

    .line 550
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 542
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 538
    return-void
.end method
