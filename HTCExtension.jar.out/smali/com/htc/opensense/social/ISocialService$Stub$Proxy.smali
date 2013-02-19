.class Lcom/htc/opensense/social/ISocialService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISocialService.java"

# interfaces
.implements Lcom/htc/opensense/social/ISocialService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/social/ISocialService$Stub;
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
    .line 979
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 980
    iput-object p1, p0, Lcom/htc/opensense/social/ISocialService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 981
    return-void
.end method


# virtual methods
.method public addAlbum(Ljava/lang/String;Lcom/htc/opensense/social/data/Album;Lcom/htc/opensense/social/RemoteError;)Lcom/htc/opensense/social/data/Album;
    .locals 6
    .parameter "uid"
    .parameter "album"
    .parameter "remoteError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1183
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1184
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1187
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.opensense.social.ISocialService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1188
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1189
    if-eqz p2, :cond_1

    .line 1190
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1191
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Lcom/htc/opensense/social/data/Album;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1196
    :goto_0
    if-eqz p3, :cond_2

    .line 1197
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1198
    const/4 v3, 0x0

    invoke-virtual {p3, v0, v3}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1203
    :goto_1
    iget-object v3, p0, Lcom/htc/opensense/social/ISocialService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1204
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1205
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 1206
    sget-object v3, Lcom/htc/opensense/social/data/Album;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/social/data/Album;

    .line 1211
    .local v2, _result:Lcom/htc/opensense/social/data/Album;
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1212
    invoke-virtual {p3, v1}, Lcom/htc/opensense/social/RemoteError;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1216
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1219
    return-object v2

    .line 1194
    .end local v2           #_result:Lcom/htc/opensense/social/data/Album;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1216
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 1201
    :cond_2
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1209
    :cond_3
    const/4 v2, 0x0

    .restart local v2       #_result:Lcom/htc/opensense/social/data/Album;
    goto :goto_2
.end method

