.class public abstract Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;
.super Lcom/htc/opensense/album/plugin/MediaDataListPluginBase;
.source "PhotoFullListPluginBase.java"

# interfaces
.implements Lcom/htc/opensense/album/plugin/ICommandBar;


# instance fields
.field private mCaptionMode:Z

.field protected mPid:Ljava/lang/String;

.field private mTagMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/opensense/album/plugin/IUIHandler;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "uihandler"
    .parameter "pid"

    .prologue
    const/4 v0, 0x1

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/album/plugin/MediaDataListPluginBase;-><init>(Landroid/content/Context;Lcom/htc/opensense/album/plugin/IUIHandler;)V

    .line 15
    iput-boolean v0, p0, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->mTagMode:Z

    .line 16
    iput-boolean v0, p0, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->mCaptionMode:Z

    .line 27
    iput-object p3, p0, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->mPid:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getCaptionMode()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->mCaptionMode:Z

    return v0
.end method

.method public getCommandBar()Lcom/htc/opensense/album/plugin/CommandBar;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTagMode()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->mTagMode:Z

    return v0
.end method

.method public abstract onGetComment(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract onGetCommentCount(Ljava/lang/String;)I
.end method

.method public abstract onGetIndicatorBitmap()Landroid/graphics/Bitmap;
.end method

.method public onNotifyUpdateCaptionMode(Z)V
    .locals 0
    .parameter "isShowCaption"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->mCaptionMode:Z

    .line 81
    return-void
.end method

.method public onNotifyUpdateTagMode(Z)V
    .locals 0
    .parameter "isShowTag"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->mTagMode:Z

    .line 71
    return-void
.end method
