.class public Lcom/htc/widget/TabSwitchActivity;
.super Landroid/app/ActivityGroup;
.source "TabSwitchActivity.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mDefaultTab:Ljava/lang/String;

.field private mDefaultTabIndex:I

.field private mPanelSwitchHost:Lcom/htc/widget/TabSwitchHost;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/TabSwitchActivity;->mDefaultTab:Ljava/lang/String;

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/TabSwitchActivity;->mDefaultTabIndex:I

    .line 39
    const-string v0, "TabSwitchActivity"

    iput-object v0, p0, Lcom/htc/widget/TabSwitchActivity;->TAG:Ljava/lang/String;

    .line 42
    return-void
.end method

.method private ensureTabHost()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/htc/widget/TabSwitchActivity;->mPanelSwitchHost:Lcom/htc/widget/TabSwitchHost;

    if-nez v0, :cond_0

    .line 188
    const v0, 0x209008a

    invoke-virtual {p0, v0}, Lcom/htc/widget/TabSwitchActivity;->setContentView(I)V

    .line 190
    :cond_0
    return-void
.end method


# virtual methods
.method public getTabHost()Lcom/htc/widget/TabSwitchHost;
    .locals 1

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchActivity;->ensureTabHost()V

    .line 215
    iget-object v0, p0, Lcom/htc/widget/TabSwitchActivity;->mPanelSwitchHost:Lcom/htc/widget/TabSwitchHost;

    return-object v0
.end method

.method public getTabWidget()Lcom/htc/widget/TabSwitchWidget;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/htc/widget/TabSwitchActivity;->mPanelSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v0}, Lcom/htc/widget/TabSwitchHost;->getTabWidget()Lcom/htc/widget/TabSwitchWidget;

    move-result-object v0

    return-object v0
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "childActivity"
    .parameter "title"

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/htc/widget/TabSwitchActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/htc/widget/TabSwitchActivity;->mPanelSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v1}, Lcom/htc/widget/TabSwitchHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    .line 202
    .local v0, tabView:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 203
    check-cast v0, Landroid/widget/TextView;

    .end local v0           #tabView:Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 173
    invoke-super {p0}, Landroid/app/ActivityGroup;->onContentChanged()V

    .line 175
    iget-object v0, p0, Lcom/htc/widget/TabSwitchActivity;->mPanelSwitchHost:Lcom/htc/widget/TabSwitchHost;

    if-nez v0, :cond_0

    .line 176
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/htc/widget/TabSwitchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/TabSwitchHost;

    iput-object v0, p0, Lcom/htc/widget/TabSwitchActivity;->mPanelSwitchHost:Lcom/htc/widget/TabSwitchHost;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/TabSwitchActivity;->mPanelSwitchHost:Lcom/htc/widget/TabSwitchHost;

    if-nez v0, :cond_1

    .line 179
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a TabHost whose id attribute is \'android.R.id.tabhost\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/TabSwitchActivity;->mPanelSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {p0}, Lcom/htc/widget/TabSwitchActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/TabSwitchHost;->setup(Landroid/app/LocalActivityManager;)V

    .line 184
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onPostCreate(Landroid/os/Bundle;)V

    .line 130
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchActivity;->ensureTabHost()V

    .line 132
    iget-object v0, p0, Lcom/htc/widget/TabSwitchActivity;->mPanelSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v0}, Lcom/htc/widget/TabSwitchHost;->getCurrentTab()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/htc/widget/TabSwitchActivity;->mPanelSwitchHost:Lcom/htc/widget/TabSwitchHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/TabSwitchHost;->setCurrentTab(I)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/TabSwitchActivity;->mPanelSwitchHost:Lcom/htc/widget/TabSwitchHost;

    new-instance v1, Lcom/htc/widget/TabSwitchActivity$1;

    invoke-direct {v1, p0}, Lcom/htc/widget/TabSwitchActivity$1;-><init>(Lcom/htc/widget/TabSwitchActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/TabSwitchHost;->setWidgetTouchListener(Lcom/htc/widget/TabSwitchHost$OnSwitchHostListener;)V

    .line 149
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 75
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchActivity;->ensureTabHost()V

    .line 76
    const-string v1, "currentTab"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, cur:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 78
    iget-object v1, p0, Lcom/htc/widget/TabSwitchActivity;->mPanelSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v1, v0}, Lcom/htc/widget/TabSwitchHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/TabSwitchActivity;->mPanelSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v1}, Lcom/htc/widget/TabSwitchHost;->getCurrentTab()I

    move-result v1

    if-gez v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/htc/widget/TabSwitchActivity;->mDefaultTab:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 82
    iget-object v1, p0, Lcom/htc/widget/TabSwitchActivity;->mPanelSwitchHost:Lcom/htc/widget/TabSwitchHost;

    iget-object v2, p0, Lcom/htc/widget/TabSwitchActivity;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/TabSwitchHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 87
    :cond_1
    :goto_0
    return-void

    .line 83
    :cond_2
    iget v1, p0, Lcom/htc/widget/TabSwitchActivity;->mDefaultTabIndex:I

    if-ltz v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/htc/widget/TabSwitchActivity;->mPanelSwitchHost:Lcom/htc/widget/TabSwitchHost;

    iget v2, p0, Lcom/htc/widget/TabSwitchActivity;->mDefaultTabIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/TabSwitchHost;->setCurrentTab(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 158
    iget-object v1, p0, Lcom/htc/widget/TabSwitchActivity;->mPanelSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v1}, Lcom/htc/widget/TabSwitchHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, currentTabTag:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 160
    const-string v1, "currentTab"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_0
    return-void
.end method

.method public onTabTouchDown()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public onTabTouchMove()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public onTabTouchUp()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public setDefaultTab(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/TabSwitchActivity;->mDefaultTab:Ljava/lang/String;

    .line 69
    iput p1, p0, Lcom/htc/widget/TabSwitchActivity;->mDefaultTabIndex:I

    .line 70
    return-void
.end method

.method public setDefaultTab(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/htc/widget/TabSwitchActivity;->mDefaultTab:Ljava/lang/String;

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/TabSwitchActivity;->mDefaultTabIndex:I

    .line 56
    return-void
.end method
