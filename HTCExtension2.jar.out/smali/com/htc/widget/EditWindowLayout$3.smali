.class Lcom/htc/widget/EditWindowLayout$3;
.super Ljava/lang/Object;
.source "EditWindowLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1748
    iput-object p1, p0, Lcom/htc/widget/EditWindowLayout$3;->this$0:Lcom/htc/widget/EditWindowLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 1750
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 1751
    .local v3, o:Ljava/lang/Object;
    instance-of v4, v3, Landroid/view/MenuItem;

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 1752
    check-cast v2, Landroid/view/MenuItem;

    .line 1753
    .local v2, menuItem:Landroid/view/MenuItem;
    invoke-interface {v2}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v1

    .line 1754
    .local v1, isRunable:Z
    if-eqz v1, :cond_0

    .line 1755
    iget-object v4, p0, Lcom/htc/widget/EditWindowLayout$3;->this$0:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v4}, Lcom/htc/widget/EditWindowLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1756
    .local v0, activity:Landroid/app/Activity;
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 1760
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #isRunable:Z
    .end local v2           #menuItem:Landroid/view/MenuItem;
    :cond_0
    return-void
.end method
