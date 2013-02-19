.class public Lcom/htc/dlnainterface/DLNARendererData;
.super Ljava/lang/Object;
.source "DLNARendererData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/dlnainterface/DLNARendererData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bSupportDTCPIP:Z

.field public filterDTCPType:I

.field public filterType:I

.field public ipAddress:J

.field public rendererID:Ljava/lang/String;

.field public rendererName:Ljava/lang/String;

.field public thumbIconType:I

.field public thumbnailPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/htc/dlnainterface/DLNARendererData$1;

    invoke-direct {v0}, Lcom/htc/dlnainterface/DLNARendererData$1;-><init>()V

    sput-object v0, Lcom/htc/dlnainterface/DLNARendererData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v1, p0, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lcom/htc/dlnainterface/DLNARendererData;->thumbnailPath:Ljava/lang/String;

    .line 17
    iput v0, p0, Lcom/htc/dlnainterface/DLNARendererData;->thumbIconType:I

    .line 18
    iput-boolean v0, p0, Lcom/htc/dlnainterface/DLNARendererData;->bSupportDTCPIP:Z

    .line 23
    iput v0, p0, Lcom/htc/dlnainterface/DLNARendererData;->filterType:I

    .line 28
    iput v0, p0, Lcom/htc/dlnainterface/DLNARendererData;->filterDTCPType:I

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/dlnainterface/DLNARendererData;->ipAddress:J

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v1, p0, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lcom/htc/dlnainterface/DLNARendererData;->thumbnailPath:Ljava/lang/String;

    .line 17
    iput v0, p0, Lcom/htc/dlnainterface/DLNARendererData;->thumbIconType:I

    .line 18
    iput-boolean v0, p0, Lcom/htc/dlnainterface/DLNARendererData;->bSupportDTCPIP:Z

    .line 23
    iput v0, p0, Lcom/htc/dlnainterface/DLNARendererData;->filterType:I

    .line 28
    iput v0, p0, Lcom/htc/dlnainterface/DLNARendererData;->filterDTCPType:I

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/dlnainterface/DLNARendererData;->ipAddress:J

    .line 99
    invoke-virtual {p0, p1}, Lcom/htc/dlnainterface/DLNARendererData;->readFromParcel(Landroid/os/Parcel;)V

    .line 100
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    .line 66
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/dlnainterface/DLNARendererData;->thumbnailPath:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/dlnainterface/DLNARendererData;->thumbIconType:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/htc/dlnainterface/DLNARendererData;->bSupportDTCPIP:Z

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/dlnainterface/DLNARendererData;->filterType:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/dlnainterface/DLNARendererData;->filterDTCPType:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/dlnainterface/DLNARendererData;->ipAddress:J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_1
    return-void

    .line 70
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNARendererData;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget v1, p0, Lcom/htc/dlnainterface/DLNARendererData;->thumbIconType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-boolean v1, p0, Lcom/htc/dlnainterface/DLNARendererData;->bSupportDTCPIP:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 51
    iget v1, p0, Lcom/htc/dlnainterface/DLNARendererData;->filterType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget v1, p0, Lcom/htc/dlnainterface/DLNARendererData;->filterDTCPType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-wide v1, p0, Lcom/htc/dlnainterface/DLNARendererData;->ipAddress:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_1
    return-void

    .line 50
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method
