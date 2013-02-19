.class public Lcom/htc/dlnainterface/DLNAControllerStatus;
.super Ljava/lang/Object;
.source "DLNAControllerStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/dlnainterface/DLNAControllerStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bMute:Z

.field public bShuffle:Z

.field public contentAlbum:Ljava/lang/String;

.field public contentArtist:Ljava/lang/String;

.field public contentTitle:Ljava/lang/String;

.field public curContentID:Ljava/lang/String;

.field public curDMRContentTitle:Ljava/lang/String;

.field public curDMRPlayState:I

.field public currentIndex:J

.field public fDuration:J

.field public playState:I

.field public position:J

.field public rendererID:Ljava/lang/String;

.field public repeatState:I

.field public thumbnailPath:Ljava/lang/String;

.field public totalCount:J

.field public volumeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/htc/dlnainterface/DLNAControllerStatus$1;

    invoke-direct {v0}, Lcom/htc/dlnainterface/DLNAControllerStatus$1;-><init>()V

    sput-object v0, Lcom/htc/dlnainterface/DLNAControllerStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p0, p1}, Lcom/htc/dlnainterface/DLNAControllerStatus;->readFromParcel(Landroid/os/Parcel;)V

    .line 53
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 88
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->rendererID:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->contentTitle:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->contentArtist:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->contentAlbum:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->thumbnailPath:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->totalCount:J

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->currentIndex:J

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->fDuration:J

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->position:J

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->volumeValue:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->repeatState:I

    .line 100
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->bMute:Z

    .line 101
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->bShuffle:Z

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->curDMRContentTitle:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->curDMRPlayState:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->curContentID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->rendererID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->contentTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->contentArtist:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->contentAlbum:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-wide v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->totalCount:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 69
    iget-wide v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->currentIndex:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 70
    iget-wide v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->fDuration:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 71
    iget-wide v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->position:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 72
    iget v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->volumeValue:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->repeatState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget-boolean v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->bMute:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 76
    iget-boolean v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->bShuffle:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 77
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->curDMRContentTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->curDMRPlayState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->curContentID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
