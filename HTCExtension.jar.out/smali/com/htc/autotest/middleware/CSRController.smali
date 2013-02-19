.class public abstract Lcom/htc/autotest/middleware/CSRController;
.super Ljava/lang/Object;
.source "CSRController.java"


# instance fields
.field private mCallback:Lcom/htc/autotest/middleware/ISRCallback;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 0
    .parameter "controlTarget"
    .parameter "h"

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public abstract genActionString(Lcom/htc/autotest/middleware/CSREvent;)[Ljava/lang/String;
.end method

.method public getCallback()Lcom/htc/autotest/middleware/ISRCallback;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/autotest/middleware/CSRController;->mCallback:Lcom/htc/autotest/middleware/ISRCallback;

    return-object v0
.end method

.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public abstract getSpy()Lcom/htc/autotest/middleware/ISRSpy;
.end method

.method public abstract injectEvent(Lcom/htc/autotest/middleware/CSREvent;)V
.end method

.method public recordEvent(Lcom/htc/autotest/middleware/CSREvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/autotest/middleware/CSRController;->mCallback:Lcom/htc/autotest/middleware/ISRCallback;

    if-nez v0, :cond_0

    .line 29
    :goto_0
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/htc/autotest/middleware/CSRController;->mCallback:Lcom/htc/autotest/middleware/ISRCallback;

    invoke-interface {v0, p1}, Lcom/htc/autotest/middleware/ISRCallback;->record(Lcom/htc/autotest/middleware/CSREvent;)V

    goto :goto_0
.end method

.method public setCallback(Lcom/htc/autotest/middleware/ISRCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/htc/autotest/middleware/CSRController;->mCallback:Lcom/htc/autotest/middleware/ISRCallback;

    .line 18
    return-void
.end method
