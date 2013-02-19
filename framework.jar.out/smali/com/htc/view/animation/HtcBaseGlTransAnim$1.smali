.class final Lcom/htc/view/animation/HtcBaseGlTransAnim$1;
.super Ljava/lang/Object;
.source "HtcBaseGlTransAnim.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/view/animation/HtcBaseGlTransAnim;
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
        "Lcom/htc/view/animation/HtcBaseGlTransAnim;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 378
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/view/animation/HtcBaseGlTransAnim;
    .locals 1
    .parameter "in"

    .prologue
    .line 380
    invoke-static {p1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->readFromParcel(Landroid/os/Parcel;)Lcom/htc/view/animation/HtcBaseGlTransAnim;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 378
    invoke-virtual {p0, p1}, Lcom/htc/view/animation/HtcBaseGlTransAnim$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/view/animation/HtcBaseGlTransAnim;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/view/animation/HtcBaseGlTransAnim;
    .locals 1
    .parameter "size"

    .prologue
    .line 384
    new-array v0, p1, [Lcom/htc/view/animation/HtcBaseGlTransAnim;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 378
    invoke-virtual {p0, p1}, Lcom/htc/view/animation/HtcBaseGlTransAnim$1;->newArray(I)[Lcom/htc/view/animation/HtcBaseGlTransAnim;

    move-result-object v0

    return-object v0
.end method
