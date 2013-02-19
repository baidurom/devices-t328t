.class Lcom/htc/painting/penmenu15/RoundPenMenu$1;
.super Ljava/lang/Object;
.source "RoundPenMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/painting/penmenu15/RoundPenMenu;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$performClick:Lcom/htc/painting/penmenu15/RoundPenMenu$PerformClick;


# direct methods
.method constructor <init>(Lcom/htc/painting/penmenu15/RoundPenMenu;Landroid/view/View;Lcom/htc/painting/penmenu15/RoundPenMenu$PerformClick;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 728
    iput-object p1, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$1;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    iput-object p2, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$1;->val$child:Landroid/view/View;

    iput-object p3, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$1;->val$performClick:Lcom/htc/painting/penmenu15/RoundPenMenu$PerformClick;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 731
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$1;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    const/4 v1, -0x1

    #calls: Lcom/htc/painting/penmenu15/RoundPenMenu;->setTouchMode(I)V
    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->access$1400(Lcom/htc/painting/penmenu15/RoundPenMenu;I)V

    .line 732
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$1;->val$child:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 733
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$1;->this$0:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0, v2}, Lcom/htc/painting/penmenu15/RoundPenMenu;->setPressed(Z)V

    .line 735
    iget-object v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$1;->val$performClick:Lcom/htc/painting/penmenu15/RoundPenMenu$PerformClick;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/RoundPenMenu$PerformClick;->run()V

    .line 737
    return-void
.end method
