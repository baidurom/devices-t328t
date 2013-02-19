.class public Lcom/htc/hfm/HfmClient$Callback;
.super Ljava/lang/Object;
.source "HfmClient.java"

# interfaces
.implements Lcom/htc/hfm/HfmClient$ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/hfm/HfmClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 268
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAbortComplete(I)V
    .locals 0
    .parameter "statusCode"

    .prologue
    .line 305
    return-void
.end method

.method public onCancelReservationComplete(I)V
    .locals 0
    .parameter "statusCode"

    .prologue
    .line 311
    return-void
.end method

.method public onHfmShutdown()V
    .locals 0

    .prologue
    .line 327
    return-void
.end method

.method public onInterrupt()V
    .locals 0

    .prologue
    .line 322
    return-void
.end method

.method public onReleaseServiceComplete(I)V
    .locals 0
    .parameter "statusCode"

    .prologue
    .line 282
    return-void
.end method

.method public onReserveServiceComplete(I)V
    .locals 0
    .parameter "statusCode"

    .prologue
    .line 276
    return-void
.end method

.method public onSelectCommandComplete(ILjava/lang/String;)V
    .locals 0
    .parameter "statusCode"
    .parameter "command"

    .prologue
    .line 298
    return-void
.end method

.method public onSpeakComplete(I)V
    .locals 0
    .parameter "statusCode"

    .prologue
    .line 288
    return-void
.end method

.method public onStartRecording()V
    .locals 0

    .prologue
    .line 346
    return-void
.end method

.method public onStopRecording()V
    .locals 0

    .prologue
    .line 351
    return-void
.end method

.method public onTestWakeUpPhraseComplete(I)V
    .locals 0
    .parameter "statusCode"

    .prologue
    .line 341
    return-void
.end method

.method public onTimeout()V
    .locals 0

    .prologue
    .line 316
    return-void
.end method

.method public onWakeUpModeComplete(I)V
    .locals 0
    .parameter "statusCode"

    .prologue
    .line 334
    return-void
.end method
