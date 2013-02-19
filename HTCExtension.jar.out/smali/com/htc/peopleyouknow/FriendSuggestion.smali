.class public Lcom/htc/peopleyouknow/FriendSuggestion;
.super Ljava/lang/Object;
.source "FriendSuggestion.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/peopleyouknow/FriendSuggestion;",
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

.field public matchedEmail:Ljava/lang/String;

.field public matchedMobile:Ljava/lang/String;

.field public matchedRawContactID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 203
    new-instance v0, Lcom/htc/peopleyouknow/FriendSuggestion$1;

    invoke-direct {v0}, Lcom/htc/peopleyouknow/FriendSuggestion$1;-><init>()V

    sput-object v0, Lcom/htc/peopleyouknow/FriendSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 222
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->matchedRawContactID:J

    .line 34
    iput-object v2, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->matchedEmail:Ljava/lang/String;

    .line 39
    iput-object v2, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->matchedMobile:Ljava/lang/String;

    .line 81
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    .line 223
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    .line 213
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->matchedRawContactID:J

    .line 34
    iput-object v2, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->matchedEmail:Ljava/lang/String;

    .line 39
    iput-object v2, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->matchedMobile:Ljava/lang/String;

    .line 81
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendUID:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendName:Ljava/lang/String;

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->matchedRawContactID:J

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->matchedEmail:Ljava/lang/String;

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->matchedMobile:Ljava/lang/String;

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    .line 220
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/peopleyouknow/FriendSuggestion$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/htc/peopleyouknow/FriendSuggestion;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public getBio()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Bio"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Birthday"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompany()Ljava/lang/String;
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Company"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Email"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFollowers()Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Followers"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFollowing()Ljava/lang/String;
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Following"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFriendName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendName:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendUID:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Location"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMatchedEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->matchedEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getMatchedMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->matchedMobile:Ljava/lang/String;

    return-object v0
.end method

.method public getMatchedRawContactID()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->matchedRawContactID:J

    return-wide v0
.end method

.method public getPhotoURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "PhotoURL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTweets()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Tweets"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBio(Ljava/lang/String;)V
    .locals 2
    .parameter "bio"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Bio"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 2
    .parameter "birthday"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Birthday"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public setCompany(Ljava/lang/String;)V
    .locals 2
    .parameter "company"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Company"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 2
    .parameter "email"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Email"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public setFollowers(Ljava/lang/String;)V
    .locals 2
    .parameter "followers"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Followers"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public setFollowing(Ljava/lang/String;)V
    .locals 2
    .parameter "following"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Following"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public setFriendName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setFriendUID(Ljava/lang/String;)V
    .locals 0
    .parameter "UID"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendUID:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Location"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public setMatchedEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->matchedEmail:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setMatchedMobile(Ljava/lang/String;)V
    .locals 0
    .parameter "mobile"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->matchedMobile:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setMatchedRawContactID(J)V
    .locals 0
    .parameter "rawContactID"

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->matchedRawContactID:J

    .line 63
    return-void
.end method

.method public setPhotoURL(Ljava/lang/String;)V
    .locals 2
    .parameter "photoURL"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "PhotoURL"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public setTweets(Ljava/lang/String;)V
    .locals 2
    .parameter "tweets"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    const-string v1, "Tweets"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendUID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    iget-wide v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->matchedRawContactID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 243
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->matchedEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->matchedMobile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/htc/peopleyouknow/FriendSuggestion;->friendDetailsBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 246
    return-void
.end method
