.class public Lcom/htc/wrap/android/media/HtcWrapAudioManager;
.super Landroid/media/AudioManager;
.source "HtcWrapAudioManager.java"


# static fields
.field public static final EXTRA_BEATSEFFECT_STATUS:Ljava/lang/String; = "android.media.EXTRA_BEATSEFFECT_STATUS"

.field public static final EXTRA_CALLER_NAME:Ljava/lang/String; = "android.media.EXTRA_CALLER_NAME"

.field public static final GLOBAL_BEATSEFFECT_CHANGE:Ljava/lang/String; = "android.media.GLOBAL_BEATSEFFECT_CHANGE"

.field public static final STREAM_BLUETOOTH_SCO:I = 0x6


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public static getBeatsState(Landroid/media/AudioManager;)Z
    .locals 1
    .parameter "am"

    .prologue
    .line 59
    invoke-virtual {p0}, Landroid/media/AudioManager;->getBeatsState()Z

    move-result v0

    return v0
.end method

.method public static isBeatsHeadset(Landroid/media/AudioManager;)Z
    .locals 1
    .parameter "am"

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/media/AudioManager;->isBeatsHeadset()Z

    move-result v0

    return v0
.end method

.method public static isSupportBeats()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public static setBeatsState(Landroid/media/AudioManager;ZLjava/lang/String;)V
    .locals 0
    .parameter "am"
    .parameter "on"
    .parameter "appName"

    .prologue
    .line 55
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioManager;->setBeatsState(ZLjava/lang/String;)V

    .line 56
    return-void
.end method

.method public static setCSCallVolumeOn(Landroid/media/AudioManager;Z)V
    .locals 0
    .parameter "am"
    .parameter "on"

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setCSCallVolumeOn(Z)V

    .line 68
    return-void
.end method


# virtual methods
.method public getBeatsState()Z
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Landroid/media/AudioManager;->getBeatsState()Z

    move-result v0

    return v0
.end method

.method public isBeatsHeadset()Z
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Landroid/media/AudioManager;->isBeatsHeadset()Z

    move-result v0

    return v0
.end method

.method public setBeatsState(ZLjava/lang/String;)V
    .locals 0
    .parameter "on"
    .parameter "appName"

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Landroid/media/AudioManager;->setBeatsState(ZLjava/lang/String;)V

    .line 42
    return-void
.end method

.method public setCSCallVolumeOn(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/media/AudioManager;->setCSCallVolumeOn(Z)V

    .line 26
    return-void
.end method
