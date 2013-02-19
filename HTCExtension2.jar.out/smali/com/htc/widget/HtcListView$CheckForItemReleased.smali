.class Lcom/htc/widget/HtcListView$CheckForItemReleased;
.super Ljava/lang/Object;
.source "HtcListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForItemReleased"
.end annotation


# instance fields
.field mId:J

.field mPosition:I

.field mView:Landroid/view/View;

.field final synthetic this$0:Lcom/htc/widget/HtcListView;


# direct methods
.method private constructor <init>(Lcom/htc/widget/HtcListView;)V
    .locals 0
    .parameter

    .prologue
    .line 5648
    iput-object p1, p0, Lcom/htc/widget/HtcListView$CheckForItemReleased;->this$0:Lcom/htc/widget/HtcListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/HtcListView;Lcom/htc/widget/HtcListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5648
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListView$CheckForItemReleased;-><init>(Lcom/htc/widget/HtcListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/high16 v1, 0x3f80

    .line 5659
    iget-object v0, p0, Lcom/htc/widget/HtcListView$CheckForItemReleased;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListView$CheckForItemReleased;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 5660
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListView$CheckForItemReleased;->this$0:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcListView;->post(Ljava/lang/Runnable;)Z

    .line 5667
    :cond_1
    :goto_0
    return-void

    .line 5663
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcListView$CheckForItemReleased;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 5664
    iget-object v0, p0, Lcom/htc/widget/HtcListView$CheckForItemReleased;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/widget/HtcListView$CheckForItemReleased;->mView:Landroid/view/View;

    iget v2, p0, Lcom/htc/widget/HtcListView$CheckForItemReleased;->mPosition:I

    iget-wide v3, p0, Lcom/htc/widget/HtcListView$CheckForItemReleased;->mId:J

    #calls: Lcom/htc/widget/HtcAbsListView;->performItemClick(Landroid/view/View;IJ)Z
    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/widget/HtcListView;->access$2401(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)Z

    goto :goto_0
.end method

.method public start(Landroid/view/View;IJ)V
    .locals 1
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 5653
    iput-object p1, p0, Lcom/htc/widget/HtcListView$CheckForItemReleased;->mView:Landroid/view/View;

    .line 5654
    iput p2, p0, Lcom/htc/widget/HtcListView$CheckForItemReleased;->mPosition:I

    .line 5655
    iput-wide p3, p0, Lcom/htc/widget/HtcListView$CheckForItemReleased;->mId:J

    .line 5656
    iget-object v0, p0, Lcom/htc/widget/HtcListView$CheckForItemReleased;->this$0:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcListView;->post(Ljava/lang/Runnable;)Z

    .line 5657
    return-void
.end method
