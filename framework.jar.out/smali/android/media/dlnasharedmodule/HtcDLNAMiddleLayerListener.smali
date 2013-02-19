.class Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;
.super Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerDeprecatedListener;
.source "HtcDLNAMiddleLayerListener.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HtcDLNAServiceManager"


# instance fields
.field mControllerListener:Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;

.field mDiscoverRendererListener:Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverListener;

.field mManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

.field private mRendererList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mRendererListener:Landroid/media/dlnasharedmodule/HtcDLNARendererStatusListener;

.field mServerListener:Landroid/media/dlnasharedmodule/HtcDLNAServerStatusListener;


# direct methods
.method public constructor <init>(Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;)V
    .locals 2
    .parameter "manager"

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerDeprecatedListener;-><init>()V

    .line 28
    iput-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    .line 30
    iput-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mDiscoverRendererListener:Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverListener;

    .line 31
    iput-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererListener:Landroid/media/dlnasharedmodule/HtcDLNARendererStatusListener;

    .line 32
    iput-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mServerListener:Landroid/media/dlnasharedmodule/HtcDLNAServerStatusListener;

    .line 33
    iput-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 35
    iput-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    .line 39
    iput-object p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    .line 41
    return-void
.end method


# virtual methods
.method public albumArtDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "serverID"
    .parameter "contentID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 451
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 452
    .local v0, listener:Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;->onAlbumArtDownloaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :cond_0
    return-void
.end method

.method public controllerErrorNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .parameter "rendererID"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 350
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][controllerErrorNotify] rendererID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorReason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 354
    .local v0, listener:Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;->onError(Ljava/lang/String;ILjava/lang/String;)V

    .line 358
    :cond_0
    return-void
.end method

.method public controllerResponseNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .parameter "rendererID"
    .parameter "resID"
    .parameter "resReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 369
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][controllerResponseNotify] rendererID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resReason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const/16 v1, -0x135

    if-ne p2, v1, :cond_0

    .line 374
    const-string v1, "HtcDLNAServiceManager"

    const-string v2, "[controllerResponseNotify] setState:1"

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v1, v4, v4}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->setState(IZ)V

    .line 378
    :cond_0
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 379
    .local v0, listener:Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_1

    .line 381
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;->onResponse(Ljava/lang/String;ILjava/lang/String;)V

    .line 383
    :cond_1
    return-void
.end method

.method public getContentItemDetailsNotify(Ljava/lang/String;Ljava/lang/String;Lcom/htc/dlnainterface/DLNAContentItemDetails;)V
    .locals 4
    .parameter "serverID"
    .parameter "contentID"
    .parameter "details"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 394
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][getContentItemDetailsNotify] serverID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", contentID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", details = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 398
    .local v0, listener:Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_0

    .line 400
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p3}, Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;->onItemDetailsUpdated(JLcom/htc/dlnainterface/DLNAContentItemDetails;)V

    .line 402
    :cond_0
    return-void
.end method

