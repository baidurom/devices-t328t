.class public Lcom/htc/dlnasharedmodule/HtcDLNAServerStatusListener;
.super Ljava/lang/Object;
.source "HtcDLNAServerStatusListener.java"


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
    .parameter "serverName"

    .prologue
    .line 16
    return-void
.end method

.method public onDisconnected(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "errorID"
    .parameter "errorReason"

    .prologue
    .line 25
    return-void
.end method
