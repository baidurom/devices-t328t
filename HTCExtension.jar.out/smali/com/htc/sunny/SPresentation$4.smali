.class Lcom/htc/sunny/SPresentation$4;
.super Ljava/lang/Object;
.source "SPresentation.java"

# interfaces
.implements Lcom/htc/sunny/SAnimationController$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SPresentation;->openingAnimation2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SPresentation;


# direct methods
.method constructor <init>(Lcom/htc/sunny/SPresentation;)V
    .locals 0
    .parameter

    .prologue
    .line 1041
    iput-object p1, p0, Lcom/htc/sunny/SPresentation$4;->this$0:Lcom/htc/sunny/SPresentation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1045
    iget-object v0, p0, Lcom/htc/sunny/SPresentation$4;->this$0:Lcom/htc/sunny/SPresentation;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation;->updateAllContainersLayout()V

    .line 1046
    iget-object v0, p0, Lcom/htc/sunny/SPresentation$4;->this$0:Lcom/htc/sunny/SPresentation;

    invoke-virtual {v0, v2}, Lcom/htc/sunny/SPresentation;->enableAnimation(Z)V

    .line 1047
    iget-object v0, p0, Lcom/htc/sunny/SPresentation$4;->this$0:Lcom/htc/sunny/SPresentation;

    invoke-virtual {v0, v2}, Lcom/htc/sunny/SPresentation;->enabledTouchEvent(Z)V

    .line 1048
    iget-object v0, p0, Lcom/htc/sunny/SPresentation$4;->this$0:Lcom/htc/sunny/SPresentation;

    iput-boolean v1, v0, Lcom/htc/sunny/SPresentation;->mOpeningAnimationStart:Z

    .line 1049
    iget-object v0, p0, Lcom/htc/sunny/SPresentation$4;->this$0:Lcom/htc/sunny/SPresentation;

    iput-boolean v1, v0, Lcom/htc/sunny/SPresentation;->mPerformOpeningAnimation:Z

    .line 1050
    const-string v0, "3DGlideMode"

    const-string v1, "end openingAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    return-void
.end method

.method public onAnimationStart()V
    .locals 0

    .prologue
    .line 1042
    return-void
.end method
