.class interface abstract Lcom/htc/hfm/HfmClient$ICallback;
.super Ljava/lang/Object;
.source "HfmClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/hfm/HfmClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ICallback"
.end annotation


# virtual methods
.method public abstract onAbortComplete(I)V
.end method

.method public abstract onCancelReservationComplete(I)V
.end method

.method public abstract onHfmShutdown()V
.end method

.method public abstract onInterrupt()V
.end method

.method public abstract onReleaseServiceComplete(I)V
.end method

.method public abstract onReserveServiceComplete(I)V
.end method

.method public abstract onSelectCommandComplete(ILjava/lang/String;)V
.end method

.method public abstract onSpeakComplete(I)V
.end method

.method public abstract onStartRecording()V
.end method

.method public abstract onStopRecording()V
.end method

.method public abstract onTestWakeUpPhraseComplete(I)V
.end method

.method public abstract onTimeout()V
.end method

.method public abstract onWakeUpModeComplete(I)V
.end method
