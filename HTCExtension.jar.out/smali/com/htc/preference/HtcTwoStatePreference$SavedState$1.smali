.class final Lcom/htc/preference/HtcTwoStatePreference$SavedState$1;
.super Ljava/lang/Object;
.source "HtcTwoStatePreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/preference/HtcTwoStatePreference$SavedState;
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
        "Lcom/htc/preference/HtcTwoStatePreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 344
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/preference/HtcTwoStatePreference$SavedState;
    .locals 1
    .parameter "in"

    .prologue
    .line 346
    new-instance v0, Lcom/htc/preference/HtcTwoStatePreference$SavedState;

    invoke-direct {v0, p1}, Lcom/htc/preference/HtcTwoStatePreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 344
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcTwoStatePreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/preference/HtcTwoStatePreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/preference/HtcTwoStatePreference$SavedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 350
    new-array v0, p1, [Lcom/htc/preference/HtcTwoStatePreference$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 344
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcTwoStatePreference$SavedState$1;->newArray(I)[Lcom/htc/preference/HtcTwoStatePreference$SavedState;

    move-result-object v0

    return-object v0
.end method
