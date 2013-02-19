.class Lcom/htc/painting/penmenu15/PenMenu$1;
.super Ljava/lang/Object;
.source "PenMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/painting/penmenu15/PenMenu;->insertContainer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/penmenu15/PenMenu;


# direct methods
.method constructor <init>(Lcom/htc/painting/penmenu15/PenMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/htc/painting/penmenu15/PenMenu$1;->this$0:Lcom/htc/painting/penmenu15/PenMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 246
    iget-object v1, p0, Lcom/htc/painting/penmenu15/PenMenu$1;->this$0:Lcom/htc/painting/penmenu15/PenMenu;

    #getter for: Lcom/htc/painting/penmenu15/PenMenu;->mAttachedToWindow:Z
    invoke-static {v1}, Lcom/htc/painting/penmenu15/PenMenu;->access$200(Lcom/htc/painting/penmenu15/PenMenu;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v1, p0, Lcom/htc/painting/penmenu15/PenMenu$1;->this$0:Lcom/htc/painting/penmenu15/PenMenu;

    #getter for: Lcom/htc/painting/penmenu15/PenMenu;->mInserted:Z
    invoke-static {v1}, Lcom/htc/painting/penmenu15/PenMenu;->access$300(Lcom/htc/painting/penmenu15/PenMenu;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/htc/painting/penmenu15/PenMenu$1;->this$0:Lcom/htc/painting/penmenu15/PenMenu;

    #calls: Lcom/htc/painting/penmenu15/PenMenu;->getLayoutParamsForContainer()Landroid/view/WindowManager$LayoutParams;
    invoke-static {v1}, Lcom/htc/painting/penmenu15/PenMenu;->access$400(Lcom/htc/painting/penmenu15/PenMenu;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 250
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/painting/penmenu15/PenMenu$1;->this$0:Lcom/htc/painting/penmenu15/PenMenu;

    #getter for: Lcom/htc/painting/penmenu15/PenMenu;->mContainer:Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;
    invoke-static {v2}, Lcom/htc/painting/penmenu15/PenMenu;->access$500(Lcom/htc/painting/penmenu15/PenMenu;)Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    iget-object v1, p0, Lcom/htc/painting/penmenu15/PenMenu$1;->this$0:Lcom/htc/painting/penmenu15/PenMenu;

    const/4 v2, 0x1

    #setter for: Lcom/htc/painting/penmenu15/PenMenu;->mInserted:Z
    invoke-static {v1, v2}, Lcom/htc/painting/penmenu15/PenMenu;->access$302(Lcom/htc/painting/penmenu15/PenMenu;Z)Z

    goto :goto_0
.end method
