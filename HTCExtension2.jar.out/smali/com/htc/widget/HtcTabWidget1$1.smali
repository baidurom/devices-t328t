.class Lcom/htc/widget/HtcTabWidget1$1;
.super Ljava/lang/Object;
.source "HtcTabWidget1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/HtcTabWidget1;->setCurrentTab(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcTabWidget1;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcTabWidget1;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/htc/widget/HtcTabWidget1$1;->this$0:Lcom/htc/widget/HtcTabWidget1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/htc/widget/HtcTabWidget1$1;->this$0:Lcom/htc/widget/HtcTabWidget1;

    iget-object v1, p0, Lcom/htc/widget/HtcTabWidget1$1;->this$0:Lcom/htc/widget/HtcTabWidget1;

    #getter for: Lcom/htc/widget/HtcTabWidget1;->mSelectedTab:I
    invoke-static {v1}, Lcom/htc/widget/HtcTabWidget1;->access$000(Lcom/htc/widget/HtcTabWidget1;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcTabWidget1;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcTabWidget1$1;->this$0:Lcom/htc/widget/HtcTabWidget1;

    iget-object v1, p0, Lcom/htc/widget/HtcTabWidget1$1;->this$0:Lcom/htc/widget/HtcTabWidget1;

    #getter for: Lcom/htc/widget/HtcTabWidget1;->mSelectedTab:I
    invoke-static {v1}, Lcom/htc/widget/HtcTabWidget1;->access$000(Lcom/htc/widget/HtcTabWidget1;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcTabWidget1;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/htc/widget/HtcTabWidget1$1;->this$0:Lcom/htc/widget/HtcTabWidget1;

    iget-object v1, p0, Lcom/htc/widget/HtcTabWidget1$1;->this$0:Lcom/htc/widget/HtcTabWidget1;

    #getter for: Lcom/htc/widget/HtcTabWidget1;->moldSelectedTab:I
    invoke-static {v1}, Lcom/htc/widget/HtcTabWidget1;->access$100(Lcom/htc/widget/HtcTabWidget1;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcTabWidget1;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcTabWidget1$1;->this$0:Lcom/htc/widget/HtcTabWidget1;

    iget-object v1, p0, Lcom/htc/widget/HtcTabWidget1$1;->this$0:Lcom/htc/widget/HtcTabWidget1;

    #getter for: Lcom/htc/widget/HtcTabWidget1;->mSelectedTab:I
    invoke-static {v1}, Lcom/htc/widget/HtcTabWidget1;->access$000(Lcom/htc/widget/HtcTabWidget1;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcTabWidget1;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 183
    return-void
.end method
