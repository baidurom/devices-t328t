.class public Lcom/htc/widget/PageHandler;
.super Ljava/lang/Object;
.source "PageHandler.java"


# static fields
.field static final TAG:Ljava/lang/String; = "PageHandler"


# instance fields
.field private mMultipageLayout:Lcom/htc/widget/MultiPageLayout;


# direct methods
.method public constructor <init>(Lcom/htc/widget/MultiPageLayout;)V
    .locals 0
    .parameter "pageLayout"

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/htc/widget/PageHandler;->mMultipageLayout:Lcom/htc/widget/MultiPageLayout;

    .line 17
    return-void
.end method


# virtual methods
.method public addPage(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/widget/PageHandler;->mMultipageLayout:Lcom/htc/widget/MultiPageLayout;

    invoke-interface {v0, p1}, Lcom/htc/widget/MultiPageLayout;->addPage(Landroid/view/View;)V

    .line 25
    return-void
.end method

.method public addPage(Landroid/view/View;I)V
    .locals 1
    .parameter "view"
    .parameter "index"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/widget/PageHandler;->mMultipageLayout:Lcom/htc/widget/MultiPageLayout;

    invoke-interface {v0, p1, p2}, Lcom/htc/widget/MultiPageLayout;->addPage(Landroid/view/View;I)V

    .line 37
    return-void
.end method

.method public addPage(Landroid/view/View;IZ)V
    .locals 1
    .parameter "view"
    .parameter "index"
    .parameter "shift"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/widget/PageHandler;->mMultipageLayout:Lcom/htc/widget/MultiPageLayout;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/widget/MultiPageLayout;->addPage(Landroid/view/View;IZ)V

    .line 45
    return-void
.end method

.method public animateBackPreviousPage()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/widget/PageHandler;->mMultipageLayout:Lcom/htc/widget/MultiPageLayout;

    invoke-interface {v0}, Lcom/htc/widget/MultiPageLayout;->animateBackPreviousPage()V

    .line 94
    return-void
.end method

.method public animateToNextPage()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/widget/PageHandler;->mMultipageLayout:Lcom/htc/widget/MultiPageLayout;

    invoke-interface {v0}, Lcom/htc/widget/MultiPageLayout;->animateToNextPage()V

    .line 83
    return-void
.end method

.method public removePage(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/widget/PageHandler;->mMultipageLayout:Lcom/htc/widget/MultiPageLayout;

    invoke-interface {v0, p1}, Lcom/htc/widget/MultiPageLayout;->removePage(I)V

    .line 53
    return-void
.end method

.method public rotationChanged()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/widget/PageHandler;->mMultipageLayout:Lcom/htc/widget/MultiPageLayout;

    invoke-interface {v0}, Lcom/htc/widget/MultiPageLayout;->rotationChanged()V

    .line 102
    return-void
.end method

.method public setOnPageAnimateListener(Lcom/htc/widget/MultiPageLayout$OnPageAnimateListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/widget/PageHandler;->mMultipageLayout:Lcom/htc/widget/MultiPageLayout;

    invoke-interface {v0, p1}, Lcom/htc/widget/MultiPageLayout;->setOnPageAnimateListener(Lcom/htc/widget/MultiPageLayout$OnPageAnimateListener;)V

    .line 110
    return-void
.end method

.method public setPagesParams([Landroid/view/ViewGroup$LayoutParams;[[I)V
    .locals 1
    .parameter "sizes"
    .parameter "paddings"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/widget/PageHandler;->mMultipageLayout:Lcom/htc/widget/MultiPageLayout;

    invoke-interface {v0, p1, p2}, Lcom/htc/widget/MultiPageLayout;->setPagesParams([Landroid/view/ViewGroup$LayoutParams;[[I)V

    .line 63
    return-void
.end method

.method public setPagesSize([Landroid/view/ViewGroup$LayoutParams;[Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "portraitSizes"
    .parameter "landscapeSizes"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/widget/PageHandler;->mMultipageLayout:Lcom/htc/widget/MultiPageLayout;

    invoke-interface {v0, p1, p2}, Lcom/htc/widget/MultiPageLayout;->setPagesSize([Landroid/view/ViewGroup$LayoutParams;[Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    return-void
.end method
