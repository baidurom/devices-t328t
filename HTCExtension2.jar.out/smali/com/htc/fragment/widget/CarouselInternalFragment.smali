.class public Lcom/htc/fragment/widget/CarouselInternalFragment;
.super Lcom/htc/fragment/widget/CarouselFragment;
.source "CarouselInternalFragment.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "authority"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselFragment;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected OnEditModeDrawerClose()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method protected OnEditModeDrawerOpen()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public enableFullScreen(Z)V
    .locals 1
    .parameter "enableFull"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselInternalFragment;->getCarouselHost()Lcom/htc/fragment/widget/CarouselHost;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselInternalFragment;->getCarouselHost()Lcom/htc/fragment/widget/CarouselHost;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/CarouselHost;->enableFullScreen(Z)V

    .line 46
    :cond_0
    return-void
.end method

.method public exitEditMode()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Lcom/htc/fragment/widget/CarouselFragment;->exitEditMode()V

    .line 54
    return-void
.end method

.method public isInEditMode()Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/htc/fragment/widget/CarouselFragment;->isInEditMode()Z

    move-result v0

    return v0
.end method

.method onEditDrawerAboutToOpen()V
    .locals 0

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselInternalFragment;->OnEditModeDrawerOpen()V

    .line 31
    return-void
.end method

.method onEditDrawerCompleteClose()V
    .locals 0

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselInternalFragment;->OnEditModeDrawerClose()V

    .line 36
    return-void
.end method

.method public setResources(Landroid/content/res/Resources;)V
    .locals 0
    .parameter "resource"

    .prologue
    .line 17
    if-eqz p1, :cond_0

    .line 18
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselFragment;->eresources:Landroid/content/res/Resources;

    .line 19
    :cond_0
    return-void
.end method
