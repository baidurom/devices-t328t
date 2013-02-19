.class Lcom/htc/lockscreen/music/MusicRemoteCtrl$MyRemoteControlDisplay;
.super Landroid/media/IRemoteControlDisplay$Stub;
.source "MusicRemoteCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/music/MusicRemoteCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyRemoteControlDisplay"
.end annotation


# instance fields
.field private mWrapper:Lcom/htc/lockscreen/music/MusicRemoteCtrl$RemoteControlDisplay;


# direct methods
.method public constructor <init>(Lcom/htc/lockscreen/music/MusicRemoteCtrl$RemoteControlDisplay;)V
    .locals 0
    .parameter "display"

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/media/IRemoteControlDisplay$Stub;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/htc/lockscreen/music/MusicRemoteCtrl$MyRemoteControlDisplay;->mWrapper:Lcom/htc/lockscreen/music/MusicRemoteCtrl$RemoteControlDisplay;

    .line 70
    return-void
.end method


# virtual methods
.method public setAllMetadata(ILandroid/os/Bundle;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "generationId"
    .parameter "metadata"
    .parameter "bitmap"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/lockscreen/music/MusicRemoteCtrl$MyRemoteControlDisplay;->mWrapper:Lcom/htc/lockscreen/music/MusicRemoteCtrl$RemoteControlDisplay;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/lockscreen/music/MusicRemoteCtrl$RemoteControlDisplay;->setAllMetadata(ILandroid/os/Bundle;Landroid/graphics/Bitmap;)V

    .line 109
    return-void
.end method

.method public setArtwork(ILandroid/graphics/Bitmap;)V
    .locals 1
    .parameter "generationId"
    .parameter "bitmap"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/lockscreen/music/MusicRemoteCtrl$MyRemoteControlDisplay;->mWrapper:Lcom/htc/lockscreen/music/MusicRemoteCtrl$RemoteControlDisplay;

    invoke-virtual {v0, p1, p2}, Lcom/htc/lockscreen/music/MusicRemoteCtrl$RemoteControlDisplay;->setArtwork(ILandroid/graphics/Bitmap;)V

    .line 101
    return-void
.end method

.method public setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    .locals 1
    .parameter "clientGeneration"
    .parameter "mediaIntent"
    .parameter "clearing"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/lockscreen/music/MusicRemoteCtrl$MyRemoteControlDisplay;->mWrapper:Lcom/htc/lockscreen/music/MusicRemoteCtrl$RemoteControlDisplay;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/lockscreen/music/MusicRemoteCtrl$RemoteControlDisplay;->setCurrentClientId(ILandroid/app/PendingIntent;Z)V

    .line 118
    return-void
.end method

.method public setMetadata(ILandroid/os/Bundle;)V
    .locals 1
    .parameter "generationId"
    .parameter "metadata"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/lockscreen/music/MusicRemoteCtrl$MyRemoteControlDisplay;->mWrapper:Lcom/htc/lockscreen/music/MusicRemoteCtrl$RemoteControlDisplay;

    invoke-virtual {v0, p1, p2}, Lcom/htc/lockscreen/music/MusicRemoteCtrl$RemoteControlDisplay;->setMetadata(ILandroid/os/Bundle;)V

    .line 85
    return-void
.end method

.method public setPlaybackState(IIJ)V
    .locals 1
    .parameter "generationId"
    .parameter "state"
    .parameter "stateChangeTimeMs"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/lockscreen/music/MusicRemoteCtrl$MyRemoteControlDisplay;->mWrapper:Lcom/htc/lockscreen/music/MusicRemoteCtrl$RemoteControlDisplay;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/lockscreen/music/MusicRemoteCtrl$RemoteControlDisplay;->setPlaybackState(IIJ)V

    .line 77
    return-void
.end method

.method public setTransportControlFlags(II)V
    .locals 1
    .parameter "generationId"
    .parameter "flags"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/lockscreen/music/MusicRemoteCtrl$MyRemoteControlDisplay;->mWrapper:Lcom/htc/lockscreen/music/MusicRemoteCtrl$RemoteControlDisplay;

    invoke-virtual {v0, p1, p2}, Lcom/htc/lockscreen/music/MusicRemoteCtrl$RemoteControlDisplay;->setTransportControlFlags(II)V

    .line 93
    return-void
.end method
