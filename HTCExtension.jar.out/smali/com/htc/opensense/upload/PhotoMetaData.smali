.class public Lcom/htc/opensense/upload/PhotoMetaData;
.super Ljava/lang/Object;
.source "PhotoMetaData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense/upload/PhotoMetaData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public description:Ljava/lang/String;

.field public id:I

.field public mimeType:Ljava/lang/String;

.field public privacy:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/htc/opensense/upload/PhotoMetaData$1;

    invoke-direct {v0}, Lcom/htc/opensense/upload/PhotoMetaData$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/upload/PhotoMetaData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 98
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/upload/PhotoMetaData;->id:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/upload/PhotoMetaData;->title:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/upload/PhotoMetaData;->mimeType:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/upload/PhotoMetaData;->description:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/upload/PhotoMetaData;->privacy:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/upload/PhotoMetaData;->uri:Landroid/net/Uri;

    .line 106
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/opensense/upload/PhotoMetaData;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/htc/opensense/upload/PhotoMetaData;->id:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/opensense/upload/PhotoMetaData;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivacy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/opensense/upload/PhotoMetaData;->privacy:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/opensense/upload/PhotoMetaData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/opensense/upload/PhotoMetaData;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/htc/opensense/upload/PhotoMetaData;->description:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 43
    iput p1, p0, Lcom/htc/opensense/upload/PhotoMetaData;->id:I

    .line 44
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .parameter "mimeType"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/opensense/upload/PhotoMetaData;->mimeType:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setPrivacy(Ljava/lang/String;)V
    .locals 0
    .parameter "privacy"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/htc/opensense/upload/PhotoMetaData;->privacy:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/opensense/upload/PhotoMetaData;->title:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/htc/opensense/upload/PhotoMetaData;->uri:Landroid/net/Uri;

    .line 84
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 118
    iget v0, p0, Lcom/htc/opensense/upload/PhotoMetaData;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-object v0, p0, Lcom/htc/opensense/upload/PhotoMetaData;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/htc/opensense/upload/PhotoMetaData;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/htc/opensense/upload/PhotoMetaData;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/htc/opensense/upload/PhotoMetaData;->privacy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/htc/opensense/upload/PhotoMetaData;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    return-void
.end method
