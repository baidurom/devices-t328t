.class public Lcom/htc/opensense/social/data/Event;
.super Lcom/htc/opensense/social/data/Extra;
.source "Event.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/htc/opensense/social/data/AttachableData;


# static fields
.field public static final ACTIVITY:Ljava/lang/String; = "Activity"

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense/social/data/Event;",
            ">;"
        }
    .end annotation
.end field

.field public static final GET_EVENT_BY_EID:Ljava/lang/String; = "get event by event id"

.field public static final GET_EVENT_BY_UID:Ljava/lang/String; = "get event by user id"

.field public static final GET_EVNET_BY_UID:Ljava/lang/String; = "add event by user id"


# instance fields
.field public description:Ljava/lang/String;

.field public endTime:J

.field public host:Ljava/lang/String;

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/htc/opensense/social/data/Entry$PrimaryKey;
    .end annotation
.end field

.field public lastupdate_time:J

.field public location:Ljava/lang/String;

.field public owner_id:Ljava/lang/String;

.field public pic:Ljava/lang/String;

.field public pic_big:Ljava/lang/String;

.field public pic_small:Ljava/lang/String;

.field public pic_square:Ljava/lang/String;

.field public startTime:J

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lcom/htc/opensense/social/data/Event$1;

    invoke-direct {v0}, Lcom/htc/opensense/social/data/Event$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/social/data/Event;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 190
    invoke-direct {p0}, Lcom/htc/opensense/social/data/Extra;-><init>()V

    .line 26
    iput-wide v0, p0, Lcom/htc/opensense/social/data/Event;->startTime:J

    .line 33
    iput-wide v0, p0, Lcom/htc/opensense/social/data/Event;->endTime:J

    .line 68
    iput-wide v0, p0, Lcom/htc/opensense/social/data/Event;->lastupdate_time:J

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const-wide/16 v0, 0x0

    .line 172
    invoke-direct {p0}, Lcom/htc/opensense/social/data/Extra;-><init>()V

    .line 26
    iput-wide v0, p0, Lcom/htc/opensense/social/data/Event;->startTime:J

    .line 33
    iput-wide v0, p0, Lcom/htc/opensense/social/data/Event;->endTime:J

    .line 68
    iput-wide v0, p0, Lcom/htc/opensense/social/data/Event;->lastupdate_time:J

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Event;->id:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense/social/data/Event;->startTime:J

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense/social/data/Event;->endTime:J

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Event;->title:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Event;->description:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Event;->location:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Event;->owner_id:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense/social/data/Event;->lastupdate_time:J

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Event;->pic_small:Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Event;->pic_big:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Event;->pic_square:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Event;->pic:Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Event;->host:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Event;->type:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/social/data/Event;->setExtra(Landroid/os/Bundle;)V

    .line 188
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 252
    iget-wide v0, p0, Lcom/htc/opensense/social/data/Event;->endTime:J

    return-wide v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIndicator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastupdate_time()J
    .locals 2

    .prologue
    .line 296
    iget-wide v0, p0, Lcom/htc/opensense/social/data/Event;->lastupdate_time:J

    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->owner_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getPic_big()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->pic_big:Ljava/lang/String;

    return-object v0
.end method

.method public getPic_small()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->pic_small:Ljava/lang/String;

    return-object v0
.end method

.method public getPic_square()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->pic_square:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/htc/opensense/social/data/Event;->startTime:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 272
    iput-object p1, p0, Lcom/htc/opensense/social/data/Event;->description:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public setEndTime(J)V
    .locals 0
    .parameter "endTime"

    .prologue
    .line 256
    iput-wide p1, p0, Lcom/htc/opensense/social/data/Event;->endTime:J

    .line 257
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0
    .parameter "host"

    .prologue
    .line 348
    iput-object p1, p0, Lcom/htc/opensense/social/data/Event;->host:Ljava/lang/String;

    .line 349
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/htc/opensense/social/data/Event;->id:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setLastupdate_time(J)V
    .locals 0
    .parameter "lastupdate_time"

    .prologue
    .line 300
    iput-wide p1, p0, Lcom/htc/opensense/social/data/Event;->lastupdate_time:J

    .line 301
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 280
    iput-object p1, p0, Lcom/htc/opensense/social/data/Event;->location:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public setOwner_id(Ljava/lang/String;)V
    .locals 0
    .parameter "owner_id"

    .prologue
    .line 288
    iput-object p1, p0, Lcom/htc/opensense/social/data/Event;->owner_id:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0
    .parameter "pic"

    .prologue
    .line 336
    iput-object p1, p0, Lcom/htc/opensense/social/data/Event;->pic:Ljava/lang/String;

    .line 337
    return-void
.end method

.method public setPic_big(Ljava/lang/String;)V
    .locals 0
    .parameter "pic_big"

    .prologue
    .line 316
    iput-object p1, p0, Lcom/htc/opensense/social/data/Event;->pic_big:Ljava/lang/String;

    .line 317
    return-void
.end method

.method public setPic_small(Ljava/lang/String;)V
    .locals 0
    .parameter "pic_small"

    .prologue
    .line 308
    iput-object p1, p0, Lcom/htc/opensense/social/data/Event;->pic_small:Ljava/lang/String;

    .line 309
    return-void
.end method

.method public setPic_square(Ljava/lang/String;)V
    .locals 0
    .parameter "pic_square"

    .prologue
    .line 324
    iput-object p1, p0, Lcom/htc/opensense/social/data/Event;->pic_square:Ljava/lang/String;

    .line 325
    return-void
.end method

.method public setStartTime(J)V
    .locals 0
    .parameter "startTime"

    .prologue
    .line 248
    iput-wide p1, p0, Lcom/htc/opensense/social/data/Event;->startTime:J

    .line 249
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 264
    iput-object p1, p0, Lcom/htc/opensense/social/data/Event;->title:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 356
    iput-object p1, p0, Lcom/htc/opensense/social/data/Event;->type:Ljava/lang/String;

    .line 357
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    iget-wide v0, p0, Lcom/htc/opensense/social/data/Event;->startTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 209
    iget-wide v0, p0, Lcom/htc/opensense/social/data/Event;->endTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 210
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->location:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->owner_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    iget-wide v0, p0, Lcom/htc/opensense/social/data/Event;->lastupdate_time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 215
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->pic_small:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->pic_big:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->pic_square:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->pic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->host:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/htc/opensense/social/data/Event;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 222
    return-void
.end method
