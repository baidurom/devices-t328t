.class Lcom/htc/widget/ActionBarUtil$AnimateImageView$3;
.super Ljava/lang/Object;
.source "ActionBarUtil.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/ActionBarUtil$AnimateImageView;->setupAnimationEnv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/ActionBarUtil$AnimateImageView;


# direct methods
.method constructor <init>(Lcom/htc/widget/ActionBarUtil$AnimateImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView$3;->this$0:Lcom/htc/widget/ActionBarUtil$AnimateImageView;

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

    .line 372
    iget-object v0, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView$3;->this$0:Lcom/htc/widget/ActionBarUtil$AnimateImageView;

    sub-int v1, p4, p2

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->setPivotX(F)V

    .line 373
    iget-object v0, p0, Lcom/htc/widget/ActionBarUtil$AnimateImageView$3;->this$0:Lcom/htc/widget/ActionBarUtil$AnimateImageView;

    sub-int v1, p5, p3

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarUtil$AnimateImageView;->setPivotY(F)V

    .line 374
    return-void
.end method
