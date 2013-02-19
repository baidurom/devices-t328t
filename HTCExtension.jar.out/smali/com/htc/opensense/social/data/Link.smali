.class public Lcom/htc/opensense/social/data/Link;
.super Ljava/lang/Object;
.source "Link.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense/social/data/Link;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public description:Ljava/lang/String;

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/htc/opensense/social/data/Entry$PrimaryKey;
    .end annotation
.end field

.field public imgUrl:Ljava/lang/String;

.field public link:Ljava/lang/String;

.field public subjectId:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/htc/opensense/social/data/Link$1;

    invoke-direct {v0}, Lcom/htc/opensense/social/data/Link$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/social/data/Link;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p0, p1}, Lcom/htc/opensense/social/data/Link;->readFromParcel(Landroid/os/Parcel;)V

    .line 65
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/htc/opensense/social/data/Link;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/opensense/social/data/Link;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/htc/opensense/social/data/Link;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/htc/opensense/social/data/Link;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getSubjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/htc/opensense/social/data/Link;->subjectId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/htc/opensense/social/data/Link;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/htc/opensense/social/data/Link;->type:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Link;->id:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Link;->type:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Link;->subjectId:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Link;->link:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Link;->imgUrl:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/htc/opensense/social/data/Link;->description:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/htc/opensense/social/data/Link;->id:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "imgUrl"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/htc/opensense/social/data/Link;->imgUrl:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .parameter "link"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/htc/opensense/social/data/Link;->link:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setSubjectId(Ljava/lang/String;)V
    .locals 0
    .parameter "subjectId"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/htc/opensense/social/data/Link;->subjectId:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/htc/opensense/social/data/Link;->title:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/htc/opensense/social/data/Link;->type:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/opensense/social/data/Link;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/htc/opensense/social/data/Link;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/htc/opensense/social/data/Link;->subjectId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/htc/opensense/social/data/Link;->link:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/htc/opensense/social/data/Link;->imgUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    return-void
.end method
