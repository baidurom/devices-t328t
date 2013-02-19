.class Lcom/htc/widget/Title2$1;
.super Ljava/lang/Object;
.source "Title2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/Title2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/Title2;


# direct methods
.method constructor <init>(Lcom/htc/widget/Title2;)V
    .locals 0
    .parameter

    .prologue
    .line 516
    iput-object p1, p0, Lcom/htc/widget/Title2$1;->this$0:Lcom/htc/widget/Title2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 518
    iget-object v0, p0, Lcom/htc/widget/Title2$1;->this$0:Lcom/htc/widget/Title2;

    #getter for: Lcom/htc/widget/Title2;->mDropView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/widget/Title2;->access$000(Lcom/htc/widget/Title2;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 551
    :goto_0
    return-void

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/Title2$1;->this$0:Lcom/htc/widget/Title2;

    #getter for: Lcom/htc/widget/Title2;->mDropView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/widget/Title2;->access$000(Lcom/htc/widget/Title2;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/htc/widget/Title2$1;->this$0:Lcom/htc/widget/Title2;

    #getter for: Lcom/htc/widget/Title2;->mDropView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/widget/Title2;->access$000(Lcom/htc/widget/Title2;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 525
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/Title2$1;->this$0:Lcom/htc/widget/Title2;

    invoke-virtual {v0}, Lcom/htc/widget/Title2;->updateArrowIcon()V

    goto :goto_0

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/Title2$1;->this$0:Lcom/htc/widget/Title2;

    #getter for: Lcom/htc/widget/Title2;->mDropView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/widget/Title2;->access$000(Lcom/htc/widget/Title2;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
