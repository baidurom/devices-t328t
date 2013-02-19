.class public Lcom/htc/wrap/com/android/internal/telephony/HtcWrapPhoneStateIntentReceiver;
.super Ljava/lang/Object;
.source "HtcWrapPhoneStateIntentReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGsmSignalStrength(Lcom/android/internal/telephony/PhoneStateIntentReceiver;)I
    .locals 1
    .parameter "instance"

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getGsmSignalStrength()I

    move-result v0

    return v0
.end method

.method public static getGsmSignalStrength(Lcom/android/internal/telephony/PhoneStateIntentReceiver;I)I
    .locals 1
    .parameter "instance"
    .parameter "phoneType"

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getGsmSignalStrength(I)I

    move-result v0

    return v0
.end method

.method public static getPhoneStateExt(Lcom/android/internal/telephony/PhoneStateIntentReceiver;I)Lcom/android/internal/telephony/Phone$State;
    .locals 1
    .parameter "instance"
    .parameter "phoneType"

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getPhoneStateExt(I)Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    return-object v0
.end method

.method public static getServiceStateExt(Lcom/android/internal/telephony/PhoneStateIntentReceiver;I)Landroid/telephony/ServiceState;
    .locals 1
    .parameter "instance"
    .parameter "phoneType"

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceStateExt(I)Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public static getSignalStrengthDbmExt(Lcom/android/internal/telephony/PhoneStateIntentReceiver;I)I
    .locals 1
    .parameter "instance"
    .parameter "phoneType"

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbmExt(I)I

    move-result v0

    return v0
.end method
