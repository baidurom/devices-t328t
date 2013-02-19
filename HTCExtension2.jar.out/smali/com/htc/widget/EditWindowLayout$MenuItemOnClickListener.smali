.class Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;
.super Ljava/lang/Object;
.source "EditWindowLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/EditWindowLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuItemOnClickListener"
.end annotation


# instance fields
.field configuration:Landroid/content/res/Configuration;

.field isLandscape:Z

.field private isPrepareOptionsMenu:Z

.field private mMenuAdapter:Landroid/widget/BaseAdapter;

.field private mMenuPopupWindow:Landroid/widget/FrameLayout;

.field final synthetic this$0:Lcom/htc/widget/EditWindowLayout;


# direct methods
.method private constructor <init>(Lcom/htc/widget/EditWindowLayout;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 305
    iput-object p1, p0, Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;->this$0:Lcom/htc/widget/EditWindowLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput-boolean v1, p0, Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;->isPrepareOptionsMenu:Z

    .line 313
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;->this$0:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0}, Lcom/htc/widget/EditWindowLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;->configuration:Landroid/content/res/Configuration;

    .line 315
    iput-boolean v1, p0, Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;->isLandscape:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/EditWindowLayout;Lcom/htc/widget/EditWindowLayout$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;-><init>(Lcom/htc/widget/EditWindowLayout;)V

    return-void
.end method

