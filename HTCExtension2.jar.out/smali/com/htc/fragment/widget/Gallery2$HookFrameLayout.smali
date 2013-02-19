.class Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;
.super Landroid/widget/FrameLayout;
.source "Gallery2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fragment/widget/Gallery2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HookFrameLayout"
.end annotation


# instance fields
.field private carousel:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/fragment/widget/CarouselFragment;",
            ">;"
        }
    .end annotation
.end field

.field private tabs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1922
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1918
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;->carousel:Ljava/lang/ref/WeakReference;

    .line 1923
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;->setWillNotDraw(Z)V

    .line 1924
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;->tabs:Ljava/util/Map;

    .line 1925
    return-void
.end method


# virtual methods
.method addTab(Ljava/lang/String;Landroid/view/View;)V
    .locals 3
    .parameter "tag"
    .parameter "child"

    .prologue
    const/4 v2, -0x1

    .line 1932
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;->tabs:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1933
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicated Tab ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1934
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;->tabs:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1935
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v2, v0, v1}, Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 1938
    return-void
.end method

.method public addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 3
    .parameter "child"
    .parameter "index"
    .parameter "params"
    .parameter "preventRequestLayout"

    .prologue
    .line 1963
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1964
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1965
    const-string v0, "naeco"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WARMING: add a view again, child = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fragment/widget/CarouselLog;->dw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1967
    const/4 v0, 0x1

    .line 1973
    :goto_0
    return v0

    .line 1969
    :cond_0
    const-string v0, "naeco"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: add a view with parent, child = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", parent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fragment/widget/CarouselLog;->de(Ljava/lang/String;Ljava/lang/String;)V

    .line 1970
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1973
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 1981
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1982
    return-void
.end method

.method public checkAndDetachViewFromParent(Landroid/view/View;)Z
    .locals 1
    .parameter "child"

    .prologue
    .line 1989
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1990
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->detachViewFromParent(Landroid/view/View;)V

    .line 1991
    const/4 v0, 0x1

    .line 1993
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getCarousel()Lcom/htc/fragment/widget/CarouselFragment;
    .locals 3

    .prologue
    .line 1941
    iget-object v2, p0, Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;->carousel:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/fragment/widget/CarouselFragment;

    .line 1942
    .local v1, result:Lcom/htc/fragment/widget/CarouselFragment;
    if-nez v1, :cond_0

    .line 1943
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1944
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v2, :cond_0

    .line 1945
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1946
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/htc/fragment/widget/CarouselFragment;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1947
    check-cast v1, Lcom/htc/fragment/widget/CarouselFragment;

    .line 1950
    .end local v0           #parent:Landroid/view/ViewParent;
    :cond_0
    return-object v1
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2022
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 2013
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;->getDefaultSize(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;->setMeasuredDimension(II)V

    .line 2015
    return-void
.end method

.method setCarousel(Lcom/htc/fragment/widget/CarouselFragment;)V
    .locals 1
    .parameter "carousel"

    .prologue
    .line 1928
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;->carousel:Ljava/lang/ref/WeakReference;

    .line 1929
    return-void
.end method
