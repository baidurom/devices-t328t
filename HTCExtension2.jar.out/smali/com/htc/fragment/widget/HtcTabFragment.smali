.class public Lcom/htc/fragment/widget/HtcTabFragment;
.super Landroid/app/Fragment;
.source "HtcTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fragment/widget/HtcTabFragment$FragmentTabContentFactory;
    }
.end annotation


# static fields
.field private static tabViewId:I


# instance fields
.field private mBundleKeyPrefix:Ljava/lang/String;

.field private mDefaultTab:Ljava/lang/String;

.field private mDefaultTabIndex:I

.field private mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

.field private mTabHost:Lcom/htc/fragment/widget/HtcTabHost;

.field private preselectedTab:Ljava/lang/String;

.field private tabContentViewIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 286
    const/high16 v0, 0x4000

    sput v0, Lcom/htc/fragment/widget/HtcTabFragment;->tabViewId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 24
    new-instance v0, Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-direct {v0, p0}, Lcom/htc/fragment/app/LocalFragmentManager;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mDefaultTab:Ljava/lang/String;

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mDefaultTabIndex:I

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mBundleKeyPrefix:Ljava/lang/String;

    .line 293
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/HtcTabFragment;->tabContentViewIds:Ljava/util/Map;

    .line 31
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/app/LocalFragmentManager;->setGlobalId(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method private createTabContentViewId()I
    .locals 2

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/htc/fragment/widget/HtcTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 289
    .local v0, activity:Landroid/app/Activity;
    :cond_0
    sget v1, Lcom/htc/fragment/widget/HtcTabFragment;->tabViewId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/htc/fragment/widget/HtcTabFragment;->tabViewId:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 291
    sget v1, Lcom/htc/fragment/widget/HtcTabFragment;->tabViewId:I

    return v1
.end method

.method private ensureTabHost()I
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mTabHost:Lcom/htc/fragment/widget/HtcTabHost;

    if-nez v0, :cond_0

    .line 216
    const v0, 0x2090056

    .line 218
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchRestart()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v0}, Lcom/htc/fragment/app/LocalFragmentManager;->dispatchRestart()V

    .line 100
    return-void
.end method

.method getTabContentViewId(Ljava/lang/String;)I
    .locals 3
    .parameter "tag"

    .prologue
    .line 296
    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabFragment;->tabContentViewIds:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 297
    .local v0, id:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 298
    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabFragment;->tabContentViewIds:Ljava/util/Map;

    invoke-direct {p0}, Lcom/htc/fragment/widget/HtcTabFragment;->createTabContentViewId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getTabHost()Lcom/htc/fragment/widget/HtcTabHost;
    .locals 1

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/htc/fragment/widget/HtcTabFragment;->ensureTabHost()I

    .line 211
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mTabHost:Lcom/htc/fragment/widget/HtcTabHost;

    return-object v0
.end method

.method public getTabWidget()Lcom/htc/fragment/widget/HtcTabWidget;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mTabHost:Lcom/htc/fragment/widget/HtcTabHost;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/HtcTabHost;->getTabWidget()Lcom/htc/fragment/widget/HtcTabWidget;

    move-result-object v0

    return-object v0
.end method

