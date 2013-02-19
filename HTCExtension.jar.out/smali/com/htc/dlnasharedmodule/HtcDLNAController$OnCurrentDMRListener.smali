.class public interface abstract Lcom/htc/dlnasharedmodule/HtcDLNAController$OnCurrentDMRListener;
.super Ljava/lang/Object;
.source "HtcDLNAController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnasharedmodule/HtcDLNAController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCurrentDMRListener"
.end annotation


# virtual methods
.method public abstract onConnected(Ljava/lang/String;)V
.end method

.method public abstract onDisconnected(I)V
.end method

.method public abstract onMirrorConnected(Lcom/htc/dlnainterface/DLNARendererData;)V
.end method

.method public abstract onVolumeChanged(I)V
.end method
