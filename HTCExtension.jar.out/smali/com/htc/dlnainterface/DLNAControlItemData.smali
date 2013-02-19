.class public Lcom/htc/dlnainterface/DLNAControlItemData;
.super Ljava/lang/Object;
.source "DLNAControlItemData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/dlnainterface/DLNAControlItemData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public contentAlbum:Ljava/lang/String;

.field public contentArtist:Ljava/lang/String;

.field public contentDate:Ljava/lang/String;

.field public contentTitle:Ljava/lang/String;

.field public curContentID:Ljava/lang/String;

.field public currentIndex:J

.field public downloadStoreAlbumArtPath:Ljava/lang/String;

.field public fDuration:J

.field public fileSize:J

.field public rendererID:Ljava/lang/String;

.field public thumbnailPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/htc/dlnainterface/DLNAControlItemData$1;

    invoke-direct {v0}, Lcom/htc/dlnainterface/DLNAControlItemData$1;-><init>()V

    sput-object v0, Lcom/htc/dlnainterface/DLNAControlItemData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-direct {p0, p1}, Lcom/htc/dlnainterface/DLNAControlItemData;->readFromParcel(Landroid/os/Parcel;)V

    .line 61
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 66
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAControlItemData;->rendererID:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAControlItemData;->contentTitle:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAControlItemData;->contentArtist:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAControlItemData;->contentAlbum:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAControlItemData;->contentDate:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAControlItemData;->thumbnailPath:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/dlnainterface/DLNAControlItemData;->currentIndex:J

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/dlnainterface/DLNAControlItemData;->fDuration:J

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/dlnainterface/DLNAControlItemData;->fileSize:J

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAControlItemData;->curContentID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAControlItemData;->rendererID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAControlItemData;->contentTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAControlItemData;->contentArtist:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAControlItemData;->contentAlbum:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAControlItemData;->contentDate:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAControlItemData;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-wide v1, p0, Lcom/htc/dlnainterface/DLNAControlItemData;->currentIndex:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 105
    iget-wide v1, p0, Lcom/htc/dlnainterface/DLNAControlItemData;->fDuration:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 106
    iget-wide v1, p0, Lcom/htc/dlnainterface/DLNAControlItemData;->fileSize:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 107
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAControlItemData;->curContentID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