.method public mirrorRendererAddedNotify(Lcom/htc/dlnainterface/DLNARendererData;)V
    .locals 4
    .parameter "rendererData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 434
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][mirrorRendererAddedNotify] rendererData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rendererID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rendererName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererListener:Landroid/media/dlnasharedmodule/HtcDLNARendererStatusListener;

    .line 439
    .local v0, listener:Landroid/media/dlnasharedmodule/HtcDLNARendererStatusListener;
    if-eqz v0, :cond_0

    .line 440
    iget-object v1, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/dlnasharedmodule/HtcDLNARendererStatusListener;->onMirrorRendererConnected(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :cond_0
    return-void
.end method

.method public playlistCreatedResultNotify(Ljava/lang/String;JJ)V
    .locals 5
    .parameter "rendererID"
    .parameter "totalCount"
    .parameter "currentIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 196
    const-string v2, "HtcDLNAServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAMiddleLayerListener][playlistCreatedResultNotify] currentIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", totalCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v0, v2, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    .line 200
    .local v0, info:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;
    iput-wide p4, v0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    .line 201
    iput-wide p2, v0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mTotal:J

    .line 203
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 204
    .local v1, listener:Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {v1, v0}, Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;->onControllerInfoupdated(Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)V

    .line 208
    :cond_0
    return-void
.end method

.method public rendererAddedNotify(Lcom/htc/dlnainterface/DLNARendererData;)V
    .locals 5
    .parameter "rendererData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 99
    const-string v2, "HtcDLNAServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAMiddleLayerListener][rendererAddedNotify] rendererData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", rendererID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", rendererName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    iget-object v4, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v2, v2, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v2, v2, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;

    invoke-virtual {v2, p1}, Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;->checkIfMatchRenderer(Lcom/htc/dlnainterface/DLNARendererData;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v2, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v3, v3, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererListener:Landroid/media/dlnasharedmodule/HtcDLNARendererStatusListener;

    .line 115
    .local v1, listener:Landroid/media/dlnasharedmodule/HtcDLNARendererStatusListener;
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 116
    .local v0, controllerListener:Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_2

    .line 118
    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v2, v2, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-object v3, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    iput-object v3, v2, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    .line 121
    :cond_2
    if-eqz v1, :cond_0

    .line 123
    iget-object v2, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    iget-object v3, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/media/dlnasharedmodule/HtcDLNARendererStatusListener;->onConnected(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public rendererListUpdateNotify([Lcom/htc/dlnainterface/DLNARendererData;)V
    .locals 10
    .parameter "rendererList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 155
    const-string v7, "HtcDLNAServiceManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HtcDLNAMiddleLayerListener][rendererListUpdateNotify] rendererList = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v7, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v6, v7, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    .line 158
    .local v6, rendererId:Ljava/lang/String;
    move-object v0, p1

    .local v0, arr$:[Lcom/htc/dlnainterface/DLNARendererData;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 160
    .local v5, renderer:Lcom/htc/dlnainterface/DLNARendererData;
    iget-object v7, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    iget-object v8, v5, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    iget-object v9, v5, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v7, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v7, v7, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v7, v7, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;

    invoke-virtual {v7, v5}, Landroid/media/dlnasharedmodule/HtcDLNARendererDiscoverer;->checkIfMatchRenderer(Lcom/htc/dlnainterface/DLNARendererData;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 185
    .end local v5           #renderer:Lcom/htc/dlnainterface/DLNARendererData;
    :cond_0
    :goto_1
    return-void

    .line 168
    .restart local v5       #renderer:Lcom/htc/dlnainterface/DLNARendererData;
    :cond_1
    iget-object v7, v5, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 170
    const-string v7, "HtcDLNAServiceManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HtcDLNAMiddleLayerListener][rendererListUpdateNotify] renderer found = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 172
    .local v1, controllerListener:Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v1, :cond_2

    .line 174
    iget-object v7, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v7, v7, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-object v8, v5, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    iput-object v8, v7, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    .line 176
    :cond_2
    iget-object v4, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererListener:Landroid/media/dlnasharedmodule/HtcDLNARendererStatusListener;

    .line 177
    .local v4, listener:Landroid/media/dlnasharedmodule/HtcDLNARendererStatusListener;
    if-eqz v4, :cond_0

    .line 179
    iget-object v7, v5, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/media/dlnasharedmodule/HtcDLNARendererStatusListener;->onConnected(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 158
    .end local v1           #controllerListener:Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;
    .end local v4           #listener:Landroid/media/dlnasharedmodule/HtcDLNARendererStatusListener;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public rendererRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .parameter "uniqueID"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 136
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][rendererRemovedNotify] uniqueID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorReason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererListener:Landroid/media/dlnasharedmodule/HtcDLNARendererStatusListener;

    .line 142
    .local v0, listener:Landroid/media/dlnasharedmodule/HtcDLNARendererStatusListener;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v1, v1, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/dlnasharedmodule/HtcDLNARendererStatusListener;->onDisconnected(Ljava/lang/String;ILjava/lang/String;)V

    .line 144
    :cond_0
    return-void
.end method

.method public serverAddedNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "uniqueID"
    .parameter "serverName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 52
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][serverAddedNotify] uniqueID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", serverNmaer = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mServerListener:Landroid/media/dlnasharedmodule/HtcDLNAServerStatusListener;

    .line 56
    .local v0, listener:Landroid/media/dlnasharedmodule/HtcDLNAServerStatusListener;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v1, v1, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mServerID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v0, p1, p2}, Landroid/media/dlnasharedmodule/HtcDLNAServerStatusListener;->onConnected(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    return-void
.end method

.method public serverListUpdateNotify([Lcom/htc/dlnainterface/DLNAServerData;)V
    .locals 3
    .parameter "serverList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 86
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener][serverListUpdateNotify] serverList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public serverRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .parameter "uniqueID"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 69
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][serverRemovedNotify] uniqueID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorReason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mServerListener:Landroid/media/dlnasharedmodule/HtcDLNAServerStatusListener;

    .line 73
    .local v0, listener:Landroid/media/dlnasharedmodule/HtcDLNAServerStatusListener;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v1, v1, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mServerID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/dlnasharedmodule/HtcDLNAServerStatusListener;->onDisconnected(Ljava/lang/String;ILjava/lang/String;)V

    .line 75
    :cond_0
    return-void
.end method

.method public updateControlItemInfo(Lcom/htc/dlnainterface/DLNAControlItemData;)V
    .locals 9
    .parameter "itemData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v7, 0x0

    .line 271
    iget-object v4, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v4}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->getFilter()I

    move-result v4

    iget-object v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 272
    const-string v4, "HtcDLNAServiceManager"

    const-string v5, "[updateControlItemInfo] setState:102"

    invoke-static {v4, v5}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v4, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    const/16 v5, 0x66

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->setState(IZ)V

    .line 276
    :cond_0
    iget-object v4, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v2, v4, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    .line 277
    .local v2, info:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;
    iget-object v4, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->contentAlbum:Ljava/lang/String;

    iput-object v4, v2, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mAlbum:Ljava/lang/String;

    .line 278
    iget-object v4, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->contentArtist:Ljava/lang/String;

    iput-object v4, v2, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mArtist:Ljava/lang/String;

    .line 279
    iget-object v4, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->contentTitle:Ljava/lang/String;

    iput-object v4, v2, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mTitle:Ljava/lang/String;

    .line 280
    iget-object v4, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->contentDate:Ljava/lang/String;

    iput-object v4, v2, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mDate:Ljava/lang/String;

    .line 281
    iget-wide v4, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->fDuration:J

    cmp-long v4, v4, v7

    if-lez v4, :cond_1

    .line 282
    iget-wide v4, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->fDuration:J

    iput-wide v4, v2, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mDuration:J

    .line 284
    :cond_1
    iget-object v4, v2, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v4, v4, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 285
    iget-object v4, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    iget-object v5, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v5, v5, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v2, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    .line 287
    :cond_2
    iget-wide v0, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->currentIndex:J

    .line 288
    .local v0, index:J
    iget-wide v4, v2, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    cmp-long v4, v4, v0

    if-eqz v4, :cond_3

    .line 290
    iput-wide v7, v2, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mPosition:J

    .line 291
    iget-object v4, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    const-wide/16 v5, -0x1

    iput-wide v5, v4, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mClientSeekTo:J

    .line 293
    :cond_3
    iput-wide v0, v2, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    .line 294
    iget-object v4, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v4}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->getPlaylistSize()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mTotal:J

    .line 296
    iget-object v4, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    iput-object v4, v2, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    .line 297
    iget-object v4, v2, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v2, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    .line 298
    :cond_4
    iget-object v4, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->thumbnailPath:Ljava/lang/String;

    iput-object v4, v2, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    .line 301
    :cond_5
    iget-object v4, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v4}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->getState()I

    move-result v4

    iput v4, v2, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mPlayState:I

    .line 302
    iget-object v4, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->curContentID:Ljava/lang/String;

    iput-object v4, v2, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->curContentID:Ljava/lang/String;

    .line 304
    const-string v4, "HtcDLNAServiceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HtcDLNAMiddleLayerListener][updateControlItemInfo] thumb path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v4, "HtcDLNAServiceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HtcDLNAMiddleLayerListener][updateControlItemInfo] album art path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v4, "HtcDLNAServiceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HtcDLNAMiddleLayerListener][updateControlItemInfo] curContentID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->curContentID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 309
    .local v3, listener:Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v3, :cond_6

    .line 311
    invoke-virtual {v3, v2}, Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;->onControllerInfoupdated(Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)V

    .line 317
    :goto_0
    return-void

    .line 315
    :cond_6
    const-string v4, "HtcDLNAServiceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HtcDLNAMiddleLayerListener][updateControlItemInfo] itemData = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateControlItemThumbnail(Ljava/lang/String;JLjava/lang/String;)V
    .locals 5
    .parameter "rendererID"
    .parameter "currentIndex"
    .parameter "thumbnailPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 328
    const-string v2, "HtcDLNAServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAMiddleLayerListener][updateControlItemThumbnail] currentIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", thumbnailPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v0, v2, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    .line 332
    .local v0, info:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;
    iput-object p4, v0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    .line 334
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 335
    .local v1, listener:Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v1, :cond_0

    .line 337
    invoke-virtual {v1, v0}, Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;->onControllerInfoupdated(Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)V

    .line 339
    :cond_0
    return-void
