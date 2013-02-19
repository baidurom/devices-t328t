.class public Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;
.super Ljava/lang/Object;
.source "DLNAInternetPushPlaylistInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mDurationMillis:J

.field public mIndex:I

.field public mMediaTitle:Ljava/lang/String;

.field public mMediaTitles:[Ljava/lang/String;

.field public mMediaURL:Ljava/lang/String;

.field public mMediaURLs:[Ljava/lang/String;

.field public mThumbURL:Ljava/lang/String;

.field public mThumbURLs:[Ljava/lang/String;

.field public mUserId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo$1;

    invoke-direct {v0}, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo$1;-><init>()V

    sput-object v0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-direct {p0, p1}, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 97
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 35
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->mMediaURLs:[Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->mThumbURLs:[Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->mMediaTitles:[Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->mMediaURL:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->mThumbURL:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->mMediaTitle:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->mUserId:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->mIndex:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->mDurationMillis:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 47
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->mMediaURLs:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->mThumbURLs:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->mMediaTitles:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->mMediaURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->mThumbURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->mMediaTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget v0, p0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget-wide v0, p0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->mDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    goto :goto_0
.end method
