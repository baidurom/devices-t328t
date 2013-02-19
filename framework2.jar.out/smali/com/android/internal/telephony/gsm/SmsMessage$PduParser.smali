.class Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PduParser"
.end annotation


# instance fields
.field cur:I

.field dataCodingScheme:I

.field kddiDiscard:Z

.field kddiSmsTypeId:I

.field kddiSmsTypeIdSet:Z

.field mUserDataSeptetPadding:I

.field mUserDataSize:I

.field pdu:[B

.field scToa:I

.field userData:[B

.field userDataHeader:Lcom/android/internal/telephony/SmsHeader;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 822
    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;-><init>([B)V

    .line 823
    return-void
.end method

.method constructor <init>([B)V
    .locals 1
    .parameter "pdu"

    .prologue
    const/4 v0, 0x0

    .line 825
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 816
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeIdSet:Z

    .line 817
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiDiscard:Z

    .line 818
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->dataCodingScheme:I

    .line 826
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    .line 827
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 828
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    .line 829
    return-void
.end method

.method private KddiReplaceUserData([B)[B
    .locals 12
    .parameter "userData"

    .prologue
    .line 1178
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "format ori userdata> 0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    const/4 v3, 0x0

    .line 1181
    .local v3, offset:I
    if-nez p1, :cond_1

    .line 1182
    const/4 v6, 0x0

    .line 1301
    :cond_0
    :goto_0
    return-object v6

    .line 1186
    :cond_1
    const/4 v9, 0x2

    new-array v2, v9, [B

    fill-array-data v2, :array_0

    .line 1187
    .local v2, newSmsType:[B
    const/4 v9, 0x5

    new-array v7, v9, [[B

    const/4 v9, 0x0

    const/4 v10, 0x2

    new-array v10, v10, [B

    fill-array-data v10, :array_1

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const/4 v10, 0x2

    new-array v10, v10, [B

    fill-array-data v10, :array_2

    aput-object v10, v7, v9

    const/4 v9, 0x2

    const/4 v10, 0x2

    new-array v10, v10, [B

    fill-array-data v10, :array_3

    aput-object v10, v7, v9

    const/4 v9, 0x3

    const/4 v10, 0x2

    new-array v10, v10, [B

    fill-array-data v10, :array_4

    aput-object v10, v7, v9

    const/4 v9, 0x4

    const/4 v10, 0x2

    new-array v10, v10, [B

    fill-array-data v10, :array_5

    aput-object v10, v7, v9

    .line 1194
    .local v7, smsType:[[B
    const/16 v9, 0xa

    new-array v8, v9, [B

    fill-array-data v8, :array_6

    .line 1202
    .local v8, smsTypeEmailSig:[B
    const/16 v9, 0x1a

    new-array v6, v9, [B

    fill-array-data v6, :array_7

    .line 1218
    .local v6, serviceData:[B
    array-length v9, p1

    sub-int/2addr v9, v3

    const/4 v10, 0x2

    if-lt v9, v10, :cond_6

    .line 1219
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v9, v7

    if-le v9, v0, :cond_2

    .line 1220
    aget-object v9, v7, v0

    const/4 v10, 0x0

    aget-byte v9, v9, v10

    aget-byte v10, p1, v3

    if-ne v9, v10, :cond_5

    aget-object v9, v7, v0

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    const/4 v10, 0x1

    aget-byte v10, p1, v10

    if-ne v9, v10, :cond_5

    .line 1222
    packed-switch v0, :pswitch_data_0

    .line 1246
    :goto_2
    add-int/lit8 v3, v3, 0x2

    .line 1252
    :cond_2
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeIdSet:Z

    if-nez v9, :cond_3

    .line 1253
    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiJudgeCmail([BI)Z

    .line 1260
    :cond_3
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeIdSet:Z

    if-nez v9, :cond_6

    .line 1261
    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiJudgeOptionsServices([BI)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiJudgeOtherServices([BI)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1263
    :cond_4
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiDiscard:Z

    if-eqz v9, :cond_0

    move-object v6, p1

    .line 1268
    goto/16 :goto_0

    .line 1224
    :pswitch_0
    const/16 v9, 0x201

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeId:I

    .line 1225
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeIdSet:Z

    goto :goto_2

    .line 1228
    :pswitch_1
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeId:I

    .line 1229
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeIdSet:Z

    goto :goto_2

    .line 1232
    :pswitch_2
    const/16 v9, 0x101

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeId:I

    .line 1233
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeIdSet:Z

    goto :goto_2

    .line 1236
    :pswitch_3
    const/16 v9, 0x102

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeId:I

    .line 1237
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeIdSet:Z

    goto :goto_2

    .line 1240
    :pswitch_4
    const/4 v9, 0x4

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeId:I

    .line 1241
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeIdSet:Z

    goto :goto_2

    .line 1219
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1276
    .end local v0           #i:I
    :cond_6
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeIdSet:Z

    if-nez v9, :cond_8

    array-length v9, p1

    sub-int/2addr v9, v3

    const/16 v10, 0xa

    if-lt v9, v10, :cond_8

    .line 1277
    const/4 v1, 0x1

    .line 1278
    .local v1, isEmailSig:Z
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    array-length v9, v8

    if-ge v0, v9, :cond_7

    .line 1279
    aget-byte v9, v8, v0

    add-int v10, v3, v0

    aget-byte v10, p1, v10

    if-eq v9, v10, :cond_9

    .line 1280
    const/4 v1, 0x0

    .line 1284
    :cond_7
    if-eqz v1, :cond_8

    .line 1285
    const/high16 v9, 0x1000

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeId:I

    .line 1286
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeIdSet:Z

    .line 1294
    .end local v0           #i:I
    .end local v1           #isEmailSig:Z
    :cond_8
    array-length v9, p1

    sub-int v5, v9, v3

    .line 1295
    .local v5, resultDataLen:I
    new-array v4, v5, [B

    .line 1296
    .local v4, resultData:[B
    const/4 v9, 0x0

    invoke-static {p1, v3, v4, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v4

    .line 1301
    goto/16 :goto_0

    .line 1278
    .end local v4           #resultData:[B
    .end local v5           #resultDataLen:I
    .restart local v0       #i:I
    .restart local v1       #isEmailSig:Z
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1186
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x70t
    .end array-data

    .line 1187
    nop

    :array_1
    .array-data 0x1
        0x2t
        0x1t
    .end array-data

    nop

    :array_2
    .array-data 0x1
        0x0t
        0x1t
    .end array-data

    nop

    :array_3
    .array-data 0x1
        0x1t
        0x1t
    .end array-data

    nop

    :array_4
    .array-data 0x1
        0x1t
        0x2t
    .end array-data

    nop

    :array_5
    .array-data 0x1
        0x0t
        0x4t
    .end array-data

    .line 1194
    nop

    :array_6
    .array-data 0x1
        0x53t
        0x49t
        0x47t
        0x4et
        0x41t
        0x4ct
        0x55t
        0x49t
        0x44t
        0x3at
    .end array-data

    .line 1202
    nop

    :array_7
    .array-data 0x1
        0x94t
        0xf1t
        0x91t
        0xcet
        0x89t
        0x9et
        0x82t
        0xcct
        0x82t
        0xbdt
        0x82t
        0xdft
        0x95t
        0x5ct
        0x8et
        0xa6t
        0x82t
        0xc5t
        0x82t
        0xabt
        0x82t
        0xdct
        0x82t
        0xb9t
        0x82t
        0xf1t
    .end array-data

    .line 1222
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private KddiformatSlamdownMessage([B)Ljava/lang/String;
    .locals 5
    .parameter "userData"

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1155
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 1174
    :cond_0
    :goto_0
    return-object v0

    .line 1160
    :cond_1
    aget-byte v1, p1, v4

    if-nez v1, :cond_0

    aget-byte v1, p1, v3

    if-nez v1, :cond_0

    .line 1164
    const-string v0, "GSM"

    const-string v1, "sms type: 0x0000"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeId:I

    .line 1168
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeIdSet:Z

    .line 1174
    invoke-static {p1, v3}, Lcom/android/internal/telephony/HtcMessageHelper;->getKddiVoiceMailNotificationType1String([BZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 802
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getKddiUserDataShiftJis(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getKddiUserDataShiftJis(I)Ljava/lang/String;
    .locals 8
    .parameter "byteCount"

    .prologue
    .line 1130
    :try_start_0
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->dataCodingScheme:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    .line 1131
    new-array v4, p1, [B

    .line 1132
    .local v4, userData:[B
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    const/4 v7, 0x0

    invoke-static {v5, v6, v4, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1134
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->KddiReplaceUserData([B)[B

    move-result-object v1

    .line 1135
    .local v1, replacedUserData:[B
    new-instance v2, Ljava/lang/String;

    const-string v5, "kddi-emoji"

    invoke-direct {v2, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1137
    .local v2, ret:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->KddiformatSlamdownMessage([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1138
    .local v3, slamDownMessage:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1139
    move-object v2, v3

    .line 1149
    .end local v1           #replacedUserData:[B
    .end local v3           #slamDownMessage:Ljava/lang/String;
    .end local v4           #userData:[B
    :cond_0
    :goto_0
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/2addr v5, p1

    iput v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 1150
    return-object v2

    .line 1142
    .end local v2           #ret:Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    const-string v7, "kddi-emoji"

    invoke-direct {v2, v5, v6, p1, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v2       #ret:Ljava/lang/String;
    goto :goto_0

    .line 1144
    .end local v2           #ret:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1145
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    const-string v2, ""

    .line 1146
    .restart local v2       #ret:Ljava/lang/String;
    const-string v5, "GSM"

    const-string v6, "can\'t decode SMS with shift-JIS"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private kddiJudgeCmail([BI)Z
    .locals 6
    .parameter "userData"
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1311
    array-length v3, p1

    sub-int/2addr v3, p2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 1321
    :cond_0
    :goto_0
    return v1

    .line 1313
    :cond_1
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int v0, v3, v4

    .line 1314
    .local v0, typeId:I
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMAIL?> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    invoke-static {v0}, Lcom/android/internal/telephony/HtcMessageHelper;->isKddiSmsTypeCmail(I)Z

    move-result v3

    if-ne v3, v2, :cond_0

    .line 1317
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeId:I

    .line 1318
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeIdSet:Z

    move v1, v2

    .line 1319
    goto :goto_0
.end method

.method private kddiJudgeOptionsServices([BI)Z
    .locals 6
    .parameter "userData"
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1331
    array-length v3, p1

    sub-int/2addr v3, p2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 1340
    :cond_0
    :goto_0
    return v1

    .line 1332
    :cond_1
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int v0, v3, v4

    .line 1333
    .local v0, typeId:I
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Optional services?> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    invoke-static {v0}, Lcom/android/internal/telephony/HtcMessageHelper;->isKddiOptionService(I)Z

    move-result v3

    if-ne v3, v2, :cond_0

    .line 1335
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeId:I

    .line 1336
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeIdSet:Z

    .line 1337
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiDiscard:Z

    move v1, v2

    .line 1338
    goto :goto_0
.end method

.method private kddiJudgeOtherServices([BI)Z
    .locals 5
    .parameter "userData"
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1350
    array-length v3, p1

    sub-int/2addr v3, p2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 1363
    :cond_0
    :goto_0
    return v1

    .line 1351
    :cond_1
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int v0, v3, v4

    .line 1354
    .local v0, typeId:I
    invoke-static {v0}, Lcom/android/internal/telephony/HtcMessageHelper;->isKddiOtherService(I)Z

    move-result v3

    if-ne v3, v2, :cond_0

    .line 1355
    const-string v1, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "other services?> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeId:I

    .line 1357
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiSmsTypeIdSet:Z

    .line 1358
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->kddiDiscard:Z

    move v1, v2

    .line 1360
    goto :goto_0
.end method


# virtual methods
.method constructUserData(ZZ)I
    .locals 13
    .parameter "hasUserDataHeader"
    .parameter "dataInSeptets"

    .prologue
    const/4 v10, 0x0

    .line 942
    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 943
    .local v4, offset:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4           #offset:I
    .local v5, offset:I
    aget-byte v9, v9, v4

    and-int/lit16 v8, v9, 0xff

    .line 944
    .local v8, userDataLength:I
    const/4 v3, 0x0

    .line 945
    .local v3, headerSeptets:I
    const/4 v7, 0x0

    .line 947
    .local v7, userDataHeaderLength:I
    if-eqz p1, :cond_7

    .line 948
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5           #offset:I
    .restart local v4       #offset:I
    aget-byte v9, v9, v5

    and-int/lit16 v7, v9, 0xff

    .line 950
    new-array v6, v7, [B

    .line 951
    .local v6, udh:[B
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    invoke-static {v9, v4, v6, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 952
    invoke-static {v6}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 953
    add-int/2addr v4, v7

    .line 955
    add-int/lit8 v9, v7, 0x1

    mul-int/lit8 v2, v9, 0x8

    .line 956
    .local v2, headerBits:I
    div-int/lit8 v3, v2, 0x7

    .line 957
    rem-int/lit8 v9, v2, 0x7

    if-lez v9, :cond_1

    const/4 v9, 0x1

    :goto_0
    add-int/2addr v3, v9

    .line 958
    mul-int/lit8 v9, v3, 0x7

    sub-int/2addr v9, v2

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    .line 962
    .end local v2           #headerBits:I
    .end local v6           #udh:[B
    :goto_1
    if-eqz p2, :cond_2

    .line 968
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    array-length v9, v9

    sub-int v0, v9, v4

    .line 980
    .local v0, bufferLen:I
    :cond_0
    :goto_2
    new-array v9, v0, [B

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    .line 981
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    array-length v12, v12

    invoke-static {v9, v4, v11, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 982
    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 984
    if-eqz p2, :cond_5

    .line 986
    sub-int v1, v8, v3

    .line 988
    .local v1, count:I
    if-gez v1, :cond_4

    .line 996
    .end local v1           #count:I
    .end local v8           #userDataLength:I
    :goto_3
    return v10

    .end local v0           #bufferLen:I
    .restart local v2       #headerBits:I
    .restart local v6       #udh:[B
    .restart local v8       #userDataLength:I
    :cond_1
    move v9, v10

    .line 957
    goto :goto_0

    .line 974
    .end local v2           #headerBits:I
    .end local v6           #udh:[B
    :cond_2
    if-eqz p1, :cond_3

    add-int/lit8 v9, v7, 0x1

    :goto_4
    sub-int v0, v8, v9

    .line 975
    .restart local v0       #bufferLen:I
    if-gez v0, :cond_0

    .line 976
    const/4 v0, 0x0

    goto :goto_2

    .end local v0           #bufferLen:I
    :cond_3
    move v9, v10

    .line 974
    goto :goto_4

    .restart local v0       #bufferLen:I
    .restart local v1       #count:I
    :cond_4
    move v10, v1

    .line 988
    goto :goto_3

    .line 996
    .end local v1           #count:I
    :cond_5
    if-eqz p1, :cond_6

    sub-int v9, v8, v7

    add-int/lit8 v8, v9, -0x1

    .end local v8           #userDataLength:I
    :cond_6
    move v10, v8

    goto :goto_3

    .end local v0           #bufferLen:I
    .end local v4           #offset:I
    .restart local v5       #offset:I
    .restart local v8       #userDataLength:I
    :cond_7
    move v4, v5

    .end local v5           #offset:I
    .restart local v4       #offset:I
    goto :goto_1
.end method

.method getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    .locals 5

    .prologue
    .line 882
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v3, v3, v4

    and-int/lit16 v0, v3, 0xff

    .line 883
    .local v0, addressLength:I
    add-int/lit8 v3, v0, 0x1

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v1, v3, 0x2

    .line 885
    .local v1, lengthBytes:I
    new-instance v2, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    invoke-direct {v2, v3, v4, v1}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;-><init>([BII)V

    .line 887
    .local v2, ret:Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 889
    return-object v2
.end method

.method getByte()I
    .locals 3

    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method getSCAddress()Ljava/lang/String;
    .locals 5

    .prologue
    .line 840
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 842
    .local v0, len:I
    if-nez v0, :cond_0

    .line 844
    const/4 v1, 0x0

    .line 859
    .local v1, ret:Ljava/lang/String;
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 861
    return-object v1

    .line 848
    .end local v1           #ret:Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    invoke-static {v3, v4, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 851
    .restart local v1       #ret:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->scToa:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 853
    .end local v1           #ret:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 854
    .local v2, tr:Ljava/lang/RuntimeException;
    const-string v3, "GSM"

    const-string v4, "invalid SC address: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 855
    const/4 v1, 0x0

    .restart local v1       #ret:Ljava/lang/String;
    goto :goto_0
.end method

.method getSCTimestampMillis()J
    .locals 13

    .prologue
    .line 899
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v8

    .line 900
    .local v8, year:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v3

    .line 901
    .local v3, month:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v0

    .line 902
    .local v0, day:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v1

    .line 903
    .local v1, hour:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v2

    .line 904
    .local v2, minute:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v4

    .line 911
    .local v4, second:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v7, v9, v10

    .line 914
    .local v7, tzByte:B
    and-int/lit8 v9, v7, -0x9

    int-to-byte v9, v9

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v6

    .line 916
    .local v6, timezoneOffset:I
    and-int/lit8 v9, v7, 0x8

    if-nez v9, :cond_0

    .line 918
    :goto_0
    new-instance v5, Landroid/text/format/Time;

    const-string v9, "UTC"

    invoke-direct {v5, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 921
    .local v5, time:Landroid/text/format/Time;
    const/16 v9, 0x5a

    if-lt v8, v9, :cond_1

    add-int/lit16 v9, v8, 0x76c

    :goto_1
    iput v9, v5, Landroid/text/format/Time;->year:I

    .line 922
    add-int/lit8 v9, v3, -0x1

    iput v9, v5, Landroid/text/format/Time;->month:I

    .line 923
    iput v0, v5, Landroid/text/format/Time;->monthDay:I

    .line 924
    iput v1, v5, Landroid/text/format/Time;->hour:I

    .line 925
    iput v2, v5, Landroid/text/format/Time;->minute:I

    .line 926
    iput v4, v5, Landroid/text/format/Time;->second:I

    .line 929
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    mul-int/lit8 v11, v6, 0xf

    mul-int/lit8 v11, v11, 0x3c

    mul-int/lit16 v11, v11, 0x3e8

    int-to-long v11, v11

    sub-long/2addr v9, v11

    return-wide v9

    .line 916
    .end local v5           #time:Landroid/text/format/Time;
    :cond_0
    neg-int v6, v6

    goto :goto_0

    .line 921
    .restart local v5       #time:Landroid/text/format/Time;
    :cond_1
    add-int/lit16 v9, v8, 0x7d0

    goto :goto_1
.end method

.method getUserData()[B
    .locals 1

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    return-object v0
.end method

.method getUserDataGSM7Bit(I)Ljava/lang/String;
    .locals 1
    .parameter "septetCount"

    .prologue
    const/4 v0, -0x1

    .line 1067
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM7Bit(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getUserDataGSM7Bit(III)Ljava/lang/String;
    .locals 7
    .parameter "septetCount"
    .parameter "languageTable"
    .parameter "languageShiftTable"

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    move v2, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v6

    .line 1050
    .local v6, ret:Ljava/lang/String;
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    mul-int/lit8 v1, p1, 0x7

    div-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 1052
    return-object v6
.end method

.method getUserDataGSM8Bit(I)Ljava/lang/String;
    .locals 2
    .parameter "count"

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    invoke-static {v0, v1, p1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;
    .locals 1

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    return-object v0
.end method

.method getUserDataKSC5601(I)Ljava/lang/String;
    .locals 5
    .parameter "byteCount"

    .prologue
    .line 1104
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    const-string v4, "KSC5601"

    invoke-direct {v1, v2, v3, p1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1110
    .local v1, ret:Ljava/lang/String;
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 1111
    return-object v1

    .line 1105
    .end local v1           #ret:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1106
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    .line 1107
    .restart local v1       #ret:Ljava/lang/String;
    const-string v2, "GSM"

    const-string v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method getUserDataSeptetPadding()I
    .locals 1

    .prologue
    .line 1019
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    return v0
.end method

.method getUserDataUCS2(I)Ljava/lang/String;
    .locals 5
    .parameter "byteCount"

    .prologue
    .line 1083
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    const-string v4, "utf-16"

    invoke-direct {v1, v2, v3, p1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1089
    .local v1, ret:Ljava/lang/String;
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 1090
    return-object v1

    .line 1084
    .end local v1           #ret:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1085
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    .line 1086
    .restart local v1       #ret:Ljava/lang/String;
    const-string v2, "GSM"

    const-string v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method moreDataPresent()Z
    .locals 2

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setDataCodingScheme(I)V
    .locals 0
    .parameter "dcs"

    .prologue
    .line 1116
    iput p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->dataCodingScheme:I

    .line 1117
    return-void
.end method