.method public addAttachment(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/htc/opensense/social/RemoteError;)V
    .locals 5
    .parameter "feature"
    .parameter "targetId"
    .parameter "params"
    .parameter "remoteError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1554
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1555
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1557
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.opensense.social.ISocialService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1558
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1559
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1560
    if-eqz p3, :cond_1

    .line 1561
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1562
    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1567
    :goto_0
    if-eqz p4, :cond_2

    .line 1568
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1569
    const/4 v2, 0x0

    invoke-virtual {p4, v0, v2}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1574
    :goto_1
    iget-object v2, p0, Lcom/htc/opensense/social/ISocialService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1575
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1576
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1577
    invoke-virtual {p4, v1}, Lcom/htc/opensense/social/RemoteError;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1581
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1584
    return-void

    .line 1565
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1581
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 1572
    :cond_2
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public addFeed(Ljava/lang/String;Landroid/os/Bundle;Lcom/htc/opensense/social/RemoteError;)Lcom/htc/opensense/social/data/Feed;
    .locals 6
    .parameter "uid"
    .parameter "params"
    .parameter "remoteError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1680
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1681
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1684
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.opensense.social.ISocialService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1685
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1686
    if-eqz p2, :cond_1

    .line 1687
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1688
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1693
    :goto_0
    if-eqz p3, :cond_2

    .line 1694
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1695
    const/4 v3, 0x0

    invoke-virtual {p3, v0, v3}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1700
    :goto_1
    iget-object v3, p0, Lcom/htc/opensense/social/ISocialService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1701
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1702
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 1703
    sget-object v3, Lcom/htc/opensense/social/data/Feed;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/social/data/Feed;

    .line 1708
    .local v2, _result:Lcom/htc/opensense/social/data/Feed;
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1709
    invoke-virtual {p3, v1}, Lcom/htc/opensense/social/RemoteError;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1713
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1716
    return-object v2

    .line 1691
    .end local v2           #_result:Lcom/htc/opensense/social/data/Feed;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1713
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 1698
    :cond_2
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1706
    :cond_3
    const/4 v2, 0x0

    .restart local v2       #_result:Lcom/htc/opensense/social/data/Feed;
    goto :goto_2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 984
    iget-object v0, p0, Lcom/htc/opensense/social/ISocialService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public deleteAlbum(Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)V
    .locals 5
    .parameter "aid"
    .parameter "remoteError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1267
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1268
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1270
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.opensense.social.ISocialService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1271
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1272
    if-eqz p2, :cond_1

    .line 1273
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1274
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1279
    :goto_0
    iget-object v2, p0, Lcom/htc/opensense/social/ISocialService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1280
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1281
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1282
    invoke-virtual {p2, v1}, Lcom/htc/opensense/social/RemoteError;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1286
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1287
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1289
    return-void

    .line 1277
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1286
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1287
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public deleteAttachment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)V
    .locals 5
    .parameter "feature"
    .parameter "targetId"
    .parameter "attId"
    .parameter "remoteError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1589
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1590
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1592
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.opensense.social.ISocialService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1593
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1594
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1595
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1596
    if-eqz p4, :cond_1

    .line 1597
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1598
    const/4 v2, 0x0

    invoke-virtual {p4, v0, v2}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1603
    :goto_0
    iget-object v2, p0, Lcom/htc/opensense/social/ISocialService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1604
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1605
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1606
    invoke-virtual {p4, v1}, Lcom/htc/opensense/social/RemoteError;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1610
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1613
    return-void

    .line 1601
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1610
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public deleteFeed(Ljava/lang/String;Lcom/htc/opensense/social/data/Feed;Lcom/htc/opensense/social/RemoteError;)V
    .locals 5
    .parameter "uid"
    .parameter "feed"
    .parameter "remoteError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1722
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1723
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1725
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.opensense.social.ISocialService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1726
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1727
    if-eqz p2, :cond_1

    .line 1728
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1729
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Lcom/htc/opensense/social/data/Feed;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1734
    :goto_0
    if-eqz p3, :cond_2

    .line 1735
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1736
    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1741
    :goto_1
    iget-object v2, p0, Lcom/htc/opensense/social/ISocialService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1742
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1743
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1744
    invoke-virtual {p3, v1}, Lcom/htc/opensense/social/RemoteError;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1748
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1751
    return-void

    .line 1732
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1748
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 1739
    :cond_2
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public deleteMedium(Ljava/lang/String;ILcom/htc/opensense/social/RemoteError;)V
    .locals 5
    .parameter "mid"
    .parameter "medium_type"
    .parameter "remoteError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1440
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1441
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1443
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.opensense.social.ISocialService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1444
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1445
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1446
    if-eqz p3, :cond_1

    .line 1447
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1448
    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1453
    :goto_0
    iget-object v2, p0, Lcom/htc/opensense/social/ISocialService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1454
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1455
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1456
    invoke-virtual {p3, v1}, Lcom/htc/opensense/social/RemoteError;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1460
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1461
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1463
    return-void

    .line 1451
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1460
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1461
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public editAlbum(Ljava/lang/String;Landroid/os/Bundle;Lcom/htc/opensense/social/RemoteError;)Landroid/os/Bundle;
    .locals 6
    .parameter "aid"
    .parameter "modifies"
    .parameter "remoteError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1225
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1226
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1229
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.opensense.social.ISocialService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1230
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1231
    if-eqz p2, :cond_1

    .line 1232
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1233
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1238
    :goto_0
    if-eqz p3, :cond_2

    .line 1239
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1240
    const/4 v3, 0x0

    invoke-virtual {p3, v0, v3}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1245
    :goto_1
    iget-object v3, p0, Lcom/htc/opensense/social/ISocialService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1246
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1247
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 1248
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1253
    .local v2, _result:Landroid/os/Bundle;
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1254
    invoke-virtual {p3, v1}, Lcom/htc/opensense/social/RemoteError;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1258
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1261
    return-object v2

    .line 1236
    .end local v2           #_result:Landroid/os/Bundle;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1258
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 1243
    :cond_2
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1251
    :cond_3
    const/4 v2, 0x0

    .restart local v2       #_result:Landroid/os/Bundle;
    goto :goto_2
