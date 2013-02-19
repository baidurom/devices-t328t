.class Lcom/htc/widget/HtcActionMode$OnDropDownListItemClickListener;
.super Ljava/lang/Object;
.source "HtcActionMode.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnDropDownListItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcActionMode;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcActionMode;)V
    .locals 0
    .parameter

    .prologue
    .line 1948
    iput-object p1, p0, Lcom/htc/widget/HtcActionMode$OnDropDownListItemClickListener;->this$0:Lcom/htc/widget/HtcActionMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1956
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    .line 1958
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcActionMode$OnDropDownListItemClickListener;->this$0:Lcom/htc/widget/HtcActionMode;

    #getter for: Lcom/htc/widget/HtcActionMode;->mActiomModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v1}, Lcom/htc/widget/HtcActionMode;->access$400(Lcom/htc/widget/HtcActionMode;)Landroid/view/ActionMode$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/HtcActionMode$OnDropDownListItemClickListener;->this$0:Lcom/htc/widget/HtcActionMode;

    #getter for: Lcom/htc/widget/HtcActionMode;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v2}, Lcom/htc/widget/HtcActionMode;->access$300(Lcom/htc/widget/HtcActionMode;)Landroid/view/ActionMode;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 1959
    :cond_0
    return-void
.end method
