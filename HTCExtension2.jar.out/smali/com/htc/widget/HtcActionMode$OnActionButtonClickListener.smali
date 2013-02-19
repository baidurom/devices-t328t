.class Lcom/htc/widget/HtcActionMode$OnActionButtonClickListener;
.super Ljava/lang/Object;
.source "HtcActionMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnActionButtonClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcActionMode;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcActionMode;)V
    .locals 0
    .parameter

    .prologue
    .line 1898
    iput-object p1, p0, Lcom/htc/widget/HtcActionMode$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1904
    const-string v1, "HtcActionBar"

    const-string v2, "Action bar button Clicked "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionMode;

    iget-boolean v1, v1, Lcom/htc/widget/HtcActionMode;->mMenuDropDownFocusable:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcActionMode$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionMode;

    #getter for: Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;
    invoke-static {v1}, Lcom/htc/widget/HtcActionMode;->access$000(Lcom/htc/widget/HtcActionMode;)Lcom/htc/widget/DropDownList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/DropDownList;->getIsTouchOutsideDismiss()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1907
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionMode;

    iput-boolean v4, v1, Lcom/htc/widget/HtcActionMode;->mIsMenuDropDownShowing:Z

    .line 1908
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionMode;

    #getter for: Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;
    invoke-static {v1}, Lcom/htc/widget/HtcActionMode;->access$000(Lcom/htc/widget/HtcActionMode;)Lcom/htc/widget/DropDownList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/DropDownList;->getIsCallShowDropDown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1909
    const-string v1, "HtcActionBar"

    const-string v2, "TouchOutsideDismiss"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionMode;

    #getter for: Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;
    invoke-static {v1}, Lcom/htc/widget/HtcActionMode;->access$000(Lcom/htc/widget/HtcActionMode;)Lcom/htc/widget/DropDownList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    .line 1917
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionMode;

    iget-boolean v1, v1, Lcom/htc/widget/HtcActionMode;->mIsMenuDropDownShowing:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/HtcActionMode$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionMode;

    iget-boolean v1, v1, Lcom/htc/widget/HtcActionMode;->mMenuDropDownFocusable:Z

    if-nez v1, :cond_1

    .line 1918
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionMode;

    #getter for: Lcom/htc/widget/HtcActionMode;->mIsMenuEnabled:Z
    invoke-static {v1}, Lcom/htc/widget/HtcActionMode;->access$100(Lcom/htc/widget/HtcActionMode;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1919
    const-string v1, "HtcActionBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMenuDropDownFocusable Dismiss "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget/HtcActionMode$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionMode;

    iget-boolean v3, v3, Lcom/htc/widget/HtcActionMode;->mIsMenuDropDownShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionMode;

    #getter for: Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;
    invoke-static {v1}, Lcom/htc/widget/HtcActionMode;->access$000(Lcom/htc/widget/HtcActionMode;)Lcom/htc/widget/DropDownList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    .line 1921
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionMode;

    iput-boolean v4, v1, Lcom/htc/widget/HtcActionMode;->mIsMenuDropDownShowing:Z

    .line 1926
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/widget/HtcActionMode$HtcMenuItem;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/widget/HtcActionMode$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionMode;

    #getter for: Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;
    invoke-static {v1}, Lcom/htc/widget/HtcActionMode;->access$000(Lcom/htc/widget/HtcActionMode;)Lcom/htc/widget/DropDownList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/DropDownList;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1927
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionMode;

    #getter for: Lcom/htc/widget/HtcActionMode;->mMenu:Landroid/view/Menu;
    invoke-static {v1}, Lcom/htc/widget/HtcActionMode;->access$200(Lcom/htc/widget/HtcActionMode;)Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 1929
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionMode;

    iput-boolean v5, v1, Lcom/htc/widget/HtcActionMode;->mIsMenuButtonClicked:Z

    .line 1931
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionMode;

    #getter for: Lcom/htc/widget/HtcActionMode;->mActiomModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v1}, Lcom/htc/widget/HtcActionMode;->access$400(Lcom/htc/widget/HtcActionMode;)Landroid/view/ActionMode$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/HtcActionMode$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionMode;

    #getter for: Lcom/htc/widget/HtcActionMode;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v2}, Lcom/htc/widget/HtcActionMode;->access$300(Lcom/htc/widget/HtcActionMode;)Landroid/view/ActionMode;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget/HtcActionMode$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionMode;

    #getter for: Lcom/htc/widget/HtcActionMode;->mMenu:Landroid/view/Menu;
    invoke-static {v3}, Lcom/htc/widget/HtcActionMode;->access$200(Lcom/htc/widget/HtcActionMode;)Landroid/view/Menu;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 1934
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionMode;

    #getter for: Lcom/htc/widget/HtcActionMode;->mIsMenuEnabled:Z
    invoke-static {v1}, Lcom/htc/widget/HtcActionMode;->access$100(Lcom/htc/widget/HtcActionMode;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/widget/HtcActionMode$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionMode;

    #getter for: Lcom/htc/widget/HtcActionMode;->mMenuDropDown:Lcom/htc/widget/DropDownList;
    invoke-static {v1}, Lcom/htc/widget/HtcActionMode;->access$000(Lcom/htc/widget/HtcActionMode;)Lcom/htc/widget/DropDownList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/DropDownList;->showDropDown()V

    .line 1936
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/HtcActionMode$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionMode;

    iput-boolean v5, v1, Lcom/htc/widget/HtcActionMode;->mIsMenuDropDownShowing:Z

    .line 1938
    const-string v1, "HtcActionBar"

    const-string v2, "Menu Button Clicked"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    .line 1944
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/htc/widget/HtcActionMode$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionMode;

    #getter for: Lcom/htc/widget/HtcActionMode;->mActiomModeCallback:Landroid/view/ActionMode$Callback;
    invoke-static {v1}, Lcom/htc/widget/HtcActionMode;->access$400(Lcom/htc/widget/HtcActionMode;)Landroid/view/ActionMode$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/HtcActionMode$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionMode;

    #getter for: Lcom/htc/widget/HtcActionMode;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v2}, Lcom/htc/widget/HtcActionMode;->access$300(Lcom/htc/widget/HtcActionMode;)Landroid/view/ActionMode;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 1945
    :cond_4
    return-void
.end method
