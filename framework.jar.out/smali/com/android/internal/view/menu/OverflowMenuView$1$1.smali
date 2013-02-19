.class Lcom/android/internal/view/menu/OverflowMenuView$1$1;
.super Ljava/lang/Object;
.source "OverflowMenuView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/menu/OverflowMenuView$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/view/menu/OverflowMenuView$1;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/OverflowMenuView$1;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/internal/view/menu/OverflowMenuView$1$1;->this$1:Lcom/android/internal/view/menu/OverflowMenuView$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/view/menu/OverflowMenuView$1$1;->this$1:Lcom/android/internal/view/menu/OverflowMenuView$1;

    iget-object v0, v0, Lcom/android/internal/view/menu/OverflowMenuView$1;->this$0:Lcom/android/internal/view/menu/OverflowMenuView;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/view/menu/OverflowMenuView;->setInternalMultiplyForceEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/view/menu/OverflowMenuView;->access$000(Lcom/android/internal/view/menu/OverflowMenuView;Z)V

    .line 85
    return-void
.end method
