.class public interface abstract Landroid/app/HtcIfActivityManager;
.super Ljava/lang/Object;
.source "HtcIfActivityManager.java"


# virtual methods
.method public abstract broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAllPackageLaunchCounts()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConfiguration()Landroid/content/res/Configuration;
.end method

.method public abstract getPrevAppPkgName()Ljava/lang/String;
.end method

.method public abstract getTopActivityName()Ljava/lang/String;
.end method

.method public abstract isGuestMode()Z
.end method

.method public abstract setGuestMode(Z)V
.end method

.method public abstract setHTCTestToken(Landroid/os/IBinder;)V
.end method

.method public abstract updateConfiguration(Landroid/content/res/Configuration;)V
.end method
