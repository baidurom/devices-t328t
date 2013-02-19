.class final Lcom/htc/socialnetwork/PhotoMetaData$1;
.super Ljava/lang/Object;
.source "PhotoMetaData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/socialnetwork/PhotoMetaData;
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
        "Lcom/htc/socialnetwork/PhotoMetaData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/socialnetwork/PhotoMetaData;
    .locals 2
    .parameter "in"

    .prologue
    .line 75
    new-instance v0, Lcom/htc/socialnetwork/PhotoMetaData;

    invoke-direct {v0}, Lcom/htc/socialnetwork/PhotoMetaData;-><init>()V

    .line 78
    .local v0, meta:Lcom/htc/socialnetwork/PhotoMetaData;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/socialnetwork/PhotoMetaData;->path:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/socialnetwork/PhotoMetaData;->title:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/socialnetwork/PhotoMetaData;->mimeType:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/socialnetwork/PhotoMetaData;->description:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/socialnetwork/PhotoMetaData;->uri:Ljava/lang/String;

    .line 85
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/htc/socialnetwork/PhotoMetaData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/socialnetwork/PhotoMetaData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/socialnetwork/PhotoMetaData;
    .locals 1
    .parameter "size"

    .prologue
    .line 89
    new-array v0, p1, [Lcom/htc/socialnetwork/PhotoMetaData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/htc/socialnetwork/PhotoMetaData$1;->newArray(I)[Lcom/htc/socialnetwork/PhotoMetaData;

    move-result-object v0

    return-object v0
.end method
