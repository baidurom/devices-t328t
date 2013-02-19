.class public Lcom/htc/wrap/android/provider/HtcWrapTelephony$Sms$Intents;
.super Ljava/lang/Object;
.source "HtcWrapTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapTelephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Intents"
.end annotation


# static fields
.field public static final CB_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.CB_RECEIVED"

.field public static final DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field public static final DEVICE_FULL_ACTION:Ljava/lang/String; = "android.provider.Telephony.DEVICE_FULL"

.field public static final DX_WAP_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.DX_WAP_PUSH_RECEIVED"

.field public static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final WAP_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_RECEIVED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1083
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 1
    .parameter "intent"

    .prologue
    .line 1173
    invoke-static {p0}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v0

    return-object v0
.end method
