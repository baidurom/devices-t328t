.class Lcom/android/internal/view/menu/OverflowMenuView$3;
.super Ljava/lang/Object;
.source "OverflowMenuView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


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
    .line 113
    iput-object p1, p0, Lcom/android/internal/view/menu/OverflowMenuView$3;->this$0:Lcom/android/internal/view/menu/OverflowMenuView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .parameter "viw"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "oldLeft"
    .parameter "oldTop"
    .parameter "oldRight"
    .parameter "oldBottom"

    .prologue
    const/high16 v2, 0x3f00

    .line 116
    iget-object v0, p0, Lcom/android/internal/view/menu/OverflowMenuView$3;->this$0:Lcom/android/internal/view/menu/OverflowMenuView;

    sub-int v1, p4, p2

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/OverflowMenuView;->setPivotX(F)V

    .line 117
    iget-object v0, p0, Lcom/android/internal/view/menu/OverflowMenuView$3;->this$0:Lcom/android/internal/view/menu/OverflowMenuView;

    sub-int v1, p5, p3

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/OverflowMenuView;->setPivotY(F)V

    .line 118
    return-void
.end method
