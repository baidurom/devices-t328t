.class final Lcom/htc/hfm/Speech$1;
.super Ljava/lang/Object;
.source "Speech.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/hfm/Speech;
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
        "Lcom/htc/hfm/Speech;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/hfm/Speech;
    .locals 2
    .parameter "source"

    .prologue
    .line 80
    new-instance v0, Lcom/htc/hfm/Speech;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/hfm/Speech;-><init>(Lcom/htc/hfm/Speech$1;)V

    .line 81
    .local v0, s:Lcom/htc/hfm/Speech;
    invoke-virtual {v0, p1}, Lcom/htc/hfm/Speech;->readFromParcel(Landroid/os/Parcel;)V

    .line 82
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/htc/hfm/Speech$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/hfm/Speech;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/hfm/Speech;
    .locals 1
    .parameter "size"

    .prologue
    .line 87
    new-array v0, p1, [Lcom/htc/hfm/Speech;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/htc/hfm/Speech$1;->newArray(I)[Lcom/htc/hfm/Speech;

    move-result-object v0

    return-object v0
.end method
