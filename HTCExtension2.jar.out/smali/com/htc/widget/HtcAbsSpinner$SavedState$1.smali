.class final Lcom/htc/widget/HtcAbsSpinner$SavedState$1;
.super Ljava/lang/Object;
.source "HtcAbsSpinner.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcAbsSpinner$SavedState;
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
        "Lcom/htc/widget/HtcAbsSpinner$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 441
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/widget/HtcAbsSpinner$SavedState;
    .locals 2
    .parameter "in"

    .prologue
    .line 443
    new-instance v0, Lcom/htc/widget/HtcAbsSpinner$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/htc/widget/HtcAbsSpinner$SavedState;-><init>(Landroid/os/Parcel;Lcom/htc/widget/HtcAbsSpinner$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 441
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsSpinner$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/widget/HtcAbsSpinner$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/widget/HtcAbsSpinner$SavedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 447
    new-array v0, p1, [Lcom/htc/widget/HtcAbsSpinner$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 441
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsSpinner$SavedState$1;->newArray(I)[Lcom/htc/widget/HtcAbsSpinner$SavedState;

    move-result-object v0

    return-object v0
.end method
