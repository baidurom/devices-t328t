.class Lcom/htc/android/pim/eas/IEASSvc$Stub$Proxy;
.super Ljava/lang/Object;
.source "IEASSvc.java"

# interfaces
.implements Lcom/htc/android/pim/eas/IEASSvc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/pim/eas/IEASSvc$Stub;
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
    .line 113
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/htc/android/pim/eas/IEASSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 115
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/htc/android/pim/eas/IEASSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public deleteMeetingMail(JJII)I
    .locals 6
    .parameter "accountId"
    .parameter "messageId"
    .parameter "param1"
    .parameter "param2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 189
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 192
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.android.pim.eas.IEASSvc"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 194
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 195
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget-object v3, p0, Lcom/htc/android/pim/eas/IEASSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 198
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 199
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 202
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 205
    return v2

    .line 202
    .end local v2           #_result:I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getAccountList()[Landroid/accounts/Account;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 127
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 130
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.android.pim.eas.IEASSvc"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 131
    iget-object v3, p0, Lcom/htc/android/pim/eas/IEASSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 132
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 133
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/accounts/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .local v2, _result:[Landroid/accounts/Account;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 139
    return-object v2

    .line 136
    .end local v2           #_result:[Landroid/accounts/Account;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const-string v0, "com.htc.android.pim.eas.IEASSvc"

    return-object v0
.end method

.method public searchGAL(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/android/pim/eas/EASGalSearchResult;
    .locals 6
    .parameter "accountName"
    .parameter "criteria"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 144
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 147
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.android.pim.eas.IEASSvc"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v3, p0, Lcom/htc/android/pim/eas/IEASSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 151
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 152
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    sget-object v3, Lcom/htc/android/pim/eas/EASGalSearchResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/pim/eas/EASGalSearchResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    .local v2, _result:Lcom/htc/android/pim/eas/EASGalSearchResult;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 163
    return-object v2

    .line 156
    .end local v2           #_result:Lcom/htc/android/pim/eas/EASGalSearchResult;
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #_result:Lcom/htc/android/pim/eas/EASGalSearchResult;
    goto :goto_0

    .line 160
    .end local v2           #_result:Lcom/htc/android/pim/eas/EASGalSearchResult;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public sendMeetingMail(Ljava/lang/String;JII)I
    .locals 6
    .parameter "accountName"
    .parameter "eventId"
    .parameter "param1"
    .parameter "param2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 168
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 171
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.android.pim.eas.IEASSvc"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 174
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget-object v3, p0, Lcom/htc/android/pim/eas/IEASSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 177
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 178
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 181
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 184
    return v2

    .line 181
    .end local v2           #_result:I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method
