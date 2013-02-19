.class Lcom/htc/widget/HtcActionBar$OnActionButtonClickListener;
.super Ljava/lang/Object;
.source "HtcActionBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnActionButtonClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcActionBar;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcActionBar;)V
    .locals 0
    .parameter

    .prologue
    .line 3108
    iput-object p1, p0, Lcom/htc/widget/HtcActionBar$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3114
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionBar;

    invoke-virtual {v2}, Lcom/htc/widget/HtcActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 3115
    .local v0, activity:Landroid/app/Activity;
    const-string v2, "HtcActionBar"

    const-string v3, "Action bar button Clicked "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3117
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionBar;

    iget-boolean v2, v2, Lcom/htc/widget/HtcActionBar;->mMenuDropDownFocusable:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcActionBar$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionBar;

    #getter for: Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;
    invoke-static {v2}, Lcom/htc/widget/HtcActionBar;->access$000(Lcom/htc/widget/HtcActionBar;)Lcom/htc/widget/DropDownList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/DropDownList;->getIsTouchOutsideDismiss()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3118
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionBar;

    iput-boolean v5, v2, Lcom/htc/widget/HtcActionBar;->mIsMenuDropDownShowing:Z

    .line 3119
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionBar;

    #getter for: Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;
    invoke-static {v2}, Lcom/htc/widget/HtcActionBar;->access$000(Lcom/htc/widget/HtcActionBar;)Lcom/htc/widget/DropDownList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/DropDownList;->getIsCallShowDropDown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3120
    const-string v2, "HtcActionBar"

    const-string v3, "TouchOutsideDismiss"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3121
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionBar;

    #getter for: Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;
    invoke-static {v2}, Lcom/htc/widget/HtcActionBar;->access$000(Lcom/htc/widget/HtcActionBar;)Lcom/htc/widget/DropDownList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    .line 3128
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionBar;

    iget-boolean v2, v2, Lcom/htc/widget/HtcActionBar;->mIsMenuDropDownShowing:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/widget/HtcActionBar$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionBar;

    iget-boolean v2, v2, Lcom/htc/widget/HtcActionBar;->mMenuDropDownFocusable:Z

    if-nez v2, :cond_1

    .line 3129
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionBar;

    #getter for: Lcom/htc/widget/HtcActionBar;->mIsMenuEnabled:Z
    invoke-static {v2}, Lcom/htc/widget/HtcActionBar;->access$100(Lcom/htc/widget/HtcActionBar;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3130
    const-string v2, "HtcActionBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMenuDropDownFocusable Dismiss "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/widget/HtcActionBar$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionBar;

    iget-boolean v4, v4, Lcom/htc/widget/HtcActionBar;->mIsMenuDropDownShowing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3131
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionBar;

    #getter for: Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;
    invoke-static {v2}, Lcom/htc/widget/HtcActionBar;->access$000(Lcom/htc/widget/HtcActionBar;)Lcom/htc/widget/DropDownList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    .line 3132
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionBar;

    iput-boolean v5, v2, Lcom/htc/widget/HtcActionBar;->mIsMenuDropDownShowing:Z

    .line 3136
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/htc/widget/HtcActionBar$HtcMenuItem;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/widget/HtcActionBar$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionBar;

    #getter for: Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;
    invoke-static {v2}, Lcom/htc/widget/HtcActionBar;->access$000(Lcom/htc/widget/HtcActionBar;)Lcom/htc/widget/DropDownList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/DropDownList;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3137
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionBar;

    #getter for: Lcom/htc/widget/HtcActionBar;->mMenu:Landroid/view/Menu;
    invoke-static {v2}, Lcom/htc/widget/HtcActionBar;->access$200(Lcom/htc/widget/HtcActionBar;)Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/Menu;->clear()V

    .line 3139
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionBar;

    iput-boolean v6, v2, Lcom/htc/widget/HtcActionBar;->mIsMenuButtonClicked:Z

    .line 3140
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/htc/widget/HtcActionBar$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionBar;

    #getter for: Lcom/htc/widget/HtcActionBar;->mMenu:Landroid/view/Menu;
    invoke-static {v3}, Lcom/htc/widget/HtcActionBar;->access$200(Lcom/htc/widget/HtcActionBar;)Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v0, v5, v2, v3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 3141
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionBar;

    #getter for: Lcom/htc/widget/HtcActionBar;->mIsMenuEnabled:Z
    invoke-static {v2}, Lcom/htc/widget/HtcActionBar;->access$100(Lcom/htc/widget/HtcActionBar;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/widget/HtcActionBar$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionBar;

    #getter for: Lcom/htc/widget/HtcActionBar;->mMenuDropDown:Lcom/htc/widget/DropDownList;
    invoke-static {v2}, Lcom/htc/widget/HtcActionBar;->access$000(Lcom/htc/widget/HtcActionBar;)Lcom/htc/widget/DropDownList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/DropDownList;->showDropDown()V

    .line 3143
    :cond_2
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionBar;

    iput-boolean v6, v2, Lcom/htc/widget/HtcActionBar;->mIsMenuDropDownShowing:Z

    .line 3145
    const-string v2, "HtcActionBar"

    const-string v3, "Menu Button Clicked"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3148
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 3149
    .local v1, item:Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/htc/widget/HtcActionBar$OnActionButtonClickListener;->this$0:Lcom/htc/widget/HtcActionBar;

    #getter for: Lcom/htc/widget/HtcActionBar;->isGoogleAPISupported:Z
    invoke-static {v2}, Lcom/htc/widget/HtcActionBar;->access$300(Lcom/htc/widget/HtcActionBar;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v0, v5, v1}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 3150
    :cond_4
    return-void
.end method
