.class public Lcom/htc/opensense/social/Album;
.super Lcom/htc/opensense/social/Core;
.source "Album.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ALBUM:Ljava/lang/String; = "album"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense/social/Album;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field count:I

.field coverThumbnailUrl:Ljava/lang/String;

.field cover_Id:Ljava/lang/String;

.field createTime:J

.field description:Ljava/lang/String;

.field id:Ljava/lang/String;

.field lastModified:J

.field name:Ljava/lang/String;

.field owner_id:Ljava/lang/String;

.field privacy:Ljava/lang/String;

.field webLink:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/htc/opensense/social/Album$1;

    invoke-direct {v0}, Lcom/htc/opensense/social/Album$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/social/Album;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/htc/opensense/social/Core;-><init>()V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/htc/opensense/social/Core;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Album;->id:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Album;->owner_id:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/social/Album;->count:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Album;->name:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Album;->description:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Album;->webLink:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Album;->coverThumbnailUrl:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Album;->privacy:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense/social/Album;->createTime:J

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense/social/Album;->lastModified:J

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Core;->data:Landroid/os/Bundle;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense/social/ISocialService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/opensense/social/ISocialService;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense/social/ISocialInterfaceProxy$_ServiceInvocationHandler;->getProxy(Lcom/htc/opensense/social/ISocialService;)Lcom/htc/opensense/social/ISocialInterfaceProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    .line 65
    return-void
.end method


# virtual methods
.method public addComment(Ljava/lang/String;)V
    .locals 3
    .parameter "comment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    const-string v1, "album"

    iget-object v2, p0, Lcom/htc/opensense/social/Album;->id:Ljava/lang/String;

    invoke-interface {v0, p1, v1, v2}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->addComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public delete()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    iget-object v1, p0, Lcom/htc/opensense/social/Album;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->deleteAlbum(Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public edit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense/social/Album;
    .locals 6
    .parameter "name"
    .parameter "description"
    .parameter "privacy"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->editAlbum(Lcom/htc/opensense/social/Album;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense/social/Album;

    move-result-object v0

    return-object v0
.end method

.method public getComments()[Lcom/htc/opensense/social/Comment;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    const-string v1, "album"

    iget-object v2, p0, Lcom/htc/opensense/social/Album;->id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->getComments(Ljava/lang/String;Ljava/lang/String;)[Lcom/htc/opensense/social/Comment;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/htc/opensense/social/Album;->count:I

    return v0
.end method

.method public getCoverId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/opensense/social/Album;->cover_Id:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverThumbnailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/htc/opensense/social/Album;->coverThumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 232
    iget-wide v0, p0, Lcom/htc/opensense/social/Album;->createTime:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/htc/opensense/social/Album;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/htc/opensense/social/Album;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    .prologue
    .line 248
    iget-wide v0, p0, Lcom/htc/opensense/social/Album;->lastModified:J

    return-wide v0
.end method

.method public getMedia(I)[Lcom/htc/opensense/social/Medium;
    .locals 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/opensense/social/Album;->id:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->getMedia(Ljava/lang/String;Ljava/lang/String;I)[Lcom/htc/opensense/social/Medium;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/htc/opensense/social/Album;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/htc/opensense/social/Album;->owner_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivacy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/htc/opensense/social/Album;->privacy:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    const-string v0, "album"

    return-object v0
.end method

.method public getWebLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/opensense/social/Album;->webLink:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 128
    iput p1, p0, Lcom/htc/opensense/social/Album;->count:I

    .line 129
    return-void
.end method

.method public setCoverId(Ljava/lang/String;)V
    .locals 0
    .parameter "cover_Id"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/htc/opensense/social/Album;->cover_Id:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setCoverThumbnailUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "coverLink"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/htc/opensense/social/Album;->coverThumbnailUrl:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setCreateTime(J)V
    .locals 0
    .parameter "createTime"

    .prologue
    .line 240
    iput-wide p1, p0, Lcom/htc/opensense/social/Album;->createTime:J

    .line 241
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/htc/opensense/social/Album;->description:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/htc/opensense/social/Album;->id:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setLastModified(J)V
    .locals 0
    .parameter "lastModified"

    .prologue
    .line 256
    iput-wide p1, p0, Lcom/htc/opensense/social/Album;->lastModified:J

    .line 257
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/htc/opensense/social/Album;->name:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setOwnerId(Ljava/lang/String;)V
    .locals 0
    .parameter "ownerId"

    .prologue
    .line 322
    iput-object p1, p0, Lcom/htc/opensense/social/Album;->owner_id:Ljava/lang/String;

    .line 323
    return-void
.end method

.method public setPrivacy(Ljava/lang/String;)V
    .locals 0
    .parameter "privacy"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/htc/opensense/social/Album;->privacy:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setWebLink(Ljava/lang/String;)V
    .locals 0
    .parameter "webLink"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/htc/opensense/social/Album;->webLink:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/opensense/social/Album;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/htc/opensense/social/Album;->owner_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget v0, p0, Lcom/htc/opensense/social/Album;->count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object v0, p0, Lcom/htc/opensense/social/Album;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/htc/opensense/social/Album;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/htc/opensense/social/Album;->webLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/htc/opensense/social/Album;->coverThumbnailUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/htc/opensense/social/Album;->privacy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-wide v0, p0, Lcom/htc/opensense/social/Album;->createTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 93
    iget-wide v0, p0, Lcom/htc/opensense/social/Album;->lastModified:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 94
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->data:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 95
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    invoke-static {v0}, Lcom/htc/opensense/social/ISocialInterfaceProxy$_ServiceInvocationHandler;->unwrap(Lcom/htc/opensense/social/ISocialInterfaceProxy;)Lcom/htc/opensense/social/ISocialService;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/opensense/social/ISocialService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 97
    return-void
.end method
