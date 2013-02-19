.class public Lcom/htc/opensense/social/Medium;
.super Lcom/htc/opensense/social/Core;
.source "Medium.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense/social/Medium;",
            ">;"
        }
    .end annotation
.end field

.field public static final MEDIUM:Ljava/lang/String; = "medium"


# instance fields
.field albumId:Ljava/lang/String;

.field createTime:J

.field description:Ljava/lang/String;

.field id:Ljava/lang/String;

.field lastModified:J

.field medium_type:I

.field name:Ljava/lang/String;

.field owner_id:Ljava/lang/String;

.field privacy:Ljava/lang/String;

.field thumbnailUrl:Ljava/lang/String;

.field urlLink:Ljava/lang/String;

.field webLink:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/htc/opensense/social/Medium$1;

    invoke-direct {v0}, Lcom/htc/opensense/social/Medium$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/social/Medium;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/htc/opensense/social/Core;-><init>()V

    .line 70
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

    iput-object v0, p0, Lcom/htc/opensense/social/Medium;->id:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Medium;->owner_id:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Medium;->name:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/social/Medium;->medium_type:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Medium;->description:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Medium;->albumId:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Medium;->webLink:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Medium;->urlLink:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Medium;->thumbnailUrl:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Medium;->privacy:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense/social/Medium;->createTime:J

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense/social/Medium;->lastModified:J

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Core;->data:Landroid/os/Bundle;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense/social/ISocialService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/opensense/social/ISocialService;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense/social/ISocialInterfaceProxy$_ServiceInvocationHandler;->getProxy(Lcom/htc/opensense/social/ISocialService;)Lcom/htc/opensense/social/ISocialInterfaceProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    .line 67
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
    .line 244
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    const-string v1, "medium"

    invoke-virtual {p0}, Lcom/htc/opensense/social/Medium;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->addComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbum()Lcom/htc/opensense/social/Album;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 277
    iget-object v2, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/opensense/social/Medium;->albumId:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-interface {v2, v1, v3}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->getAlbums([Ljava/lang/String;[Ljava/lang/String;)[Lcom/htc/opensense/social/Album;

    move-result-object v0

    .line 278
    .local v0, albums:[Lcom/htc/opensense/social/Album;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 279
    aget-object v1, v0, v5

    .line 281
    :cond_0
    return-object v1
.end method

.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/htc/opensense/social/Medium;->albumId:Ljava/lang/String;

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
    .line 236
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    const-string v1, "medium"

    invoke-virtual {p0}, Lcom/htc/opensense/social/Medium;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->getComments(Ljava/lang/String;Ljava/lang/String;)[Lcom/htc/opensense/social/Comment;

    move-result-object v0

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 204
    iget-wide v0, p0, Lcom/htc/opensense/social/Medium;->createTime:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/htc/opensense/social/Medium;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/opensense/social/Medium;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    .prologue
    .line 220
    iget-wide v0, p0, Lcom/htc/opensense/social/Medium;->lastModified:J

    return-wide v0
.end method

.method public getMediumType()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/htc/opensense/social/Medium;->medium_type:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/opensense/social/Medium;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lcom/htc/opensense/social/Person;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 339
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    iget-object v1, p0, Lcom/htc/opensense/social/Medium;->owner_id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->getPerson(Ljava/lang/String;)Lcom/htc/opensense/social/Person;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/htc/opensense/social/Medium;->owner_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivacy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/htc/opensense/social/Medium;->privacy:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/htc/opensense/social/Medium;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    const-string v0, "medium"

    return-object v0
.end method

.method public getUrlLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/htc/opensense/social/Medium;->urlLink:Ljava/lang/String;

    return-object v0
.end method

.method public getWebLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/htc/opensense/social/Medium;->webLink:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0
    .parameter "albumId"

    .prologue
    .line 289
    iput-object p1, p0, Lcom/htc/opensense/social/Medium;->albumId:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public setCreateTime(J)V
    .locals 0
    .parameter "createTime"

    .prologue
    .line 212
    iput-wide p1, p0, Lcom/htc/opensense/social/Medium;->createTime:J

    .line 213
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/htc/opensense/social/Medium;->description:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/htc/opensense/social/Medium;->id:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setLastModified(J)V
    .locals 0
    .parameter "lastModified"

    .prologue
    .line 228
    iput-wide p1, p0, Lcom/htc/opensense/social/Medium;->lastModified:J

    .line 229
    return-void
.end method

.method setLike(Z)V
    .locals 3
    .parameter "like"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    const-string v1, "medium"

    iget-object v2, p0, Lcom/htc/opensense/social/Medium;->id:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->setLike(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 352
    return-void
.end method

.method public setMediumType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 256
    iput p1, p0, Lcom/htc/opensense/social/Medium;->medium_type:I

    .line 257
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/htc/opensense/social/Medium;->name:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setOwnerId(Ljava/lang/String;)V
    .locals 0
    .parameter "ownerId"

    .prologue
    .line 347
    iput-object p1, p0, Lcom/htc/opensense/social/Medium;->owner_id:Ljava/lang/String;

    .line 348
    return-void
.end method

.method public setPrivacy(Ljava/lang/String;)V
    .locals 0
    .parameter "privacy"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/htc/opensense/social/Medium;->privacy:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setThumbnailUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "thumbnailUrl"

    .prologue
    .line 305
    iput-object p1, p0, Lcom/htc/opensense/social/Medium;->thumbnailUrl:Ljava/lang/String;

    .line 306
    return-void
.end method

.method public setUrlLink(Ljava/lang/String;)V
    .locals 0
    .parameter "urlLink"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/htc/opensense/social/Medium;->urlLink:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setWebLink(Ljava/lang/String;)V
    .locals 0
    .parameter "webLink"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/htc/opensense/social/Medium;->webLink:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/opensense/social/Medium;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/htc/opensense/social/Medium;->owner_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/htc/opensense/social/Medium;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget v0, p0, Lcom/htc/opensense/social/Medium;->medium_type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-object v0, p0, Lcom/htc/opensense/social/Medium;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/htc/opensense/social/Medium;->albumId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/htc/opensense/social/Medium;->webLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/htc/opensense/social/Medium;->urlLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/htc/opensense/social/Medium;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/htc/opensense/social/Medium;->privacy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-wide v0, p0, Lcom/htc/opensense/social/Medium;->createTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 97
    iget-wide v0, p0, Lcom/htc/opensense/social/Medium;->lastModified:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 98
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->data:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 99
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    invoke-static {v0}, Lcom/htc/opensense/social/ISocialInterfaceProxy$_ServiceInvocationHandler;->unwrap(Lcom/htc/opensense/social/ISocialInterfaceProxy;)Lcom/htc/opensense/social/ISocialService;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/opensense/social/ISocialService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 101
    return-void
.end method