.method private onClick(Landroid/view/View;Landroid/widget/BaseAdapter;Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V
    .locals 2
    .parameter "arg0"
    .parameter "mMenuAdapter2"
    .parameter "mMenuOnItemClickListener2"

    .prologue
    .line 380
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;->configuration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;->configuration:Landroid/content/res/Configuration;

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;->isLandscape:Z

    .line 381
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;->this$0:Lcom/htc/widget/EditWindowLayout;

    iget-boolean v1, p0, Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;->isLandscape:Z

    #calls: Lcom/htc/widget/EditWindowLayout;->onTitleBarDropDownPopupButtonClick(Landroid/view/View;Landroid/widget/BaseAdapter;Lcom/htc/widget/HtcAdapterView$OnItemClickListener;Z)V
    invoke-static {v0, p1, p2, p3, v1}, Lcom/htc/widget/EditWindowLayout;->access$800(Lcom/htc/widget/EditWindowLayout;Landroid/view/View;Landroid/widget/BaseAdapter;Lcom/htc/widget/HtcAdapterView$OnItemClickListener;Z)V

    .line 382
    return-void

    .line 380
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public enablePrepareOptionsMenu()V
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;->isPrepareOptionsMenu:Z

    .line 323
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 355
    iget-boolean v1, p0, Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;->isPrepareOptionsMenu:Z

    if-eqz v1, :cond_2

    .line 356
    iget-object v1, p0, Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;->this$0:Lcom/htc/widget/EditWindowLayout;

    #getter for: Lcom/htc/widget/EditWindowLayout;->mMenu:Landroid/view/Menu;
    invoke-static {v1}, Lcom/htc/widget/EditWindowLayout;->access$300(Lcom/htc/widget/EditWindowLayout;)Landroid/view/Menu;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 357
    iget-object v1, p0, Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;->this$0:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v1}, Lcom/htc/widget/EditWindowLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 358
    .local v0, activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;->this$0:Lcom/htc/widget/EditWindowLayout;

    #getter for: Lcom/htc/widget/EditWindowLayout;->mMenu:Landroid/view/Menu;
    invoke-static {v1}, Lcom/htc/widget/EditWindowLayout;->access$300(Lcom/htc/widget/EditWindowLayout;)Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 360
    iget-object v1, p0, Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;->this$0:Lcom/htc/widget/EditWindowLayout;

    #getter for: Lcom/htc/widget/EditWindowLayout;->isAutoRefresh:Z
    invoke-static {v1}, Lcom/htc/widget/EditWindowLayout;->access$400(Lcom/htc/widget/EditWindowLayout;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;->this$0:Lcom/htc/widget/EditWindowLayout;

    iget-object v2, p0, Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;->this$0:Lcom/htc/widget/EditWindowLayout;

    #getter for: Lcom/htc/widget/EditWindowLayout;->mMenu:Landroid/view/Menu;
    invoke-static {v2}, Lcom/htc/widget/EditWindowLayout;->access$300(Lcom/htc/widget/EditWindowLayout;)Landroid/view/Menu;

    move-result-object v2

    #calls: Lcom/htc/widget/EditWindowLayout;->refreshEditTitleBarOptionsMenu(Landroid/view/Menu;)V
    invoke-static {v1, v2}, Lcom/htc/widget/EditWindowLayout;->access$500(Lcom/htc/widget/EditWindowLayout;Landroid/view/Menu;)V

    .line 363
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;->this$0:Lcom/htc/widget/EditWindowLayout;

    #getter for: Lcom/htc/widget/EditWindowLayout;->menuButton:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/htc/widget/EditWindowLayout;->access$600(Lcom/htc/widget/EditWindowLayout;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 364
    iget-object v1, p0, Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;->this$0:Lcom/htc/widget/EditWindowLayout;

    #getter for: Lcom/htc/widget/EditWindowLayout;->mMenuButtonAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v1}, Lcom/htc/widget/EditWindowLayout;->access$700(Lcom/htc/widget/EditWindowLayout;)Landroid/widget/BaseAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 365
    iget-object v1, p0, Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;->this$0:Lcom/htc/widget/EditWindowLayout;

    #getter for: Lcom/htc/widget/EditWindowLayout;->mMenuButtonAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v1}, Lcom/htc/widget/EditWindowLayout;->access$700(Lcom/htc/widget/EditWindowLayout;)Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 366
    iget-object v1, p0, Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;->this$0:Lcom/htc/widget/EditWindowLayout;

    #getter for: Lcom/htc/widget/EditWindowLayout;->menuButton:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/htc/widget/EditWindowLayout;->access$600(Lcom/htc/widget/EditWindowLayout;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;->this$0:Lcom/htc/widget/EditWindowLayout;

    #getter for: Lcom/htc/widget/EditWindowLayout;->mMenuButtonAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v2}, Lcom/htc/widget/EditWindowLayout;->access$700(Lcom/htc/widget/EditWindowLayout;)Landroid/widget/BaseAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;->this$0:Lcom/htc/widget/EditWindowLayout;

    #getter for: Lcom/htc/widget/EditWindowLayout;->mMenuOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;
    invoke-static {v3}, Lcom/htc/widget/EditWindowLayout;->access$200(Lcom/htc/widget/EditWindowLayout;)Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;->onClick(Landroid/view/View;Landroid/widget/BaseAdapter;Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 376
    .end local v0           #activity:Landroid/app/Activity;
    :cond_1
    :goto_0
    return-void

    .line 373
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;->mMenuAdapter:Landroid/widget/BaseAdapter;

    iget-object v2, p0, Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;->this$0:Lcom/htc/widget/EditWindowLayout;

    #getter for: Lcom/htc/widget/EditWindowLayout;->mMenuOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;
    invoke-static {v2}, Lcom/htc/widget/EditWindowLayout;->access$200(Lcom/htc/widget/EditWindowLayout;)Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;->onClick(Landroid/view/View;Landroid/widget/BaseAdapter;Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public setMenuAdapter(Landroid/widget/BaseAdapter;)V
    .locals 0
    .parameter "menuAdapter"

    .prologue
    .line 338
    iput-object p1, p0, Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;->mMenuAdapter:Landroid/widget/BaseAdapter;

    .line 339
    return-void
.end method

.method public setMenuOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V
    .locals 1
    .parameter "mOnItemClickListener"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;->this$0:Lcom/htc/widget/EditWindowLayout;

    #setter for: Lcom/htc/widget/EditWindowLayout;->mMenuOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;
    invoke-static {v0, p1}, Lcom/htc/widget/EditWindowLayout;->access$202(Lcom/htc/widget/EditWindowLayout;Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 347
    return-void
.end method

.method public setMenuPopupWindow(Landroid/widget/FrameLayout;)V
    .locals 0
    .parameter "menuPopupWindow"

    .prologue
    .line 330
    iput-object p1, p0, Lcom/htc/widget/EditWindowLayout$MenuItemOnClickListener;->mMenuPopupWindow:Landroid/widget/FrameLayout;

    .line 331
    return-void
.end method
