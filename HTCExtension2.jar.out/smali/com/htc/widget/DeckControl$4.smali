.class Lcom/htc/widget/DeckControl$4;
.super Ljava/lang/Object;
.source "DeckControl.java"

# interfaces
.implements Lcom/htc/sunny/SAnimationController$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/DeckControl;->finishAnimation(ILcom/htc/sunny/SAnimationController$AnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/DeckControl;

.field final synthetic val$anlistener:Lcom/htc/sunny/SAnimationController$AnimationListener;


# direct methods
.method constructor <init>(Lcom/htc/widget/DeckControl;Lcom/htc/sunny/SAnimationController$AnimationListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 911
    iput-object p1, p0, Lcom/htc/widget/DeckControl$4;->this$0:Lcom/htc/widget/DeckControl;

    iput-object p2, p0, Lcom/htc/widget/DeckControl$4;->val$anlistener:Lcom/htc/sunny/SAnimationController$AnimationListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Lcom/htc/widget/DeckControl$4;->val$anlistener:Lcom/htc/sunny/SAnimationController$AnimationListener;

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/htc/widget/DeckControl$4;->val$anlistener:Lcom/htc/sunny/SAnimationController$AnimationListener;

    invoke-interface {v0}, Lcom/htc/sunny/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 916
    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lcom/htc/widget/DeckControl$4;->val$anlistener:Lcom/htc/sunny/SAnimationController$AnimationListener;

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/htc/widget/DeckControl$4;->val$anlistener:Lcom/htc/sunny/SAnimationController$AnimationListener;

    invoke-interface {v0}, Lcom/htc/sunny/SAnimationController$AnimationListener;->onAnimationStart()V

    .line 922
    :cond_0
    return-void
.end method
