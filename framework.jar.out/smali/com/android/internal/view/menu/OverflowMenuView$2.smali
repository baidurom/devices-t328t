.class Lcom/android/internal/view/menu/OverflowMenuView$2;
.super Ljava/lang/Object;
.source "OverflowMenuView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/menu/OverflowMenuView;->setupAnimationEnv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/OverflowMenuView;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/OverflowMenuView;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/internal/view/menu/OverflowMenuView$2;->this$0:Lcom/android/internal/view/menu/OverflowMenuView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 101
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 103
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 102
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/internal/view/menu/OverflowMenuView$2;->this$0:Lcom/android/internal/view/menu/OverflowMenuView;

    const/4 v1, 0x1

    #calls: Lcom/android/internal/view/menu/OverflowMenuView;->setInternalMultiplyForceEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/view/menu/OverflowMenuView;->access$000(Lcom/android/internal/view/menu/OverflowMenuView;Z)V

    .line 108
    return-void
.end method
