.class public Lcom/htc/peopleyouknow/FriendRequest;
.super Ljava/lang/Object;
.source "FriendRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/peopleyouknow/FriendRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final DETAILS_BIO:Ljava/lang/String; = "Bio"

.field private static final DETAILS_BIRTHDAY:Ljava/lang/String; = "Birthday"

.field private static final DETAILS_COMPANY:Ljava/lang/String; = "Company"

.field private static final DETAILS_EMAIL:Ljava/lang/String; = "Email"

.field private static final DETAILS_FOLLOWERS:Ljava/lang/String; = "Followers"

.field private static final DETAILS_FOLLOWING:Ljava/lang/String; = "Following"

.field private static final DETAILS_LOCATION:Ljava/lang/String; = "Location"

.field private static final DETAILS_PHOTOURL:Ljava/lang/String; = "PhotoURL"

.field private static final DETAILS_TITLE:Ljava/lang/String; = "Title"

.field private static final DETAILS_TWEETS:Ljava/lang/String; = "Tweets"


# instance fields
.field private friendDetailsBundle:Landroid/os/Bundle;

.field public friendName:Ljava/lang/String;

.field public friendUID:Ljava/lang/String;

.field public matchedRawContactID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/htc/peopleyouknow/FriendRequest$1;

    invoke-direct {v0}, Lcom/htc/peopleyouknow/FriendRequest$1;-><init>()V

    sput-object v0, Lcom/htc/peopleyouknow/FriendRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 273
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->matchedRawContactID:J

    .line 97
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendUID:Ljava/lang/String;

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendName:Ljava/lang/String;

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->matchedRawContactID:J

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    .line 279
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/peopleyouknow/FriendRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/htc/peopleyouknow/FriendRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public getBio()Ljava/lang/String;
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Bio"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Birthday"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompany()Ljava/lang/String;
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Company"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Email"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFollowers()Ljava/lang/String;
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Followers"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFollowing()Ljava/lang/String;
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Following"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFriendName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendName:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendUID:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Location"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMatchedRawContactID()J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->matchedRawContactID:J

    return-wide v0
.end method

.method public getPhotoURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "PhotoURL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTweets()Ljava/lang/String;
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Tweets"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBio(Ljava/lang/String;)V
    .locals 2
    .parameter "bio"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Bio"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 2
    .parameter "birthday"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Birthday"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public setCompany(Ljava/lang/String;)V
    .locals 2
    .parameter "company"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Company"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 2
    .parameter "email"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Email"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public setFollowers(Ljava/lang/String;)V
    .locals 2
    .parameter "followers"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Followers"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public setFollowing(Ljava/lang/String;)V
    .locals 2
    .parameter "following"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Following"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public setFriendName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendName:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setFriendUID(Ljava/lang/String;)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendUID:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Location"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public setMatchedRawContactID(J)V
    .locals 0
    .parameter "rawcontactid"

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/htc/peopleyouknow/FriendRequest;->matchedRawContactID:J

    .line 80
    return-void
.end method

.method public setPhotoURL(Ljava/lang/String;)V
    .locals 2
    .parameter "photoURL"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "PhotoURL"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public setTweets(Ljava/lang/String;)V
    .locals 2
    .parameter "tweets"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Tweets"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendUID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    iget-wide v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->matchedRawContactID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 299
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendRequest;->friendDetailsBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 300
    return-void
.end method
