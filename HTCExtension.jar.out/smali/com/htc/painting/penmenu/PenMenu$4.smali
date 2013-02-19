.class Lcom/htc/painting/penmenu/PenMenu$4;
.super Ljava/lang/Object;
.source "PenMenu.java"

# interfaces
.implements Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu/PenMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/penmenu/PenMenu;


# direct methods
.method constructor <init>(Lcom/htc/painting/penmenu/PenMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 682
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenu$4;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionChanged(II)V
    .locals 2
    .parameter "menuId"
    .parameter "optionId"

    .prologue
    .line 689
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$4;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/PenMenu;->setUseTime(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$4;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v0, p1, p2}, Lcom/htc/painting/penmenu/PenMenu;->changePen(II)V

    .line 695
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$4;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mOuterOptionChangedListener:Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;
    invoke-static {v0}, Lcom/htc/painting/penmenu/PenMenu;->access$600(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 701
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 702
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$4;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mOuterOptionChangedListener:Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;
    invoke-static {v0}, Lcom/htc/painting/penmenu/PenMenu;->access$600(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;->onOptionChanged(II)V

    goto :goto_0

    .line 704
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$4;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mOuterOptionChangedListener:Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;
    invoke-static {v0}, Lcom/htc/painting/penmenu/PenMenu;->access$600(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;->onOptionChanged(II)V

    goto :goto_0
.end method

.method public onOptionInitialized()V
    .locals 0

    .prologue
    .line 712
    return-void
.end method
