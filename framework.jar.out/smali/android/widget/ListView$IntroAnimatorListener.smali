.class Landroid/widget/ListView$IntroAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IntroAnimatorListener"
.end annotation


# instance fields
.field childIndex:I

.field final synthetic this$0:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Landroid/widget/ListView;)V
    .locals 1
    .parameter

    .prologue
    .line 4339
    iput-object p1, p0, Landroid/widget/ListView$IntroAnimatorListener;->this$0:Landroid/widget/ListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4340
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ListView$IntroAnimatorListener;->childIndex:I

    return-void
.end method


# virtual methods
.method public getChildIndex()I
    .locals 1

    .prologue
    .line 4345
    iget v0, p0, Landroid/widget/ListView$IntroAnimatorListener;->childIndex:I

    return v0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 4353
    iget v0, p0, Landroid/widget/ListView$IntroAnimatorListener;->childIndex:I

    iget-object v1, p0, Landroid/widget/ListView$IntroAnimatorListener;->this$0:Landroid/widget/ListView;

    iget-object v1, v1, Landroid/widget/ListView;->mDividerChangedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/ListView$IntroAnimatorListener;->this$0:Landroid/widget/ListView;

    iget-object v0, v0, Landroid/widget/ListView;->mDividerChangedList:Ljava/util/ArrayList;

    iget v1, p0, Landroid/widget/ListView$IntroAnimatorListener;->childIndex:I

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4354
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 4349
    iget v0, p0, Landroid/widget/ListView$IntroAnimatorListener;->childIndex:I

    iget-object v1, p0, Landroid/widget/ListView$IntroAnimatorListener;->this$0:Landroid/widget/ListView;

    iget-object v1, v1, Landroid/widget/ListView;->mDividerChangedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/ListView$IntroAnimatorListener;->this$0:Landroid/widget/ListView;

    iget-object v0, v0, Landroid/widget/ListView;->mDividerChangedList:Ljava/util/ArrayList;

    iget v1, p0, Landroid/widget/ListView$IntroAnimatorListener;->childIndex:I

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4350
    :cond_0
    return-void
.end method

.method public setChildIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 4342
    iput p1, p0, Landroid/widget/ListView$IntroAnimatorListener;->childIndex:I

    .line 4343
    return-void
.end method
