.class Lcom/htc/widget/HtcActionBar$OnDropDownListItemClickListener;
.super Ljava/lang/Object;
.source "HtcActionBar.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnDropDownListItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcActionBar;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcActionBar;)V
    .locals 0
    .parameter

    .prologue
    .line 3153
    iput-object p1, p0, Lcom/htc/widget/HtcActionBar$OnDropDownListItemClickListener;->this$0:Lcom/htc/widget/HtcActionBar;

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
    .line 3161
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    .line 3162
    .local v0, item:Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar$OnDropDownListItemClickListener;->this$0:Lcom/htc/widget/HtcActionBar;

    #getter for: Lcom/htc/widget/HtcActionBar;->isGoogleAPISupported:Z
    invoke-static {v1}, Lcom/htc/widget/HtcActionBar;->access$300(Lcom/htc/widget/HtcActionBar;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcActionBar$OnDropDownListItemClickListener;->this$0:Lcom/htc/widget/HtcActionBar;

    invoke-virtual {v1}, Lcom/htc/widget/HtcActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 3164
    :cond_0
    return-void
.end method
