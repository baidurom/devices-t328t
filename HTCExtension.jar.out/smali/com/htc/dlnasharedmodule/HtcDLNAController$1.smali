.class Lcom/htc/dlnasharedmodule/HtcDLNAController$1;
.super Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;
.source "HtcDLNAController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnasharedmodule/HtcDLNAController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;


# direct methods
.method constructor <init>(Lcom/htc/dlnasharedmodule/HtcDLNAController;)V
    .locals 0
    .parameter

    .prologue
    .line 992
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    invoke-direct {p0}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;-><init>()V

    return-void
.end method

.method private CheckAndUpdateAlbumArt(JLjava/lang/String;)V
    .locals 1
    .parameter "newIndex"
    .parameter "newPath"

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1700(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->szThumbPath:Ljava/lang/String;

    if-eq v0, p3, :cond_0

    .line 1308
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1700(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v0

    iput-object p3, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->szThumbPath:Ljava/lang/String;

    .line 1309
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->SendRefresh(I)V

    .line 1311
    :cond_0
    return-void
.end method

.method private SendErr(ILjava/lang/String;I)V
    .locals 5
    .parameter "nToastee"
    .parameter "szArg"
    .parameter "nArg"

    .prologue
    .line 1326
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$2000(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1327
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1328
    .local v0, bd:Landroid/os/Bundle;
    const-string v2, "arg0"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1330
    iput p3, v1, Landroid/os/Message;->arg1:I

    .line 1332
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$2000(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0xa

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1333
    return-void
.end method

.method private SendRefresh(I)V
    .locals 4
    .parameter "nRefreshee"

    .prologue
    .line 1313
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$2000(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1315
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$2000(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1316
    return-void
.end method

.method private SendRefresh(ILjava/lang/String;)V
    .locals 5
    .parameter "nRefreshee"
    .parameter "szArg"

    .prologue
    .line 1318
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$2000(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1319
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1320
    .local v0, bd:Landroid/os/Bundle;
    const-string v2, "arg0"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1323
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$2000(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0xa

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1324
    return-void
.end method


# virtual methods
.method public albumArtDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "serverID"
    .parameter "contentID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 998
    return-void
.end method

.method public contentAddedNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "serverID"
    .parameter "containerID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1001
    return-void
.end method

.method public contentAddedNotify(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "lastIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1014
    return-void
.end method

.method public contentBrowsingDoneNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "serverID"
    .parameter "containerID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1002
    return-void
.end method

.method public contentBrowsingDoneNotify(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 0
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "lastIndex"
    .parameter "isComplete"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1011
    return-void
.end method

.method public contentBrowsingErrorNotify(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "serverID"
    .parameter "containerID"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1003
    return-void
.end method

.method public contentBrowsingErrorNotify(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V
    .locals 0
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1012
    return-void
.end method

.method public contentThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "serverID"
    .parameter "uniqueID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1004
    return-void
.end method

.method public contentThumbnailUpdateNotify2(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "serverID"
    .parameter "uniqueID"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1005
    return-void
.end method

.method public contentUpdatedNotify(Ljava/lang/String;)V
    .locals 0
    .parameter "containerID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1006
    return-void
.end method

.method public contentUpdatedNotify(Ljava/lang/String;J)V
    .locals 0
    .parameter "containerID"
    .parameter "startIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1013
    return-void
.end method

.method public controllerErrorNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "rendererID"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1022
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MLCallback:!!controllerError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1500(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1026
    const-string v0, "[HtcDLNAController]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    :cond_0
    :goto_0
    return-void

    .line 1030
    :cond_1
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mErrorListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnErrorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mErrorListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnErrorListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/dlnasharedmodule/HtcDLNAController$OnErrorListener;->onError(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public controllerResponseNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "rendererID"
    .parameter "resID"
    .parameter "resReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1037
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MLCallback:controllerResponse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1500(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1041
    const-string v0, "[HtcDLNAController]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    :cond_0
    :goto_0
    return-void

    .line 1044
    :cond_1
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mResponseListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnResponseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mResponseListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnResponseListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/dlnasharedmodule/HtcDLNAController$OnResponseListener;->onResponse(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
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
    .line 1279
    const-string v1, "[HtcDLNAController]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContentItemDetailsNotify of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z
    invoke-static {v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1500(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mIsRequestDetails:Z
    invoke-static {v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1800(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 1282
    :cond_0
    const-string v1, "[HtcDLNAController]"

    const-string v2, "MLCallback:already unreg, or this callback is not called by DMC, return"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    :goto_0
    return-void

    .line 1285
    :cond_1
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    const/4 v2, 0x0

    #setter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mIsRequestDetails:Z
    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1802(Lcom/htc/dlnasharedmodule/HtcDLNAController;Z)Z

    .line 1287
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #setter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    invoke-static {v1, p3}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1902(Lcom/htc/dlnasharedmodule/HtcDLNAController;Lcom/htc/dlnainterface/DLNAContentItemDetails;)Lcom/htc/dlnainterface/DLNAContentItemDetails;

    .line 1288
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$2000(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x6b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1290
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$2000(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public imageDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "serverID"
    .parameter "contentID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1015
    return-void
.end method

.method public mirrorRendererAddedNotify(Lcom/htc/dlnainterface/DLNARendererData;)V
    .locals 3
    .parameter "rendererData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v1, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    #setter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$402(Lcom/htc/dlnasharedmodule/HtcDLNAController;Ljava/lang/String;)Ljava/lang/String;

    .line 1341
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mirror DMR Added:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$400(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1500(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1343
    const-string v0, "[HtcDLNAController]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    :cond_0
    :goto_0
    return-void

    .line 1347
    :cond_1
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurrentDMRListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurrentDMRListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;

    invoke-interface {v0, p1}, Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;->onMirrorConnected(Lcom/htc/dlnainterface/DLNARendererData;)V

    goto :goto_0
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
    .line 1201
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MLCallback: playlist created res - Item count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1500(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1206
    const-string v0, "[HtcDLNAController]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    :cond_0
    :goto_0
    return-void

    .line 1210
    :cond_1
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1700(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v0

    iput-wide p2, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->lCount:J

    .line 1211
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1700(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v0

    iput-wide p4, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->lCurrentIndex:J

    .line 1214
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mItemInfoListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnItemInfoListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mItemInfoListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnItemInfoListener;

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1700(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->lCurrentIndex:J

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v3}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1700(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v3

    iget-wide v3, v3, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->lCount:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/htc/dlnasharedmodule/HtcDLNAController$OnItemInfoListener;->onListIndexChanged(JJ)V

    goto :goto_0
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
    .line 1067
    iget-object v1, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    .line 1068
    .local v1, uniqueID:Ljava/lang/String;
    iget-object v0, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    .line 1070
    .local v0, rendererName:Ljava/lang/String;
    const-string v2, "[HtcDLNAController]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DMR Added:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z
    invoke-static {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1500(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1072
    const-string v2, "[HtcDLNAController]"

    const-string v3, "MLCallback:already unreg, return"

    invoke-static {v2, v3}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    :cond_0
    :goto_0
    return-void

    .line 1075
    :cond_1
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$400(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1076
    const-string v2, "[HtcDLNAController]"

    const-string v3, "Selected DMR added"

    invoke-static {v2, v3}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v2, v2, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurrentDMRListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v2, v2, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurrentDMRListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;

    invoke-interface {v2, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;->onConnected(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public rendererAddedNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "uniqueID"
    .parameter "rendererName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1051
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DMR Added:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1500(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1053
    const-string v0, "[HtcDLNAController]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    :cond_0
    :goto_0
    return-void

    .line 1056
    :cond_1
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$400(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1057
    const-string v0, "[HtcDLNAController]"

    const-string v1, "Selected DMR added"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurrentDMRListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurrentDMRListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;

    invoke-interface {v0, p2}, Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;->onConnected(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public rendererListUpdateNotify([Lcom/htc/dlnainterface/DLNARendererData;)V
    .locals 3
    .parameter "rendererList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1087
    const-string v1, "[HtcDLNAController]"

    const-string v2, "MLCallback: DMR List update"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z
    invoke-static {v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1500(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1089
    const-string v1, "[HtcDLNAController]"

    const-string v2, "MLCallback:already unreg, return"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    :cond_0
    :goto_0
    return-void

    .line 1092
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1093
    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$400(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1094
    const-string v1, "[HtcDLNAController]"

    const-string v2, "Selected DMR existed"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v1, v1, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurrentDMRListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v1, v1, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurrentDMRListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;

    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;->onConnected(Ljava/lang/String;)V

    goto :goto_0

    .line 1092
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public rendererRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "uniqueID"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1105
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DMR Removed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1500(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1107
    const-string v0, "[HtcDLNAController]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    :cond_0
    :goto_0
    return-void

    .line 1110
    :cond_1
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$400(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1111
    const-string v0, "[HtcDLNAController]"

    const-string v1, "Selected DMR Removed"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurrentDMRListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurrentDMRListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;

    invoke-interface {v0, p2}, Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;->onDisconnected(I)V

    goto :goto_0
.end method

.method public rendererThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1009
    return-void
.end method

.method public rendererThumbnailUpdateNotify2(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1010
    return-void
.end method

.method public serverAddedNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "uniqueID"
    .parameter "serverName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1121
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DMS Added:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1500(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1123
    const-string v0, "[HtcDLNAController]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    :cond_0
    :goto_0
    return-void

    .line 1128
    :cond_1
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurServerID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1129
    const-string v0, "[HtcDLNAController]"

    const-string v1, "Current DMS added"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurrentDMSListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMSListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurrentDMSListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMSListener;

    invoke-interface {v0, p2}, Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMSListener;->onConnected(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public serverListUpdateNotify([Lcom/htc/dlnainterface/DLNAServerData;)V
    .locals 0
    .parameter "serverList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1138
    return-void
.end method

.method public serverRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "uniqueID"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1142
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DMS Removed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1500(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1144
    const-string v0, "[HtcDLNAController]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    :cond_0
    :goto_0
    return-void

    .line 1149
    :cond_1
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurServerID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1150
    const-string v0, "[HtcDLNAController]"

    const-string v1, "Current DMS Removed"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurrentDMSListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMSListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurrentDMSListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMSListener;

    invoke-interface {v0, p2}, Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMSListener;->onDisconnected(I)V

    goto :goto_0
.end method

.method public serverThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1007
    return-void
.end method

.method public serverThumbnailUpdateNotify2(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1008
    return-void
.end method

.method public updateControlItemInfo(Lcom/htc/dlnainterface/DLNAControlItemData;)V
    .locals 6
    .parameter "itemData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 1220
    const-string v0, "[HtcDLNAController]"

    const-string v1, "updateControllerItemInfo"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1500(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1222
    const-string v0, "[HtcDLNAController]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    :cond_0
    :goto_0
    return-void

    .line 1225
    :cond_1
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1700(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->contentTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->szTitle:Ljava/lang/String;

    .line 1226
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1700(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->contentArtist:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->szArtist:Ljava/lang/String;

    .line 1227
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1700(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->contentAlbum:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->szAlbum:Ljava/lang/String;

    .line 1228
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1700(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->contentDate:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->szDate:Ljava/lang/String;

    .line 1231
    iget-object v0, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1232
    :cond_2
    iget-wide v0, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->currentIndex:J

    iget-object v2, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->thumbnailPath:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->CheckAndUpdateAlbumArt(JLjava/lang/String;)V

    .line 1236
    :goto_1
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "path ori:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "path dl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    iget-wide v0, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->currentIndex:J

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1700(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->lCurrentIndex:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 1240
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1600(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v0

    iput-wide v4, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->lPosition:J

    .line 1241
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1600(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v0

    iput-wide v4, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->lPositionDyn:J

    .line 1244
    :cond_3
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1700(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v0

    iget-wide v1, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->currentIndex:J

    iput-wide v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->lCurrentIndex:J

    .line 1246
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1700(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v0

    iget-wide v1, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->fDuration:J

    iput-wide v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->lDuration:J

    .line 1248
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1600(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v0

    iget-wide v1, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->fDuration:J

    iput-wide v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->lDuration:J

    .line 1257
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1700(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->saveInfo()V

    .line 1260
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->SendRefresh(I)V

    .line 1261
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCurMode:I
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$000(Lcom/htc/dlnasharedmodule/HtcDLNAController;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->SendRefresh(I)V

    goto/16 :goto_0

    .line 1234
    :cond_4
    iget-wide v0, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->currentIndex:J

    iget-object v2, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->CheckAndUpdateAlbumArt(JLjava/lang/String;)V

    goto/16 :goto_1
.end method

.method public updateControlItemThumbnail(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2
    .parameter "rendererID"
    .parameter "currentIndex"
    .parameter "thumbnailPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1500(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1268
    const-string v0, "[HtcDLNAController]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    :cond_0
    :goto_0
    return-void

    .line 1271
    :cond_1
    const-string v0, "[HtcDLNAController]"

    const-string v1, "updateControllerItemThumbnail"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1700(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v0

    iput-object p4, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->szThumbPath:Ljava/lang/String;

    .line 1275
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mItemInfoListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnItemInfoListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController;->mItemInfoListener:Lcom/htc/dlnasharedmodule/HtcDLNAController$OnItemInfoListener;

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1700(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->szThumbPath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAController$OnItemInfoListener;->onThumbnailChanged(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateControllerStatus(Lcom/htc/dlnainterface/DLNAControllerStatus;)V
    .locals 3
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1161
    const-string v0, "[HtcDLNAController]"

    const-string v1, "updateControllerStatus"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1500(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1164
    const-string v0, "[HtcDLNAController]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    :goto_0
    return-void

    .line 1168
    :cond_0
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1600(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v0

    iget v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    iget v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    if-eq v0, v1, :cond_1

    .line 1169
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***** updStatus - Playstate Changed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1600(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v0

    iget v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    iput v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    .line 1171
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->SendRefresh(I)V

    .line 1175
    :cond_1
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1600(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v0

    iget v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nRepeatState:I

    iget v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->repeatState:I

    if-eq v0, v1, :cond_2

    .line 1176
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->SendRefresh(I)V

    .line 1177
    :cond_2
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1600(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v0

    iget-boolean v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->bShuffleState:Z

    iget-boolean v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->bShuffle:Z

    if-eq v0, v1, :cond_3

    .line 1178
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->SendRefresh(I)V

    .line 1180
    :cond_3
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1600(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v0

    iget v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nVolume:I

    iget v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->volumeValue:I

    if-eq v0, v1, :cond_4

    .line 1181
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updStatus - Vol Changed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->volumeValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1600(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v0

    iget v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->volumeValue:I

    iput v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nVolume:I

    .line 1184
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1600(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->refreshVolume()V

    .line 1187
    :cond_4
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1600(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v0

    iget-wide v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->position:J

    iput-wide v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->lPositionDyn:J

    .line 1188
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1600(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v0

    iget-boolean v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->bMute:Z

    iput-boolean v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->bMuteState:Z

    .line 1189
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1600(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v0

    iget-boolean v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->bShuffle:Z

    iput-boolean v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->bShuffleState:Z

    .line 1190
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1600(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v0

    iget v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->repeatState:I

    iput v1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCStatus;->nRepeatState:I

    goto/16 :goto_0
.end method

.method public updateDownloadStoreAlbumArtNotify(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2
    .parameter "rendererID"
    .parameter "currentIndex"
    .parameter "albumArtPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1500(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1296
    const-string v0, "[HtcDLNAController]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    :goto_0
    return-void

    .line 1299
    :cond_0
    const-string v0, "[HtcDLNAController]"

    const-string v1, "updateDownloadStoreAlbumArtNotify"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->this$0:Lcom/htc/dlnasharedmodule/HtcDLNAController;

    #getter for: Lcom/htc/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->access$1700(Lcom/htc/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v0

    iput-object p4, v0, Lcom/htc/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->szThumbPath:Ljava/lang/String;

    .line 1302
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController$1;->SendRefresh(I)V

    goto :goto_0
.end method
