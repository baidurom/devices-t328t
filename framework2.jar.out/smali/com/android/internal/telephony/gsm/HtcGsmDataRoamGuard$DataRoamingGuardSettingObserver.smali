.class Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard$DataRoamingGuardSettingObserver;
.super Landroid/database/ContentObserver;
.source "HtcGsmDataRoamGuard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataRoamingGuardSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;)V
    .locals 1
    .parameter

    .prologue
    .line 732
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard$DataRoamingGuardSettingObserver;->this$0:Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;

    .line 733
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 734
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    const/4 v2, 0x0

    .line 742
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 744
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard$DataRoamingGuardSettingObserver;->this$0:Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;

    #calls: Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->isGsmDataRoamGuardEnabled()Z
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->access$100(Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;)Z

    move-result v0

    .line 746
    .local v0, enable:Z
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard$DataRoamingGuardSettingObserver;->this$0:Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard$DataRoamingGuardSettingObserver;->this$0:Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;

    const/4 v5, 0x4

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v4, v5, v1, v2}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/gsm/HtcGsmDataRoamGuard;->sendMessage(Landroid/os/Message;)Z

    .line 747
    return-void

    :cond_0
    move v1, v2

    .line 746
    goto :goto_0
.end method
