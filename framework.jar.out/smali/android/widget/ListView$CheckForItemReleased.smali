.class Landroid/widget/ListView$CheckForItemReleased;
.super Ljava/lang/Object;
.source "ListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForItemReleased"
.end annotation


# instance fields
.field mId:J

.field mPosition:I

.field mView:Landroid/view/View;

.field final synthetic this$0:Landroid/widget/ListView;


# direct methods
.method private constructor <init>(Landroid/widget/ListView;)V
    .locals 0
    .parameter

    .prologue
    .line 4727
    iput-object p1, p0, Landroid/widget/ListView$CheckForItemReleased;->this$0:Landroid/widget/ListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ListView;Landroid/widget/ListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4727
    invoke-direct {p0, p1}, Landroid/widget/ListView$CheckForItemReleased;-><init>(Landroid/widget/ListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/high16 v1, 0x3f80

    .line 4738
    iget-object v0, p0, Landroid/widget/ListView$CheckForItemReleased;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListView$CheckForItemReleased;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 4739
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView$CheckForItemReleased;->this$0:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 4746
    :cond_1
    :goto_0
    return-void

    .line 4742
    :cond_2
    iget-object v0, p0, Landroid/widget/ListView$CheckForItemReleased;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 4743
    iget-object v0, p0, Landroid/widget/ListView$CheckForItemReleased;->this$0:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/widget/ListView$CheckForItemReleased;->mView:Landroid/view/View;

    iget v2, p0, Landroid/widget/ListView$CheckForItemReleased;->mPosition:I

    iget-wide v3, p0, Landroid/widget/ListView$CheckForItemReleased;->mId:J

    #calls: Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z
    invoke-static {v0, v1, v2, v3, v4}, Landroid/widget/ListView;->access$1101(Landroid/widget/ListView;Landroid/view/View;IJ)Z

    goto :goto_0
.end method

.method public start(Landroid/view/View;IJ)V
    .locals 1
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 4732
    iput-object p1, p0, Landroid/widget/ListView$CheckForItemReleased;->mView:Landroid/view/View;

    .line 4733
    iput p2, p0, Landroid/widget/ListView$CheckForItemReleased;->mPosition:I

    .line 4734
    iput-wide p3, p0, Landroid/widget/ListView$CheckForItemReleased;->mId:J

    .line 4735
    iget-object v0, p0, Landroid/widget/ListView$CheckForItemReleased;->this$0:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 4736
    return-void
.end method
