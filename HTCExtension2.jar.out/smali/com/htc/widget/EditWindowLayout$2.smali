.class Lcom/htc/widget/EditWindowLayout$2;
.super Ljava/lang/Object;
.source "EditWindowLayout.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/EditWindowLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/EditWindowLayout;


# direct methods
.method constructor <init>(Lcom/htc/widget/EditWindowLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 1726
    iput-object p1, p0, Lcom/htc/widget/EditWindowLayout$2;->this$0:Lcom/htc/widget/EditWindowLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 1732
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v4, p0, Lcom/htc/widget/EditWindowLayout$2;->this$0:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v4}, Lcom/htc/widget/EditWindowLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1733
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 1734
    .local v3, o:Ljava/lang/Object;
    instance-of v4, v3, Landroid/view/MenuItem;

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 1735
    check-cast v2, Landroid/view/MenuItem;

    .line 1736
    .local v2, menuItem:Landroid/view/MenuItem;
    invoke-interface {v2}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v1

    .line 1737
    .local v1, isRunable:Z
    if-eqz v1, :cond_0

    .line 1738
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 1743
    .end local v1           #isRunable:Z
    .end local v2           #menuItem:Landroid/view/MenuItem;
    :cond_0
    iget-object v4, p0, Lcom/htc/widget/EditWindowLayout$2;->this$0:Lcom/htc/widget/EditWindowLayout;

    #calls: Lcom/htc/widget/EditWindowLayout;->dismissTitleBarDropDownWhenItemClicked()V
    invoke-static {v4}, Lcom/htc/widget/EditWindowLayout;->access$1000(Lcom/htc/widget/EditWindowLayout;)V

    .line 1744
    return-void
.end method
