.class Lcom/android/internal/view/menu/ActionMenuItemView$2;
.super Ljava/lang/Object;
.source "ActionMenuItemView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/menu/ActionMenuItemView;->setupAnimationEnv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/ActionMenuItemView;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/ActionMenuItemView;)V
    .locals 0
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView$2;->this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 365
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 367
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 366
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView$2;->this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    const/4 v1, 0x1

    #calls: Lcom/android/internal/view/menu/ActionMenuItemView;->setInternalMultiplyForceEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/view/menu/ActionMenuItemView;->access$000(Lcom/android/internal/view/menu/ActionMenuItemView;Z)V

    .line 372
    return-void
.end method
