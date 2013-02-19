.class Landroid/media/MediaPlugin;
.super Ljava/lang/Object;
.source "MediaPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlugin$OnEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaPlugin"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method


# virtual methods
.method public getCurrentState()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public handleGetCurrentPosition()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public handleOnBufferUpdate(I)V
    .locals 0
    .parameter "percent"

    .prologue
    .line 36
    return-void
.end method

.method public handleOnError(II)V
    .locals 0
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 39
    return-void
.end method

.method public handleOnInfo(II)V
    .locals 0
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 42
    return-void
.end method

.method public handleOnPlayComplete()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public handleOnPrepared()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public handlePause()V
    .locals 0

    .prologue
    .line 16
    return-void
.end method

.method public handleRelease()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public handleReset()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public handleSeekComplete()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method public handleSeekTo(I)V
    .locals 0
    .parameter "msec"

    .prologue
    .line 19
    return-void
.end method

.method public handleSetDataSource(Ljava/lang/String;)V
    .locals 0
    .parameter "filePath"

    .prologue
    .line 45
    return-void
.end method

.method public handleSetLooping(Z)V
    .locals 0
    .parameter "looping"

    .prologue
    .line 51
    return-void
.end method

.method public handleSetVolume(FF)V
    .locals 0
    .parameter "leftVolume"
    .parameter "rightVolume"

    .prologue
    .line 48
    return-void
.end method

.method public handleStart()V
    .locals 0

    .prologue
    .line 10
    return-void
.end method

.method public handleStop()V
    .locals 0

    .prologue
    .line 13
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public isSeeking()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public setOnEventListener(Landroid/media/MediaPlugin$OnEventListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 77
    return-void
.end method
