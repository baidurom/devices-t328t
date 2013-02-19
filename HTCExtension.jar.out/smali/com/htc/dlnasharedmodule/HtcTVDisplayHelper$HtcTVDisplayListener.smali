.class public Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;
.super Ljava/lang/Object;
.source "HtcTVDisplayHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HtcTVDisplayListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoReadyDongle()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public onNoTVToPlay()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public onReadyDongleFound(Lcom/htc/service/DongleInfo;)V
    .locals 0
    .parameter "dongle"

    .prologue
    .line 44
    return-void
.end method

.method public onTVOff()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public onTVOn()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public onTVReadyToPlay()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method
