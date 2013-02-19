.class public Lcom/htc/opensense/social/data/Person;
.super Lcom/htc/opensense/social/data/Extra;
.source "Person.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/htc/opensense/social/data/AttachableData;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense/social/data/Person;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERSON:Ljava/lang/String; = "Person"


# instance fields
.field public about_me:Ljava/lang/String;

.field public activities:Ljava/lang/String;

.field public birthday:Ljava/lang/String;

.field public birthday_day:I

.field public birthday_month:I

.field public birthday_year:I

.field public books:Ljava/lang/String;

.field public cell_number:Ljava/lang/String;

.field public current_location:Ljava/lang/String;

.field public email_address:Ljava/lang/String;

.field public fullname:Ljava/lang/String;

.field public hometown_location:Ljava/lang/String;

.field public interests:Ljava/lang/String;

.field public largeBuddyIconUrl:Ljava/lang/String;

.field public lastProfileUpdateTime:J

.field public latestStatus:Lcom/htc/opensense/social/data/Feed;

.field public location:Ljava/lang/String;

.field public movies:Ljava/lang/String;

.field public music:Ljava/lang/String;

.field public networks:[Ljava/lang/String;

.field public phone_number:Ljava/lang/String;

.field public political:Ljava/lang/String;

.field public profile_blurb:Ljava/lang/String;

.field public profile_type:Ljava/lang/String;

.field public profile_url:Ljava/lang/String;

.field public quotes:Ljava/lang/String;

.field public relationship_status:Ljava/lang/String;

.field public religion:Ljava/lang/String;

.field public tv:Ljava/lang/String;

.field public uid:Ljava/lang/String;
    .annotation runtime Lcom/htc/opensense/social/data/Entry$PrimaryKey;
    .end annotation
.end field

.field private user:Lcom/htc/opensense/social/data/Profile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 251
    new-instance v0, Lcom/htc/opensense/social/data/Person$1;

    invoke-direct {v0}, Lcom/htc/opensense/social/data/Person$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/social/data/Person;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v0, -0x1

    .line 280
    invoke-direct {p0}, Lcom/htc/opensense/social/data/Extra;-><init>()V

    .line 35
    iput v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_year:I

    .line 42
    iput v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_month:I

    .line 49
    iput v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_day:I

    .line 91
    new-instance v0, Lcom/htc/opensense/social/data/Feed;

    invoke-direct {v0}, Lcom/htc/opensense/social/data/Feed;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->latestStatus:Lcom/htc/opensense/social/data/Feed;

    .line 98
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense/social/data/Person;->lastProfileUpdateTime:J

    .line 121
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->networks:[Ljava/lang/String;

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    .line 282
    new-instance v0, Lcom/htc/opensense/social/data/Profile;

    invoke-direct {v0, p1}, Lcom/htc/opensense/social/data/Profile;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->user:Lcom/htc/opensense/social/data/Profile;

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->fullname:Ljava/lang/String;

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_year:I

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_month:I

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_day:I

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->phone_number:Ljava/lang/String;

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->cell_number:Ljava/lang/String;

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->location:Ljava/lang/String;

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->email_address:Ljava/lang/String;

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->largeBuddyIconUrl:Ljava/lang/String;

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense/social/data/Person;->lastProfileUpdateTime:J

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->about_me:Ljava/lang/String;

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->profile_blurb:Ljava/lang/String;

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->networks:[Ljava/lang/String;

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->relationship_status:Ljava/lang/String;

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->birthday:Ljava/lang/String;

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->current_location:Ljava/lang/String;

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->hometown_location:Ljava/lang/String;

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->movies:Ljava/lang/String;

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->music:Ljava/lang/String;

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->tv:Ljava/lang/String;

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->books:Ljava/lang/String;

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->religion:Ljava/lang/String;

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->political:Ljava/lang/String;

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->profile_url:Ljava/lang/String;

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->quotes:Ljava/lang/String;

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->interests:Ljava/lang/String;

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->activities:Ljava/lang/String;

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->profile_type:Ljava/lang/String;

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/social/data/Person;->setExtra(Landroid/os/Bundle;)V

    .line 312
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/opensense/social/data/Person$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/htc/opensense/social/data/Person;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "pid"

    .prologue
    const/4 v0, -0x1

    .line 314
    invoke-direct {p0}, Lcom/htc/opensense/social/data/Extra;-><init>()V

    .line 35
    iput v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_year:I

    .line 42
    iput v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_month:I

    .line 49
    iput v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_day:I

    .line 91
    new-instance v0, Lcom/htc/opensense/social/data/Feed;

    invoke-direct {v0}, Lcom/htc/opensense/social/data/Feed;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->latestStatus:Lcom/htc/opensense/social/data/Feed;

    .line 98
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense/social/data/Person;->lastProfileUpdateTime:J

    .line 121
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->networks:[Ljava/lang/String;

    .line 315
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    .line 316
    new-instance v0, Lcom/htc/opensense/social/data/Profile;

    iget-object v1, p0, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/htc/opensense/social/data/Profile;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/opensense/social/data/Person;->user:Lcom/htc/opensense/social/data/Profile;

    .line 317
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 371
    move-object v0, p1

    check-cast v0, Lcom/htc/opensense/social/data/Person;

    .line 373
    .local v0, p:Lcom/htc/opensense/social/data/Person;
    iget-object v1, p0, Lcom/htc/opensense/social/data/Person;->user:Lcom/htc/opensense/social/data/Profile;

    iget-object v1, v1, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    iget-object v2, v0, Lcom/htc/opensense/social/data/Person;->user:Lcom/htc/opensense/social/data/Profile;

    iget-object v2, v2, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getAbout_me()Ljava/lang/String;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->about_me:Ljava/lang/String;

    return-object v0
.end method

.method public getActivities()Ljava/lang/String;
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->activities:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday_day()I
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_day:I

    return v0
.end method

.method public getBirthday_month()I
    .locals 1

    .prologue
    .line 416
    iget v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_month:I

    return v0
.end method

.method public getBirthday_year()I
    .locals 1

    .prologue
    .line 408
    iget v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_year:I

    return v0
.end method

.method public getBooks()Ljava/lang/String;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->books:Ljava/lang/String;

    return-object v0
.end method

.method public getCell_number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->cell_number:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrent_location()Ljava/lang/String;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->current_location:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail_address()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->email_address:Ljava/lang/String;

    return-object v0
.end method

.method public getFullname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->fullname:Ljava/lang/String;

    return-object v0
.end method

.method public getHometown_location()Ljava/lang/String;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->hometown_location:Ljava/lang/String;

    return-object v0
.end method

.method public getIndicator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->user:Lcom/htc/opensense/social/data/Profile;

    iget-object v0, v0, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    return-object v0
.end method

.method public getInterests()Ljava/lang/String;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->interests:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeBuddyIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->largeBuddyIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLastProfileUpdateTime()J
    .locals 2

    .prologue
    .line 480
    iget-wide v0, p0, Lcom/htc/opensense/social/data/Person;->lastProfileUpdateTime:J

    return-wide v0
.end method

.method public getLatestStatus()Lcom/htc/opensense/social/data/Feed;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->latestStatus:Lcom/htc/opensense/social/data/Feed;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getMovies()Ljava/lang/String;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->movies:Ljava/lang/String;

    return-object v0
.end method

.method public getMusic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->music:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworks()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->networks:[Ljava/lang/String;

    return-object v0
.end method

.method public getPhone_number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->phone_number:Ljava/lang/String;

    return-object v0
.end method

.method public getPolitical()Ljava/lang/String;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->political:Ljava/lang/String;

    return-object v0
.end method

.method public getProfile()Lcom/htc/opensense/social/data/Profile;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->user:Lcom/htc/opensense/social/data/Profile;

    return-object v0
.end method

.method public getProfile_blurb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->profile_blurb:Ljava/lang/String;

    return-object v0
.end method

.method public getProfile_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->profile_type:Ljava/lang/String;

    return-object v0
.end method

.method public getProfile_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->profile_url:Ljava/lang/String;

    return-object v0
.end method

.method public getQuotes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->quotes:Ljava/lang/String;

    return-object v0
.end method

.method public getRelationship_status()Ljava/lang/String;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->relationship_status:Ljava/lang/String;

    return-object v0
.end method

.method public getReligion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->religion:Ljava/lang/String;

    return-object v0
.end method

.method public getTv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->tv:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setAbout_me(Ljava/lang/String;)V
    .locals 0
    .parameter "about_me"

    .prologue
    .line 496
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->about_me:Ljava/lang/String;

    .line 497
    return-void
.end method

.method public setActivities(Ljava/lang/String;)V
    .locals 0
    .parameter "activities"

    .prologue
    .line 688
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->activities:Ljava/lang/String;

    .line 689
    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0
    .parameter "birthday"

    .prologue
    .line 544
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->birthday:Ljava/lang/String;

    .line 545
    return-void
.end method

.method public setBirthday_day(I)V
    .locals 0
    .parameter "birthday_day"

    .prologue
    .line 428
    iput p1, p0, Lcom/htc/opensense/social/data/Person;->birthday_day:I

    .line 429
    return-void
.end method

.method public setBirthday_month(I)V
    .locals 0
    .parameter "birthday_month"

    .prologue
    .line 420
    iput p1, p0, Lcom/htc/opensense/social/data/Person;->birthday_month:I

    .line 421
    return-void
.end method

.method public setBirthday_year(I)V
    .locals 0
    .parameter "birthday_year"

    .prologue
    .line 412
    iput p1, p0, Lcom/htc/opensense/social/data/Person;->birthday_year:I

    .line 413
    return-void
.end method

.method public setBooks(Ljava/lang/String;)V
    .locals 0
    .parameter "books"

    .prologue
    .line 616
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->books:Ljava/lang/String;

    .line 617
    return-void
.end method

.method public setCell_number(Ljava/lang/String;)V
    .locals 0
    .parameter "cell_number"

    .prologue
    .line 444
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->cell_number:Ljava/lang/String;

    .line 445
    return-void
.end method

.method public setCurrent_location(Ljava/lang/String;)V
    .locals 0
    .parameter "current_location"

    .prologue
    .line 556
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->current_location:Ljava/lang/String;

    .line 557
    return-void
.end method

.method public setEmail_address(Ljava/lang/String;)V
    .locals 0
    .parameter "email_address"

    .prologue
    .line 460
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->email_address:Ljava/lang/String;

    .line 461
    return-void
.end method

.method public setFullname(Ljava/lang/String;)V
    .locals 0
    .parameter "fullname"

    .prologue
    .line 404
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->fullname:Ljava/lang/String;

    .line 405
    return-void
.end method

.method public setHometown_location(Ljava/lang/String;)V
    .locals 0
    .parameter "hometown_location"

    .prologue
    .line 568
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->hometown_location:Ljava/lang/String;

    .line 569
    return-void
.end method

.method public setInterests(Ljava/lang/String;)V
    .locals 0
    .parameter "interests"

    .prologue
    .line 676
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->interests:Ljava/lang/String;

    .line 677
    return-void
.end method

.method public setLargeBuddyIconUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "largeBuddyIconUrl"

    .prologue
    .line 468
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->largeBuddyIconUrl:Ljava/lang/String;

    .line 469
    return-void
.end method

.method public setLastProfileUpdateTime(J)V
    .locals 0
    .parameter "lastProfileUpdateTime"

    .prologue
    .line 484
    iput-wide p1, p0, Lcom/htc/opensense/social/data/Person;->lastProfileUpdateTime:J

    .line 485
    return-void
.end method

.method public setLatestStatus(Lcom/htc/opensense/social/data/Feed;)V
    .locals 0
    .parameter "latestStatus"

    .prologue
    .line 476
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->latestStatus:Lcom/htc/opensense/social/data/Feed;

    .line 477
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 452
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->location:Ljava/lang/String;

    .line 453
    return-void
.end method

.method public setMovies(Ljava/lang/String;)V
    .locals 0
    .parameter "movies"

    .prologue
    .line 580
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->movies:Ljava/lang/String;

    .line 581
    return-void
.end method

.method public setMusic(Ljava/lang/String;)V
    .locals 0
    .parameter "music"

    .prologue
    .line 592
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->music:Ljava/lang/String;

    .line 593
    return-void
.end method

.method public setNetworks([Ljava/lang/String;)V
    .locals 0
    .parameter "networks"

    .prologue
    .line 520
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->networks:[Ljava/lang/String;

    .line 521
    return-void
.end method

.method public setPhone_number(Ljava/lang/String;)V
    .locals 0
    .parameter "phone_number"

    .prologue
    .line 436
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->phone_number:Ljava/lang/String;

    .line 437
    return-void
.end method

.method public setPolitical(Ljava/lang/String;)V
    .locals 0
    .parameter "political"

    .prologue
    .line 640
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->political:Ljava/lang/String;

    .line 641
    return-void
.end method

.method public setProfile_blurb(Ljava/lang/String;)V
    .locals 0
    .parameter "profile_blurb"

    .prologue
    .line 508
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->profile_blurb:Ljava/lang/String;

    .line 509
    return-void
.end method

.method public setProfile_type(Ljava/lang/String;)V
    .locals 0
    .parameter "profile_type"

    .prologue
    .line 700
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->profile_type:Ljava/lang/String;

    .line 701
    return-void
.end method

.method public setProfile_url(Ljava/lang/String;)V
    .locals 0
    .parameter "profile_url"

    .prologue
    .line 652
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->profile_url:Ljava/lang/String;

    .line 653
    return-void
.end method

.method public setQuotes(Ljava/lang/String;)V
    .locals 0
    .parameter "quotes"

    .prologue
    .line 664
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->quotes:Ljava/lang/String;

    .line 665
    return-void
.end method

.method public setRelationship_status(Ljava/lang/String;)V
    .locals 0
    .parameter "relationship_status"

    .prologue
    .line 532
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->relationship_status:Ljava/lang/String;

    .line 533
    return-void
.end method

.method public setReligion(Ljava/lang/String;)V
    .locals 0
    .parameter "religion"

    .prologue
    .line 628
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->religion:Ljava/lang/String;

    .line 629
    return-void
.end method

.method public setTv(Ljava/lang/String;)V
    .locals 0
    .parameter "tv"

    .prologue
    .line 604
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->tv:Ljava/lang/String;

    .line 605
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 396
    iput-object p1, p0, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    .line 397
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->user:Lcom/htc/opensense/social/data/Profile;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/social/data/Profile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 334
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->fullname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 335
    iget v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_year:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    iget v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_month:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    iget v0, p0, Lcom/htc/opensense/social/data/Person;->birthday_day:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->phone_number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->cell_number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->location:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->email_address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->largeBuddyIconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 343
    iget-wide v0, p0, Lcom/htc/opensense/social/data/Person;->lastProfileUpdateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 344
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->about_me:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->profile_blurb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->networks:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->relationship_status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->birthday:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->current_location:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->hometown_location:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->movies:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->music:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->tv:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->books:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->religion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->political:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->profile_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->quotes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->interests:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->activities:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/htc/opensense/social/data/Person;->profile_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 363
    return-void
.end method
