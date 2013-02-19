.class public Lcom/htc/opensense/social/data/Feed;
.super Lcom/htc/opensense/social/data/Extra;
.source "Feed.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/htc/opensense/social/data/AttachableData;


# static fields
.field public static final ACTIVITY:Ljava/lang/String; = "Activity"

.field public static final ADD_NEW_COMMENT:I = 0x102

.field public static final ADD_NEW_FEED:I = 0x101

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense/social/data/Feed;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARAM_ADD_CONTENT:Ljava/lang/String; = "add feed content"

.field public static final PARAM_ADD_TYPE:Ljava/lang/String; = "add feed type"


# instance fields
.field public album:Lcom/htc/opensense/social/data/Album;

.field public attachCaption:Ljava/lang/String;

.field public attachDescription:Ljava/lang/String;

.field public attachLink:Ljava/lang/String;

.field public attachName:Ljava/lang/String;

.field public canComment:Z

.field public canLike:Z

.field public commentCount:I

.field public create_time:J

.field public description:Ljava/lang/String;

.field public iconUrl:Ljava/lang/String;

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/htc/opensense/social/data/Entry$PrimaryKey;
    .end annotation
.end field

.field public isHidden:Z

.field public lastupdate_time:J

.field public likeCount:I

.field public mediaLinks:[Ljava/lang/String;

.field public mediaThumbnails:[Ljava/lang/String;

.field public owner:Lcom/htc/opensense/social/data/Profile;

.field public privacy:Ljava/lang/String;

.field public sourceUrl:Ljava/lang/String;

.field public target:Lcom/htc/opensense/social/data/Profile;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public userComment:Z

.field public userLikes:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 214
    new-instance v0, Lcom/htc/opensense/social/data/Feed$1;

    invoke-direct {v0}, Lcom/htc/opensense/social/data/Feed$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/social/data/Feed;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 278
    invoke-direct {p0}, Lcom/htc/opensense/social/data/Extra;-><init>()V

    .line 54
    iput-wide v2, p0, Lcom/htc/opensense/social/data/Feed;->lastupdate_time:J

    .line 61
    iput-wide v2, p0, Lcom/htc/opensense/social/data/Feed;->create_time:J

    .line 97
    iput-boolean v0, p0, Lcom/htc/opensense/social/data/Feed;->userComment:Z

    .line 104
    iput-boolean v0, p0, Lcom/htc/opensense/social/data/Feed;->canComment:Z

    .line 111
    iput v1, p0, Lcom/htc/opensense/social/data/Feed;->commentCount:I

    .line 118
    iput-boolean v0, p0, Lcom/htc/opensense/social/data/Feed;->userLikes:Z

    .line 125
    iput-boolean v0, p0, Lcom/htc/opensense/social/data/Feed;->canLike:Z

    .line 132
    iput v1, p0, Lcom/htc/opensense/social/data/Feed;->likeCount:I

    .line 139
    iput-boolean v1, p0, Lcom/htc/opensense/social/data/Feed;->isHidden:Z

    .line 182
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/social/data/Feed;->mediaThumbnails:[Ljava/lang/String;

    .line 189
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/social/data/Feed;->mediaLinks:[Ljava/lang/String;

    .line 279
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 243
    invoke-direct {p0}, Lcom/htc/opensense/social/data/Extra;-><init>()V

    .line 54
    iput-wide v3, p0, Lcom/htc/opensense/social/data/Feed;->lastupdate_time:J

    .line 61
    iput-wide v3, p0, Lcom/htc/opensense/social/data/Feed;->create_time:J

    .line 97
    iput-boolean v1, p0, Lcom/htc/opensense/social/data/Feed;->userComment:Z

    .line 104
    iput-boolean v1, p0, Lcom/htc/opensense/social/data/Feed;->canComment:Z

    .line 111
    iput v2, p0, Lcom/htc/opensense/social/data/Feed;->commentCount:I

    .line 118
    iput-boolean v1, p0, Lcom/htc/opensense/social/data/Feed;->userLikes:Z

    .line 125
    iput-boolean v1, p0, Lcom/htc/opensense/social/data/Feed;->canLike:Z

    .line 132
    iput v2, p0, Lcom/htc/opensense/social/data/Feed;->likeCount:I

    .line 139
    iput-boolean v2, p0, Lcom/htc/opensense/social/data/Feed;->isHidden:Z

    .line 182
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/social/data/Feed;->mediaThumbnails:[Ljava/lang/String;

    .line 189
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/social/data/Feed;->mediaLinks:[Ljava/lang/String;

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Feed;->id:Ljava/lang/String;

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 246
    new-instance v0, Lcom/htc/opensense/social/data/Profile;

    invoke-direct {v0, p1}, Lcom/htc/opensense/social/data/Profile;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/htc/opensense/social/data/Feed;->owner:Lcom/htc/opensense/social/data/Profile;

    .line 248
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Feed;->type:Ljava/lang/String;

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Feed;->title:Ljava/lang/String;

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Feed;->description:Ljava/lang/String;

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/opensense/social/data/Feed;->lastupdate_time:J

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/opensense/social/data/Feed;->create_time:J

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Feed;->privacy:Ljava/lang/String;

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Feed;->sourceUrl:Ljava/lang/String;

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Feed;->iconUrl:Ljava/lang/String;

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 257
    new-instance v0, Lcom/htc/opensense/social/data/Profile;

    invoke-direct {v0, p1}, Lcom/htc/opensense/social/data/Profile;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/htc/opensense/social/data/Feed;->target:Lcom/htc/opensense/social/data/Profile;

    .line 259
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/opensense/social/data/Feed;->userComment:Z

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/htc/opensense/social/data/Feed;->canComment:Z

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/social/data/Feed;->commentCount:I

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/htc/opensense/social/data/Feed;->userLikes:Z

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/htc/opensense/social/data/Feed;->canLike:Z

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/social/data/Feed;->likeCount:I

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v2, v1

    :cond_2
    iput-boolean v2, p0, Lcom/htc/opensense/social/data/Feed;->isHidden:Z

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v1, v0, :cond_3

    .line 267
    new-instance v0, Lcom/htc/opensense/social/data/Album;

    invoke-direct {v0, p1}, Lcom/htc/opensense/social/data/Album;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/htc/opensense/social/data/Feed;->album:Lcom/htc/opensense/social/data/Album;

    .line 269
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Feed;->attachName:Ljava/lang/String;

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Feed;->attachCaption:Ljava/lang/String;

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Feed;->attachDescription:Ljava/lang/String;

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Feed;->attachLink:Ljava/lang/String;

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Feed;->mediaThumbnails:[Ljava/lang/String;

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Feed;->mediaLinks:[Ljava/lang/String;

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/social/data/Feed;->setExtra(Landroid/os/Bundle;)V

    .line 276
    return-void

    :cond_4
    move v0, v2

    .line 259
    goto :goto_0

    :cond_5
    move v0, v2

    .line 260
    goto :goto_1

    :cond_6
    move v0, v2

    .line 262
    goto :goto_2

    :cond_7
    move v0, v2

    .line 263
    goto :goto_3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbum()Lcom/htc/opensense/social/data/Album;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->album:Lcom/htc/opensense/social/data/Album;

    return-object v0
.end method

.method public getAttachCaption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->attachCaption:Ljava/lang/String;

    return-object v0
.end method

.method public getAttachDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->attachDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getAttachLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->attachLink:Ljava/lang/String;

    return-object v0
.end method

.method public getAttachName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->attachName:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentCount()I
    .locals 1

    .prologue
    .line 456
    iget v0, p0, Lcom/htc/opensense/social/data/Feed;->commentCount:I

    return v0
.end method

.method public getCreate_time()J
    .locals 2

    .prologue
    .line 392
    iget-wide v0, p0, Lcom/htc/opensense/social/data/Feed;->create_time:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIndicator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastupdate_time()J
    .locals 2

    .prologue
    .line 384
    iget-wide v0, p0, Lcom/htc/opensense/social/data/Feed;->lastupdate_time:J

    return-wide v0
.end method

.method public getLikeCount()I
    .locals 1

    .prologue
    .line 480
    iget v0, p0, Lcom/htc/opensense/social/data/Feed;->likeCount:I

    return v0
.end method

.method public getMediaLinks()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->mediaLinks:[Ljava/lang/String;

    return-object v0
.end method

.method public getMediaThumbnails()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->mediaThumbnails:[Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lcom/htc/opensense/social/data/Profile;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->owner:Lcom/htc/opensense/social/data/Profile;

    return-object v0
.end method

.method public getPrivacy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->privacy:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->sourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Lcom/htc/opensense/social/data/Profile;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->target:Lcom/htc/opensense/social/data/Profile;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isCanComment()Z
    .locals 1

    .prologue
    .line 448
    iget-boolean v0, p0, Lcom/htc/opensense/social/data/Feed;->canComment:Z

    return v0
.end method

.method public isCanLike()Z
    .locals 1

    .prologue
    .line 472
    iget-boolean v0, p0, Lcom/htc/opensense/social/data/Feed;->canLike:Z

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/htc/opensense/social/data/Feed;->isHidden:Z

    return v0
.end method

.method public isUserComment()Z
    .locals 1

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/htc/opensense/social/data/Feed;->userComment:Z

    return v0
.end method

.method public isUserLikes()Z
    .locals 1

    .prologue
    .line 464
    iget-boolean v0, p0, Lcom/htc/opensense/social/data/Feed;->userLikes:Z

    return v0
.end method

.method public setAlbum(Lcom/htc/opensense/social/data/Album;)V
    .locals 0
    .parameter "album"

    .prologue
    .line 504
    iput-object p1, p0, Lcom/htc/opensense/social/data/Feed;->album:Lcom/htc/opensense/social/data/Album;

    .line 505
    return-void
.end method

.method public setAttachCaption(Ljava/lang/String;)V
    .locals 0
    .parameter "attachCaption"

    .prologue
    .line 520
    iput-object p1, p0, Lcom/htc/opensense/social/data/Feed;->attachCaption:Ljava/lang/String;

    .line 521
    return-void
.end method

.method public setAttachDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "attachDescription"

    .prologue
    .line 528
    iput-object p1, p0, Lcom/htc/opensense/social/data/Feed;->attachDescription:Ljava/lang/String;

    .line 529
    return-void
.end method

.method public setAttachLink(Ljava/lang/String;)V
    .locals 0
    .parameter "attachLink"

    .prologue
    .line 540
    iput-object p1, p0, Lcom/htc/opensense/social/data/Feed;->attachLink:Ljava/lang/String;

    .line 541
    return-void
.end method

.method public setAttachName(Ljava/lang/String;)V
    .locals 0
    .parameter "attachName"

    .prologue
    .line 512
    iput-object p1, p0, Lcom/htc/opensense/social/data/Feed;->attachName:Ljava/lang/String;

    .line 513
    return-void
.end method

.method public setCanComment(Z)V
    .locals 0
    .parameter "canComment"

    .prologue
    .line 452
    iput-boolean p1, p0, Lcom/htc/opensense/social/data/Feed;->canComment:Z

    .line 453
    return-void
.end method

.method public setCanLike(Z)V
    .locals 0
    .parameter "canLike"

    .prologue
    .line 476
    iput-boolean p1, p0, Lcom/htc/opensense/social/data/Feed;->canLike:Z

    .line 477
    return-void
.end method

.method public setCommentCount(I)V
    .locals 0
    .parameter "commentCount"

    .prologue
    .line 460
    iput p1, p0, Lcom/htc/opensense/social/data/Feed;->commentCount:I

    .line 461
    return-void
.end method

.method public setCreate_time(J)V
    .locals 0
    .parameter "create_time"

    .prologue
    .line 396
    iput-wide p1, p0, Lcom/htc/opensense/social/data/Feed;->create_time:J

    .line 397
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 380
    iput-object p1, p0, Lcom/htc/opensense/social/data/Feed;->description:Ljava/lang/String;

    .line 381
    return-void
.end method

.method public setHidden(Z)V
    .locals 0
    .parameter "isHidden"

    .prologue
    .line 496
    iput-boolean p1, p0, Lcom/htc/opensense/social/data/Feed;->isHidden:Z

    .line 497
    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "iconUrl"

    .prologue
    .line 424
    iput-object p1, p0, Lcom/htc/opensense/social/data/Feed;->iconUrl:Ljava/lang/String;

    .line 425
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 344
    iput-object p1, p0, Lcom/htc/opensense/social/data/Feed;->id:Ljava/lang/String;

    .line 345
    return-void
.end method

.method public setLastupdate_time(J)V
    .locals 0
    .parameter "lastupdate_time"

    .prologue
    .line 388
    iput-wide p1, p0, Lcom/htc/opensense/social/data/Feed;->lastupdate_time:J

    .line 389
    return-void
.end method

.method public setLikeCount(I)V
    .locals 0
    .parameter "likeCount"

    .prologue
    .line 484
    iput p1, p0, Lcom/htc/opensense/social/data/Feed;->likeCount:I

    .line 485
    return-void
.end method

.method public setMediaLinks([Ljava/lang/String;)V
    .locals 0
    .parameter "mediaLinks"

    .prologue
    .line 556
    iput-object p1, p0, Lcom/htc/opensense/social/data/Feed;->mediaLinks:[Ljava/lang/String;

    .line 557
    return-void
.end method

.method public setMediaThumbnails([Ljava/lang/String;)V
    .locals 0
    .parameter "mediaThumbnails"

    .prologue
    .line 548
    iput-object p1, p0, Lcom/htc/opensense/social/data/Feed;->mediaThumbnails:[Ljava/lang/String;

    .line 549
    return-void
.end method

.method public setOwner(Lcom/htc/opensense/social/data/Profile;)V
    .locals 0
    .parameter "owner"

    .prologue
    .line 352
    iput-object p1, p0, Lcom/htc/opensense/social/data/Feed;->owner:Lcom/htc/opensense/social/data/Profile;

    .line 353
    return-void
.end method

.method public setPrivacy(Ljava/lang/String;)V
    .locals 0
    .parameter "privacy"

    .prologue
    .line 408
    iput-object p1, p0, Lcom/htc/opensense/social/data/Feed;->privacy:Ljava/lang/String;

    .line 409
    return-void
.end method

.method public setSourceUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "sourceUrl"

    .prologue
    .line 416
    iput-object p1, p0, Lcom/htc/opensense/social/data/Feed;->sourceUrl:Ljava/lang/String;

    .line 417
    return-void
.end method

.method public setTarget(Lcom/htc/opensense/social/data/Profile;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 432
    iput-object p1, p0, Lcom/htc/opensense/social/data/Feed;->target:Lcom/htc/opensense/social/data/Profile;

    .line 433
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 372
    iput-object p1, p0, Lcom/htc/opensense/social/data/Feed;->title:Ljava/lang/String;

    .line 373
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 360
    iput-object p1, p0, Lcom/htc/opensense/social/data/Feed;->type:Ljava/lang/String;

    .line 361
    return-void
.end method

.method public setUserComment(Z)V
    .locals 0
    .parameter "userComment"

    .prologue
    .line 444
    iput-boolean p1, p0, Lcom/htc/opensense/social/data/Feed;->userComment:Z

    .line 445
    return-void
.end method

.method public setUserLikes(Z)V
    .locals 0
    .parameter "userLikes"

    .prologue
    .line 468
    iput-boolean p1, p0, Lcom/htc/opensense/social/data/Feed;->userLikes:Z

    .line 469
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 295
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->owner:Lcom/htc/opensense/social/data/Profile;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->owner:Lcom/htc/opensense/social/data/Profile;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->owner:Lcom/htc/opensense/social/data/Profile;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/social/data/Profile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    iget-wide v3, p0, Lcom/htc/opensense/social/data/Feed;->lastupdate_time:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 304
    iget-wide v3, p0, Lcom/htc/opensense/social/data/Feed;->create_time:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 305
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->privacy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->sourceUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->iconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->target:Lcom/htc/opensense/social/data/Profile;

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->target:Lcom/htc/opensense/social/data/Profile;

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->target:Lcom/htc/opensense/social/data/Profile;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/social/data/Profile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 312
    :cond_1
    iget-boolean v0, p0, Lcom/htc/opensense/social/data/Feed;->userComment:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    iget-boolean v0, p0, Lcom/htc/opensense/social/data/Feed;->canComment:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    iget v0, p0, Lcom/htc/opensense/social/data/Feed;->commentCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    iget-boolean v0, p0, Lcom/htc/opensense/social/data/Feed;->userLikes:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    iget-boolean v0, p0, Lcom/htc/opensense/social/data/Feed;->canLike:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget v0, p0, Lcom/htc/opensense/social/data/Feed;->likeCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    iget-boolean v0, p0, Lcom/htc/opensense/social/data/Feed;->isHidden:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->album:Lcom/htc/opensense/social/data/Album;

    if-eqz v0, :cond_a

    :goto_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->album:Lcom/htc/opensense/social/data/Album;

    if-eqz v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->album:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/social/data/Album;->writeToParcel(Landroid/os/Parcel;I)V

    .line 323
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->attachName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->attachCaption:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->attachDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->attachLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->mediaThumbnails:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->mediaLinks:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 330
    return-void

    :cond_3
    move v0, v2

    .line 296
    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 308
    goto :goto_1

    :cond_5
    move v0, v2

    .line 312
    goto :goto_2

    :cond_6
    move v0, v2

    .line 313
    goto :goto_3

    :cond_7
    move v0, v2

    .line 315
    goto :goto_4

    :cond_8
    move v0, v2

    .line 316
    goto :goto_5

    :cond_9
    move v0, v2

    .line 318
    goto :goto_6

    :cond_a
    move v1, v2

    .line 319
    goto :goto_7
.end method
