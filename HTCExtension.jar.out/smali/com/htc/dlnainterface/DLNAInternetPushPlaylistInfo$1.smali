.class final Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo$1;
.super Ljava/lang/Object;
.source "DLNAInternetPushPlaylistInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;
    .locals 2
    .parameter "in"

    .prologue
    .line 26
    new-instance v0, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;-><init>(Landroid/os/Parcel;Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 30
    new-array v0, p1, [Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo$1;->newArray(I)[Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    move-result-object v0

    return-object v0
.end method
