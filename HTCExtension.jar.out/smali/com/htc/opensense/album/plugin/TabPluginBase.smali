.class public abstract Lcom/htc/opensense/album/plugin/TabPluginBase;
.super Lcom/htc/opensense/plugin/TabPlugin;
.source "TabPluginBase.java"

# interfaces
.implements Lcom/htc/opensense/album/plugin/IPluginVersion;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/htc/opensense/plugin/TabPlugin;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method


# virtual methods
.method public abstract getAccountType()Ljava/lang/String;
.end method

.method protected getActionByEntryPlugin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->onCreateFriendListPlugin()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "com.htc.album.actions.opensense.friends"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.htc.album.actions.opensense.albums"

    goto :goto_0
.end method

.method public getActivityIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->getActionByEntryPlugin()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, action:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v3, intentSocial:Landroid/content/Intent;
    const-string v4, "service_name"

    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v4, "service_display"

    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->getTabName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v4, "service_url"

    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->getAccountType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v4, "opensense_tab"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 65
    const-string v4, "login_btn_text"

    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->getLoginButtonText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v4, "login_btn_description"

    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->getLoginDescriptionText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->onCreateFriendListPlugin()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v4, "friendplugin"

    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->onCreateFriendListPlugin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->onCreateAlbumListPlugin()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v4, "albumplugin"

    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->onCreateAlbumListPlugin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->onCreatePhotoThumbListPlugin()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v4, "photothumbplugin"

    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->onCreatePhotoThumbListPlugin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    :cond_2
    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->onCreatePhotoFullListPlugin()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v4, "photofullplugin"

    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->onCreatePhotoFullListPlugin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    :cond_3
    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->onCreatePhotoEditorPlugin()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v4, "photoeditorplugin"

    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->onCreatePhotoEditorPlugin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    :cond_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 74
    .local v1, bundle:Landroid/os/Bundle;
    const-string v4, "social_intent"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 76
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 77
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "social_bundle"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 79
    return-object v2
.end method

.method public abstract getDrawableResSet()[I
.end method

.method public getDrawableSet()[Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->getDrawableResSet()[I

    move-result-object v2

    .line 110
    .local v2, resId:[I
    array-length v4, v2

    if-nez v4, :cond_1

    const/4 v3, 0x0

    .line 117
    :cond_0
    return-object v3

    .line 112
    :cond_1
    array-length v4, v2

    new-array v3, v4, [Landroid/graphics/drawable/Drawable;

    .line 113
    .local v3, ret:[Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 114
    .local v1, res:Landroid/content/res/Resources;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 115
    aget v4, v2, v0

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v0

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public abstract getIndicatorLabelRes()I
.end method

.method public abstract getLoginButtonText()Ljava/lang/String;
.end method

.method public abstract getLoginDescriptionText()Ljava/lang/String;
.end method

.method public abstract getLogoRes()Landroid/graphics/Bitmap;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, szPackageName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->onCreateFriendListPlugin()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 93
    const-string v0, "com.htc.album.SocialNetwork.MfFragmentMainFriends"

    .line 97
    :goto_0
    return-object v0

    .line 95
    :cond_0
    const-string v0, "com.htc.album.SocialNetwork.MfFragmentMainOnline"

    goto :goto_0
.end method

.method public getTabName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->getIndicatorLabelRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVersion()I
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x28

    return v0
.end method

.method public isServiceReady()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onCreateAlbumListPlugin()Ljava/lang/String;
.end method

.method public abstract onCreateFriendListPlugin()Ljava/lang/String;
.end method

.method public abstract onCreatePhotoEditorPlugin()Ljava/lang/String;
.end method

.method public abstract onCreatePhotoFullListPlugin()Ljava/lang/String;
.end method

.method public abstract onCreatePhotoThumbListPlugin()Ljava/lang/String;
.end method
