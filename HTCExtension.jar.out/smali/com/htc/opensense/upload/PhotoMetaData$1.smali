.class final Lcom/htc/opensense/upload/PhotoMetaData$1;
.super Ljava/lang/Object;
.source "PhotoMetaData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/upload/PhotoMetaData;
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
        "Lcom/htc/opensense/upload/PhotoMetaData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/opensense/upload/PhotoMetaData;
    .locals 1
    .parameter "source"

    .prologue
    .line 89
    new-instance v0, Lcom/htc/opensense/upload/PhotoMetaData;

    invoke-direct {v0, p1}, Lcom/htc/opensense/upload/PhotoMetaData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/htc/opensense/upload/PhotoMetaData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/opensense/upload/PhotoMetaData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/opensense/upload/PhotoMetaData;
    .locals 1
    .parameter "size"

    .prologue
    .line 93
    new-array v0, p1, [Lcom/htc/opensense/upload/PhotoMetaData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/htc/opensense/upload/PhotoMetaData$1;->newArray(I)[Lcom/htc/opensense/upload/PhotoMetaData;

    move-result-object v0

    return-object v0
.end method
