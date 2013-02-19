.class Lcom/android/internal/widget/ActionBarView$5;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ActionBarView;->onMeasure(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ActionBarView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ActionBarView;)V
    .locals 0
    .parameter

    .prologue
    .line 842
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView$5;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$5;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->requestLayout()V

    .line 845
    return-void
.end method
