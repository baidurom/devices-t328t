.class public interface abstract Lcom/htc/service/vt/OnMediaVTServiceEventListener;
.super Ljava/lang/Object;
.source "OnMediaVTServiceEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/service/vt/OnMediaVTServiceEventListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onMediaVTServiceEvent(II)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
