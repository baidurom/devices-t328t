.class Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer$1;
.super Ljava/lang/Object;
.source "WrapContentPenMenuContainer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;


# direct methods
.method constructor <init>(Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer$1;->this$0:Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    const/4 v3, 0x3

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, passToRoot:Z
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer$1;->this$0:Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;

    #getter for: Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;
    invoke-static {v1}, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->access$000(Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;)Lcom/htc/painting/penmenu15/RoundPenMenu;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer$1;->this$0:Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;

    #getter for: Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;
    invoke-static {v1}, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->access$000(Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;)Lcom/htc/painting/penmenu15/RoundPenMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer$1;->this$0:Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;

    #getter for: Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mDispatchMode:I
    invoke-static {v1}, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->access$100(Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;)I

    move-result v1

    invoke-static {}, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->access$200()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 71
    :cond_0
    const/4 v0, 0x1

    .line 73
    :cond_1
    if-eqz v0, :cond_2

    .line 74
    iget-object v1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    .line 75
    invoke-virtual {p1, v3}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_2
    iget-object v1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer$1;->this$0:Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;

    #getter for: Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;
    invoke-static {v2}, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->access$000(Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;)Lcom/htc/painting/penmenu15/RoundPenMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getTouchableRegion()Landroid/graphics/Region;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 78
    invoke-virtual {p1, v3}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    goto :goto_0
.end method
