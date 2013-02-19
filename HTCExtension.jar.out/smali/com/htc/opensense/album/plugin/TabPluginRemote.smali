.class public Lcom/htc/opensense/album/plugin/TabPluginRemote;
.super Lcom/htc/opensense/plugin/TabPluginWrapper;
.source "TabPluginRemote.java"

# interfaces
.implements Lcom/htc/opensense/album/plugin/IPluginVersion;


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
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/plugin/TabPluginWrapper;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/plugin/TabPluginRemote;->mFromOutside:Z

    .line 25
    iget-object v0, p0, Lcom/htc/opensense/plugin/TabPluginWrapper;->mPlugin:Lcom/htc/opensense/plugin/TabPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/plugin/TabPluginWrapper;->mPlugin:Lcom/htc/opensense/plugin/TabPlugin;

    instance-of v0, v0, Lcom/htc/opensense/album/plugin/TabPluginBase;

    if-eqz v0, :cond_0

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/album/plugin/TabPluginRemote;->mFromOutside:Z

    .line 27
    :cond_0
    return-void
.end method


# virtual methods
.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/htc/opensense/album/plugin/TabPluginRemote;->mFromOutside:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 40
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
    .line 66
    iget-boolean v0, p0, Lcom/htc/opensense/album/plugin/TabPluginRemote;->mFromOutside:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 68
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
    .line 80
    iget-boolean v0, p0, Lcom/htc/opensense/album/plugin/TabPluginRemote;->mFromOutside:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 82
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
    .line 52
    iget-boolean v0, p0, Lcom/htc/opensense/album/plugin/TabPluginRemote;->mFromOutside:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/plugin/TabPluginWrapper;->mPlugin:Lcom/htc/opensense/plugin/TabPlugin;

    check-cast v0, Lcom/htc/opensense/album/plugin/TabPluginBase;

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getVersion()I
    .locals 1

    .prologue
    .line 151
    const/16 v0, 0x28

    return v0
.end method

.method public onCreateAlbumListPlugin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/htc/opensense/album/plugin/TabPluginRemote;->mFromOutside:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 110
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
    .line 94
    iget-boolean v0, p0, Lcom/htc/opensense/album/plugin/TabPluginRemote;->mFromOutside:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 96
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
    .line 136
    iget-boolean v0, p0, Lcom/htc/opensense/album/plugin/TabPluginRemote;->mFromOutside:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 138
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
    .line 122
    iget-boolean v0, p0, Lcom/htc/opensense/album/plugin/TabPluginRemote;->mFromOutside:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/plugin/TabPluginWrapper;->mPlugin:Lcom/htc/opensense/plugin/TabPlugin;

    check-cast v0, Lcom/htc/opensense/album/plugin/TabPluginBase;

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->onCreatePhotoThumbListPlugin()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
