.class public final Landroid/provider/Telephony$Sms$Intents;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# static fields
.field public static final CB_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.CB_RECEIVED"

.field public static final DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field public static final DEVICE_FULL_ACTION:Ljava/lang/String; = "android.provider.Telephony.DEVICE_FULL"

.field public static final DX_WAP_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.DX_WAP_PUSH_RECEIVED"

.field public static final RESULT_SMS_GENERIC_ERROR:I = 0x2

.field public static final RESULT_SMS_HANDLED:I = 0x1

.field public static final RESULT_SMS_OUT_OF_MEMORY:I = 0x3

.field public static final RESULT_SMS_UNSUPPORTED:I = 0x4

.field public static final SIM_FULL_ACTION:Ljava/lang/String; = "android.provider.Telephony.SIM_FULL"

.field public static final SMS_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_CB_RECEIVED"

.field public static final SMS_EMERGENCY_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

.field public static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final SMS_REJECTED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_REJECTED"

.field public static final WAP_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_RECEIVED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1262
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 10
    .parameter "intent"

    .prologue
    .line 1478
    const-string/jumbo v8, "pdus"

    invoke-virtual {p0, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    move-object v2, v8

    check-cast v2, [Ljava/lang/Object;

    .line 1479
    .local v2, messages:[Ljava/lang/Object;
    const-string v8, "format"

    invoke-virtual {p0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1480
    .local v0, format:Ljava/lang/String;
    array-length v8, v2

    new-array v5, v8, [[B

    .line 1482
    .local v5, pduObjs:[[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v8, v2

    if-ge v1, v8, :cond_0

    .line 1483
    aget-object v8, v2, v1

    check-cast v8, [B

    check-cast v8, [B

    aput-object v8, v5, v1

    .line 1482
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1485
    :cond_0
    array-length v8, v5

    new-array v6, v8, [[B

    .line 1486
    .local v6, pdus:[[B
    array-length v4, v6

    .line 1487
    .local v4, pduCount:I
    new-array v3, v4, [Landroid/telephony/SmsMessage;

    .line 1488
    .local v3, msgs:[Landroid/telephony/SmsMessage;
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_4

    .line 1489
    aget-object v8, v5, v1

    aput-object v8, v6, v1

    .line 1492
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1493
    :cond_1
    const-string/jumbo v8, "phone_type"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1495
    .local v7, phoneType:I
    if-eqz v7, :cond_2

    .line 1496
    aget-object v8, v6, v1

    invoke-static {v8, v7}, Landroid/telephony/SmsMessage;->createFromPdu([BI)Landroid/telephony/SmsMessage;

    move-result-object v8

    aput-object v8, v3, v1

    .line 1488
    .end local v7           #phoneType:I
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1499
    .restart local v7       #phoneType:I
    :cond_2
    aget-object v8, v6, v1

    invoke-static {v8, v0}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v8

    aput-object v8, v3, v1

    goto :goto_2

    .line 1504
    .end local v7           #phoneType:I
    :cond_3
    aget-object v8, v6, v1

    invoke-static {v8, v0}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v8

    aput-object v8, v3, v1

    goto :goto_2

    .line 1507
    :cond_4
    return-object v3
.end method