.end method

.method public editFeed(Ljava/lang/String;Lcom/htc/opensense/social/data/Feed;Landroid/os/Bundle;Lcom/htc/opensense/social/RemoteError;)Lcom/htc/opensense/social/data/Feed;
    .locals 6
    .parameter "uid"
    .parameter "feed"
    .parameter "params"
    .parameter "remoteError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1756
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1757
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1760
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.opensense.social.ISocialService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1761
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1762
    if-eqz p2, :cond_1

    .line 1763
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1764
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Lcom/htc/opensense/social/data/Feed;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1769
    :goto_0
    if-eqz p3, :cond_2

    .line 1770
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1771
    const/4 v3, 0x0

    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1776
    :goto_1
    if-eqz p4, :cond_3

    .line 1777
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1778
    const/4 v3, 0x0

    invoke-virtual {p4, v0, v3}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1783
    :goto_2
    iget-object v3, p0, Lcom/htc/opensense/social/ISocialService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1784
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1785
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 1786
    sget-object v3, Lcom/htc/opensense/social/data/Feed;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/social/data/Feed;

    .line 1791
    .local v2, _result:Lcom/htc/opensense/social/data/Feed;
    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1792
    invoke-virtual {p4, v1}, Lcom/htc/opensense/social/RemoteError;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1796
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1799
    return-object v2

    .line 1767
    .end local v2           #_result:Lcom/htc/opensense/social/data/Feed;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1796
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 1774
    :cond_2
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1781
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1789
    :cond_4
    const/4 v2, 0x0

    .restart local v2       #_result:Lcom/htc/opensense/social/data/Feed;
    goto :goto_3
.end method

.method public editMedium(Ljava/lang/String;ILandroid/os/Bundle;Lcom/htc/opensense/social/RemoteError;)Landroid/os/Bundle;
    .locals 6
    .parameter "mid"
    .parameter "medium_type"
    .parameter "modifies"
    .parameter "remoteError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1399
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1400
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1403
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.opensense.social.ISocialService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1404
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1405
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1406
    if-eqz p3, :cond_1

    .line 1407
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1408
    const/4 v3, 0x0

    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1413
    :goto_0
    if-eqz p4, :cond_2

    .line 1414
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1415
    const/4 v3, 0x0

    invoke-virtual {p4, v0, v3}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1420
    :goto_1
    iget-object v3, p0, Lcom/htc/opensense/social/ISocialService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1421
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1422
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 1423
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1428
    .local v2, _result:Landroid/os/Bundle;
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1429
    invoke-virtual {p4, v1}, Lcom/htc/opensense/social/RemoteError;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1433
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1436
    return-object v2

    .line 1411
    .end local v2           #_result:Landroid/os/Bundle;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1433
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 1418
    :cond_2
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1426
    :cond_3
    const/4 v2, 0x0

    .restart local v2       #_result:Landroid/os/Bundle;
    goto :goto_2
.end method

.method public getActiveUser(Lcom/htc/opensense/social/RemoteError;)Lcom/htc/opensense/social/data/Person;
    .locals 6
    .parameter "remoteError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1646
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1647
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1650
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.opensense.social.ISocialService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1651
    if-eqz p1, :cond_1

    .line 1652
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1653
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1658
    :goto_0
    iget-object v3, p0, Lcom/htc/opensense/social/ISocialService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1659
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1660
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1661
    sget-object v3, Lcom/htc/opensense/social/data/Person;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/social/data/Person;

    .line 1666
    .local v2, _result:Lcom/htc/opensense/social/data/Person;
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1667
    invoke-virtual {p1, v1}, Lcom/htc/opensense/social/RemoteError;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1671
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1674
    return-object v2

    .line 1656
    .end local v2           #_result:Lcom/htc/opensense/social/data/Person;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1671
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 1664
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #_result:Lcom/htc/opensense/social/data/Person;
    goto :goto_1
.end method

