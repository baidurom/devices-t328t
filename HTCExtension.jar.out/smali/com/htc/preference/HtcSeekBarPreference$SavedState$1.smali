.class final Lcom/htc/preference/HtcSeekBarPreference$SavedState$1;
.super Ljava/lang/Object;
.source "HtcSeekBarPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/preference/HtcSeekBarPreference$SavedState;
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
        "Lcom/htc/preference/HtcSeekBarPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 313
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/preference/HtcSeekBarPreference$SavedState;
    .locals 1
    .parameter "in"

    .prologue
    .line 315
    new-instance v0, Lcom/htc/preference/HtcSeekBarPreference$SavedState;

    invoke-direct {v0, p1}, Lcom/htc/preference/HtcSeekBarPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcSeekBarPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/preference/HtcSeekBarPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/preference/HtcSeekBarPreference$SavedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 319
    new-array v0, p1, [Lcom/htc/preference/HtcSeekBarPreference$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcSeekBarPreference$SavedState$1;->newArray(I)[Lcom/htc/preference/HtcSeekBarPreference$SavedState;

    move-result-object v0

    return-object v0
.end method