.end method

.method public updateControllerStatus(Lcom/htc/dlnainterface/DLNAControllerStatus;)V
    .locals 7
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0x0

    .line 223
    const-string v2, "HtcDLNAServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateControllerStatus] setState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    iget v3, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->setState(IZ)V

    .line 225
    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v0, v2, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    .line 229
    .local v0, info:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;
    iget-wide v2, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->fDuration:J

    cmp-long v2, v2, v5

    if-lez v2, :cond_0

    .line 230
    iget-wide v2, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->fDuration:J

    iput-wide v2, v0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mDuration:J

    .line 231
    :cond_0
    iget-wide v2, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->currentIndex:J

    iput-wide v2, v0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    .line 232
    iget-wide v2, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->position:J

    iput-wide v2, v0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mPosition:J

    .line 233
    iget-boolean v2, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->bMute:Z

    iput-boolean v2, v0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mMute:Z

    .line 234
    iget-boolean v2, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->bShuffle:Z

    iput-boolean v2, v0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mShuffle:Z

    .line 235
    iget v2, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->repeatState:I

    iput v2, v0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I

    .line 236
    iget v2, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->volumeValue:I

    iput v2, v0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mVolume:I

    .line 237
    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v2}, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->getState()I

    move-result v2

    iput v2, v0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mPlayState:I

    .line 238
    iget-wide v2, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->totalCount:J

    iput-wide v2, v0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mTotal:J

    .line 240
    iget-wide v2, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->position:J

    cmp-long v2, v2, v5

    if-gtz v2, :cond_1

    .line 241
    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    const-wide/16 v3, -0x1

    iput-wide v3, v2, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mClientSeekTo:J

    .line 243
    :cond_1
    iget-object v2, v0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v2, v2, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 244
    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v3, v3, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    .line 246
    :cond_2
    iget-object v2, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->curContentID:Ljava/lang/String;

    iput-object v2, v0, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->curContentID:Ljava/lang/String;

    .line 248
    const-string v2, "HtcDLNAServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAMiddleLayerListener][updateControllerStatus] play state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->position:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 252
    .local v1, listener:Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v1, :cond_3

    .line 254
    invoke-virtual {v1, v0}, Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;->onControllerInfoupdated(Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)V

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_3
    const-string v2, "HtcDLNAServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcDLNAMiddleLayerListener][updateControllerStatus] DLNAControllerStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateDownloadStoreAlbumArtNotify(Ljava/lang/String;JLjava/lang/String;)V
    .locals 4
    .parameter "rendererID"
    .parameter "currentIndex"
    .parameter "albumArtPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 413
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][updateDownloadStoreAlbumArtNotify] rendererID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", currentIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", albumArtPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v1, v1, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iput-object p4, v1, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    .line 418
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 419
    .local v0, listener:Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_0

    .line 421
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v1, v1, Landroid/media/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAControllerStatusListener;->onControllerInfoupdated(Landroid/media/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)V

    .line 423
    :cond_0
    return-void
.end method
