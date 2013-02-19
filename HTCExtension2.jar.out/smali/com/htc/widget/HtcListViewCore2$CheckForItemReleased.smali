.class Lcom/htc/widget/HtcListViewCore2$CheckForItemReleased;
.super Ljava/lang/Object;
.source "HtcListViewCore2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcListViewCore2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForItemReleased"
.end annotation


# instance fields
.field mId:J

.field mPosition:I

.field mView:Landroid/view/View;

.field final synthetic this$0:Lcom/htc/widget/HtcListViewCore2;


# direct methods
.method private constructor <init>(Lcom/htc/widget/HtcListViewCore2;)V
    .locals 0
    .parameter

    .prologue
    .line 5134
    iput-object p1, p0, Lcom/htc/widget/HtcListViewCore2$CheckForItemReleased;->this$0:Lcom/htc/widget/HtcListViewCore2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/HtcListViewCore2;Lcom/htc/widget/HtcListViewCore2$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5134
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListViewCore2$CheckForItemReleased;-><init>(Lcom/htc/widget/HtcListViewCore2;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/high16 v1, 0x3f80

    .line 5153
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2$CheckForItemReleased;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2$CheckForItemReleased;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 5154
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2$CheckForItemReleased;->this$0:Lcom/htc/widget/HtcListViewCore2;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcListViewCore2;->post(Ljava/lang/Runnable;)Z

    .line 5161
    :cond_1
    :goto_0
    return-void

    .line 5157
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2$CheckForItemReleased;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 5158
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2$CheckForItemReleased;->this$0:Lcom/htc/widget/HtcListViewCore2;

    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2$CheckForItemReleased;->mView:Landroid/view/View;

    iget v2, p0, Lcom/htc/widget/HtcListViewCore2$CheckForItemReleased;->mPosition:I

    iget-wide v3, p0, Lcom/htc/widget/HtcListViewCore2$CheckForItemReleased;->mId:J

    #calls: Lcom/htc/widget/HtcAbsListView2;->performItemClick(Landroid/view/View;IJ)Z
    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/widget/HtcListViewCore2;->access$101(Lcom/htc/widget/HtcListViewCore2;Landroid/view/View;IJ)Z

    goto :goto_0
.end method

.method public start(Landroid/view/View;IJ)V
    .locals 1
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 5143
    iput-object p1, p0, Lcom/htc/widget/HtcListViewCore2$CheckForItemReleased;->mView:Landroid/view/View;

    .line 5144
    iput p2, p0, Lcom/htc/widget/HtcListViewCore2$CheckForItemReleased;->mPosition:I

    .line 5145
    iput-wide p3, p0, Lcom/htc/widget/HtcListViewCore2$CheckForItemReleased;->mId:J

    .line 5146
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2$CheckForItemReleased;->this$0:Lcom/htc/widget/HtcListViewCore2;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcListViewCore2;->post(Ljava/lang/Runnable;)Z

    .line 5147
    return-void
.end method
