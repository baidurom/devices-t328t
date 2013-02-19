.class public Lcom/baidu/internal/telephony/SMSPlugin;
.super Ljava/lang/Object;
.source "SMSPlugin.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SMSPlugin"

.field public static discard:Z

.field public static notReceiveTrafficMonitorMessageTime:J

.field public static receiveTrafficMonitorBroadcastTime:J

.field public static trafficMonitorOperatorNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 44
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/baidu/internal/telephony/SMSPlugin;->trafficMonitorOperatorNumber:Ljava/lang/String;

    .line 45
    sput-wide v1, Lcom/baidu/internal/telephony/SMSPlugin;->receiveTrafficMonitorBroadcastTime:J

    .line 46
    sput-wide v1, Lcom/baidu/internal/telephony/SMSPlugin;->notReceiveTrafficMonitorMessageTime:J

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/internal/telephony/SMSPlugin;->discard:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static baiduPrehandleMsg(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 5
    .parameter "mContext"
    .parameter "sms"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 54
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, msgbody:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, msgAddress:Ljava/lang/String;
    if-eqz p0, :cond_0

    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    :cond_0
    move v2, v3

    .line 69
    :cond_1
    :goto_0
    return v2

    .line 61
    :cond_2
    invoke-static {p0, v1, v0}, Lcom/baidu/internal/telephony/SMSPlugin;->tryGetBaiduAccountVerifyCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 65
    invoke-static {p0, v0, v2}, Lcom/baidu/internal/telephony/DisturbPreventUtils;->shouldPrevent(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_3

    .line 66
    const-string v3, "SMSPlugin"

    const-string v4, "baiduPrehandleMsg disturb sms is received"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v2, v3

    .line 69
    goto :goto_0
.end method

.method public static dispatchDisturbSmsPdu(Landroid/content/Context;[[BLjava/lang/String;)V
    .locals 3
    .parameter "mContext"
    .parameter "pdus"
    .parameter "format"

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.sms.DISTURBANCE_SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 80
    const-string v1, "format"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 82
    const-string v1, "SMSPlugin"

    const-string v2, "dispatchDisturbSmsPdu the disturb message is received,broadcaset to mms application"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method

.method public static dispatchTrafficMonitorSmsPdu(Landroid/content/Context;[[BLjava/lang/String;)V
    .locals 3
    .parameter "mContext"
    .parameter "pdus"
    .parameter "format"

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.sms.TRAFFIC_MONITOR_SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 93
    const-string v1, "format"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 95
    const-string v1, "SMSPlugin"

    const-string v2, "dispatchDisturbSmsPdu the disturb message is received,broadcaset to mms application"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method

.method public static shouldFilterForTrafficMonitor(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 5
    .parameter "context"
    .parameter "sms"

    .prologue
    const-wide/16 v3, 0x0

    .line 121
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, msgAddress:Ljava/lang/String;
    sget-object v1, Lcom/baidu/internal/telephony/SMSPlugin;->trafficMonitorOperatorNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-wide v1, Lcom/baidu/internal/telephony/SMSPlugin;->receiveTrafficMonitorBroadcastTime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    sget-wide v1, Lcom/baidu/internal/telephony/SMSPlugin;->notReceiveTrafficMonitorMessageTime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/baidu/internal/telephony/SMSPlugin;->receiveTrafficMonitorBroadcastTime:J

    sub-long/2addr v1, v3

    sget-wide v3, Lcom/baidu/internal/telephony/SMSPlugin;->notReceiveTrafficMonitorMessageTime:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 126
    const/4 v1, 0x1

    .line 128
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static tryGetBaiduAccountVerifyCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "msg"
    .parameter "addr"

    .prologue
    const/4 v3, 0x0

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040618

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, prefix_bind:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040619

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, prefix_password:Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v3

    .line 109
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    :cond_2
    const-string v3, "SMSPlugin"

    const-string/jumbo v4, "this msg is about BaiduAccount, broadcast it!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.baidu.sms.ACCOUNT_BIND_VCODE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "MESSAGE"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 114
    const/4 v3, 0x1

    goto :goto_0
.end method
