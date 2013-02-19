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
    .line 82
    new-instance v0, Lcom/htc/dlnainterface/DLNAControllerStatus$1;

    invoke-direct {v0}, Lcom/htc/dlnainterface/DLNAControllerStatus$1;-><init>()V

    sput-object v0, Lcom/htc/dlnainterface/DLNAControllerStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-virtual {p0, p1}, Lcom/htc/dlnainterface/DLNAControllerStatus;->readFromParcel(Landroid/os/Parcel;)V

    .line 101
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

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 148
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->rendererID:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->contentTitle:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->contentArtist:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->contentAlbum:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->thumbnailPath:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->totalCount:J

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->currentIndex:J

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->fDuration:J

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->position:J

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->volumeValue:I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->repeatState:I

    .line 160
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->bMute:Z

    .line 161
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->bShuffle:Z

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->curDMRContentTitle:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->curDMRPlayState:I

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->curContentID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->rendererID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->contentTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->contentArtist:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->contentAlbum:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-wide v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->totalCount:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 125
    iget-wide v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->currentIndex:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 126
    iget-wide v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->fDuration:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 127
    iget-wide v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->position:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 128
    iget v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->volumeValue:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->repeatState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-boolean v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->bMute:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 132
    iget-boolean v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->bShuffle:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 133
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->curDMRContentTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->curDMRPlayState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAControllerStatus;->curContentID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
