.class final Lcom/htc/net/FourG/FourGConfiguration$1;
.super Ljava/lang/Object;
.source "FourGConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/FourG/FourGConfiguration;
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
        "Lcom/htc/net/FourG/FourGConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/net/FourG/FourGConfiguration;
    .locals 1
    .parameter "in"

    .prologue
    .line 105
    new-instance v0, Lcom/htc/net/FourG/FourGConfiguration;

    invoke-direct {v0, p1}, Lcom/htc/net/FourG/FourGConfiguration;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/htc/net/FourG/FourGConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/net/FourG/FourGConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/net/FourG/FourGConfiguration;
    .locals 1
    .parameter "size"

    .prologue
    .line 109
    new-array v0, p1, [Lcom/htc/net/FourG/FourGConfiguration;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/htc/net/FourG/FourGConfiguration$1;->newArray(I)[Lcom/htc/net/FourG/FourGConfiguration;

    move-result-object v0

    return-object v0
.end method
