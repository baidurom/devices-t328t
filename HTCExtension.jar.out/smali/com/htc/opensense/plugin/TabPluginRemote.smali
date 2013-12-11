.class public Lcom/htc/opensense/plugin/TabPluginRemote;
.super Lcom/htc/opensense/plugin/TabPluginWrapper;
.source "TabPluginRemote.java"


# instance fields
.field private mFromOutside:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1
    .parameter "context"
    .parameter "cName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/plugin/TabPluginWrapper;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/plugin/TabPluginRemote;->mFromOutside:Z

    .line 24
    iget-object v0, p0, Lcom/htc/opensense/plugin/TabPluginWrapper;->mPlugin:Lcom/htc/opensense/plugin/TabPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/plugin/TabPluginWrapper;->mPlugin:Lcom/htc/opensense/plugin/TabPlugin;

    instance-of v0, v0, Lcom/htc/opensense/album/plugin/TabPluginBase;

    if-eqz v0, :cond_0

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/plugin/TabPluginRemote;->mFromOutside:Z

    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/htc/opensense/plugin/TabPluginRemote;->mFromOutside:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/plugin/TabPluginWrapper;->mPlugin:Lcom/htc/opensense/plugin/TabPlugin;

    check-cast v0, Lcom/htc/opensense/album/plugin/TabPluginBase;

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->getAccountType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLoginButtonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/opensense/plugin/TabPluginRemote;->mFromOutside:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/plugin/TabPluginWrapper;->mPlugin:Lcom/htc/opensense/plugin/TabPlugin;

    check-cast v0, Lcom/htc/opensense/album/plugin/TabPluginBase;

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->getLoginButtonText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLogoRes()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/htc/opensense/plugin/TabPluginRemote;->mFromOutside:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/plugin/TabPluginWrapper;->mPlugin:Lcom/htc/opensense/plugin/TabPlugin;

    check-cast v0, Lcom/htc/opensense/album/plugin/TabPluginBase;

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->getLogoRes()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/htc/opensense/plugin/TabPluginRemote;->mFromOutside:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/plugin/TabPluginWrapper;->mPlugin:Lcom/htc/opensense/plugin/TabPlugin;

    check-cast v0, Lcom/htc/opensense/album/plugin/TabPluginBase;

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isPluginServiceReady()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/htc/opensense/plugin/TabPluginRemote;->mFromOutside:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 129
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/plugin/TabPluginWrapper;->mPlugin:Lcom/htc/opensense/plugin/TabPlugin;

    check-cast v0, Lcom/htc/opensense/album/plugin/TabPluginBase;

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->isServiceReady()Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateAlbumListPlugin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/htc/opensense/plugin/TabPluginRemote;->mFromOutside:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/plugin/TabPluginWrapper;->mPlugin:Lcom/htc/opensense/plugin/TabPlugin;

    check-cast v0, Lcom/htc/opensense/album/plugin/TabPluginBase;

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->onCreateAlbumListPlugin()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateFriendListPlugin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/htc/opensense/plugin/TabPluginRemote;->mFromOutside:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/plugin/TabPluginWrapper;->mPlugin:Lcom/htc/opensense/plugin/TabPlugin;

    check-cast v0, Lcom/htc/opensense/album/plugin/TabPluginBase;

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->onCreateFriendListPlugin()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateFullPhotoListPlugin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/htc/opensense/plugin/TabPluginRemote;->mFromOutside:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 109
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/plugin/TabPluginWrapper;->mPlugin:Lcom/htc/opensense/plugin/TabPlugin;

    check-cast v0, Lcom/htc/opensense/album/plugin/TabPluginBase;

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->onCreatePhotoFullListPlugin()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateThumbPhotoListPlugin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/htc/opensense/plugin/TabPluginRemote;->mFromOutside:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 99
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/plugin/TabPluginWrapper;->mPlugin:Lcom/htc/opensense/plugin/TabPlugin;

    check-cast v0, Lcom/htc/opensense/album/plugin/TabPluginBase;

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->onCreatePhotoThumbListPlugin()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateUploadEditorPlugin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/htc/opensense/plugin/TabPluginRemote;->mFromOutside:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 119
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/plugin/TabPluginWrapper;->mPlugin:Lcom/htc/opensense/plugin/TabPlugin;

    check-cast v0, Lcom/htc/opensense/album/plugin/TabPluginBase;

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->onCreatePhotoEditorPlugin()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
