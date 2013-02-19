.class public Lcom/htc/wrap/com/android/internal/telephony/HtcWrapPhoneFactory;
.super Ljava/lang/Object;
.source "HtcWrapPhoneFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSSM()Lcom/android/internal/telephony/SimSlotManager;
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getSSM()Lcom/android/internal/telephony/SimSlotManager;

    move-result-object v0

    return-object v0
.end method

.method public static makeDefaultPhones(Landroid/content/Context;Z)V
    .locals 0
    .parameter "context"
    .parameter "fullyIHtcTelephony"

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhones(Landroid/content/Context;Z)V

    .line 11
    return-void
.end method

.method public static makeDualGSMPhones(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 35
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDualGSMPhones(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public static makeDualPhones(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 19
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDualPhones(Landroid/content/Context;)V

    .line 20
    return-void
.end method
