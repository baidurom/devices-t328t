.class public abstract Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
.super Lcom/htc/opensense/album/plugin/BaseListPlugin;
.source "AlbumListPluginBase.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/opensense/album/plugin/IUIHandler;)V
    .locals 0
    .parameter "context"
    .parameter "uihandler"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/album/plugin/BaseListPlugin;-><init>(Landroid/content/Context;Lcom/htc/opensense/album/plugin/IUIHandler;)V

    .line 22
    return-void
.end method


# virtual methods
.method public abstract getAlbums(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/plugin/AlbumData;",
            ">;"
        }
    .end annotation
.end method

.method public getAlbums([Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "aids"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/plugin/AlbumData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method
