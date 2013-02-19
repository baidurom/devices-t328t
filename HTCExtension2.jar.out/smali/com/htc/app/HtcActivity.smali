.class public Lcom/htc/app/HtcActivity;
.super Landroid/app/Activity;
.source "HtcActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 5
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 15
    const-string v2, "test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreatePanelMenu "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/app/HtcActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v1

    .line 17
    .local v1, isDisplayed:Z
    invoke-virtual {p0}, Lcom/htc/app/HtcActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcActionBar;

    .line 18
    .local v0, ab:Lcom/htc/widget/HtcActionBar;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, v1}, Lcom/htc/widget/HtcActionBar;->onCreateActionBar(Landroid/view/Menu;Z)V

    .line 19
    :cond_0
    return v1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 4
    .parameter "featureId"
    .parameter "view"
    .parameter "menu"

    .prologue
    .line 24
    const-string v2, "test"

    const-string v3, "onPreparePanel"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-virtual {p0}, Lcom/htc/app/HtcActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcActionBar;

    .line 26
    .local v0, ab:Lcom/htc/widget/HtcActionBar;
    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0, p3}, Lcom/htc/widget/HtcActionBar;->recoveryMenuContent(Landroid/view/Menu;)V

    .line 29
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    .line 31
    .local v1, isDisplayed:Z
    if-eqz v0, :cond_1

    invoke-virtual {v0, p3, v1}, Lcom/htc/widget/HtcActionBar;->onPrepareActionBar(Landroid/view/Menu;Z)V

    .line 33
    :cond_1
    return v1
.end method
