.class Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDLNAPluginNotify.java"

# interfaces
.implements Lcom/htc/dlnainterface/IDLNAPluginNotify;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .parameter "remote"

    .prologue
    .line 346
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 347
    iput-object p1, p0, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 348
    return-void
.end method


# virtual methods
.method public albumArtDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "serverID"
    .parameter "contentID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 690
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 692
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 693
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 694
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 695
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 696
    iget-object v1, p0, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 701
    return-void

    .line 699
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public contentAddedNotify(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 5
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
    .line 566
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 568
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 569
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 570
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 571
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 572
    invoke-virtual {v0, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    .line 573
    iget-object v1, p0, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 578
    return-void

    .line 576
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public contentBrowsingDoneNotify(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 5
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
    const/4 v1, 0x1

    .line 593
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 595
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.dlnainterface.IDLNAPluginNotify"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 596
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 597
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 598
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 599
    invoke-virtual {v0, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    .line 600
    if-eqz p7, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 601
    iget-object v1, p0, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 606
    return-void

    .line 600
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 604
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public contentBrowsingErrorNotify(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V
    .locals 5
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
    .line 621
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 623
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 624
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 625
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 626
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 627
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 628
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 629
    iget-object v1, p0, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 634
    return-void

    .line 632
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public contentThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "serverID"
    .parameter "contentID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 541
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 543
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 544
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 545
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 547
    iget-object v1, p0, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 552
    return-void

    .line 550
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public contentUpdatedNotify(Ljava/lang/String;J)V
    .locals 5
    .parameter "containerID"
    .parameter "startIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 645
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 647
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 648
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 649
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 650
    iget-object v1, p0, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 655
    return-void

    .line 653
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public controllerErrorNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .parameter "rendererID"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 813
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 815
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 816
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 817
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 818
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 819
    iget-object v1, p0, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 822
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 824
    return-void

    .line 822
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
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
    .line 837
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 839
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 840
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 841
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 842
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 843
    iget-object v1, p0, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 846
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 848
    return-void

    .line 846
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public getContentItemDetailsNotify(Ljava/lang/String;Ljava/lang/String;Lcom/htc/dlnainterface/DLNAContentItemDetails;)V
    .locals 5
    .parameter "serverID"
    .parameter "contentID"
    .parameter "details"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 861
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 863
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 864
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 865
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 866
    if-eqz p3, :cond_0

    .line 867
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 868
    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lcom/htc/dlnainterface/DLNAContentItemDetails;->writeToParcel(Landroid/os/Parcel;I)V

    .line 873
    :goto_0
    iget-object v1, p0, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x16

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 876
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 878
    return-void

    .line 871
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 876
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    const-string v0, "com.htc.dlnainterface.IDLNAPluginNotify"

    return-object v0
.end method

.method public imageDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "serverID"
    .parameter "contentID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 667
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 669
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 670
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 671
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 672
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 673
    iget-object v1, p0, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 678
    return-void

    .line 676
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public mirrorRendererAddedNotify(Lcom/htc/dlnainterface/DLNARendererData;)V
    .locals 5
    .parameter "rendererData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 912
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 914
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 915
    if-eqz p1, :cond_0

    .line 916
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 917
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/htc/dlnainterface/DLNARendererData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 922
    :goto_0
    iget-object v1, p0, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x18

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 927
    return-void

    .line 920
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 925
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
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
    .line 713
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 715
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 716
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 717
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 718
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 719
    iget-object v1, p0, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 724
    return-void

    .line 722
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
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
    .line 429
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 431
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 432
    if-eqz p1, :cond_0

    .line 433
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/htc/dlnainterface/DLNARendererData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 439
    :goto_0
    iget-object v1, p0, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 444
    return-void

    .line 437
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 442
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public rendererListUpdateNotify([Lcom/htc/dlnainterface/DLNARendererData;)V
    .locals 5
    .parameter "rendererList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 477
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 479
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 480
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 481
    iget-object v1, p0, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 486
    return-void

    .line 484
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public rendererRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .parameter "uniqueID"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 456
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 458
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 462
    iget-object v1, p0, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 467
    return-void

    .line 465
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public rendererThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "uniqueID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 518
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 520
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 521
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 523
    iget-object v1, p0, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 528
    return-void

    .line 526
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public serverAddedNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "uniqueID"
    .parameter "serverName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 367
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 369
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 372
    iget-object v1, p0, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 377
    return-void

    .line 375
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public serverListUpdateNotify([Lcom/htc/dlnainterface/DLNAServerData;)V
    .locals 5
    .parameter "serverList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 410
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 412
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 413
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 414
    iget-object v1, p0, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 419
    return-void

    .line 417
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public serverRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .parameter "uniqueID"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 389
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 391
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 400
    return-void

    .line 398
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public serverThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "uniqueID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 497
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 499
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 500
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 501
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 502
    iget-object v1, p0, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 507
    return-void

    .line 505
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public updateControlItemInfo(Lcom/htc/dlnainterface/DLNAControlItemData;)V
    .locals 5
    .parameter "itemData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 761
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 763
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 764
    if-eqz p1, :cond_0

    .line 765
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 766
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/htc/dlnainterface/DLNAControlItemData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 771
    :goto_0
    iget-object v1, p0, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 776
    return-void

    .line 769
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 774
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
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
    .line 789
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 791
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 792
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 793
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 794
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 795
    iget-object v1, p0, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x13

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 798
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 800
    return-void

    .line 798
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public updateControllerStatus(Lcom/htc/dlnainterface/DLNAControllerStatus;)V
    .locals 5
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 735
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 737
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 738
    if-eqz p1, :cond_0

    .line 739
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 740
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/htc/dlnainterface/DLNAControllerStatus;->writeToParcel(Landroid/os/Parcel;I)V

    .line 745
    :goto_0
    iget-object v1, p0, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 750
    return-void

    .line 743
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 748
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public updateDownloadStoreAlbumArtNotify(Ljava/lang/String;JLjava/lang/String;)V
    .locals 5
    .parameter "rendererID"
    .parameter "currentIndex"
    .parameter "albumArtPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 891
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 893
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 894
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 895
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 896
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 897
    iget-object v1, p0, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 902
    return-void

    .line 900
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
