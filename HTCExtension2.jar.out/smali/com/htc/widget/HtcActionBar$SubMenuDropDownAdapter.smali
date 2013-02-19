.class Lcom/htc/widget/HtcActionBar$SubMenuDropDownAdapter;
.super Landroid/widget/BaseAdapter;
.source "HtcActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubMenuDropDownAdapter"
.end annotation


# instance fields
.field count:I

.field mMenu:Landroid/view/SubMenu;

.field final synthetic this$0:Lcom/htc/widget/HtcActionBar;


# direct methods
.method public constructor <init>(Lcom/htc/widget/HtcActionBar;)V
    .locals 0
    .parameter

    .prologue
    .line 3319
    iput-object p1, p0, Lcom/htc/widget/HtcActionBar$SubMenuDropDownAdapter;->this$0:Lcom/htc/widget/HtcActionBar;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 3320
    return-void
.end method

.method private setItemContent(Landroid/view/View;Landroid/view/MenuItem;)V
    .locals 3
    .parameter "view"
    .parameter "item"

    .prologue
    .line 3365
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3380
    :cond_0
    :goto_0
    return-void

    .line 3366
    :cond_1
    const v2, 0x20200f1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3367
    .local v1, tv:Landroid/widget/TextView;
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3368
    .local v0, text:Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 3369
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 3370
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3371
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3373
    :cond_2
    invoke-interface {p2}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3374
    const v2, -0x7f000001

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 3377
    :cond_3
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 3334
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar$SubMenuDropDownAdapter;->mMenu:Landroid/view/SubMenu;

    invoke-interface {v0}, Landroid/view/SubMenu;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 3341
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar$SubMenuDropDownAdapter;->mMenu:Landroid/view/SubMenu;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 3362
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 3387
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar$SubMenuDropDownAdapter;->mMenu:Landroid/view/SubMenu;

    invoke-interface {v3, p1}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 3388
    .local v1, item:Landroid/view/MenuItem;
    if-nez p2, :cond_2

    .line 3389
    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance p2, Landroid/view/View;

    .end local p2
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar$SubMenuDropDownAdapter;->this$0:Lcom/htc/widget/HtcActionBar;

    invoke-virtual {v3}, Lcom/htc/widget/HtcActionBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3406
    .restart local p2
    :goto_0
    return-object p2

    .line 3391
    :cond_0
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p2

    .line 3392
    if-nez p2, :cond_1

    .line 3393
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar$SubMenuDropDownAdapter;->this$0:Lcom/htc/widget/HtcActionBar;

    invoke-virtual {v3}, Lcom/htc/widget/HtcActionBar;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 3394
    .local v0, inflater:Landroid/view/LayoutInflater;
    new-instance p2, Landroid/widget/TextView;

    .end local p2
    iget-object v3, p0, Lcom/htc/widget/HtcActionBar$SubMenuDropDownAdapter;->this$0:Lcom/htc/widget/HtcActionBar;

    #getter for: Lcom/htc/widget/HtcActionBar;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/widget/HtcActionBar;->access$1000(Lcom/htc/widget/HtcActionBar;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {p2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 3395
    .restart local p2
    const v3, 0x20200f1

    invoke-virtual {p2, v3}, Landroid/view/View;->setId(I)V

    .line 3396
    invoke-direct {p0, p2, v1}, Lcom/htc/widget/HtcActionBar$SubMenuDropDownAdapter;->setItemContent(Landroid/view/View;Landroid/view/MenuItem;)V

    .line 3398
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3399
    new-instance v2, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(II)V

    .line 3400
    .local v2, lp:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 3403
    .end local v2           #lp:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    :cond_2
    invoke-direct {p0, p2, v1}, Lcom/htc/widget/HtcActionBar$SubMenuDropDownAdapter;->setItemContent(Landroid/view/View;Landroid/view/MenuItem;)V

    .line 3404
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 3349
    iget-object v0, p0, Lcom/htc/widget/HtcActionBar$SubMenuDropDownAdapter;->mMenu:Landroid/view/SubMenu;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public setMenu(Landroid/view/SubMenu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 3327
    iput-object p1, p0, Lcom/htc/widget/HtcActionBar$SubMenuDropDownAdapter;->mMenu:Landroid/view/SubMenu;

    .line 3328
    return-void
.end method
