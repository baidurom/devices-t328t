.class public Lcom/htc/opensense/upload/BatchData;
.super Ljava/lang/Object;
.source "BatchData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense/upload/BatchData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public aId:Ljava/lang/String;

.field public albumName:Ljava/lang/String;

.field public batchId:I

.field public category:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public frequency:Ljava/lang/String;

.field public insertTime:J

.field public messageToPost:Ljava/lang/String;

.field public mode:I

.field public postToWall:Z

.field public privacy:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 176
    new-instance v0, Lcom/htc/opensense/upload/BatchData$1;

    invoke-direct {v0}, Lcom/htc/opensense/upload/BatchData$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/upload/BatchData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 188
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 190
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "batchId"

    .prologue
    .line 192
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput p1, p0, Lcom/htc/opensense/upload/BatchData;->batchId:I

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "source"

    .prologue
    const/4 v0, 0x1

    .line 196
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/opensense/upload/BatchData;->batchId:I

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense/upload/BatchData;->albumName:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense/upload/BatchData;->aId:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense/upload/BatchData;->title:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense/upload/BatchData;->description:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense/upload/BatchData;->privacy:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/opensense/upload/BatchData;->mode:I

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/opensense/upload/BatchData;->insertTime:J

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/htc/opensense/upload/BatchData;->postToWall:Z

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/upload/BatchData;->messageToPost:Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/upload/BatchData;->frequency:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/upload/BatchData;->uri:Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/upload/BatchData;->category:Ljava/lang/String;

    .line 210
    return-void

    .line 205
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/opensense/upload/BatchData;->albumName:Ljava/lang/String;

    return-object v0
.end method

.method public getBatchId()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/htc/opensense/upload/BatchData;->batchId:I

    return v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/htc/opensense/upload/BatchData;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/opensense/upload/BatchData;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFrequency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/htc/opensense/upload/BatchData;->frequency:Ljava/lang/String;

    return-object v0
.end method

.method public getInsertTime()J
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/htc/opensense/upload/BatchData;->insertTime:J

    return-wide v0
.end method

.method public getMessageToPost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/opensense/upload/BatchData;->messageToPost:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/htc/opensense/upload/BatchData;->mode:I

    return v0
.end method

.method public getPrivacy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/htc/opensense/upload/BatchData;->privacy:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/opensense/upload/BatchData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/htc/opensense/upload/BatchData;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public getaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/opensense/upload/BatchData;->aId:Ljava/lang/String;

    return-object v0
.end method

.method public isPostToWall()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/htc/opensense/upload/BatchData;->postToWall:Z

    return v0
.end method

.method public setAlbumName(Ljava/lang/String;)V
    .locals 0
    .parameter "albumName"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/htc/opensense/upload/BatchData;->albumName:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setBatchId(I)V
    .locals 0
    .parameter "batchId"

    .prologue
    .line 77
    iput p1, p0, Lcom/htc/opensense/upload/BatchData;->batchId:I

    .line 78
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .parameter "category"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/htc/opensense/upload/BatchData;->category:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/htc/opensense/upload/BatchData;->description:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setFrequency(Ljava/lang/String;)V
    .locals 0
    .parameter "frequency"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/htc/opensense/upload/BatchData;->frequency:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setInsertTime(J)V
    .locals 0
    .parameter "insertTime"

    .prologue
    .line 133
    iput-wide p1, p0, Lcom/htc/opensense/upload/BatchData;->insertTime:J

    .line 134
    return-void
.end method

.method public setMessageToPost(Ljava/lang/String;)V
    .locals 0
    .parameter "messageToPost"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/htc/opensense/upload/BatchData;->messageToPost:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 125
    iput p1, p0, Lcom/htc/opensense/upload/BatchData;->mode:I

    .line 126
    return-void
.end method

.method public setPostToWall(Z)V
    .locals 0
    .parameter "postToWall"

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/htc/opensense/upload/BatchData;->postToWall:Z

    .line 142
    return-void
.end method

.method public setPrivacy(Ljava/lang/String;)V
    .locals 0
    .parameter "privacy"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/htc/opensense/upload/BatchData;->privacy:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/htc/opensense/upload/BatchData;->title:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/htc/opensense/upload/BatchData;->uri:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setaId(Ljava/lang/String;)V
    .locals 0
    .parameter "aId"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/htc/opensense/upload/BatchData;->aId:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 218
    iget v0, p0, Lcom/htc/opensense/upload/BatchData;->batchId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-object v0, p0, Lcom/htc/opensense/upload/BatchData;->albumName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/htc/opensense/upload/BatchData;->aId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/htc/opensense/upload/BatchData;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/htc/opensense/upload/BatchData;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/htc/opensense/upload/BatchData;->privacy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget v0, p0, Lcom/htc/opensense/upload/BatchData;->mode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    iget-wide v0, p0, Lcom/htc/opensense/upload/BatchData;->insertTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 226
    iget-boolean v0, p0, Lcom/htc/opensense/upload/BatchData;->postToWall:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    iget-object v0, p0, Lcom/htc/opensense/upload/BatchData;->messageToPost:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/htc/opensense/upload/BatchData;->frequency:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/htc/opensense/upload/BatchData;->uri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/htc/opensense/upload/BatchData;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    return-void

    .line 226
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
