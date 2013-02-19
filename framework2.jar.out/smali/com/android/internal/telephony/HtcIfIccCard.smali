.class public interface abstract Lcom/android/internal/telephony/HtcIfIccCard;
.super Ljava/lang/Object;
.source "HtcIfIccCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/HtcIfIccCard$State;
    }
.end annotation


# static fields
.field public static final INTENT_KEY_ICC_OPERATOR_NUMERIC:Ljava/lang/String; = "ICC_OPERATOR_NUMERIC"

.field public static final INTENT_KEY_ICC_PROVISIONED:Ljava/lang/String; = "POVISIONED"

.field public static final INTENT_KEY_ICC_STATE:Ljava/lang/String; = "ss"

.field public static final INTENT_KEY_ICC_TYPE:Ljava/lang/String; = "ICC_TYPE"

.field public static final INTENT_KEY_PHONE_TYPE:Ljava/lang/String; = "phone_type"

.field public static final INTENT_VALUE_ICC_ABSENT:Ljava/lang/String; = "ABSENT"

.field public static final INTENT_VALUE_ICC_HOT_SWAP_ABSENT:Ljava/lang/String; = "ICC_HOT_SWAP_ABSENT"

.field public static final INTENT_VALUE_ICC_HOT_SWAP_INSERTED:Ljava/lang/String; = "ICC_HOT_SWAP_INSERTED"

.field public static final INTENT_VALUE_ICC_IMSI:Ljava/lang/String; = "IMSI"

.field public static final INTENT_VALUE_ICC_LOADED:Ljava/lang/String; = "LOADED"

.field public static final INTENT_VALUE_ICC_LOCKED:Ljava/lang/String; = "LOCKED"

.field public static final INTENT_VALUE_ICC_NOT_READY:Ljava/lang/String; = "NOT_READY"

.field public static final INTENT_VALUE_PERM_BLOCKED:Ljava/lang/String; = "PERM_BLOCKED"

.field public static final UICC_TYPE_2G:I = 0x0

.field public static final UICC_TYPE_3G:I = 0x1

.field public static final UICC_TYPE_4G:I = 0x2


# virtual methods
.method public abstract checkPin2(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract closeLogicalChannel(ILandroid/os/Message;)V
.end method

.method public abstract exchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract getIccFdnAvailable()Z
.end method

.method public abstract getIccPhoneType()I
.end method

.method public abstract getIccPin1RetryCount()I
.end method

.method public abstract getIccPin2Blocked()Z
.end method

.method public abstract getIccPin2RetryCount()I
.end method

.method public abstract getIccPuk2Blocked()Z
.end method

.method public abstract getSubsidyLock()I
.end method

.method public abstract isSim()Z
.end method

.method public abstract openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract requestISIMRead(IIIIILandroid/os/Message;)V
.end method

.method public abstract requestQueryISIMSupported(Landroid/os/Message;)V
.end method

.method public abstract requestResetWSIMState(Landroid/os/Message;)V
.end method

.method public abstract requestSetISIMAUTH(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setInvalidICCCard()V
.end method

.method public abstract supplyPuk2ViaATD()V
.end method
