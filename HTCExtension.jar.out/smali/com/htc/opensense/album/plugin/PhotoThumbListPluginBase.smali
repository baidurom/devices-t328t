.class public abstract Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;
.super Lcom/htc/opensense/album/plugin/MediaDataListPluginBase;
.source "PhotoThumbListPluginBase.java"

# interfaces
.implements Lcom/htc/opensense/album/plugin/ICommandBar;


# instance fields
.field protected mPid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/opensense/album/plugin/IUIHandler;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "uihandler"
    .parameter "pid"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/album/plugin/MediaDataListPluginBase;-><init>(Landroid/content/Context;Lcom/htc/opensense/album/plugin/IUIHandler;)V

    .line 24
    iput-object p3, p0, Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;->mPid:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getCommandBar()Lcom/htc/opensense/album/plugin/CommandBar;
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onContextItemSelected(Landroid/view/MenuItem;ILjava/lang/String;)Z
.end method

.method public abstract onPrepareContextMenu(Landroid/view/Menu;ILjava/lang/String;)Z
.end method

.method public onThumbItemClicked(ILjava/lang/String;)Z
    .locals 2
    .parameter "position"
    .parameter "id"

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;->getUIHandler()Lcom/htc/opensense/album/plugin/IUIHandler;

    move-result-object v0

    .line 68
    .local v0, handler:Lcom/htc/opensense/album/plugin/IUIHandler;
    if-eqz v0, :cond_0

    .line 69
    const v1, 0x10200002

    invoke-interface {v0, v1, p1}, Lcom/htc/opensense/album/plugin/IUIHandler;->notifyUICommand(II)I

    .line 71
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
