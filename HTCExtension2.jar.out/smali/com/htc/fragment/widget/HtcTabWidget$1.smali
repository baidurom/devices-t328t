.class Lcom/htc/fragment/widget/HtcTabWidget$1;
.super Ljava/lang/Object;
.source "HtcTabWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fragment/widget/HtcTabWidget;->setCurrentTab(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fragment/widget/HtcTabWidget;


# direct methods
.method constructor <init>(Lcom/htc/fragment/widget/HtcTabWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/htc/fragment/widget/HtcTabWidget$1;->this$0:Lcom/htc/fragment/widget/HtcTabWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabWidget$1;->this$0:Lcom/htc/fragment/widget/HtcTabWidget;

    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabWidget$1;->this$0:Lcom/htc/fragment/widget/HtcTabWidget;

    #getter for: Lcom/htc/fragment/widget/HtcTabWidget;->mSelectedTab:I
    invoke-static {v1}, Lcom/htc/fragment/widget/HtcTabWidget;->access$000(Lcom/htc/fragment/widget/HtcTabWidget;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/HtcTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabWidget$1;->this$0:Lcom/htc/fragment/widget/HtcTabWidget;

    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabWidget$1;->this$0:Lcom/htc/fragment/widget/HtcTabWidget;

    #getter for: Lcom/htc/fragment/widget/HtcTabWidget;->mSelectedTab:I
    invoke-static {v1}, Lcom/htc/fragment/widget/HtcTabWidget;->access$000(Lcom/htc/fragment/widget/HtcTabWidget;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/HtcTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabWidget$1;->this$0:Lcom/htc/fragment/widget/HtcTabWidget;

    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabWidget$1;->this$0:Lcom/htc/fragment/widget/HtcTabWidget;

    #getter for: Lcom/htc/fragment/widget/HtcTabWidget;->moldSelectedTab:I
    invoke-static {v1}, Lcom/htc/fragment/widget/HtcTabWidget;->access$100(Lcom/htc/fragment/widget/HtcTabWidget;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/HtcTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabWidget$1;->this$0:Lcom/htc/fragment/widget/HtcTabWidget;

    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabWidget$1;->this$0:Lcom/htc/fragment/widget/HtcTabWidget;

    #getter for: Lcom/htc/fragment/widget/HtcTabWidget;->mSelectedTab:I
    invoke-static {v1}, Lcom/htc/fragment/widget/HtcTabWidget;->access$000(Lcom/htc/fragment/widget/HtcTabWidget;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/HtcTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 182
    return-void
.end method