.method public newTabContentFactory(Ljava/lang/String;)Lcom/htc/fragment/widget/HtcTabHost$TabContentFactory;
    .locals 2
    .parameter "fragmentDescription"

    .prologue
    .line 236
    new-instance v0, Lcom/htc/fragment/widget/HtcTabFragment$FragmentTabContentFactory;

    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-direct {v0, v1, p1}, Lcom/htc/fragment/widget/HtcTabFragment$FragmentTabContentFactory;-><init>(Lcom/htc/fragment/app/LocalFragmentManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 68
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "saved"

    .prologue
    .line 77
    const v3, 0x2090056

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/fragment/widget/HtcTabHost;

    iput-object v3, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mTabHost:Lcom/htc/fragment/widget/HtcTabHost;

    .line 78
    iget-object v3, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mTabHost:Lcom/htc/fragment/widget/HtcTabHost;

    iget-object v4, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v3, v4}, Lcom/htc/fragment/widget/HtcTabHost;->setup(Lcom/htc/fragment/app/LocalFragmentManager;)V

    .line 79
    iget-object v3, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mTabHost:Lcom/htc/fragment/widget/HtcTabHost;

    invoke-virtual {v3, p0}, Lcom/htc/fragment/widget/HtcTabHost;->setHtcTabFragment(Lcom/htc/fragment/widget/HtcTabFragment;)V

    .line 81
    if-nez p3, :cond_2

    const/4 v1, 0x0

    .line 82
    .local v1, cur:Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    .line 83
    iput-object v1, p0, Lcom/htc/fragment/widget/HtcTabFragment;->preselectedTab:Ljava/lang/String;

    .line 86
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, className:Ljava/lang/String;
    if-nez p3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, glbalId:Ljava/lang/String;
    :goto_1
    if-eqz p3, :cond_1

    .line 89
    iget-object v3, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v3, v2}, Lcom/htc/fragment/app/LocalFragmentManager;->setGlobalId(Ljava/lang/String;)V

    .line 92
    :cond_1
    iget-object v3, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v3, p3}, Lcom/htc/fragment/app/LocalFragmentManager;->dispatchCreateView(Landroid/os/Bundle;)V

    .line 94
    iget-object v3, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mTabHost:Lcom/htc/fragment/widget/HtcTabHost;

    return-object v3

    .line 81
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #cur:Ljava/lang/String;
    .end local v2           #glbalId:Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mBundleKeyPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "currentTab"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 87
    .restart local v0       #className:Ljava/lang/String;
    .restart local v1       #cur:Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mBundleKeyPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "globalId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public onCurrentTabChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "currentTab"

    .prologue
    .line 283
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 151
    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/HtcTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/HtcTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->dispatchDestroy(Z)V

    .line 152
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 153
    return-void

    .line 151
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v0}, Lcom/htc/fragment/app/LocalFragmentManager;->dispatchDestroyView()V

    .line 140
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 141
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 162
    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/HtcTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/HtcTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->dispatchPause(Z)V

    .line 163
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 164
    return-void

    .line 162
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 173
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v0}, Lcom/htc/fragment/app/LocalFragmentManager;->dispatchResume()V

    .line 174
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 183
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 184
    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mTabHost:Lcom/htc/fragment/widget/HtcTabHost;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/HtcTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, currentTabTag:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mTabHost:Lcom/htc/fragment/widget/HtcTabHost;

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mTabHost:Lcom/htc/fragment/widget/HtcTabHost;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/HtcTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 189
    :cond_0
    if-eqz v0, :cond_1

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mBundleKeyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "currentTab"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mBundleKeyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "globalId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v1, p1}, Lcom/htc/fragment/app/LocalFragmentManager;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 196
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 112
    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mTabHost:Lcom/htc/fragment/widget/HtcTabHost;

    if-eqz v1, :cond_1

    .line 113
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabFragment;->preselectedTab:Ljava/lang/String;

    .line 114
    .local v0, cur:Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/fragment/widget/HtcTabFragment;->preselectedTab:Ljava/lang/String;

    .line 115
    if-eqz v0, :cond_0

    .line 116
    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mTabHost:Lcom/htc/fragment/widget/HtcTabHost;

    invoke-virtual {v1, v0}, Lcom/htc/fragment/widget/HtcTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mTabHost:Lcom/htc/fragment/widget/HtcTabHost;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/HtcTabHost;->getCurrentTab()I

    move-result v1

    if-gez v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mDefaultTab:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 120
    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mTabHost:Lcom/htc/fragment/widget/HtcTabHost;

    iget-object v2, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fragment/widget/HtcTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 129
    .end local v0           #cur:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v1}, Lcom/htc/fragment/app/LocalFragmentManager;->dispatchStart()V

    .line 130
    return-void

    .line 121
    .restart local v0       #cur:Ljava/lang/String;
    :cond_2
    iget v1, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mDefaultTabIndex:I

    if-ltz v1, :cond_3

    .line 122
    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mTabHost:Lcom/htc/fragment/widget/HtcTabHost;

    iget v2, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mDefaultTabIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/fragment/widget/HtcTabHost;->setCurrentTab(I)V

    goto :goto_0

    .line 124
    :cond_3
    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mTabHost:Lcom/htc/fragment/widget/HtcTabHost;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/fragment/widget/HtcTabHost;->setCurrentTab(I)V

    goto :goto_0
.end method

.method public setDefaultTab(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mDefaultTab:Ljava/lang/String;

    .line 59
    iput p1, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mDefaultTabIndex:I

    .line 60
    return-void
.end method

.method public setDefaultTab(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mDefaultTab:Ljava/lang/String;

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fragment/widget/HtcTabFragment;->mDefaultTabIndex:I

    .line 46
    return-void
.end method
