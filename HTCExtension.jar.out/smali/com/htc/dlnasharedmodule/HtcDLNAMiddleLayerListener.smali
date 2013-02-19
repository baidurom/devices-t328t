.class Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;
.super Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerDeprecatedListener;
.source "HtcDLNAMiddleLayerListener.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HtcDLNAServiceManager"


# instance fields
.field mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

.field mDiscoverRendererListener:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverListener;

.field mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

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

.field mRendererListener:Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;

.field mServerListener:Lcom/htc/dlnasharedmodule/HtcDLNAServerStatusListener;


# direct methods
.method public constructor <init>(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;)V
    .locals 2
    .parameter "manager"

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerDeprecatedListener;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    .line 30
    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mDiscoverRendererListener:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverListener;

    .line 31
    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;

    .line 32
    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/dlnasharedmodule/HtcDLNAServerStatusListener;

    .line 33
    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 35
    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    .line 39
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

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
    .line 466
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 467
    .local v0, listener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;->onAlbumArtDownloaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 471
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
    .line 365
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

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 369
    .local v0, listener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;->onError(Ljava/lang/String;ILjava/lang/String;)V

    .line 373
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

    .line 384
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

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const/16 v1, -0x135

    if-ne p2, v1, :cond_0

    .line 389
    const-string v1, "HtcDLNAServiceManager"

    const-string v2, "[controllerResponseNotify] setState:1"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v1, v4, v4}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setState(IZ)V

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 394
    .local v0, listener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_1

    .line 396
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;->onResponse(Ljava/lang/String;ILjava/lang/String;)V

    .line 398
    :cond_1
    return-void
.end method

