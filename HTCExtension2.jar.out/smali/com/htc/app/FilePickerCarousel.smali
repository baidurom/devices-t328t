.class public Lcom/htc/app/FilePickerCarousel;
.super Lcom/htc/fragment/widget/CarouselFragment;
.source "FilePickerCarousel.java"


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    const-string v0, "com.htc.carousel.FilePickerCarouselProvider"

    invoke-direct {p0, v0}, Lcom/htc/fragment/widget/CarouselFragment;-><init>(Ljava/lang/String;)V

    .line 12
    iput-boolean v1, p0, Lcom/htc/app/FilePickerCarousel;->DEBUG:Z

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerCarousel;->TAG:Ljava/lang/String;

    .line 19
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/app/FilePickerCarousel;->requestCarouselFeature(I)Z

    .line 20
    invoke-virtual {p0, v1}, Lcom/htc/app/FilePickerCarousel;->setGId(I)V

    .line 21
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x1

    const v11, 0x208026b

    const v10, 0x20800ea

    const v3, 0x208005a

    .line 30
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/CarouselFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 32
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/htc/app/FilePickerCarousel;->requestCarouselFeature(I)Z

    .line 33
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCarousel;->getCarouselHost()Lcom/htc/fragment/widget/CarouselHost;

    move-result-object v8

    .line 35
    .local v8, host:Lcom/htc/fragment/widget/CarouselHost;
    iget-object v0, p0, Lcom/htc/app/FilePickerCarousel;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCarousel;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerCarousel;->mContext:Landroid/content/Context;

    .line 39
    :cond_0
    iget-object v9, p0, Lcom/htc/app/FilePickerCarousel;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/htc/fragment/widget/CarouselTabSpec;

    const-string v1, "Tab_Recent"

    const v2, 0x20403dc

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCarousel;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v4, Lcom/htc/app/FilePickerRecentFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v7}, Lcom/htc/fragment/widget/CarouselTabSpec;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselTabSpec;->setArguments(Landroid/os/Bundle;)Lcom/htc/fragment/widget/CarouselTabSpec;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Lcom/htc/fragment/widget/CarouselHost;->addTab(Landroid/content/Context;Lcom/htc/fragment/widget/CarouselTabSpec;)V

    .line 47
    const-string v0, "Tab_Recent"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Lcom/htc/fragment/widget/CarouselHost;->setCountVisibility(Ljava/lang/String;Z)V

    .line 50
    iget-object v9, p0, Lcom/htc/app/FilePickerCarousel;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/htc/fragment/widget/CarouselTabSpec;

    const-string v1, "Tab_Type"

    const v2, 0x20403dd

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCarousel;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v3, Lcom/htc/app/FilePickerTypeFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    move v3, v11

    move v4, v11

    move v5, v11

    invoke-direct/range {v0 .. v7}, Lcom/htc/fragment/widget/CarouselTabSpec;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9, v0}, Lcom/htc/fragment/widget/CarouselHost;->addTab(Landroid/content/Context;Lcom/htc/fragment/widget/CarouselTabSpec;)V

    .line 55
    const-string v0, "Tab_Type"

    invoke-virtual {v8, v0, v12}, Lcom/htc/fragment/widget/CarouselHost;->setCountVisibility(Ljava/lang/String;Z)V

    .line 58
    iget-object v9, p0, Lcom/htc/app/FilePickerCarousel;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/htc/fragment/widget/CarouselTabSpec;

    const-string v1, "Tab_Favorites"

    const v2, 0x20403de

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCarousel;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v3, Lcom/htc/app/FilePickerFavoritesFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    move v3, v10

    move v4, v10

    move v5, v10

    invoke-direct/range {v0 .. v7}, Lcom/htc/fragment/widget/CarouselTabSpec;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9, v0}, Lcom/htc/fragment/widget/CarouselHost;->addTab(Landroid/content/Context;Lcom/htc/fragment/widget/CarouselTabSpec;)V

    .line 65
    const-string v0, "Tab_Favorites"

    invoke-virtual {v8, v0, v12}, Lcom/htc/fragment/widget/CarouselHost;->setCountVisibility(Ljava/lang/String;Z)V

    .line 66
    return-void
.end method
