.class public Lcom/htc/widget/CarouselInternalActivity;
.super Lcom/htc/widget/CarouselActivity;
.source "CarouselInternalActivity.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "authority"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/htc/widget/CarouselActivity;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected OnEditModeDrawerClose()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method protected OnEditModeDrawerOpen()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public enableFullScreen(Z)V
    .locals 1
    .parameter "enableFull"

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/htc/widget/CarouselInternalActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/htc/widget/CarouselInternalActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/widget/CarouselHost;->enableFullScreen(Z)V

    .line 67
    :cond_0
    return-void
.end method

.method public exitEditMode()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Lcom/htc/widget/CarouselActivity;->exitEditMode()V

    .line 85
    return-void
.end method

.method public isInEditMode()Z
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lcom/htc/widget/CarouselActivity;->isInEditMode()Z

    move-result v0

    return v0
.end method

.method onEditDrawerAboutToOpen()V
    .locals 0

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/htc/widget/CarouselInternalActivity;->OnEditModeDrawerOpen()V

    .line 50
    return-void
.end method

.method onEditDrawerCompleteClose()V
    .locals 0

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/htc/widget/CarouselInternalActivity;->OnEditModeDrawerClose()V

    .line 56
    return-void
.end method

.method public setResources(Landroid/content/res/Resources;)V
    .locals 0
    .parameter "resource"

    .prologue
    .line 25
    if-eqz p1, :cond_0

    .line 26
    iput-object p1, p0, Lcom/htc/widget/CarouselActivity;->eresources:Landroid/content/res/Resources;

    .line 27
    :cond_0
    return-void
.end method
