.class final Lcom/htc/net/wimax/HTCWimax4GConfiguration$1;
.super Ljava/lang/Object;
.source "HTCWimax4GConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/wimax/HTCWimax4GConfiguration;
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
        "Lcom/htc/net/wimax/HTCWimax4GConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/net/wimax/HTCWimax4GConfiguration;
    .locals 2
    .parameter "in"

    .prologue
    .line 78
    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/htc/net/wimax/HTCWimax4GConfiguration;-><init>(Landroid/os/Parcel;Lcom/htc/net/wimax/HTCWimax4GConfiguration$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/htc/net/wimax/HTCWimax4GConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/net/wimax/HTCWimax4GConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/net/wimax/HTCWimax4GConfiguration;
    .locals 1
    .parameter "size"

    .prologue
    .line 82
    new-array v0, p1, [Lcom/htc/net/wimax/HTCWimax4GConfiguration;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/htc/net/wimax/HTCWimax4GConfiguration$1;->newArray(I)[Lcom/htc/net/wimax/HTCWimax4GConfiguration;

    move-result-object v0

    return-object v0
.end method
