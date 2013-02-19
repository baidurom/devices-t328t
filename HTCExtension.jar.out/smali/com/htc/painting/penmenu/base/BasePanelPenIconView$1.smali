.class Lcom/htc/painting/penmenu/base/BasePanelPenIconView$1;
.super Ljava/lang/Object;
.source "BasePanelPenIconView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu/base/BasePanelPenIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/penmenu/base/BasePanelPenIconView;


# direct methods
.method constructor <init>(Lcom/htc/painting/penmenu/base/BasePanelPenIconView;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/htc/painting/penmenu/base/BasePanelPenIconView$1;->this$0:Lcom/htc/painting/penmenu/base/BasePanelPenIconView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanelPenIconView$1;->this$0:Lcom/htc/painting/penmenu/base/BasePanelPenIconView;

    iget-object v1, p0, Lcom/htc/painting/penmenu/base/BasePanelPenIconView$1;->this$0:Lcom/htc/painting/penmenu/base/BasePanelPenIconView;

    #getter for: Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->mNewColor:I
    invoke-static {v1}, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->access$100(Lcom/htc/painting/penmenu/base/BasePanelPenIconView;)I

    move-result v1

    #setter for: Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->mPenColor:I
    invoke-static {v0, v1}, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->access$002(Lcom/htc/painting/penmenu/base/BasePanelPenIconView;I)I

    .line 37
    iget-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanelPenIconView$1;->this$0:Lcom/htc/painting/penmenu/base/BasePanelPenIconView;

    iget-object v1, p0, Lcom/htc/painting/penmenu/base/BasePanelPenIconView$1;->this$0:Lcom/htc/painting/penmenu/base/BasePanelPenIconView;

    #getter for: Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->mNewTypeId:I
    invoke-static {v1}, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->access$300(Lcom/htc/painting/penmenu/base/BasePanelPenIconView;)I

    move-result v1

    #setter for: Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->mTypeId:I
    invoke-static {v0, v1}, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->access$202(Lcom/htc/painting/penmenu/base/BasePanelPenIconView;I)I

    .line 39
    iget-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanelPenIconView$1;->this$0:Lcom/htc/painting/penmenu/base/BasePanelPenIconView;

    iget-object v1, p0, Lcom/htc/painting/penmenu/base/BasePanelPenIconView$1;->this$0:Lcom/htc/painting/penmenu/base/BasePanelPenIconView;

    #getter for: Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->mMoveInAnim:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->access$400(Lcom/htc/painting/penmenu/base/BasePanelPenIconView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/base/BasePanelPenIconView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 40
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 44
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 48
    return-void
.end method
