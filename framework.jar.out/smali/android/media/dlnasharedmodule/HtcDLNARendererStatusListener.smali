.class public Landroid/media/dlnasharedmodule/HtcDLNARendererStatusListener;
.super Ljava/lang/Object;
.source "HtcDLNARendererStatusListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "rendererName"

    .prologue
    .line 12
    return-void
.end method

.method public onDisconnected(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "errorID"
    .parameter "errorReason"

    .prologue
    .line 23
    return-void
.end method

.method public onMirrorRendererConnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "rendererName"

    .prologue
    .line 17
    return-void
.end method
