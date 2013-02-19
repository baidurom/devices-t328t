.class Landroid/media/dlnasharedmodule/HtcDLNAController$1;
.super Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;
.source "HtcDLNAController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/dlnasharedmodule/HtcDLNAController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;


# direct methods
.method constructor <init>(Landroid/media/dlnasharedmodule/HtcDLNAController;)V
    .locals 0
    .parameter

    .prologue
    .line 784
    iput-object p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    invoke-direct {p0}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;-><init>()V

    return-void
.end method

.method private CheckAndUpdateAlbumArt(JLjava/lang/String;)V
    .locals 1
    .parameter "newIndex"
    .parameter "newPath"

    .prologue
    .line 1099
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1700(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->szThumbPath:Ljava/lang/String;

    if-eq v0, p3, :cond_0

    .line 1100
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1700(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v0

    iput-object p3, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->szThumbPath:Ljava/lang/String;

    .line 1101
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->SendRefresh(I)V

    .line 1103
    :cond_0
    return-void
.end method

.method private SendErr(ILjava/lang/String;I)V
    .locals 5
    .parameter "nToastee"
    .parameter "szArg"
    .parameter "nArg"

    .prologue
    .line 1118
    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$2000(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1119
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1120
    .local v0, bd:Landroid/os/Bundle;
    const-string v2, "arg0"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1122
    iput p3, v1, Landroid/os/Message;->arg1:I

    .line 1124
    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$2000(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0xa

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1125
    return-void
.end method

.method private SendRefresh(I)V
    .locals 4
    .parameter "nRefreshee"

    .prologue
    .line 1105
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$2000(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1107
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$2000(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1108
    return-void
.end method

.method private SendRefresh(ILjava/lang/String;)V
    .locals 5
    .parameter "nRefreshee"
    .parameter "szArg"

    .prologue
    .line 1110
    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$2000(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1111
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1112
    .local v0, bd:Landroid/os/Bundle;
    const-string v2, "arg0"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1115
    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$2000(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0xa

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1116
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
    .line 790
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
    .line 793
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
    .line 806
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
    .line 794
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
    .line 803
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
    .line 795
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
    .line 804
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
    .line 796
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
    .line 797
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
    .line 798
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
    .line 805
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
    .line 814
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

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1500(Landroid/media/dlnasharedmodule/HtcDLNAController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 818
    const-string v0, "[HtcDLNAController]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    :cond_0
    :goto_0
    return-void

    .line 822
    :cond_1
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mErrorListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnErrorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mErrorListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnErrorListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/dlnasharedmodule/HtcDLNAController$OnErrorListener;->onError(Ljava/lang/String;ILjava/lang/String;)V

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
    .line 829
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

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1500(Landroid/media/dlnasharedmodule/HtcDLNAController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 833
    const-string v0, "[HtcDLNAController]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    :cond_0
    :goto_0
    return-void

    .line 836
    :cond_1
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mResponseListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnResponseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mResponseListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnResponseListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/dlnasharedmodule/HtcDLNAController$OnResponseListener;->onResponse(Ljava/lang/String;ILjava/lang/String;)V

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
    .line 1071
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

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z
    invoke-static {v1}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1500(Landroid/media/dlnasharedmodule/HtcDLNAController;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mIsRequestDetails:Z
    invoke-static {v1}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1800(Landroid/media/dlnasharedmodule/HtcDLNAController;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 1074
    :cond_0
    const-string v1, "[HtcDLNAController]"

    const-string v2, "MLCallback:already unreg, or this callback is not called by DMC, return"

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    :goto_0
    return-void

    .line 1077
    :cond_1
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    const/4 v2, 0x0

    #setter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mIsRequestDetails:Z
    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1802(Landroid/media/dlnasharedmodule/HtcDLNAController;Z)Z

    .line 1079
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #setter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    invoke-static {v1, p3}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1902(Landroid/media/dlnasharedmodule/HtcDLNAController;Lcom/htc/dlnainterface/DLNAContentItemDetails;)Lcom/htc/dlnainterface/DLNAContentItemDetails;

    .line 1080
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$2000(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x6b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1082
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$2000(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/os/Handler;

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
    .line 807
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
    .line 1131
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v1, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    #setter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$402(Landroid/media/dlnasharedmodule/HtcDLNAController;Ljava/lang/String;)Ljava/lang/String;

    .line 1133
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mirror DMR Added:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;
    invoke-static {v2}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$400(Landroid/media/dlnasharedmodule/HtcDLNAController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1500(Landroid/media/dlnasharedmodule/HtcDLNAController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1135
    const-string v0, "[HtcDLNAController]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    :cond_0
    :goto_0
    return-void

    .line 1139
    :cond_1
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurrentDMRListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurrentDMRListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;

    invoke-interface {v0, p1}, Landroid/media/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;->onMirrorConnected(Lcom/htc/dlnainterface/DLNARendererData;)V

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
    .line 993
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

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1500(Landroid/media/dlnasharedmodule/HtcDLNAController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 998
    const-string v0, "[HtcDLNAController]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    :cond_0
    :goto_0
    return-void

    .line 1002
    :cond_1
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1700(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v0

    iput-wide p2, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->lCount:J

    .line 1003
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1700(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v0

    iput-wide p4, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->lCurrentIndex:J

    .line 1006
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mItemInfoListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnItemInfoListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mItemInfoListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnItemInfoListener;

    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v1}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1700(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v1

    iget-wide v1, v1, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->lCurrentIndex:J

    iget-object v3, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v3}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1700(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v3

    iget-wide v3, v3, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->lCount:J

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/media/dlnasharedmodule/HtcDLNAController$OnItemInfoListener;->onListIndexChanged(JJ)V

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
    .line 859
    iget-object v1, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    .line 860
    .local v1, uniqueID:Ljava/lang/String;
    iget-object v0, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    .line 862
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

    invoke-static {v2, v3}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z
    invoke-static {v2}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1500(Landroid/media/dlnasharedmodule/HtcDLNAController;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 864
    const-string v2, "[HtcDLNAController]"

    const-string v3, "MLCallback:already unreg, return"

    invoke-static {v2, v3}, Landroid/media/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    :cond_0
    :goto_0
    return-void

    .line 867
    :cond_1
    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;
    invoke-static {v2}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$400(Landroid/media/dlnasharedmodule/HtcDLNAController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 868
    const-string v2, "[HtcDLNAController]"

    const-string v3, "Selected DMR added"

    invoke-static {v2, v3}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v2, v2, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurrentDMRListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v2, v2, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurrentDMRListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;

    invoke-interface {v2, v0}, Landroid/media/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;->onConnected(Ljava/lang/String;)V

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
    .line 843
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

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1500(Landroid/media/dlnasharedmodule/HtcDLNAController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 845
    const-string v0, "[HtcDLNAController]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    :cond_0
    :goto_0
    return-void

    .line 848
    :cond_1
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$400(Landroid/media/dlnasharedmodule/HtcDLNAController;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    const-string v0, "[HtcDLNAController]"

    const-string v1, "Selected DMR added"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurrentDMRListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurrentDMRListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;

    invoke-interface {v0, p2}, Landroid/media/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;->onConnected(Ljava/lang/String;)V

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
    .line 879
    const-string v1, "[HtcDLNAController]"

    const-string v2, "MLCallback: DMR List update"

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z
    invoke-static {v1}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1500(Landroid/media/dlnasharedmodule/HtcDLNAController;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 881
    const-string v1, "[HtcDLNAController]"

    const-string v2, "MLCallback:already unreg, return"

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    :cond_0
    :goto_0
    return-void

    .line 884
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 885
    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;
    invoke-static {v2}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$400(Landroid/media/dlnasharedmodule/HtcDLNAController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 886
    const-string v1, "[HtcDLNAController]"

    const-string v2, "Selected DMR existed"

    invoke-static {v1, v2}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v1, v1, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurrentDMRListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v1, v1, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurrentDMRListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;

    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/media/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;->onConnected(Ljava/lang/String;)V

    goto :goto_0

    .line 884
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
    .line 897
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

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1500(Landroid/media/dlnasharedmodule/HtcDLNAController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 899
    const-string v0, "[HtcDLNAController]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    :cond_0
    :goto_0
    return-void

    .line 902
    :cond_1
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$400(Landroid/media/dlnasharedmodule/HtcDLNAController;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    const-string v0, "[HtcDLNAController]"

    const-string v1, "Selected DMR Removed"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurrentDMRListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurrentDMRListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;

    invoke-interface {v0, p2}, Landroid/media/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;->onDisconnected(I)V

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
    .line 801
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
    .line 802
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
    .line 913
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

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1500(Landroid/media/dlnasharedmodule/HtcDLNAController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 915
    const-string v0, "[HtcDLNAController]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    :cond_0
    :goto_0
    return-void

    .line 920
    :cond_1
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurServerID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 921
    const-string v0, "[HtcDLNAController]"

    const-string v1, "Current DMS added"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurrentDMSListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnCurrentDMSListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurrentDMSListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnCurrentDMSListener;

    invoke-interface {v0, p2}, Landroid/media/dlnasharedmodule/HtcDLNAController$OnCurrentDMSListener;->onConnected(Ljava/lang/String;)V

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
    .line 930
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
    .line 934
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

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1500(Landroid/media/dlnasharedmodule/HtcDLNAController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 936
    const-string v0, "[HtcDLNAController]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    :cond_0
    :goto_0
    return-void

    .line 941
    :cond_1
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurServerID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 942
    const-string v0, "[HtcDLNAController]"

    const-string v1, "Current DMS Removed"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurrentDMSListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnCurrentDMSListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurrentDMSListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnCurrentDMSListener;

    invoke-interface {v0, p2}, Landroid/media/dlnasharedmodule/HtcDLNAController$OnCurrentDMSListener;->onDisconnected(I)V

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
    .line 799
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
    .line 800
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

    .line 1012
    const-string v0, "[HtcDLNAController]"

    const-string/jumbo v1, "updateControllerItemInfo"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1500(Landroid/media/dlnasharedmodule/HtcDLNAController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1014
    const-string v0, "[HtcDLNAController]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    :cond_0
    :goto_0
    return-void

    .line 1017
    :cond_1
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1700(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->contentTitle:Ljava/lang/String;

    iput-object v1, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->szTitle:Ljava/lang/String;

    .line 1018
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1700(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->contentArtist:Ljava/lang/String;

    iput-object v1, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->szArtist:Ljava/lang/String;

    .line 1019
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1700(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->contentAlbum:Ljava/lang/String;

    iput-object v1, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->szAlbum:Ljava/lang/String;

    .line 1020
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1700(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->contentDate:Ljava/lang/String;

    iput-object v1, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->szDate:Ljava/lang/String;

    .line 1023
    iget-object v0, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1024
    :cond_2
    iget-wide v0, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->currentIndex:J

    iget-object v2, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->thumbnailPath:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->CheckAndUpdateAlbumArt(JLjava/lang/String;)V

    .line 1028
    :goto_1
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "path ori:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "path dl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    iget-wide v0, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->currentIndex:J

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v2}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1700(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v2

    iget-wide v2, v2, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->lCurrentIndex:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 1032
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1600(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v0

    iput-wide v4, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->lPosition:J

    .line 1033
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1600(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v0

    iput-wide v4, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->lPositionDyn:J

    .line 1036
    :cond_3
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1700(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v0

    iget-wide v1, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->currentIndex:J

    iput-wide v1, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->lCurrentIndex:J

    .line 1038
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1700(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v0

    iget-wide v1, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->fDuration:J

    iput-wide v1, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->lDuration:J

    .line 1040
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1600(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v0

    iget-wide v1, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->fDuration:J

    iput-wide v1, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->lDuration:J

    .line 1049
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1700(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->saveInfo()V

    .line 1052
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->SendRefresh(I)V

    .line 1053
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurMode:I
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$000(Landroid/media/dlnasharedmodule/HtcDLNAController;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->SendRefresh(I)V

    goto/16 :goto_0

    .line 1026
    :cond_4
    iget-wide v0, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->currentIndex:J

    iget-object v2, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->CheckAndUpdateAlbumArt(JLjava/lang/String;)V

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
    .line 1059
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1500(Landroid/media/dlnasharedmodule/HtcDLNAController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1060
    const-string v0, "[HtcDLNAController]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    :cond_0
    :goto_0
    return-void

    .line 1063
    :cond_1
    const-string v0, "[HtcDLNAController]"

    const-string/jumbo v1, "updateControllerItemThumbnail"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1700(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v0

    iput-object p4, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->szThumbPath:Ljava/lang/String;

    .line 1067
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mItemInfoListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnItemInfoListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController;->mItemInfoListener:Landroid/media/dlnasharedmodule/HtcDLNAController$OnItemInfoListener;

    iget-object v1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v1}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1700(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->szThumbPath:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/media/dlnasharedmodule/HtcDLNAController$OnItemInfoListener;->onThumbnailChanged(Ljava/lang/String;)V

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
    .line 953
    const-string v0, "[HtcDLNAController]"

    const-string/jumbo v1, "updateControllerStatus"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1500(Landroid/media/dlnasharedmodule/HtcDLNAController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 956
    const-string v0, "[HtcDLNAController]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    :goto_0
    return-void

    .line 960
    :cond_0
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1600(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v0

    iget v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    iget v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    if-eq v0, v1, :cond_1

    .line 961
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

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1600(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v0

    iget v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    iput v1, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nPlayState:I

    .line 963
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->SendRefresh(I)V

    .line 967
    :cond_1
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1600(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v0

    iget v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nRepeatState:I

    iget v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->repeatState:I

    if-eq v0, v1, :cond_2

    .line 968
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->SendRefresh(I)V

    .line 969
    :cond_2
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1600(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v0

    iget-boolean v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->bShuffleState:Z

    iget-boolean v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->bShuffle:Z

    if-eq v0, v1, :cond_3

    .line 970
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->SendRefresh(I)V

    .line 972
    :cond_3
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1600(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v0

    iget v0, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nVolume:I

    iget v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->volumeValue:I

    if-eq v0, v1, :cond_4

    .line 973
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updStatus - Vol Changed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->volumeValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1600(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v0

    iget v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->volumeValue:I

    iput v1, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nVolume:I

    .line 976
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1600(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->refreshVolume()V

    .line 979
    :cond_4
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1600(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v0

    iget-wide v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->position:J

    iput-wide v1, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->lPositionDyn:J

    .line 980
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1600(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v0

    iget-boolean v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->bMute:Z

    iput-boolean v1, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->bMuteState:Z

    .line 981
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1600(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v0

    iget-boolean v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->bShuffle:Z

    iput-boolean v1, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->bShuffleState:Z

    .line 982
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCStatus:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1600(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;

    move-result-object v0

    iget v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->repeatState:I

    iput v1, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCStatus;->nRepeatState:I

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
    .line 1087
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCallbackUnregistered:Z
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1500(Landroid/media/dlnasharedmodule/HtcDLNAController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1088
    const-string v0, "[HtcDLNAController]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    :goto_0
    return-void

    .line 1091
    :cond_0
    const-string v0, "[HtcDLNAController]"

    const-string/jumbo v1, "updateDownloadStoreAlbumArtNotify"

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    iget-object v0, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mDMCItemInfo:Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
    invoke-static {v0}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$1700(Landroid/media/dlnasharedmodule/HtcDLNAController;)Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;

    move-result-object v0

    iput-object p4, v0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->szThumbPath:Ljava/lang/String;

    .line 1094
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/dlnasharedmodule/HtcDLNAController$1;->SendRefresh(I)V

    goto :goto_0
.end method
