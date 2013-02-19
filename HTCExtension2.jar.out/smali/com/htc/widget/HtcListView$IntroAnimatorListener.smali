.class Lcom/htc/widget/HtcListView$IntroAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HtcListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IntroAnimatorListener"
.end annotation


# instance fields
.field childIndex:I

.field final synthetic this$0:Lcom/htc/widget/HtcListView;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcListView;)V
    .locals 1
    .parameter

    .prologue
    .line 4588
    iput-object p1, p0, Lcom/htc/widget/HtcListView$IntroAnimatorListener;->this$0:Lcom/htc/widget/HtcListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4589
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcListView$IntroAnimatorListener;->childIndex:I

    return-void
.end method


# virtual methods
.method public getChildIndex()I
    .locals 1

    .prologue
    .line 4594
    iget v0, p0, Lcom/htc/widget/HtcListView$IntroAnimatorListener;->childIndex:I

    return v0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 4602
    iget v0, p0, Lcom/htc/widget/HtcListView$IntroAnimatorListener;->childIndex:I

    iget-object v1, p0, Lcom/htc/widget/HtcListView$IntroAnimatorListener;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v1, v1, Lcom/htc/widget/HtcListView;->mDividerChangedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListView$IntroAnimatorListener;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDividerChangedList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/htc/widget/HtcListView$IntroAnimatorListener;->childIndex:I

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4603
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 4598
    iget v0, p0, Lcom/htc/widget/HtcListView$IntroAnimatorListener;->childIndex:I

    iget-object v1, p0, Lcom/htc/widget/HtcListView$IntroAnimatorListener;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v1, v1, Lcom/htc/widget/HtcListView;->mDividerChangedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListView$IntroAnimatorListener;->this$0:Lcom/htc/widget/HtcListView;

    iget-object v0, v0, Lcom/htc/widget/HtcListView;->mDividerChangedList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/htc/widget/HtcListView$IntroAnimatorListener;->childIndex:I

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4599
    :cond_0
    return-void
.end method

.method public setChildIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 4591
    iput p1, p0, Lcom/htc/widget/HtcListView$IntroAnimatorListener;->childIndex:I

    .line 4592
    return-void
.end method
