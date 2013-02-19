.class public Lcom/htc/wrap/com/android/internal/telephony/gsm/HtcWrapGsmConnection;
.super Ljava/lang/Object;
.source "HtcWrapGsmConnection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static stopTimer(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->stopTimer()V

    .line 9
    return-void
.end method
