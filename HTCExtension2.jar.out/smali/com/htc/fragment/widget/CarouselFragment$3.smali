.class Lcom/htc/fragment/widget/CarouselFragment$3;
.super Ljava/lang/Object;
.source "CarouselFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fragment/widget/CarouselFragment;->setCountText(Ljava/lang/String;Ljava/lang/CharSequence;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fragment/widget/CarouselFragment;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$text:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/htc/fragment/widget/CarouselFragment;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 874
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselFragment$3;->this$0:Lcom/htc/fragment/widget/CarouselFragment;

    iput-object p2, p0, Lcom/htc/fragment/widget/CarouselFragment$3;->val$tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/fragment/widget/CarouselFragment$3;->val$text:Ljava/lang/CharSequence;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 877
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment$3;->this$0:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment$3;->this$0:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment$3;->this$0:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 881
    :cond_0
    :goto_0
    return-void

    .line 880
    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment$3;->this$0:Lcom/htc/fragment/widget/CarouselFragment;

    #getter for: Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselFragment;->access$300(Lcom/htc/fragment/widget/CarouselFragment;)Lcom/htc/fragment/widget/CarouselModel;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment$3;->this$0:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment$3;->val$tag:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment$3;->val$text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/fragment/widget/CarouselModel;->setCountText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)I

    goto :goto_0
.end method
