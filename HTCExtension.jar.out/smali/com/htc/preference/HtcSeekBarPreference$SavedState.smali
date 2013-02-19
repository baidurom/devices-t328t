.class Lcom/htc/preference/HtcSeekBarPreference$SavedState;
.super Lcom/htc/preference/HtcPreference$BaseSavedState;
.source "HtcSeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/preference/HtcSeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/preference/HtcSeekBarPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field max:I

.field progress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 312
    new-instance v0, Lcom/htc/preference/HtcSeekBarPreference$SavedState$1;

    invoke-direct {v0}, Lcom/htc/preference/HtcSeekBarPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/htc/preference/HtcSeekBarPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/preference/HtcSeekBarPreference$SavedState;->progress:I

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/preference/HtcSeekBarPreference$SavedState;->max:I

    .line 288
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 305
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 296
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 299
    iget v0, p0, Lcom/htc/preference/HtcSeekBarPreference$SavedState;->progress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget v0, p0, Lcom/htc/preference/HtcSeekBarPreference$SavedState;->max:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    return-void
.end method
