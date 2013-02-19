.class public Lcom/htc/lockscreen/music/MusicRemoteCtrl$RemoteControlDisplay;
.super Ljava/lang/Object;
.source "MusicRemoteCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/music/MusicRemoteCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteControlDisplay"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public setAllMetadata(ILandroid/os/Bundle;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "generationId"
    .parameter "metadata"
    .parameter "bitmap"

    .prologue
    .line 53
    return-void
.end method

.method public setArtwork(ILandroid/graphics/Bitmap;)V
    .locals 0
    .parameter "generationId"
    .parameter "bitmap"

    .prologue
    .line 49
    return-void
.end method

.method public setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    .locals 0
    .parameter "clientGeneration"
    .parameter "mediaIntent"
    .parameter "clearing"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 58
    return-void
.end method

.method public setMetadata(ILandroid/os/Bundle;)V
    .locals 0
    .parameter "generationId"
    .parameter "metadata"

    .prologue
    .line 41
    return-void
.end method

.method public setPlaybackState(IIJ)V
    .locals 0
    .parameter "generationId"
    .parameter "state"
    .parameter "stateChangeTimeMs"

    .prologue
    .line 37
    return-void
.end method

.method public setTransportControlFlags(II)V
    .locals 0
    .parameter "generationId"
    .parameter "flags"

    .prologue
    .line 45
    return-void
.end method
