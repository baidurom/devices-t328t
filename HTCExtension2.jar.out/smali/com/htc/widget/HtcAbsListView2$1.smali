.class Lcom/htc/widget/HtcAbsListView2$1;
.super Ljava/lang/Object;
.source "HtcAbsListView2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/HtcAbsListView2;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcAbsListView2;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$performClick:Lcom/htc/widget/HtcAbsListView2$PerformClick;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcAbsListView2;Landroid/view/View;Lcom/htc/widget/HtcAbsListView2$PerformClick;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2738
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView2$1;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iput-object p2, p0, Lcom/htc/widget/HtcAbsListView2$1;->val$child:Landroid/view/View;

    iput-object p3, p0, Lcom/htc/widget/HtcAbsListView2$1;->val$performClick:Lcom/htc/widget/HtcAbsListView2$PerformClick;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2740
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2$1;->val$child:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2741
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2$1;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->setPressed(Z)V

    .line 2742
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2$1;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget-boolean v0, v0, Lcom/htc/widget/HtcAdapterView2;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 2743
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2$1;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2$1;->val$performClick:Lcom/htc/widget/HtcAbsListView2$PerformClick;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAbsListView2;->post(Ljava/lang/Runnable;)Z

    .line 2745
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2$1;->this$0:Lcom/htc/widget/HtcAbsListView2;

    const/4 v1, -0x1

    iput v1, v0, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 2746
    return-void
.end method
