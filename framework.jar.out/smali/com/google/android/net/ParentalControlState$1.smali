.class final Lcom/google/android/net/ParentalControlState$1;
.super Ljava/lang/Object;
.source "ParentalControlState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/net/ParentalControlState;
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
        "Lcom/google/android/net/ParentalControlState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/net/ParentalControlState;
    .locals 3
    .parameter "source"

    .prologue
    const/4 v1, 0x1

    .line 35
    new-instance v0, Lcom/google/android/net/ParentalControlState;

    invoke-direct {v0}, Lcom/google/android/net/ParentalControlState;-><init>()V

    .line 36
    .local v0, status:Lcom/google/android/net/ParentalControlState;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    iput-boolean v1, v0, Lcom/google/android/net/ParentalControlState;->isEnabled:Z

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/net/ParentalControlState;->redirectUrl:Ljava/lang/String;

    .line 38
    return-object v0

    .line 36
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/google/android/net/ParentalControlState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/net/ParentalControlState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/net/ParentalControlState;
    .locals 1
    .parameter "size"

    .prologue
    .line 42
    new-array v0, p1, [Lcom/google/android/net/ParentalControlState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/google/android/net/ParentalControlState$1;->newArray(I)[Lcom/google/android/net/ParentalControlState;

    move-result-object v0

    return-object v0
.end method
