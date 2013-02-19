.class Lcom/htc/painting/penmenu15/view/CurrentPenView$1;
.super Ljava/lang/Object;
.source "CurrentPenView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/painting/penmenu15/view/CurrentPenView;->onStartDrag()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/penmenu15/view/CurrentPenView;


# direct methods
.method constructor <init>(Lcom/htc/painting/penmenu15/view/CurrentPenView;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView$1;->this$0:Lcom/htc/painting/penmenu15/view/CurrentPenView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "view"

    .prologue
    .line 246
    new-instance v0, Lcom/htc/painting/penmenu15/view/CurrentPenView$CircleDragShadowBuilder;

    invoke-direct {v0}, Lcom/htc/painting/penmenu15/view/CurrentPenView$CircleDragShadowBuilder;-><init>()V

    .line 247
    .local v0, shadow:Lcom/htc/painting/penmenu15/view/CurrentPenView$CircleDragShadowBuilder;
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView$1;->this$0:Lcom/htc/painting/penmenu15/view/CurrentPenView;

    #getter for: Lcom/htc/painting/penmenu15/view/CurrentPenView;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;
    invoke-static {v1}, Lcom/htc/painting/penmenu15/view/CurrentPenView;->access$000(Lcom/htc/painting/penmenu15/view/CurrentPenView;)Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu15/view/CurrentPenView$CircleDragShadowBuilder;->setColor(I)V

    .line 248
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/CurrentPenView$1;->this$0:Lcom/htc/painting/penmenu15/view/CurrentPenView;

    #getter for: Lcom/htc/painting/penmenu15/view/CurrentPenView;->mCurPenContainer:Lcom/htc/painting/penmenu15/core/CurrentPenContainer;
    invoke-static {v2}, Lcom/htc/painting/penmenu15/view/CurrentPenView;->access$000(Lcom/htc/painting/penmenu15/view/CurrentPenView;)Lcom/htc/painting/penmenu15/core/CurrentPenContainer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 249
    const/4 v1, 0x1

    return v1
.end method
