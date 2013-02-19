.class Lcom/htc/painting/penmenu/base/BasePanelPenSizeView$1;
.super Ljava/lang/Object;
.source "BasePanelPenSizeView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;


# direct methods
.method constructor <init>(Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView$1;->this$0:Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 58
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 54
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView$1;->this$0:Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;

    iget-object v1, p0, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView$1;->this$0:Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;

    #getter for: Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->mNewSize:F
    invoke-static {v1}, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->access$100(Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;)F

    move-result v1

    #setter for: Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->mPenSize:F
    invoke-static {v0, v1}, Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;->access$002(Lcom/htc/painting/penmenu/base/BasePanelPenSizeView;F)F

    .line 50
    return-void
.end method
