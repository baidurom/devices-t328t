.class Lcom/htc/painting/penmenu/history/PenHistory$7;
.super Ljava/lang/Object;
.source "PenHistory.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/painting/penmenu/history/PenHistory;->startPenViewAnimation(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/penmenu/history/PenHistory;

.field final synthetic val$appearView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;


# direct methods
.method constructor <init>(Lcom/htc/painting/penmenu/history/PenHistory;Lcom/htc/painting/penmenu/history/PenHistoryPenView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 722
    iput-object p1, p0, Lcom/htc/painting/penmenu/history/PenHistory$7;->this$0:Lcom/htc/painting/penmenu/history/PenHistory;

    iput-object p2, p0, Lcom/htc/painting/penmenu/history/PenHistory$7;->val$appearView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 733
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory$7;->this$0:Lcom/htc/painting/penmenu/history/PenHistory;

    #getter for: Lcom/htc/painting/penmenu/history/PenHistory;->mSelectedPenView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    invoke-static {v0}, Lcom/htc/painting/penmenu/history/PenHistory;->access$300(Lcom/htc/painting/penmenu/history/PenHistory;)Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setVisibility(I)V

    .line 734
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory$7;->this$0:Lcom/htc/painting/penmenu/history/PenHistory;

    #getter for: Lcom/htc/painting/penmenu/history/PenHistory;->mState:Lcom/htc/painting/penmenu/history/PenHistory$State;
    invoke-static {v0}, Lcom/htc/painting/penmenu/history/PenHistory;->access$400(Lcom/htc/painting/penmenu/history/PenHistory;)Lcom/htc/painting/penmenu/history/PenHistory$State;

    move-result-object v0

    sget-object v1, Lcom/htc/painting/penmenu/history/PenHistory$State;->SHOW:Lcom/htc/painting/penmenu/history/PenHistory$State;

    if-ne v0, v1, :cond_0

    .line 735
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory$7;->val$appearView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-virtual {v0, v2}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setVisibility(I)V

    .line 736
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory$7;->val$appearView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    iget-object v1, p0, Lcom/htc/painting/penmenu/history/PenHistory$7;->this$0:Lcom/htc/painting/penmenu/history/PenHistory;

    iget-object v2, p0, Lcom/htc/painting/penmenu/history/PenHistory$7;->val$appearView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    #calls: Lcom/htc/painting/penmenu/history/PenHistory;->getAppearAnim(Lcom/htc/painting/penmenu/history/PenHistoryPenView;)Landroid/view/animation/Animation;
    invoke-static {v1, v2}, Lcom/htc/painting/penmenu/history/PenHistory;->access$500(Lcom/htc/painting/penmenu/history/PenHistory;Lcom/htc/painting/penmenu/history/PenHistoryPenView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 742
    :goto_0
    return-void

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory$7;->this$0:Lcom/htc/painting/penmenu/history/PenHistory;

    #setter for: Lcom/htc/painting/penmenu/history/PenHistory;->mAnimInProgress:Z
    invoke-static {v0, v2}, Lcom/htc/painting/penmenu/history/PenHistory;->access$102(Lcom/htc/painting/penmenu/history/PenHistory;Z)Z

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 730
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 725
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory$7;->this$0:Lcom/htc/painting/penmenu/history/PenHistory;

    #getter for: Lcom/htc/painting/penmenu/history/PenHistory;->mSelectedPenView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    invoke-static {v0}, Lcom/htc/painting/penmenu/history/PenHistory;->access$300(Lcom/htc/painting/penmenu/history/PenHistory;)Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setVisibility(I)V

    .line 726
    return-void
.end method
