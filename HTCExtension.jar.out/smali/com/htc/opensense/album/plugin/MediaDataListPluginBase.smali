.class public abstract Lcom/htc/opensense/album/plugin/MediaDataListPluginBase;
.super Lcom/htc/opensense/album/plugin/BaseListPlugin;
.source "MediaDataListPluginBase.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/opensense/album/plugin/IUIHandler;)V
    .locals 0
    .parameter "context"
    .parameter "uiHandler"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/album/plugin/BaseListPlugin;-><init>(Landroid/content/Context;Lcom/htc/opensense/album/plugin/IUIHandler;)V

    .line 24
    return-void
.end method


# virtual methods
.method public getPhotos(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "aid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/plugin/MediumData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhotos(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "aid"
    .parameter "mids"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/plugin/MediumData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTags([Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "mids"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/data/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public onEnableCaptionPlugin()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public onEnableCommentsPlugin()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public onEnableTagsPlugin()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public onShowFooterBar()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public onShowHeaderBar()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method