.method public disconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    const-string v0, "HtcDLNAServiceManager"

    const-string v1, "[HtcDLNAMiddleLayerListener][disconnect]"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iput-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;

    .line 47
    iput-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/dlnasharedmodule/HtcDLNAServerStatusListener;

    .line 48
    iput-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 50
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 52
    iput-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    .line 55
    :cond_0
    iput-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    .line 56
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
    .line 409
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

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 413
    .local v0, listener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_0

    .line 415
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p3}, Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;->onItemDetailsUpdated(JLcom/htc/dlnainterface/DLNAContentItemDetails;)V

    .line 417
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
    .line 449
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

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;

    .line 454
    .local v0, listener:Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;
    if-eqz v0, :cond_0

    .line 455
    iget-object v1, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;->onMirrorRendererConnected(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
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
    .line 211
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

    invoke-static {v2, v3}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v0, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    .line 215
    .local v0, info:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;
    iput-wide p4, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    .line 216
    iput-wide p2, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mTotal:J

    .line 218
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 219
    .local v1, listener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {v1, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;->onControllerInfoupdated(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)V

    .line 223
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
    .line 114
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

    invoke-static {v2, v3}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    iget-object v4, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v2, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v2, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    invoke-virtual {v2, p1}, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->checkIfMatchRenderer(Lcom/htc/dlnainterface/DLNARendererData;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v2, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v3, v3, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;

    .line 130
    .local v1, listener:Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 131
    .local v0, controllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_2

    .line 133
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v2, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-object v3, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    iput-object v3, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    .line 136
    :cond_2
    if-eqz v1, :cond_0

    .line 138
    iget-object v2, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    iget-object v3, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;->onConnected(Ljava/lang/String;Ljava/lang/String;)V

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
    .line 170
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

    invoke-static {v7, v8}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v7, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v6, v7, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    .line 173
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

    .line 175
    .local v5, renderer:Lcom/htc/dlnainterface/DLNARendererData;
    iget-object v7, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    iget-object v8, v5, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    iget-object v9, v5, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v7, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v7, v7, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v7, v7, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    invoke-virtual {v7, v5}, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->checkIfMatchRenderer(Lcom/htc/dlnainterface/DLNARendererData;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 200
    .end local v5           #renderer:Lcom/htc/dlnainterface/DLNARendererData;
    :cond_0
    :goto_1
    return-void

    .line 183
    .restart local v5       #renderer:Lcom/htc/dlnainterface/DLNARendererData;
    :cond_1
    iget-object v7, v5, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 185
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

    invoke-static {v7, v8}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 187
    .local v1, controllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v1, :cond_2

    .line 189
    iget-object v7, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v7, v7, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-object v8, v5, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    iput-object v8, v7, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    .line 191
    :cond_2
    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;

    .line 192
    .local v4, listener:Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;
    if-eqz v4, :cond_0

    .line 194
    iget-object v7, v5, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;->onConnected(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 173
    .end local v1           #controllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
    .end local v4           #listener:Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;
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
    .line 151
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

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;

    .line 157
    .local v0, listener:Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v1, v1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;->onDisconnected(Ljava/lang/String;ILjava/lang/String;)V

    .line 159
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
    .line 67
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

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/dlnasharedmodule/HtcDLNAServerStatusListener;

    .line 71
    .local v0, listener:Lcom/htc/dlnasharedmodule/HtcDLNAServerStatusListener;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v1, v1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mServerID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {v0, p1, p2}, Lcom/htc/dlnasharedmodule/HtcDLNAServerStatusListener;->onConnected(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
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
    .line 101
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

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
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
    .line 84
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

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/dlnasharedmodule/HtcDLNAServerStatusListener;

    .line 88
    .local v0, listener:Lcom/htc/dlnasharedmodule/HtcDLNAServerStatusListener;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v1, v1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mServerID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/dlnasharedmodule/HtcDLNAServerStatusListener;->onDisconnected(Ljava/lang/String;ILjava/lang/String;)V

    .line 90
    :cond_0
    return-void
.end method

.method public updateControlItemInfo(Lcom/htc/dlnainterface/DLNAControlItemData;)V
    .locals 8
    .parameter "itemData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 291
    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v2, v4, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    .line 292
    .local v2, info:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;
    iget-object v4, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->contentAlbum:Ljava/lang/String;

    iput-object v4, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mAlbum:Ljava/lang/String;

    .line 293
    iget-object v4, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->contentArtist:Ljava/lang/String;

    iput-object v4, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mArtist:Ljava/lang/String;

    .line 294
    iget-object v4, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->contentTitle:Ljava/lang/String;

    iput-object v4, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mTitle:Ljava/lang/String;

    .line 295
    iget-object v4, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->contentDate:Ljava/lang/String;

    iput-object v4, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mDate:Ljava/lang/String;

    .line 296
    iget-wide v4, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->fDuration:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 297
    iget-wide v4, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->fDuration:J

    iput-wide v4, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mDuration:J

    .line 299
    :cond_0
    iget-object v4, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v4, v4, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 300
    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v5, v5, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    .line 302
    :cond_1
    iget-wide v0, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->currentIndex:J

    .line 303
    .local v0, index:J
    iget-wide v4, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    cmp-long v4, v4, v0

    if-eqz v4, :cond_2

    .line 305
    iput-wide v6, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mPosition:J

    .line 306
    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    const-wide/16 v5, -0x1

    iput-wide v5, v4, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mClientSeekTo:J

    .line 308
    :cond_2
    iput-wide v0, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    .line 309
    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v4}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getPlaylistSize()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mTotal:J

    .line 311
    iget-object v4, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    iput-object v4, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    .line 312
    iget-object v4, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    .line 313
    :cond_3
    iget-object v4, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->thumbnailPath:Ljava/lang/String;

    iput-object v4, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    .line 316
    :cond_4
    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v4}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getState()I

    move-result v4

    iput v4, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mPlayState:I

    .line 317
    iget-object v4, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->curContentID:Ljava/lang/String;

    iput-object v4, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->curContentID:Ljava/lang/String;

    .line 318
    const-string v4, "HtcDLNAServiceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HtcDLNAMiddleLayerListener][updateControlItemInfo] Duration = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mDuration:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
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

    invoke-static {v4, v5}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
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

    invoke-static {v4, v5}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
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

    invoke-static {v4, v5}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 324
    .local v3, listener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v3, :cond_5

    .line 326
    invoke-virtual {v3, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;->onControllerInfoupdated(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)V

    .line 332
    :goto_0
    return-void

    .line 330
    :cond_5
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

    invoke-static {v4, v5}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

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
    .line 343
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

    invoke-static {v2, v3}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v0, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    .line 347
    .local v0, info:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;
    iput-object p4, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    .line 349
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 350
    .local v1, listener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v1, :cond_0

    .line 352
    invoke-virtual {v1, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;->onControllerInfoupdated(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)V

    .line 354
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

    .line 238
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

    invoke-static {v2, v3}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget v3, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setState(IZ)V

    .line 240
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v0, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    .line 244
    .local v0, info:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;
    iget-wide v2, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->fDuration:J

    cmp-long v2, v2, v5

    if-lez v2, :cond_0

    .line 245
    iget-wide v2, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->fDuration:J

    iput-wide v2, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mDuration:J

    .line 246
    :cond_0
    iget-wide v2, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->currentIndex:J

    iput-wide v2, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    .line 247
    iget-wide v2, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->position:J

    iput-wide v2, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mPosition:J

    .line 248
    iget-boolean v2, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->bMute:Z

    iput-boolean v2, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mMute:Z

    .line 249
    iget-boolean v2, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->bShuffle:Z

    iput-boolean v2, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mShuffle:Z

    .line 250
    iget v2, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->repeatState:I

    iput v2, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I

    .line 251
    iget v2, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->volumeValue:I

    iput v2, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mVolume:I

    .line 252
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getState()I

    move-result v2

    iput v2, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mPlayState:I

    .line 253
    iget-wide v2, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->totalCount:J

    iput-wide v2, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mTotal:J

    .line 255
    iget-wide v2, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->position:J

    cmp-long v2, v2, v5

    if-gtz v2, :cond_1

    .line 256
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    const-wide/16 v3, -0x1

    iput-wide v3, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mClientSeekTo:J

    .line 258
    :cond_1
    iget-object v2, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v2, v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 259
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v3, v3, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    .line 261
    :cond_2
    iget-object v2, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->curContentID:Ljava/lang/String;

    iput-object v2, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->curContentID:Ljava/lang/String;

    .line 263
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

    invoke-static {v2, v3}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 267
    .local v1, listener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v1, :cond_3

    .line 269
    invoke-virtual {v1, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;->onControllerInfoupdated(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)V

    .line 275
    :goto_0
    return-void

    .line 273
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

    invoke-static {v2, v3}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

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
    .line 428
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

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v1, v1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iput-object p4, v1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    .line 433
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 434
    .local v0, listener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_0

    .line 436
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    iget-object v1, v1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;->onControllerInfoupdated(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;)V

    .line 438
    :cond_0
    return-void
.end method
