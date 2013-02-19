.class Lcom/htc/painting/penmenu/history/PenHistory$6;
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


# direct methods
.method constructor <init>(Lcom/htc/painting/penmenu/history/PenHistory;)V
    .locals 0
    .parameter

    .prologue
    .line 677
    iput-object p1, p0, Lcom/htc/painting/penmenu/history/PenHistory$6;->this$0:Lcom/htc/painting/penmenu/history/PenHistory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 688
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory$6;->this$0:Lcom/htc/painting/penmenu/history/PenHistory;

    #getter for: Lcom/htc/painting/penmenu/history/PenHistory;->mSelectedPenView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    invoke-static {v0}, Lcom/htc/painting/penmenu/history/PenHistory;->access$300(Lcom/htc/painting/penmenu/history/PenHistory;)Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setVisibility(I)V

    .line 689
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory$6;->this$0:Lcom/htc/painting/penmenu/history/PenHistory;

    #getter for: Lcom/htc/painting/penmenu/history/PenHistory;->mSelectedPenView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    invoke-static {v0}, Lcom/htc/painting/penmenu/history/PenHistory;->access$300(Lcom/htc/painting/penmenu/history/PenHistory;)Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->releaseIcon()V

    .line 691
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory$6;->this$0:Lcom/htc/painting/penmenu/history/PenHistory;

    const/4 v1, 0x0

    #setter for: Lcom/htc/painting/penmenu/history/PenHistory;->mAnimInProgress:Z
    invoke-static {v0, v1}, Lcom/htc/painting/penmenu/history/PenHistory;->access$102(Lcom/htc/painting/penmenu/history/PenHistory;Z)Z

    .line 692
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 685
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 680
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory$6;->this$0:Lcom/htc/painting/penmenu/history/PenHistory;

    #getter for: Lcom/htc/painting/penmenu/history/PenHistory;->mSelectedPenView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;
    invoke-static {v0}, Lcom/htc/painting/penmenu/history/PenHistory;->access$300(Lcom/htc/painting/penmenu/history/PenHistory;)Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setVisibility(I)V

    .line 681
    return-void
.end method
