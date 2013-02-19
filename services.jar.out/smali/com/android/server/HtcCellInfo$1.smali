.class final Lcom/android/server/HtcCellInfo$1;
.super Ljava/lang/Object;
.source "HtcCellInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcCellInfo;
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
        "Lcom/android/server/HtcCellInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/server/HtcCellInfo;
    .locals 2
    .parameter "in"

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 91
    const-string v0, "HtcCellInfo"

    const-string v1, "createFromParcel: in is null. Skip."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v0, 0x0

    .line 94
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/server/HtcCellInfo;

    invoke-direct {v0, p1}, Lcom/android/server/HtcCellInfo;-><init>(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/android/server/HtcCellInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/server/HtcCellInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/server/HtcCellInfo;
    .locals 2
    .parameter "size"

    .prologue
    .line 98
    if-gtz p1, :cond_0

    .line 99
    const-string v0, "HtcCellInfo"

    const-string v1, "newArray: size is less than or equal to zero."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v0, 0x0

    .line 102
    :goto_0
    return-object v0

    :cond_0
    new-array v0, p1, [Lcom/android/server/HtcCellInfo;

    goto :goto_0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/android/server/HtcCellInfo$1;->newArray(I)[Lcom/android/server/HtcCellInfo;

    move-result-object v0

    return-object v0
.end method
