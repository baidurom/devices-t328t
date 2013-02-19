.class Lcom/htc/painting/penmenu/history/PenHistory$3;
.super Ljava/lang/Object;
.source "PenHistory.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/painting/penmenu/history/PenHistory;->getHidePenAnimation(Lcom/htc/painting/penmenu/history/PenHistoryPenView;)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/penmenu/history/PenHistory;

.field final synthetic val$penView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;


# direct methods
.method constructor <init>(Lcom/htc/painting/penmenu/history/PenHistory;Lcom/htc/painting/penmenu/history/PenHistoryPenView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 508
    iput-object p1, p0, Lcom/htc/painting/penmenu/history/PenHistory$3;->this$0:Lcom/htc/painting/penmenu/history/PenHistory;

    iput-object p2, p0, Lcom/htc/painting/penmenu/history/PenHistory$3;->val$penView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 518
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/PenHistory$3;->val$penView:Lcom/htc/painting/penmenu/history/PenHistoryPenView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/history/PenHistoryPenView;->setVisibility(I)V

    .line 519
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 515
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 511
    return-void
.end method
