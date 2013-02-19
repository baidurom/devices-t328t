.class public Lcom/htc/dlnainterface/DLNAContentItemDetails;
.super Ljava/lang/Object;
.source "DLNAContentItemDetails.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/dlnainterface/DLNAContentItemDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public contentAlbum:Ljava/lang/String;

.field public contentArtist:Ljava/lang/String;

.field public contentBitRate:J

.field public contentComposer:Ljava/lang/String;

.field public contentDate:Ljava/lang/String;

.field public contentDiscNumber:Ljava/lang/String;

.field public contentDuration:J

.field public contentFps:J

.field public contentGenre:Ljava/lang/String;

.field public contentPath:Ljava/lang/String;

.field public contentResolution:Ljava/lang/String;

.field public contentSize:J

.field public contentStatus:Ljava/lang/String;

.field public contentTitle:Ljava/lang/String;

.field public contentTrackNumber:Ljava/lang/String;

.field public contentType:Ljava/lang/String;

.field public downloadStoreAlbumArtPath:Ljava/lang/String;

.field public fileName:Ljava/lang/String;

.field public nameDMS:Ljava/lang/String;

.field public thumbnailPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/htc/dlnainterface/DLNAContentItemDetails$1;

    invoke-direct {v0}, Lcom/htc/dlnainterface/DLNAContentItemDetails$1;-><init>()V

    sput-object v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-direct {p0, p1}, Lcom/htc/dlnainterface/DLNAContentItemDetails;->readFromParcel(Landroid/os/Parcel;)V

    .line 91
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 96
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->thumbnailPath:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->nameDMS:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentPath:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentTitle:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentArtist:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentAlbum:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDate:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentGenre:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentComposer:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentResolution:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentType:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentSize:J

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDuration:J

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentBitRate:J

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentFps:J

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDiscNumber:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentTrackNumber:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentStatus:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->downloadStoreAlbumArtPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->nameDMS:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentArtist:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentAlbum:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDate:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentGenre:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentComposer:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentResolution:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-wide v1, p0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentSize:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 150
    iget-wide v1, p0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDuration:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 151
    iget-wide v1, p0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentBitRate:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 152
    iget-wide v1, p0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentFps:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 153
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDiscNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentTrackNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentStatus:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->downloadStoreAlbumArtPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
