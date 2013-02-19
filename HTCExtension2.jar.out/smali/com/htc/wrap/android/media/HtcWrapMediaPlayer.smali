.class public Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;
.super Landroid/media/MediaPlayer;
.source "HtcWrapMediaPlayer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public captureFrame()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Landroid/media/MediaPlayer;->captureFrame()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I
    .locals 1
    .parameter "request"
    .parameter "reply"

    .prologue
    .line 19
    invoke-super {p0, p1, p2}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v0

    return v0
.end method

.method public setFrame(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 27
    return-void
.end method

.method public stepBackward()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->stepFrame(Z)Z

    move-result v0

    return v0
.end method

.method public stepForward()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->stepFrame(Z)Z

    move-result v0

    return v0
.end method
