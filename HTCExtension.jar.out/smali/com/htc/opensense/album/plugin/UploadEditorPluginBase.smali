.class public abstract Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;
.super Lcom/htc/opensense/album/plugin/MediaDataListPluginBase;
.source "UploadEditorPluginBase.java"


# instance fields
.field protected mPid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/opensense/album/plugin/IUIHandler;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "uiHandler"
    .parameter "pid"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/album/plugin/MediaDataListPluginBase;-><init>(Landroid/content/Context;Lcom/htc/opensense/album/plugin/IUIHandler;)V

    .line 14
    iput-object p3, p0, Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;->mPid:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public abstract getDescriptionHintText()Ljava/lang/String;
.end method

.method public abstract getIndicatorRes()I
.end method

.method public onEnableEditorDescription()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public onEnableEditorTagButton()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public onEnableEditorTitle()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method
