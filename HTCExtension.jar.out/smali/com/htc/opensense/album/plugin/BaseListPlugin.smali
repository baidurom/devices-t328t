.class public abstract Lcom/htc/opensense/album/plugin/BaseListPlugin;
.super Ljava/lang/Object;
.source "BaseListPlugin.java"

# interfaces
.implements Lcom/htc/opensense/album/plugin/IPluginVersion;
.implements Lcom/htc/opensense/album/plugin/IDownloadHost;


# instance fields
.field mContext:Landroid/content/Context;

.field mDataBundle:Landroid/os/Bundle;

.field mUIHandler:Lcom/htc/opensense/album/plugin/IUIHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/opensense/album/plugin/IUIHandler;)V
    .locals 1
    .parameter "context"
    .parameter "uiHandler"

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/htc/opensense/album/plugin/BaseListPlugin;->mContext:Landroid/content/Context;

    .line 21
    iput-object v0, p0, Lcom/htc/opensense/album/plugin/BaseListPlugin;->mUIHandler:Lcom/htc/opensense/album/plugin/IUIHandler;

    .line 22
    iput-object v0, p0, Lcom/htc/opensense/album/plugin/BaseListPlugin;->mDataBundle:Landroid/os/Bundle;

    .line 31
    iput-object p1, p0, Lcom/htc/opensense/album/plugin/BaseListPlugin;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/htc/opensense/album/plugin/BaseListPlugin;->mUIHandler:Lcom/htc/opensense/album/plugin/IUIHandler;

    .line 33
    return-void
.end method


# virtual methods
.method public getAccounts()[Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getActiveUser(Landroid/accounts/Account;)Lcom/htc/opensense/album/plugin/PersonData;
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/opensense/album/plugin/BaseListPlugin;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDataBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/opensense/album/plugin/BaseListPlugin;->mDataBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getUIHandler()Lcom/htc/opensense/album/plugin/IUIHandler;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/opensense/album/plugin/BaseListPlugin;->mUIHandler:Lcom/htc/opensense/album/plugin/IUIHandler;

    return-object v0
.end method

.method public final getVersion()I
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x28

    return v0
.end method

.method public initAccountAuthentication(Lcom/htc/opensense/album/plugin/IAuthenticationResult;)Z
    .locals 1
    .parameter "callback"

    .prologue
    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public initAccountSignIn(Lcom/htc/opensense/album/plugin/ISignInResult;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 202
    return-void
.end method

.method public onCreateDownloadManager()Lcom/htc/opensense/album/plugin/IDownloadManager;
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onDeInit()V
.end method

.method public onEnableAuthenticationProcedure()Z
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public onEnableCacheList()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method public onEnableSignInProcedure()Z
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onFetchUrlBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method public abstract onInit()V
.end method

.method public abstract onOptionsItemSelected(Landroid/view/MenuItem;ILjava/lang/String;)Z
.end method

.method public abstract onPrepareOptionsMenu(Landroid/view/Menu;ILjava/lang/String;)Z
.end method

.method public onUIActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 130
    return-void
.end method

.method public onUIHandlerMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 121
    return-void
.end method

.method public setDataBundle(Landroid/os/Bundle;)V
    .locals 0
    .parameter "dataBundle"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/htc/opensense/album/plugin/BaseListPlugin;->mDataBundle:Landroid/os/Bundle;

    .line 114
    return-void
.end method

.method public setUIHandler(Lcom/htc/opensense/album/plugin/IUIHandler;)V
    .locals 0
    .parameter "uiHandler"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/htc/opensense/album/plugin/BaseListPlugin;->mUIHandler:Lcom/htc/opensense/album/plugin/IUIHandler;

    .line 86
    return-void
.end method
