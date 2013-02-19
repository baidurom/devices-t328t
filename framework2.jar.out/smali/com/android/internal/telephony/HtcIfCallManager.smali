.class public interface abstract Lcom/android/internal/telephony/HtcIfCallManager;
.super Ljava/lang/Object;
.source "HtcIfCallManager.java"


# virtual methods
.method public abstract cdmaDialCallIsAllowed()Z
.end method

.method public abstract cdmaRingCallIsAllowed()Z
.end method

.method public abstract getActivePhone()Lcom/android/internal/telephony/Phone;
.end method

.method public abstract gsmCallIsAllowed()Z
.end method

.method public abstract htcBlockLoopbackDialing(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract htcBlockLoopbackMT(Lcom/android/internal/telephony/Connection;)Z
.end method

.method public abstract htcBlockRingingMT(Lcom/android/internal/telephony/Connection;)Z
.end method

.method public abstract htcHangupWithoutAnswerOrResumeCall(Lcom/android/internal/telephony/Call;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract registerEcallAutoRetry(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForATDMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForUnblockPin2Done(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVoiceCallConnected(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setActivePhone(I)V
.end method

.method public abstract setActivePhone(Lcom/android/internal/telephony/Phone;)V
.end method

.method public abstract setAudioMode(II)V
.end method

.method public abstract setAudioMode(Z)V
.end method

.method public abstract switchHoldingAndActive(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract unregisterEcallAutoRetry(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForATDMmiComplete(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForLineControlInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForUnblockPin2Done(Landroid/os/Handler;)V
.end method
