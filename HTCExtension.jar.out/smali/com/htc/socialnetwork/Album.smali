.class public Lcom/htc/socialnetwork/Album;
.super Ljava/lang/Object;
.source "Album.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/htc/socialnetwork/Constants;


# static fields
.field public static final ALBUMID:Ljava/lang/String; = "album_id"

.field public static final ALBUMNAME:Ljava/lang/String; = "album_name"

.field public static final ALBUM_PROJECTION:[Ljava/lang/String; = null

.field public static final ALBUM_TABLE:Ljava/lang/String; = "album"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.socialnetwork.album"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.socialnetwork.album"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final COVERURL:Ljava/lang/String; = "cover_url"

.field public static final CREATE_TABLE_SQL:Ljava/lang/String; = "CREATE TABLE album (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, sid INTEGER NOT NULL, uid INTEGER NOT NULL, album_id INTEGER NOT NULL, album_name TEXT NOT NULL, visible INTEGER, photo_count INTEGER NOT NULL, cover_url TEXT, update_time INTEGER, last_check_time INTEGER , UNIQUE ( sid , uid , album_id ));"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "_id ASC"

.field public static final LASTCHECKTIME:Ljava/lang/String; = "last_check_time"

.field private static final LOG_TAG:Ljava/lang/String; = "SocialNetwork-Album"

.field public static final PHOTOCOUNT:Ljava/lang/String; = "photo_count"

.field public static final SID:Ljava/lang/String; = "sid"

.field public static final UID:Ljava/lang/String; = "uid"

.field public static final UPDATETIME:Ljava/lang/String; = "update_time"

.field public static final VISIBLE:Ljava/lang/String; = "visible"


# instance fields
.field private mAid:Ljava/lang/String;

.field private mClient:Lcom/htc/socialnetwork/SocialNetworkClient;

.field private mCoverPhotoId:Ljava/lang/String;

.field private mCoverUrl:Ljava/lang/String;

.field private mCreateTime:J

.field private mName:Ljava/lang/String;

.field private mPhotoAmount:I

.field private mPhotoIds:[Ljava/lang/String;

.field private mUpdateTime:J

.field private mVisibleType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "uid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "visible"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "photo_count"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "cover_url"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "update_time"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "last_check_time"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/socialnetwork/Album;->ALBUM_PROJECTION:[Ljava/lang/String;

    .line 60
    const-string v0, "content://com.htc.socialnetwork.snprovider/albums"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/socialnetwork/Album;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/socialnetwork/Album;->mClient:Lcom/htc/socialnetwork/SocialNetworkClient;

    .line 111
    return-void
.end method

.method public constructor <init>(Lcom/htc/socialnetwork/SocialNetworkClient;)V
    .locals 0
    .parameter "client"

    .prologue
    .line 105
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/htc/socialnetwork/Album;->mClient:Lcom/htc/socialnetwork/SocialNetworkClient;

    .line 107
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 274
    if-ne p1, p0, :cond_1

    .line 282
    :cond_0
    :goto_0
    return v1

    .line 277
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 278
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 280
    check-cast v0, Lcom/htc/socialnetwork/Album;

    .line 281
    .local v0, other:Lcom/htc/socialnetwork/Album;
    const-string v3, "SocialNetwork-Album"

    const-string v4, "equals method"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {p0}, Lcom/htc/socialnetwork/Album;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/socialnetwork/Album;->getId()Ljava/lang/String;

    move-result-object v4

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getCoverPhoto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/htc/socialnetwork/Album;->mCoverPhotoId:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/htc/socialnetwork/Album;->mCoverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 226
    iget-wide v0, p0, Lcom/htc/socialnetwork/Album;->mCreateTime:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/htc/socialnetwork/Album;->mAid:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/htc/socialnetwork/Album;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoAmount()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/htc/socialnetwork/Album;->mPhotoAmount:I

    return v0
.end method

.method public getPhotos()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/htc/socialnetwork/Album;->mPhotoIds:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/htc/socialnetwork/Album;->mClient:Lcom/htc/socialnetwork/SocialNetworkClient;

    iget-object v1, p0, Lcom/htc/socialnetwork/Album;->mAid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/socialnetwork/SocialNetworkClient;->getPhotoIdList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/socialnetwork/Album;->mPhotoIds:[Ljava/lang/String;

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/htc/socialnetwork/Album;->mPhotoIds:[Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    .prologue
    .line 242
    iget-wide v0, p0, Lcom/htc/socialnetwork/Album;->mUpdateTime:J

    return-wide v0
.end method

.method public getVisibleType()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/htc/socialnetwork/Album;->mVisibleType:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/htc/socialnetwork/Album;->mAid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setCoverPhoto(Ljava/lang/String;)V
    .locals 0
    .parameter "cover"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/htc/socialnetwork/Album;->mCoverPhotoId:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setCoverUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 266
    iput-object p1, p0, Lcom/htc/socialnetwork/Album;->mCoverUrl:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public setCreateTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 234
    iput-wide p1, p0, Lcom/htc/socialnetwork/Album;->mCreateTime:J

    .line 235
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/htc/socialnetwork/Album;->mAid:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/htc/socialnetwork/Album;->mName:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setPhotoAmount(I)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 182
    iput p1, p0, Lcom/htc/socialnetwork/Album;->mPhotoAmount:I

    .line 183
    return-void
.end method

.method public setPhotos([Ljava/lang/String;)V
    .locals 0
    .parameter "photos"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/htc/socialnetwork/Album;->mPhotoIds:[Ljava/lang/String;

    .line 219
    return-void
.end method

.method public setSNClient(Lcom/htc/socialnetwork/SocialNetworkClient;)V
    .locals 0
    .parameter "client"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/htc/socialnetwork/Album;->mClient:Lcom/htc/socialnetwork/SocialNetworkClient;

    .line 119
    return-void
.end method

.method public setUpdateTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 250
    iput-wide p1, p0, Lcom/htc/socialnetwork/Album;->mUpdateTime:J

    .line 251
    return-void
.end method

.method public setVisibleType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 166
    iput p1, p0, Lcom/htc/socialnetwork/Album;->mVisibleType:I

    .line 167
    return-void
.end method
