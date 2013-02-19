.class Lcom/htc/widget/HtcGridView$5;
.super Ljava/lang/Object;
.source "HtcGridView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/HtcGridView;->StartRearrangeAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcGridView;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcGridView;)V
    .locals 0
    .parameter

    .prologue
    .line 3072
    iput-object p1, p0, Lcom/htc/widget/HtcGridView$5;->this$0:Lcom/htc/widget/HtcGridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 3075
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$5;->this$0:Lcom/htc/widget/HtcGridView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    .line 3076
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 3080
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$5;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mNowViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/HtcGridView;->access$1500(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3081
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$5;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mDelOriViewTopList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/HtcGridView;->access$400(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3082
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$5;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mDelOriViewLeftList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/HtcGridView;->access$500(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3083
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$5;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mNowViewTopList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/HtcGridView;->access$600(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3084
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$5;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mNowViewLeftList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/HtcGridView;->access$700(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3085
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$5;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mDeletePosInCurrentScreen:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/HtcGridView;->access$1600(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3086
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$5;->this$0:Lcom/htc/widget/HtcGridView;

    #setter for: Lcom/htc/widget/HtcGridView;->mOriCurLeftCount:I
    invoke-static {v0, v1}, Lcom/htc/widget/HtcGridView;->access$1702(Lcom/htc/widget/HtcGridView;I)I

    .line 3087
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$5;->this$0:Lcom/htc/widget/HtcGridView;

    #setter for: Lcom/htc/widget/HtcGridView;->mAnimationInvertFlag:Z
    invoke-static {v0, v1}, Lcom/htc/widget/HtcGridView;->access$1802(Lcom/htc/widget/HtcGridView;Z)Z

    .line 3088
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$5;->this$0:Lcom/htc/widget/HtcGridView;

    #setter for: Lcom/htc/widget/HtcGridView;->mOriLastPage:Z
    invoke-static {v0, v1}, Lcom/htc/widget/HtcGridView;->access$1902(Lcom/htc/widget/HtcGridView;Z)Z

    .line 3089
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$5;->this$0:Lcom/htc/widget/HtcGridView;

    #setter for: Lcom/htc/widget/HtcGridView;->mOriUpperDeleteCount:I
    invoke-static {v0, v1}, Lcom/htc/widget/HtcGridView;->access$2002(Lcom/htc/widget/HtcGridView;I)I

    .line 3090
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$5;->this$0:Lcom/htc/widget/HtcGridView;

    #setter for: Lcom/htc/widget/HtcGridView;->mOriBelowLeftCount:I
    invoke-static {v0, v1}, Lcom/htc/widget/HtcGridView;->access$2102(Lcom/htc/widget/HtcGridView;I)I

    .line 3091
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$5;->this$0:Lcom/htc/widget/HtcGridView;

    #setter for: Lcom/htc/widget/HtcGridView;->mOriCurDeleteCount:I
    invoke-static {v0, v1}, Lcom/htc/widget/HtcGridView;->access$2202(Lcom/htc/widget/HtcGridView;I)I

    .line 3092
    iget-object v0, p0, Lcom/htc/widget/HtcGridView$5;->this$0:Lcom/htc/widget/HtcGridView;

    iput-boolean v1, v0, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    .line 3094
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 3098
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 3102
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/widget/HtcGridView$5;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mNowViewList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/HtcGridView;->access$1500(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3103
    iget-object v1, p0, Lcom/htc/widget/HtcGridView$5;->this$0:Lcom/htc/widget/HtcGridView;

    #getter for: Lcom/htc/widget/HtcGridView;->mNowViewList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/HtcGridView;->access$1500(Lcom/htc/widget/HtcGridView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3105
    :cond_0
    return-void
.end method
