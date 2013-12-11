.class public Lcom/android/internal/telephony/gsm/GsmCmasMessage;
.super Lcom/android/internal/telephony/CmasMessage;
.source "GsmCmasMessage.java"


# static fields
.field public static final CHANNEL_AMBER:I = 0x111b

.field public static final CHANNEL_EXERCISE:I = 0x111d

.field public static final CHANNEL_EXTREME_EXTREME_EXPECTED_LIKELY:I = 0x1116

.field public static final CHANNEL_EXTREME_EXTREME_EXPECTED_OBSERVED:I = 0x1115

.field public static final CHANNEL_EXTREME_EXTREME_IMMEDIATE_LIKELY:I = 0x1114

.field public static final CHANNEL_EXTREME_EXTREME_IMMEDIATE_OBSERVED:I = 0x1113

.field public static final CHANNEL_OPERATOR_DEFINED:I = 0x111e

.field public static final CHANNEL_PRESIDENTIAL:I = 0x1112

.field public static final CHANNEL_SEVERE_SEVERE_EXPECTED_LIKELY:I = 0x111a

.field public static final CHANNEL_SEVERE_SEVERE_EXPECTED_OBSERVED:I = 0x1119

.field public static final CHANNEL_SEVERE_SEVERE_IMMEDIATE_LIKELY:I = 0x1118

.field public static final CHANNEL_SEVERE_SEVERE_IMMEDIATE_OBSERVED:I = 0x1117

.field public static final CHANNEL_TEST_MONTHLY:I = 0x111c

.field public static final GS_IMMEDIATE_CELL_WIDE:I = 0x0

.field public static final GS_NORMAL_CELL_WIDE:I = 0x11

.field public static final GS_NORMAL_LOCATION_WIDE:I = 0x10

.field public static final GS_NORMAL_PLMN_WIDE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/internal/telephony/CmasMessage;-><init>()V

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->cmasFormat:I

    .line 69
    return-void
.end method

.method public static getCertainty(I)Ljava/lang/String;
    .locals 2
    .parameter "msgId"

    .prologue
    .line 216
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 217
    .local v0, r:Landroid/content/res/Resources;
    packed-switch p0, :pswitch_data_0

    .line 229
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 222
    :pswitch_0
    const v1, 0x104053a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 227
    :pswitch_1
    const v1, 0x104053b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x1113
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getSeverity(I)Ljava/lang/String;
    .locals 2
    .parameter "msgId"

    .prologue
    .line 170
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 171
    .local v0, r:Landroid/content/res/Resources;
    packed-switch p0, :pswitch_data_0

    .line 183
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 176
    :pswitch_0
    const v1, 0x1040536

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 181
    :pswitch_1
    const v1, 0x1040537

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x1113
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getUrgency(I)Ljava/lang/String;
    .locals 2
    .parameter "msgId"

    .prologue
    .line 193
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 194
    .local v0, r:Landroid/content/res/Resources;
    packed-switch p0, :pswitch_data_0

    .line 206
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 199
    :pswitch_0
    const v1, 0x1040538

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 204
    :pswitch_1
    const v1, 0x1040539

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x1113
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setCmasType(I)V
    .locals 4
    .parameter "channel"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 98
    packed-switch p1, :pswitch_data_0

    .line 161
    :goto_0
    return-void

    .line 100
    :pswitch_0
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->cmasType:I

    goto :goto_0

    .line 103
    :pswitch_1
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->cmasType:I

    .line 104
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->severity:I

    .line 105
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->urgency:I

    .line 106
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->certainty:I

    goto :goto_0

    .line 109
    :pswitch_2
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->cmasType:I

    .line 110
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->severity:I

    .line 111
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->urgency:I

    .line 112
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->certainty:I

    goto :goto_0

    .line 115
    :pswitch_3
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->cmasType:I

    .line 116
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->severity:I

    .line 117
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->urgency:I

    .line 118
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->certainty:I

    goto :goto_0

    .line 121
    :pswitch_4
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->cmasType:I

    .line 122
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->severity:I

    .line 123
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->urgency:I

    .line 124
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->certainty:I

    goto :goto_0

    .line 127
    :pswitch_5
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->cmasType:I

    .line 128
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->severity:I

    .line 129
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->urgency:I

    .line 130
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->certainty:I

    goto :goto_0

    .line 133
    :pswitch_6
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->cmasType:I

    .line 134
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->severity:I

    .line 135
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->urgency:I

    .line 136
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->certainty:I

    goto :goto_0

    .line 139
    :pswitch_7
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->cmasType:I

    .line 140
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->severity:I

    .line 141
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->urgency:I

    .line 142
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->certainty:I

    goto :goto_0

    .line 145
    :pswitch_8
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->cmasType:I

    .line 146
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->severity:I

    .line 147
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->urgency:I

    .line 148
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->certainty:I

    goto :goto_0

    .line 151
    :pswitch_9
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->cmasType:I

    goto :goto_0

    .line 154
    :pswitch_a
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->cmasType:I

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1112
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public parseGsmPdu([B)V
    .locals 5
    .parameter "pdu"

    .prologue
    .line 75
    :try_start_0
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse gsm cb:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v0, Lcom/android/internal/telephony/gsm/CBMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/CBMessage;-><init>()V

    .line 77
    .local v0, cb:Lcom/android/internal/telephony/gsm/CBMessage;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/CBMessage;->parseCBPdu([B)V

    .line 78
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->cmasFormat:I

    .line 79
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->mPdu:[B

    .line 80
    iget v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->sn:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->sn:I

    .line 81
    iget v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->gs:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->gs:I

    .line 82
    iget v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_id:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->msgId:I

    .line 83
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/CBMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    .line 84
    iget v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->page:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->pageSeg:I

    .line 85
    iget v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->pages:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->pageCount:I

    .line 86
    iget v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->mEncodingType:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->charSetEncoding:I

    .line 87
    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/CBMessage;->mEncodingTypeSet:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->charSetEncodingSet:Z

    .line 88
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/CBMessage;->getUserData()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->alertText:[B

    .line 89
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/CBMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->alertTextStr:Ljava/lang/String;

    .line 90
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->msgId:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->setCmasType(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v0           #cb:Lcom/android/internal/telephony/gsm/CBMessage;
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, ex:Ljava/lang/Throwable;
    const-string v2, "GSM"

    const-string v3, "gsm cb parsing failed: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