.method public getAlbums([Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Album;
    .locals 6
    .parameter "aids"
    .parameter "remoteError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1123
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1124
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1127
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.opensense.social.ISocialService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1128
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1129
    if-eqz p2, :cond_1

    .line 1130
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1131
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1136
    :goto_0
    iget-object v3, p0, Lcom/htc/opensense/social/ISocialService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1137
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1138
    sget-object v3, Lcom/htc/opensense/social/data/Album;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/htc/opensense/social/data/Album;

    .line 1139
    .local v2, _result:[Lcom/htc/opensense/social/data/Album;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1140
    invoke-virtual {p2, v1}, Lcom/htc/opensense/social/RemoteError;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1144
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1147
    return-object v2

    .line 1134
    .end local v2           #_result:[Lcom/htc/opensense/social/data/Album;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1144
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getAlbumsOf(Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Album;
    .locals 6
    .parameter "uid"
    .parameter "remoteError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1093
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1094
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1097
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.opensense.social.ISocialService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1098
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1099
    if-eqz p2, :cond_1

    .line 1100
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1101
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1106
    :goto_0
    iget-object v3, p0, Lcom/htc/opensense/social/ISocialService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1107
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1108
    sget-object v3, Lcom/htc/opensense/social/data/Album;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/htc/opensense/social/data/Album;

    .line 1109
    .local v2, _result:[Lcom/htc/opensense/social/data/Album;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1110
    invoke-virtual {p2, v1}, Lcom/htc/opensense/social/RemoteError;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1114
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1117
    return-object v2

    .line 1104
    .end local v2           #_result:[Lcom/htc/opensense/social/data/Album;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1114
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getAllFeeds(Ljava/lang/String;ZIJJLcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Feed;
    .locals 6
    .parameter "sourceId"
    .parameter "onlyUserFeed"
    .parameter "count"
    .parameter "startTime"
    .parameter "endTime"
    .parameter "remoteError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1059
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1060
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1063
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v5, "com.htc.opensense.social.ISocialService"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1064
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1065
    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1066
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1067
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1068
    invoke-virtual {v0, p6, p7}, Landroid/os/Parcel;->writeLong(J)V

    .line 1069
    if-eqz p8, :cond_2

    .line 1070
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1071
    const/4 v3, 0x0

    invoke-virtual {p8, v0, v3}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1076
    :goto_1
    iget-object v3, p0, Lcom/htc/opensense/social/ISocialService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1077
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1078
    sget-object v3, Lcom/htc/opensense/social/data/Feed;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/htc/opensense/social/data/Feed;

    .line 1079
    .local v2, _result:[Lcom/htc/opensense/social/data/Feed;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1080
    invoke-virtual {p8, v1}, Lcom/htc/opensense/social/RemoteError;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1084
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1085
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1087
    return-object v2

    .end local v2           #_result:[Lcom/htc/opensense/social/data/Feed;
    :cond_1
    move v3, v4

    .line 1065
    goto :goto_0

    .line 1074
    :cond_2
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1084
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1085
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getAttachments(Ljava/lang/String;Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Attachment;
    .locals 6
    .parameter "feature"
    .parameter "targetId"
    .parameter "remoteError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1523
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1524
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1527
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.opensense.social.ISocialService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1528
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1529
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1530
    if-eqz p3, :cond_1

    .line 1531
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1532
    const/4 v3, 0x0

    invoke-virtual {p3, v0, v3}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1537
    :goto_0
    iget-object v3, p0, Lcom/htc/opensense/social/ISocialService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1538
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1539
    sget-object v3, Lcom/htc/opensense/social/data/Attachment;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/htc/opensense/social/data/Attachment;

    .line 1540
    .local v2, _result:[Lcom/htc/opensense/social/data/Attachment;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1541
    invoke-virtual {p3, v1}, Lcom/htc/opensense/social/RemoteError;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1545
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1548
    return-object v2

    .line 1535
    .end local v2           #_result:[Lcom/htc/opensense/social/data/Attachment;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1545
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getEvent(Ljava/lang/String;Ljava/lang/String;J[JLcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Event;
    .locals 6
    .parameter "style"
    .parameter "uid"
    .parameter "end_time"
    .parameter "eid"
    .parameter "remoteError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2038
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2039
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2042
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.opensense.social.ISocialService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2043
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2044
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2045
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 2046
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 2047
    if-eqz p6, :cond_1

    .line 2048
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2049
    const/4 v3, 0x0

    invoke-virtual {p6, v0, v3}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2054
    :goto_0
    iget-object v3, p0, Lcom/htc/opensense/social/ISocialService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2055
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2056
    sget-object v3, Lcom/htc/opensense/social/data/Event;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/htc/opensense/social/data/Event;

    .line 2057
    .local v2, _result:[Lcom/htc/opensense/social/data/Event;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2058
    invoke-virtual {p6, v1}, Lcom/htc/opensense/social/RemoteError;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2062
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2063
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2065
    return-object v2

    .line 2052
    .end local v2           #_result:[Lcom/htc/opensense/social/data/Event;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2062
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2063
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getFeedComments(Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Attachment;
    .locals 6
    .parameter "post_id"
    .parameter "remoteError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1935
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1936
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1939
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.opensense.social.ISocialService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1940
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1941
    if-eqz p2, :cond_1

    .line 1942
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1943
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1948
    :goto_0
    iget-object v3, p0, Lcom/htc/opensense/social/ISocialService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1949
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1950
    sget-object v3, Lcom/htc/opensense/social/data/Attachment;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/htc/opensense/social/data/Attachment;

    .line 1951
    .local v2, _result:[Lcom/htc/opensense/social/data/Attachment;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1952
    invoke-virtual {p2, v1}, Lcom/htc/opensense/social/RemoteError;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1956
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1957
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1959
    return-object v2

    .line 1946
    .end local v2           #_result:[Lcom/htc/opensense/social/data/Attachment;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1956
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1957
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getFeedsOf(Ljava/lang/String;ZLcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Feed;
    .locals 6
    .parameter "uid"
    .parameter "userFeed"
    .parameter "remoteError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1026
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1027
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1030
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v5, "com.htc.opensense.social.ISocialService"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1031
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1032
    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1033
    if-eqz p3, :cond_2

    .line 1034
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1035
    const/4 v3, 0x0

    invoke-virtual {p3, v0, v3}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1040
    :goto_1
    iget-object v3, p0, Lcom/htc/opensense/social/ISocialService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1041
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1042
    sget-object v3, Lcom/htc/opensense/social/data/Feed;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/htc/opensense/social/data/Feed;

    .line 1043
    .local v2, _result:[Lcom/htc/opensense/social/data/Feed;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1044
    invoke-virtual {p3, v1}, Lcom/htc/opensense/social/RemoteError;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1048
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1049
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1051
    return-object v2

    .end local v2           #_result:[Lcom/htc/opensense/social/data/Feed;
    :cond_1
    move v3, v4

    .line 1032
    goto :goto_0

    .line 1038
    :cond_2
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1048
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1049
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getFriendList(Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Person;
    .locals 6
    .parameter "uid"
    .parameter "remoteError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 994
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 995
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 998
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.opensense.social.ISocialService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 999
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1000
    if-eqz p2, :cond_1

    .line 1001
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1002
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1007
    :goto_0
    iget-object v3, p0, Lcom/htc/opensense/social/ISocialService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1008
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1009
    sget-object v3, Lcom/htc/opensense/social/data/Person;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/htc/opensense/social/data/Person;

    .line 1010
    .local v2, _result:[Lcom/htc/opensense/social/data/Person;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1011
    invoke-virtual {p2, v1}, Lcom/htc/opensense/social/RemoteError;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1015
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1016
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1018
    return-object v2

    .line 1005
    .end local v2           #_result:[Lcom/htc/opensense/social/data/Person;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1015
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1016
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getInfo(Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)Lcom/htc/opensense/social/data/Person;
    .locals 6
    .parameter "uid"
    .parameter "remoteError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1865
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1866
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1869
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.opensense.social.ISocialService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1870
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1871
    if-eqz p2, :cond_1

    .line 1872
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1873
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1878
    :goto_0
    iget-object v3, p0, Lcom/htc/opensense/social/ISocialService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1879
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1880
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1881
    sget-object v3, Lcom/htc/opensense/social/data/Person;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/social/data/Person;

    .line 1886
    .local v2, _result:Lcom/htc/opensense/social/data/Person;
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1887
    invoke-virtual {p2, v1}, Lcom/htc/opensense/social/RemoteError;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1891
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1894
    return-object v2

    .line 1876
    .end local v2           #_result:Lcom/htc/opensense/social/data/Person;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1891
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 1884
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #_result:Lcom/htc/opensense/social/data/Person;
    goto :goto_1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 988
    const-string v0, "com.htc.opensense.social.ISocialService"

    return-object v0
.end method

.method public getMedia([Ljava/lang/String;IIILcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Medium;
    .locals 6
    .parameter "mids"
    .parameter "medium_type"
    .parameter "maxWidth"
    .parameter "maxHeight"
    .parameter "remoteError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1469
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1470
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1473
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.opensense.social.ISocialService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1474
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1475
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1476
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1477
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1478
    if-eqz p5, :cond_1

    .line 1479
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1480
    const/4 v3, 0x0

    invoke-virtual {p5, v0, v3}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1485
    :goto_0
    iget-object v3, p0, Lcom/htc/opensense/social/ISocialService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1486
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1487
    sget-object v3, Lcom/htc/opensense/social/data/Medium;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/htc/opensense/social/data/Medium;

    .line 1488
    .local v2, _result:[Lcom/htc/opensense/social/data/Medium;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1489
    invoke-virtual {p5, v1}, Lcom/htc/opensense/social/RemoteError;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1493
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1496
    return-object v2

    .line 1483
    .end local v2           #_result:[Lcom/htc/opensense/social/data/Medium;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1493
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getMediaOf(Lcom/htc/opensense/social/data/Album;IIILcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Medium;
    .locals 6
    .parameter "album"
    .parameter "medium_type"
    .parameter "maxWidth"
    .parameter "maxHeight"
    .parameter "remoteError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1296
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1299
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.opensense.social.ISocialService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1300
    if-eqz p1, :cond_1

    .line 1301
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1302
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/htc/opensense/social/data/Album;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1307
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1308
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1309
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1310
    if-eqz p5, :cond_2

    .line 1311
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1312
    const/4 v3, 0x0

    invoke-virtual {p5, v0, v3}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1317
    :goto_1
    iget-object v3, p0, Lcom/htc/opensense/social/ISocialService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1318
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1319
    sget-object v3, Lcom/htc/opensense/social/data/Medium;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/htc/opensense/social/data/Medium;

    .line 1320
    .local v2, _result:[Lcom/htc/opensense/social/data/Medium;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1321
    invoke-virtual {p5, v1}, Lcom/htc/opensense/social/RemoteError;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1325
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1328
    return-object v2

    .line 1305
    .end local v2           #_result:[Lcom/htc/opensense/social/data/Medium;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1325
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 1315
    :cond_2
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public getMediaTagOf(Ljava/lang/String;IIIILcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Medium;
    .locals 6
    .parameter "uid"
    .parameter "maxSize"
    .parameter "medium_type"
    .parameter "maxWidth"
    .parameter "maxHeight"
    .parameter "remoteError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1367
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1368
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1371
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.opensense.social.ISocialService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1372
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1373
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1374
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1375
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1376
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1377
    if-eqz p6, :cond_1

    .line 1378
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1379
    const/4 v3, 0x0

    invoke-virtual {p6, v0, v3}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1384
    :goto_0
    iget-object v3, p0, Lcom/htc/opensense/social/ISocialService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1385
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1386
    sget-object v3, Lcom/htc/opensense/social/data/Medium;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/htc/opensense/social/data/Medium;

    .line 1387
    .local v2, _result:[Lcom/htc/opensense/social/data/Medium;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1388
    invoke-virtual {p6, v1}, Lcom/htc/opensense/social/RemoteError;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1392
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1395
    return-object v2

    .line 1382
    .end local v2           #_result:[Lcom/htc/opensense/social/data/Medium;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1392
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getPageInfo(Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)Lcom/htc/opensense/social/data/Page;
    .locals 6
    .parameter "pid"
    .parameter "remoteError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1900
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1901
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1904
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.opensense.social.ISocialService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1905
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1906
    if-eqz p2, :cond_1

    .line 1907
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1908
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1913
    :goto_0
    iget-object v3, p0, Lcom/htc/opensense/social/ISocialService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1914
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1915
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1916
    sget-object v3, Lcom/htc/opensense/social/data/Page;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/social/data/Page;

    .line 1921
    .local v2, _result:Lcom/htc/opensense/social/data/Page;
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1922
    invoke-virtual {p2, v1}, Lcom/htc/opensense/social/RemoteError;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1926
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1929
    return-object v2

    .line 1911
    .end local v2           #_result:Lcom/htc/opensense/social/data/Page;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1926
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 1919
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #_result:Lcom/htc/opensense/social/data/Page;
    goto :goto_1
.end method

.method public getPeople([Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Person;
    .locals 6
    .parameter "uids"
    .parameter "remoteError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1153
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1154
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1157
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.opensense.social.ISocialService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1158
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1159
    if-eqz p2, :cond_1

    .line 1160
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1161
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1166
    :goto_0
    iget-object v3, p0, Lcom/htc/opensense/social/ISocialService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1167
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1168
    sget-object v3, Lcom/htc/opensense/social/data/Person;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/htc/opensense/social/data/Person;

    .line 1169
    .local v2, _result:[Lcom/htc/opensense/social/data/Person;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1170
    invoke-virtual {p2, v1}, Lcom/htc/opensense/social/RemoteError;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1174
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1177
    return-object v2

    .line 1164
    .end local v2           #_result:[Lcom/htc/opensense/social/data/Person;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1174
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getRecentMedia(Ljava/lang/String;IIIILcom/htc/opensense/social/RemoteError;)[Lcom/htc/opensense/social/data/Medium;
    .locals 6
    .parameter "uid"
    .parameter "max"
    .parameter "medium_type"
    .parameter "maxWidth"
    .parameter "maxHeight"
    .parameter "remoteError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1335
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1336
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1339
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.opensense.social.ISocialService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1340
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1341
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1342
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1343
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1344
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1345
    if-eqz p6, :cond_1

    .line 1346
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1347
    const/4 v3, 0x0

    invoke-virtual {p6, v0, v3}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1352
    :goto_0
    iget-object v3, p0, Lcom/htc/opensense/social/ISocialService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1353
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1354
    sget-object v3, Lcom/htc/opensense/social/data/Medium;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/htc/opensense/social/data/Medium;

    .line 1355
    .local v2, _result:[Lcom/htc/opensense/social/data/Medium;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1356
    invoke-virtual {p6, v1}, Lcom/htc/opensense/social/RemoteError;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1360
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1363
    return-object v2

    .line 1350
    .end local v2           #_result:[Lcom/htc/opensense/social/data/Medium;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1360
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isFanForPage(Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)Z
    .locals 7
    .parameter "pid"
    .parameter "remoteError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1835
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1836
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1839
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.htc.opensense.social.ISocialService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1840
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1841
    if-eqz p2, :cond_1

    .line 1842
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1843
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1848
    :goto_0
    iget-object v4, p0, Lcom/htc/opensense/social/ISocialService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x1a

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1849
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1850
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 1851
    .local v2, _result:Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1852
    invoke-virtual {p2, v1}, Lcom/htc/opensense/social/RemoteError;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1856
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1857
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1859
    return v2

    .line 1846
    .end local v2           #_result:Z
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1856
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1857
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_2
    move v2, v3

    .line 1850
    goto :goto_1
.end method

.method public likePage(Ljava/lang/String;Lcom/htc/opensense/social/RemoteError;)Z
    .locals 7
    .parameter "pid"
    .parameter "remoteError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1805
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1806
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1809
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.htc.opensense.social.ISocialService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1810
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1811
    if-eqz p2, :cond_1

    .line 1812
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1813
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1818
    :goto_0
    iget-object v4, p0, Lcom/htc/opensense/social/ISocialService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x19

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1819
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1820
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 1821
    .local v2, _result:Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1822
    invoke-virtual {p2, v1}, Lcom/htc/opensense/social/RemoteError;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1826
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1827
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1829
    return v2

    .line 1816
    .end local v2           #_result:Z
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1826
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1827
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_2
    move v2, v3

    .line 1820
    goto :goto_1
.end method

.method public refreshProfiles([Lcom/htc/opensense/social/data/Profile;Lcom/htc/opensense/social/RemoteError;)V
    .locals 5
    .parameter "profiles"
    .parameter "remoteError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1618
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1619
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1621
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.opensense.social.ISocialService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1622
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1623
    if-eqz p2, :cond_1

    .line 1624
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1625
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1630
    :goto_0
    iget-object v2, p0, Lcom/htc/opensense/social/ISocialService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1631
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1632
    sget-object v2, Lcom/htc/opensense/social/data/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1, v2}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 1633
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1634
    invoke-virtual {p2, v1}, Lcom/htc/opensense/social/RemoteError;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1638
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1641
    return-void

    .line 1628
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1638
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setFeedLike(Ljava/lang/String;ZLcom/htc/opensense/social/RemoteError;)Z
    .locals 7
    .parameter "pid"
    .parameter "like"
    .parameter "remoteError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1965
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1966
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1969
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.htc.opensense.social.ISocialService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1970
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1971
    if-eqz p2, :cond_1

    move v4, v2

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1972
    if-eqz p3, :cond_2

    .line 1973
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1974
    const/4 v4, 0x0

    invoke-virtual {p3, v0, v4}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1979
    :goto_1
    iget-object v4, p0, Lcom/htc/opensense/social/ISocialService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x1e

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1980
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1981
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 1982
    .local v2, _result:Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1983
    invoke-virtual {p3, v1}, Lcom/htc/opensense/social/RemoteError;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1987
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1990
    return v2

    .end local v2           #_result:Z
    :cond_1
    move v4, v3

    .line 1971
    goto :goto_0

    .line 1977
    :cond_2
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1987
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_3
    move v2, v3

    .line 1981
    goto :goto_2
.end method

.method public setMethod(Ljava/lang/String;Landroid/os/Bundle;Lcom/htc/opensense/social/RemoteError;)Landroid/os/Bundle;
    .locals 6
    .parameter "method"
    .parameter "params"
    .parameter "remoteError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1996
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1997
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2000
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.opensense.social.ISocialService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2001
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2002
    if-eqz p2, :cond_1

    .line 2003
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2004
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2009
    :goto_0
    if-eqz p3, :cond_2

    .line 2010
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2011
    const/4 v3, 0x0

    invoke-virtual {p3, v0, v3}, Lcom/htc/opensense/social/RemoteError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2016
    :goto_1
    iget-object v3, p0, Lcom/htc/opensense/social/ISocialService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2017
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2018
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 2019
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 2024
    .local v2, _result:Landroid/os/Bundle;
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2025
    invoke-virtual {p3, v1}, Lcom/htc/opensense/social/RemoteError;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2029
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2030
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2032
    return-object v2

    .line 2007
    .end local v2           #_result:Landroid/os/Bundle;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2029
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2030
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 2014
    :cond_2
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2022
    :cond_3
    const/4 v2, 0x0

    .restart local v2       #_result:Landroid/os/Bundle;
    goto :goto_2
.end method

.method public supports(Ljava/lang/String;)Z
    .locals 6
    .parameter "methodName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1502
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1503
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1506
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.opensense.social.ISocialService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1507
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1508
    iget-object v3, p0, Lcom/htc/opensense/social/ISocialService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1509
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1510
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1513
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1516
    return v2

    .line 1513
    .end local v2           #_result:Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method
