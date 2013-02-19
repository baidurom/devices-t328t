.class public Lcom/htc/opensense/social/data/Profile;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense/social/data/Profile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public display_name:Ljava/lang/String;

.field public profile_id:Ljava/lang/String;
    .annotation runtime Lcom/htc/opensense/social/data/Entry$PrimaryKey;
    .end annotation
.end field

.field public profile_type:Ljava/lang/String;

.field public user_avatar:Ljava/lang/String;

.field public user_name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/htc/opensense/social/data/Profile$1;

    invoke-direct {v0}, Lcom/htc/opensense/social/data/Profile$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/social/data/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/htc/opensense/social/data/Profile;->display_name:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/htc/opensense/social/data/Profile;->user_name:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/htc/opensense/social/data/Profile;->user_avatar:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/htc/opensense/social/data/Profile;->profile_type:Ljava/lang/String;

    .line 84
    invoke-virtual {p0, p1}, Lcom/htc/opensense/social/data/Profile;->readFromParcel(Landroid/os/Parcel;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "pid"

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/htc/opensense/social/data/Profile;->display_name:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/htc/opensense/social/data/Profile;->user_name:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/htc/opensense/social/data/Profile;->user_avatar:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/htc/opensense/social/data/Profile;->profile_type:Ljava/lang/String;

    .line 88
    iput-object p1, p0, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    .line 89
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplay_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/htc/opensense/social/data/Profile;->display_name:Ljava/lang/String;

    return-object v0
.end method

.method public getProfile_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    return-object v0
.end method

.method public getProfile_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/htc/opensense/social/data/Profile;->profile_type:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_avatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/opensense/social/data/Profile;->user_avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/htc/opensense/social/data/Profile;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Profile;->display_name:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Profile;->user_name:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Profile;->user_avatar:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Profile;->profile_type:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setDisplay_name(Ljava/lang/String;)V
    .locals 0
    .parameter "display_name"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/htc/opensense/social/data/Profile;->display_name:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setProfile_id(Ljava/lang/String;)V
    .locals 0
    .parameter "profile_id"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setProfile_type(Ljava/lang/String;)V
    .locals 0
    .parameter "profile_type"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/htc/opensense/social/data/Profile;->profile_type:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setUser_avatar(Ljava/lang/String;)V
    .locals 0
    .parameter "user_avatar"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/htc/opensense/social/data/Profile;->user_avatar:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setUser_name(Ljava/lang/String;)V
    .locals 0
    .parameter "user_name"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/htc/opensense/social/data/Profile;->user_name:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flag"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/htc/opensense/social/data/Profile;->display_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/htc/opensense/social/data/Profile;->user_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/htc/opensense/social/data/Profile;->user_avatar:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/htc/opensense/social/data/Profile;->profile_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return-void
.end method
