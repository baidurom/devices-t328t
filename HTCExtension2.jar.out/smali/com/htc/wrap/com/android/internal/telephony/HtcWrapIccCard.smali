.class public Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard;
.super Ljava/lang/Object;
.source "HtcWrapIccCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;
    }
.end annotation


# static fields
.field private static mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static getState()Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;
    .locals 2

    .prologue
    .line 51
    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_b

    .line 52
    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 53
    .local v0, state:Lcom/android/internal/telephony/IccCard$State;
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_0

    .line 54
    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->UNKNOWN:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    .line 79
    .end local v0           #state:Lcom/android/internal/telephony/IccCard$State;
    :goto_0
    return-object v1

    .line 55
    .restart local v0       #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_1

    .line 56
    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->ABSENT:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    goto :goto_0

    .line 57
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_2

    .line 58
    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->PIN_REQUIRED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    goto :goto_0

    .line 59
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_3

    .line 60
    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->PUK_REQUIRED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    goto :goto_0

    .line 61
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_4

    .line 62
    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->NETWORK_LOCKED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    goto :goto_0

    .line 63
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_5

    .line 64
    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->READY:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    goto :goto_0

    .line 65
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_6

    .line 66
    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->NOT_READY:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    goto :goto_0

    .line 67
    :cond_6
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_7

    .line 68
    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->ICC_FAIL:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    goto :goto_0

    .line 69
    :cond_7
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_8

    .line 70
    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->IMEI_LOCKED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    goto :goto_0

    .line 71
    :cond_8
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ICC_EXPIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_9

    .line 72
    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->ICC_EXPIRED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    goto :goto_0

    .line 73
    :cond_9
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_PERM_BLOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_a

    .line 74
    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->PUK_PERM_BLOCKED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    goto :goto_0

    .line 76
    :cond_a
    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->UNKNOWN:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    goto :goto_0

    .line 79
    .end local v0           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_b
    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->UNKNOWN:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    goto :goto_0
.end method

.method public static isStateInvalid(Ljava/lang/Object;)Z
    .locals 3
    .parameter "result"

    .prologue
    const/4 v1, 0x0

    .line 28
    instance-of v2, p0, Lcom/android/internal/telephony/IccCard$State;

    if-eqz v2, :cond_0

    move-object v0, p0

    .line 29
    check-cast v0, Lcom/android/internal/telephony/IccCard$State;

    .line 30
    .local v0, state:Lcom/android/internal/telephony/IccCard$State;
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->INVALID:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    .line 32
    .end local v0           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_0
    return v1
.end method

.method public static setupPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 41
    sput-object p0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 42
    return-void
.end method
