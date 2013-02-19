.class final Lcom/htc/widget/HtcListViewCore2$CheckForPressAnimation;
.super Ljava/lang/Object;
.source "HtcListViewCore2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcListViewCore2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForPressAnimation"
.end annotation


# instance fields
.field mAnimatedView:Landroid/view/View;

.field final synthetic this$0:Lcom/htc/widget/HtcListViewCore2;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcListViewCore2;)V
    .locals 0
    .parameter

    .prologue
    .line 5377
    iput-object p1, p0, Lcom/htc/widget/HtcListViewCore2$CheckForPressAnimation;->this$0:Lcom/htc/widget/HtcListViewCore2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 5384
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2$CheckForPressAnimation;->mAnimatedView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 5395
    :cond_0
    :goto_0
    return-void

    .line 5385
    :cond_1
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2$CheckForPressAnimation;->this$0:Lcom/htc/widget/HtcListViewCore2;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListViewCore2;->isInTouchMode()Z

    move-result v0

    .line 5386
    .local v0, inTouchMode:Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2$CheckForPressAnimation;->this$0:Lcom/htc/widget/HtcListViewCore2;

    iget v2, v2, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2$CheckForPressAnimation;->this$0:Lcom/htc/widget/HtcListViewCore2;

    iget v2, v2, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2$CheckForPressAnimation;->this$0:Lcom/htc/widget/HtcListViewCore2;

    iget v2, v2, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2$CheckForPressAnimation;->this$0:Lcom/htc/widget/HtcListViewCore2;

    iget v2, v2, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 5388
    :cond_2
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2$CheckForPressAnimation;->this$0:Lcom/htc/widget/HtcListViewCore2;

    iget-object v2, v2, Lcom/htc/widget/HtcListViewCore2;->mPressedViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2$CheckForPressAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5389
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2$CheckForPressAnimation;->this$0:Lcom/htc/widget/HtcListViewCore2;

    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2$CheckForPressAnimation;->mAnimatedView:Landroid/view/View;

    #calls: Lcom/htc/widget/HtcListViewCore2;->get2DPressAnimation(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    invoke-static {v2, v3}, Lcom/htc/widget/HtcListViewCore2;->access$200(Lcom/htc/widget/HtcListViewCore2;Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 5390
    .local v1, pressAnim:Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2$CheckForPressAnimation;->this$0:Lcom/htc/widget/HtcListViewCore2;

    iget-object v2, v2, Lcom/htc/widget/HtcListViewCore2;->mPressAnimators:Ljava/util/Map;

    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2$CheckForPressAnimation;->mAnimatedView:Landroid/view/View;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 5391
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2$CheckForPressAnimation;->this$0:Lcom/htc/widget/HtcListViewCore2;

    iget-object v2, v2, Lcom/htc/widget/HtcListViewCore2;->mPressAnimators:Ljava/util/Map;

    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2$CheckForPressAnimation;->mAnimatedView:Landroid/view/View;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5393
    :cond_3
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public setAnimatedView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 5381
    iput-object p1, p0, Lcom/htc/widget/HtcListViewCore2$CheckForPressAnimation;->mAnimatedView:Landroid/view/View;

    .line 5382
    return-void
.end method
