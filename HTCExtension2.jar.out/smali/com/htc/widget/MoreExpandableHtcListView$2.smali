.class Lcom/htc/widget/MoreExpandableHtcListView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MoreExpandableHtcListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/MoreExpandableHtcListView;->get2DReleaseAnimation(Landroid/view/View;I)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/MoreExpandableHtcListView;


# direct methods
.method constructor <init>(Lcom/htc/widget/MoreExpandableHtcListView;)V
    .locals 0
    .parameter

    .prologue
    .line 3158
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$2;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 3160
    check-cast p1, Landroid/animation/ObjectAnimator;

    .end local p1
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3161
    .local v0, animatedView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 3162
    return-void
.end method
