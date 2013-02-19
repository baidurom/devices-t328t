.class final Lcom/android/server/HtcCellInfo;
.super Ljava/lang/Object;
.source "HtcCellInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/server/HtcCellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "HtcCellInfo"


# instance fields
.field private final DEBUG_ON:Z

.field private mCellInfo:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/android/server/HtcCellInfo$1;

    invoke-direct {v0}, Lcom/android/server/HtcCellInfo$1;-><init>()V

    sput-object v0, Lcom/android/server/HtcCellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/HtcCellInfo;->DEBUG_ON:Z

    .line 36
    if-nez p1, :cond_0

    .line 43
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/android/server/HtcCellInfo;->mCellInfo:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    goto :goto_0
.end method

.method protected constructor <init>([I)V
    .locals 1
    .parameter "cellInfo"

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/HtcCellInfo;->DEBUG_ON:Z

    .line 26
    if-nez p1, :cond_0

    .line 33
    :goto_0
    return-void

    .line 32
    :cond_0
    iput-object p1, p0, Lcom/android/server/HtcCellInfo;->mCellInfo:[I

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method protected equals(Lcom/android/server/HtcCellInfo;)Z
    .locals 4
    .parameter "targetCellInfo"

    .prologue
    const/4 v1, 0x0

    .line 57
    iget-object v2, p0, Lcom/android/server/HtcCellInfo;->mCellInfo:[I

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 58
    iget-object v2, p0, Lcom/android/server/HtcCellInfo;->mCellInfo:[I

    array-length v2, v2

    invoke-virtual {p1}, Lcom/android/server/HtcCellInfo;->getLength()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 59
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/server/HtcCellInfo;->mCellInfo:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 60
    iget-object v2, p0, Lcom/android/server/HtcCellInfo;->mCellInfo:[I

    aget v2, v2, v0

    invoke-virtual {p1}, Lcom/android/server/HtcCellInfo;->getCellInfo()[I

    move-result-object v3

    aget v3, v3, v0

    if-eq v2, v3, :cond_1

    .line 67
    .end local v0           #i:I
    :cond_0
    :goto_1
    return v1

    .line 59
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected getCellInfo()[I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/HtcCellInfo;->mCellInfo:[I

    return-object v0
.end method

.method protected getLength()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/HtcCellInfo;->mCellInfo:[I

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/server/HtcCellInfo;->mCellInfo:[I

    array-length v0, v0

    .line 53
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/HtcCellInfo;->mCellInfo:[I

    if-eqz v0, :cond_0

    .line 123
    :cond_0
    const-string v0, "mCellInfo is null"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 72
    if-nez p1, :cond_0

    .line 73
    const-string v0, "HtcCellInfo"

    const-string v1, "writeToParcel: dest is null. Skip."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/server/HtcCellInfo;->mCellInfo:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0
.end method
