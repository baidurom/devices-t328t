.class Landroid/widget/ListView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Landroid/widget/ListView;)V
    .locals 0
    .parameter

    .prologue
    .line 4310
    iput-object p1, p0, Landroid/widget/ListView$3;->this$0:Landroid/widget/ListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .parameter "animation"

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    .line 4322
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Landroid/widget/ListView$3;->this$0:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 4323
    iget-object v3, p0, Landroid/widget/ListView$3;->this$0:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4324
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotY(F)V

    .line 4325
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setY(F)V

    .line 4326
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setRotationX(F)V

    .line 4327
    const/4 v3, 0x0

    invoke-virtual {v1, v5, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4322
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4329
    .end local v1           #child:Landroid/view/View;
    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Landroid/widget/ListView$3;->this$0:Landroid/widget/ListView;

    #getter for: Landroid/widget/ListView;->mIntroAnimatedViews:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/widget/ListView;->access$1000(Landroid/widget/ListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 4330
    iget-object v3, p0, Landroid/widget/ListView$3;->this$0:Landroid/widget/ListView;

    #getter for: Landroid/widget/ListView;->mIntroAnimatedViews:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/widget/ListView;->access$1000(Landroid/widget/ListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 4331
    .local v0, animatedView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v3

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleY(F)V

    .line 4329
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4333
    .end local v0           #animatedView:Landroid/view/View;
    :cond_2
    iget-object v3, p0, Landroid/widget/ListView$3;->this$0:Landroid/widget/ListView;

    #getter for: Landroid/widget/ListView;->mIntroAnimatedViews:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/widget/ListView;->access$1000(Landroid/widget/ListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 4334
    iget-object v3, p0, Landroid/widget/ListView$3;->this$0:Landroid/widget/ListView;

    iput-boolean v5, v3, Landroid/widget/AbsListView;->mAnimationRunning:Z

    .line 4335
    iget-object v3, p0, Landroid/widget/ListView$3;->this$0:Landroid/widget/ListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mIntroAnimationListener:Landroid/widget/AbsListView$IntroAnimationListener;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/widget/ListView$3;->this$0:Landroid/widget/ListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mIntroAnimationListener:Landroid/widget/AbsListView$IntroAnimationListener;

    invoke-interface {v3}, Landroid/widget/AbsListView$IntroAnimationListener;->onAnimationEnd()V

    .line 4336
    :cond_3
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 4313
    iget-object v0, p0, Landroid/widget/ListView$3;->this$0:Landroid/widget/ListView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/ListView;->shouldHideIntroAnimatedViews:Z

    .line 4314
    iget-object v0, p0, Landroid/widget/ListView$3;->this$0:Landroid/widget/ListView;

    iget-object v0, v0, Landroid/widget/AbsListView;->mIntroAnimationListener:Landroid/widget/AbsListView$IntroAnimationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListView$3;->this$0:Landroid/widget/ListView;

    iget-object v0, v0, Landroid/widget/AbsListView;->mIntroAnimationListener:Landroid/widget/AbsListView$IntroAnimationListener;

    invoke-interface {v0}, Landroid/widget/AbsListView$IntroAnimationListener;->onAnimationStart()V

    .line 4315
    :cond_0
    return-void
.end method
