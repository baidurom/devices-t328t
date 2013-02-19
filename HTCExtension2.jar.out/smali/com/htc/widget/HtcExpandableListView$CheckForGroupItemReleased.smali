.class Lcom/htc/widget/HtcExpandableListView$CheckForGroupItemReleased;
.super Ljava/lang/Object;
.source "HtcExpandableListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForGroupItemReleased"
.end annotation


# instance fields
.field mId:J

.field mPosition:I

.field mView:Landroid/view/View;

.field final synthetic this$0:Lcom/htc/widget/HtcExpandableListView;


# direct methods
.method private constructor <init>(Lcom/htc/widget/HtcExpandableListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1869
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListView$CheckForGroupItemReleased;->this$0:Lcom/htc/widget/HtcExpandableListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/high16 v1, 0x3f80

    .line 1888
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$CheckForGroupItemReleased;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$CheckForGroupItemReleased;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 1889
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$CheckForGroupItemReleased;->this$0:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcExpandableListView;->post(Ljava/lang/Runnable;)Z

    .line 1896
    :cond_1
    :goto_0
    return-void

    .line 1892
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$CheckForGroupItemReleased;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1893
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$CheckForGroupItemReleased;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView$CheckForGroupItemReleased;->mView:Landroid/view/View;

    iget v2, p0, Lcom/htc/widget/HtcExpandableListView$CheckForGroupItemReleased;->mPosition:I

    iget-wide v3, p0, Lcom/htc/widget/HtcExpandableListView$CheckForGroupItemReleased;->mId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/HtcExpandableListView;->handleItemClick(Landroid/view/View;IJ)Z

    goto :goto_0
.end method

.method public start(Landroid/view/View;IJ)V
    .locals 1
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1878
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListView$CheckForGroupItemReleased;->mView:Landroid/view/View;

    .line 1879
    iput p2, p0, Lcom/htc/widget/HtcExpandableListView$CheckForGroupItemReleased;->mPosition:I

    .line 1880
    iput-wide p3, p0, Lcom/htc/widget/HtcExpandableListView$CheckForGroupItemReleased;->mId:J

    .line 1881
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$CheckForGroupItemReleased;->this$0:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcExpandableListView;->post(Ljava/lang/Runnable;)Z

    .line 1882
    return-void
.end method
