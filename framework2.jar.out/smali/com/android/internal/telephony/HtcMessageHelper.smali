.class public Lcom/android/internal/telephony/HtcMessageHelper;
.super Ljava/lang/Object;
.source "HtcMessageHelper.java"


# static fields
.field private static final DEBUG_SIGNATURE:Z = true

.field private static final DELAY_WHEN_SIGNATURE_MISMATCH_MS:J = 0x1388L

.field private static final KDDI_MESSAGE_ID_ETWS_KDDI_TEST_MESSAGE:I = 0xac00

.field private static final TAG:Ljava/lang/String; = "SMS"

.field private static mKddiMCTimestamp:J

.field private static mKddiMessageId:I

.field private static mKddiUserData:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMsgRef2PendingList(Landroid/content/Context;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Landroid/net/Uri;
    .locals 16
    .parameter "context"
    .parameter "tracker"

    .prologue
    .line 408
    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 409
    .local v9, msgRef:I
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 410
    .local v6, deliveryIntent:Landroid/app/PendingIntent;
    invoke-virtual {v6}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 411
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, action:Ljava/lang/String;
    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 413
    .local v5, data:Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 414
    .local v3, cn:Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 415
    .local v10, pkg:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 416
    .local v2, cls:Ljava/lang/String;
    new-instance v12, Landroid/content/ContentValues;

    const/4 v13, 0x5

    invoke-direct {v12, v13}, Landroid/content/ContentValues;-><init>(I)V

    .line 417
    .local v12, values:Landroid/content/ContentValues;
    const-string v13, "tp_mr"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 418
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 419
    const-string v13, "action"

    invoke-virtual {v12, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_0
    if-eqz v5, :cond_1

    .line 422
    const-string v13, "uri"

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 425
    const-string v13, "pkg_name"

    invoke-virtual {v12, v13, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 428
    const-string v13, "class_name"

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_3
    const/4 v11, 0x0

    .line 433
    .local v11, retUri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 435
    .local v4, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/android/internal/telephony/HtcMessageHelper;->deleteMsgRefFromPendingList(Landroid/content/Context;I)I

    .line 437
    sget-object v13, Landroid/provider/HtcMessages$HtcSms$PendingMsg;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v13, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 442
    .end local v4           #cr:Landroid/content/ContentResolver;
    :goto_0
    return-object v11

    .line 438
    :catch_0
    move-exception v7

    .line 439
    .local v7, e:Ljava/lang/Exception;
    const-string v13, "SMS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "insert pending list failure: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static callingWithSignatureNoneBlocking(Landroid/content/Context;IILjava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "uid"
    .parameter "pid"
    .parameter "packageName"

    .prologue
    const/4 v3, 0x0

    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 184
    .local v1, mPm:Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 186
    .local v2, pkgInfo:Landroid/content/pm/PackageInfo;
    const/16 v4, 0x40

    :try_start_0
    invoke-virtual {v1, p3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 198
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v1, p1, p2, v4, v3}, Lcom/android/internal/telephony/HtcMessageHelper;->checkCallingSignature(Landroid/content/pm/PackageManager;II[Landroid/content/pm/Signature;Z)Z

    move-result v3

    :goto_0
    return v3

    .line 191
    :catch_0
    move-exception v0

    .line 193
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No packageInfo found for UID/PID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static check3gpp2BCSMSDuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 1
    .parameter "context"
    .parameter "smsb"

    .prologue
    .line 577
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    invoke-static {p0, p1}, Lcom/android/internal/telephony/HtcMessageHelper;->kddiCheck3gpp2JEADuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v0

    .line 582
    :goto_0
    return v0

    .line 579
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_CONFIG:Z

    if-eqz v0, :cond_1

    .line 580
    invoke-static {p1}, Lcom/android/internal/telephony/HtcMessageHelper;->kddiCheckEarthquakeAlertDuplication(Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v0

    goto :goto_0

    .line 582
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static check3gppBCSMSDuplication(Landroid/content/Context;[B)Z
    .locals 1
    .parameter "context"
    .parameter "pdu"

    .prologue
    .line 568
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    invoke-static {p0, p1}, Lcom/android/internal/telephony/HtcMessageHelper;->kddiCheck3gppJEADuplication(Landroid/content/Context;[B)Z

    move-result v0

    .line 571
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkCallingSignature(Landroid/content/pm/PackageManager;II[Landroid/content/pm/Signature;Z)Z
    .locals 11
    .parameter "mPm"
    .parameter "callingUid"
    .parameter "callingPid"
    .parameter "matching"
    .parameter "delayWhenNotMatch"

    .prologue
    const/4 v9, 0x1

    .line 204
    if-eqz p3, :cond_0

    array-length v10, p3

    if-nez v10, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v9

    .line 207
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/HtcMessageHelper;->getUidSignatures(Landroid/content/pm/PackageManager;II)[Landroid/content/pm/Signature;

    move-result-object v2

    .line 208
    .local v2, callingSignatures:[Landroid/content/pm/Signature;
    if-eqz v2, :cond_4

    .line 209
    move-object v0, v2

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v4, v3

    .end local v0           #arr$:[Landroid/content/pm/Signature;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v8, v0, v4

    .line 210
    .local v8, sig:Landroid/content/pm/Signature;
    move-object v1, p3

    .local v1, arr$:[Landroid/content/pm/Signature;
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_2
    if-ge v3, v6, :cond_3

    aget-object v7, v1, v3

    .line 211
    .local v7, matchSig:Landroid/content/pm/Signature;
    if-eqz v7, :cond_2

    invoke-virtual {v8, v7}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 210
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 209
    .end local v7           #matchSig:Landroid/content/pm/Signature;
    :cond_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_1

    .line 220
    .end local v1           #arr$:[Landroid/content/pm/Signature;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .end local v8           #sig:Landroid/content/pm/Signature;
    :cond_4
    if-eqz p4, :cond_5

    .line 222
    const-wide/16 v9, 0x1388

    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :cond_5
    :goto_3
    const/4 v9, 0x0

    goto :goto_0

    .line 223
    :catch_0
    move-exception v9

    goto :goto_3
.end method

.method public static checkCmasDuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 2
    .parameter "context"
    .parameter "smsb"

    .prologue
    .line 170
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x94

    if-ne v0, v1, :cond_0

    .line 172
    invoke-static {p0, p1}, Lcom/android/internal/telephony/HtcMessageHelper;->checkCmasDuplicationByMessageID(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v0

    .line 174
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkCmasDuplicationByMessageID(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 11
    .parameter "context"
    .parameter "smsb"

    .prologue
    .line 123
    const/4 v10, 0x0

    .line 129
    .local v10, result:Z
    const/4 v8, 0x1

    .line 130
    .local v8, isCdma:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageIdentifier()I

    move-result v9

    .line 131
    .local v9, msg_id:I
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_ID: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v0, 0x4

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "protocol"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "pdu"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "is_cdma_format"

    aput-object v1, v2, v0

    .line 140
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "protocol = ?  AND is_cdma_format = ? "

    .line 143
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v1, 0x1

    if-eqz v8, :cond_2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v4, v1

    .line 148
    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$HtcCmas;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 150
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 152
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detecte duplicated CMAS: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v5, 0x2

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    const/4 v10, 0x1

    .line 158
    :cond_0
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 165
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_1
    :goto_1
    return v10

    .line 143
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v3       #selection:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 158
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 161
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 162
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception when checking CMAS duplication: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static checkSmsDuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 1
    .parameter "context"
    .parameter "smsb"

    .prologue
    .line 284
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    invoke-static {p0, p1}, Lcom/android/internal/telephony/HtcMessageHelper;->kddiCheckSmsDuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v0

    .line 287
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static deleteMsgRefFromPendingList(Landroid/content/Context;I)I
    .locals 6
    .parameter "context"
    .parameter "msgRef"

    .prologue
    .line 393
    const/4 v0, 0x0

    .line 395
    .local v0, count:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/HtcMessages$HtcSms$PendingMsg;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tp_mr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 402
    :goto_0
    return v0

    .line 398
    :catch_0
    move-exception v1

    .line 399
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete pending list failure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static encodeShiftJis(Ljava/lang/String;)[B
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 752
    if-nez p0, :cond_0

    .line 777
    :goto_0
    return-object v5

    .line 756
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 757
    .local v0, charCount:I
    const-string v6, "kddi-emoji"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    .line 758
    .local v1, encoder:Ljava/nio/charset/CharsetEncoder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 760
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 763
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 760
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 773
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "kddi-emoji"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 775
    :catch_0
    move-exception v2

    .line 776
    .local v2, ex:Ljava/io/UnsupportedEncodingException;
    const-string v6, "encodeShiftJis"

    const-string v7, "SJIS encode failed: "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getIntentFromPendingList(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 14
    .parameter "context"
    .parameter "messageRef"

    .prologue
    const/4 v4, 0x0

    const/4 v13, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 343
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "action"

    aput-object v0, v2, v1

    const-string v0, "uri"

    aput-object v0, v2, v3

    const-string v0, "pkg_name"

    aput-object v0, v2, v5

    const-string v0, "class_name"

    aput-object v0, v2, v13

    const/4 v0, 0x4

    const-string v1, "tp_mr"

    aput-object v1, v2, v0

    .line 350
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/HtcMessages$HtcSms$PendingMsg;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tp_mr = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 355
    .local v7, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 356
    .local v9, intent:Landroid/content/Intent;
    if-eqz v7, :cond_1

    .line 359
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 361
    .local v6, action:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 362
    .local v12, uriStr:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 363
    .local v11, pkg:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 364
    .local v8, cls:Ljava/lang/String;
    new-instance v10, Landroid/content/Intent;

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v10, v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    .end local v9           #intent:Landroid/content/Intent;
    .local v10, intent:Landroid/content/Intent;
    :try_start_1
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v11, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v9, v10

    .line 368
    .end local v6           #action:Ljava/lang/String;
    .end local v8           #cls:Ljava/lang/String;
    .end local v10           #intent:Landroid/content/Intent;
    .end local v11           #pkg:Ljava/lang/String;
    .end local v12           #uriStr:Ljava/lang/String;
    .restart local v9       #intent:Landroid/content/Intent;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 371
    :cond_1
    return-object v9

    .line 368
    :catchall_0
    move-exception v0

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .end local v9           #intent:Landroid/content/Intent;
    .restart local v6       #action:Ljava/lang/String;
    .restart local v8       #cls:Ljava/lang/String;
    .restart local v10       #intent:Landroid/content/Intent;
    .restart local v11       #pkg:Ljava/lang/String;
    .restart local v12       #uriStr:Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10           #intent:Landroid/content/Intent;
    .restart local v9       #intent:Landroid/content/Intent;
    goto :goto_0
.end method

.method public static getKddiEmailSignalAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 903
    const-string v0, "com.kddi.android.intent.action.ESIGNAL_RECEIVED"

    return-object v0
.end method

.method public static getKddiEmailSignalPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 907
    const-string v0, "com.kddi.android.permission.RECEIVE_ESIGNAL"

    return-object v0
.end method

.method public static getKddiVoiceMailNotificationType1String([BZ)Ljava/lang/String;
    .locals 14
    .parameter "userdata"
    .parameter "skipEsnCheck"

    .prologue
    .line 826
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9}, Ljava/lang/String;-><init>()V

    .line 836
    .local v9, resultString:Ljava/lang/String;
    const/16 v11, 0x10

    new-array v5, v11, [B

    fill-array-data v5, :array_0

    .line 846
    .local v5, repKddislamdownData:[B
    const/4 v11, 0x1

    new-array v6, v11, [B

    const/4 v11, 0x0

    const/16 v12, 0x2f

    aput-byte v12, v6, v11

    .line 847
    .local v6, repKddislamdownData2:[B
    const/4 v11, 0x2

    new-array v7, v11, [B

    fill-array-data v7, :array_1

    .line 850
    .local v7, repKddislamdownData3:[B
    array-length v11, v5

    add-int/lit8 v11, v11, 0x7

    new-array v8, v11, [B

    .line 858
    .local v8, resultData:[B
    const/4 v11, 0x1

    if-ne p1, v11, :cond_1

    .line 859
    const/4 v4, 0x0

    .line 864
    .local v4, offset:I
    :goto_0
    const/4 v1, 0x0

    .line 865
    .local v1, destPos:I
    const/4 v11, 0x0

    array-length v12, v5

    invoke-static {v5, v11, v8, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 866
    array-length v11, v5

    add-int/2addr v1, v11

    .line 867
    array-length v11, p0

    sub-int/2addr v11, v4

    const/4 v12, 0x4

    if-lt v11, v12, :cond_0

    .line 869
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v11, "00"

    invoke-direct {v2, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 875
    .local v2, df:Ljava/text/DecimalFormat;
    add-int/lit8 v11, v4, 0x2

    aget-byte v11, p0, v11

    int-to-long v11, v11

    invoke-virtual {v2, v11, v12}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 876
    .local v0, countValue:Ljava/lang/String;
    const-string v11, "SMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "total: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-static {v11, v12, v8, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 879
    add-int/lit8 v1, v1, 0x2

    .line 880
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v6, v11, v8, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 881
    add-int/lit8 v1, v1, 0x1

    .line 882
    add-int/lit8 v11, v4, 0x3

    aget-byte v11, p0, v11

    int-to-long v11, v11

    invoke-virtual {v2, v11, v12}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 883
    const-string v11, "SMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "unread: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-static {v11, v12, v8, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 885
    add-int/lit8 v1, v1, 0x2

    .line 886
    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-static {v7, v11, v8, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 892
    .end local v0           #countValue:Ljava/lang/String;
    .end local v2           #df:Ljava/text/DecimalFormat;
    :cond_0
    :try_start_0
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    array-length v12, v8

    const-string v13, "kddi-emoji"

    invoke-direct {v10, v8, v11, v12, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 894
    .end local v9           #resultString:Ljava/lang/String;
    .local v10, resultString:Ljava/lang/String;
    :try_start_1
    const-string v11, "SMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "format data: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v10

    .line 899
    .end local v10           #resultString:Ljava/lang/String;
    .restart local v9       #resultString:Ljava/lang/String;
    :goto_1
    return-object v9

    .line 861
    .end local v1           #destPos:I
    .end local v4           #offset:I
    :cond_1
    const/4 v4, 0x2

    .restart local v4       #offset:I
    goto/16 :goto_0

    .line 895
    .restart local v1       #destPos:I
    :catch_0
    move-exception v3

    .line 896
    .local v3, ex:Ljava/io/UnsupportedEncodingException;
    :goto_2
    const-string v11, "SMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SJIS decode failed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 895
    .end local v3           #ex:Ljava/io/UnsupportedEncodingException;
    .end local v9           #resultString:Ljava/lang/String;
    .restart local v10       #resultString:Ljava/lang/String;
    :catch_1
    move-exception v3

    move-object v9, v10

    .end local v10           #resultString:Ljava/lang/String;
    .restart local v9       #resultString:Ljava/lang/String;
    goto :goto_2

    .line 836
    :array_0
    .array-data 0x1
        0x93t
        0x60t
        0x8ct
        0xbet
        0x82t
        0xa8t
        0x92t
        0x6dt
        0x82t
        0xe7t
        0x82t
        0xb9t
        0xdt
        0xat
        0x96t
        0xa2t
    .end array-data

    .line 847
    :array_1
    .array-data 0x1
        0x8ct
        0x8ft
    .end array-data
.end method

.method private static getPackageName(Landroid/content/pm/PackageManager;II)Ljava/lang/String;
    .locals 6
    .parameter "mPm"
    .parameter "uid"
    .parameter "pid"

    .prologue
    .line 229
    const/4 v2, 0x0

    .line 231
    .local v2, psName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, packages:[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 239
    const/4 v3, 0x0

    aget-object v2, v1, v3

    .line 251
    .end local v1           #packages:[Ljava/lang/String;
    :goto_0
    return-object v2

    .line 243
    .restart local v1       #packages:[Ljava/lang/String;
    :cond_0
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No packages with UID/PID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    .end local v1           #packages:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 248
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to get UID/PID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " packageName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getShiftJisEncodingDetails(Ljava/lang/String;)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 4
    .parameter "message"

    .prologue
    .line 782
    new-instance v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 783
    .local v1, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->kddiCalculateMsgSize(Ljava/lang/String;)I

    move-result v0

    .line 784
    .local v0, byteSize:I
    div-int/lit16 v3, v0, 0x8c

    rem-int/lit16 v2, v0, 0x8c

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 786
    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 787
    if-lez v0, :cond_1

    iget v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    mul-int/lit16 v2, v2, 0x8c

    sub-int/2addr v2, v0

    :goto_1
    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 789
    const/4 v2, 0x3

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 790
    return-object v1

    .line 784
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 787
    :cond_1
    const/16 v2, 0x8c

    goto :goto_1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZI)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 1
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "originPort"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "statusReportRequested"
    .parameter "phoneType"

    .prologue
    .line 68
    invoke-static/range {p0 .. p6}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZI)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method private static getUidSignatures(Landroid/content/pm/PackageManager;II)[Landroid/content/pm/Signature;
    .locals 6
    .parameter "mPm"
    .parameter "uid"
    .parameter "pid"

    .prologue
    .line 256
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/HtcMessageHelper;->getPackageName(Landroid/content/pm/PackageManager;II)Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, packageName:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 260
    const/16 v3, 0x40

    invoke-virtual {p0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 262
    .local v2, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    .line 267
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 278
    .end local v1           #packageName:Ljava/lang/String;
    .end local v2           #pkgInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v3

    .line 270
    .restart local v1       #packageName:Ljava/lang/String;
    .restart local v2       #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No packageInfo found for : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .end local v1           #packageName:Ljava/lang/String;
    .end local v2           #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 275
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to get UID/PID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " signature : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static htcSendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZ)V
    .locals 7
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "bFirstOfAll"
    .parameter "bLastOfAll"

    .prologue
    .line 76
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 77
    .local v0, sm:Landroid/telephony/SmsManager;
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 78
    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->htcSendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZ)V

    .line 80
    :cond_0
    return-void
.end method

.method public static isCmasAckReturnEnable()Z
    .locals 2

    .prologue
    .line 87
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isKddiEmergencyAlert(I)Z
    .locals 2
    .parameter "id"

    .prologue
    const/4 v0, 0x1

    .line 455
    const/16 v1, 0x1100

    if-eq p0, v1, :cond_0

    const/16 v1, 0x1103

    if-eq p0, v1, :cond_0

    const v1, 0xac00

    if-ne p0, v1, :cond_1

    .line 467
    :cond_0
    :goto_0
    return v0

    .line 463
    :cond_1
    const v1, 0xa000

    if-lt p0, v1, :cond_2

    const v1, 0xafff

    if-le p0, v1, :cond_0

    .line 467
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKddiOptionService(I)Z
    .locals 1
    .parameter "typeId"

    .prologue
    .line 811
    const v0, 0xef40

    if-lt p0, v0, :cond_0

    const v0, 0xef7e

    if-gt p0, v0, :cond_0

    .line 812
    const/4 v0, 0x1

    .line 814
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKddiOtherService(I)Z
    .locals 1
    .parameter "typeId"

    .prologue
    .line 818
    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    .line 819
    const/4 v0, 0x1

    .line 821
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKddiRoaming()Z
    .locals 4

    .prologue
    .line 912
    const-string v1, "gsm.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 913
    .local v0, mccMnc:Ljava/lang/String;
    const-string v1, "isKddiRoaming"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkOperator : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    if-eqz v0, :cond_0

    const-string v1, "440"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 915
    :cond_0
    const/4 v1, 0x0

    .line 917
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isKddiSmsTypeCmail(I)Z
    .locals 2
    .parameter "typeId"

    .prologue
    .line 796
    const/4 v0, 0x0

    .line 797
    .local v0, isCmail:Z
    const/16 v1, 0x100

    if-ne p0, v1, :cond_1

    .line 798
    const/4 v0, 0x1

    .line 807
    :cond_0
    :goto_0
    return v0

    .line 799
    :cond_1
    const/16 v1, 0x103

    if-lt p0, v1, :cond_2

    const/16 v1, 0x1ff

    if-gt p0, v1, :cond_2

    .line 800
    const/4 v0, 0x1

    goto :goto_0

    .line 801
    :cond_2
    const/16 v1, 0x202

    if-lt p0, v1, :cond_3

    const v1, 0xef39

    if-gt p0, v1, :cond_3

    .line 802
    const/4 v0, 0x1

    goto :goto_0

    .line 803
    :cond_3
    const v1, 0xef7f

    if-lt p0, v1, :cond_0

    .line 804
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSendCdmaMoSms()Z
    .locals 2

    .prologue
    .line 97
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isCdmaMo()Z

    move-result v1

    .line 104
    .local v0, activePhone:I
    :goto_0
    return v1

    .line 103
    .end local v0           #activePhone:I
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 104
    .restart local v0       #activePhone:I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSupported3gpp2BCSMS(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 3
    .parameter "smsb"

    .prologue
    .line 647
    const/4 v0, 0x1

    .local v0, result:Z
    move-object v1, p0

    .line 648
    check-cast v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 650
    .local v1, sms:Lcom/android/internal/telephony/cdma/SmsMessage;
    sget-boolean v2, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_CONFIG:Z

    if-eqz v2, :cond_0

    .line 651
    invoke-static {v1}, Lcom/android/internal/telephony/HtcMessageHelper;->kddiIsSupported3gpp2BCSMS(Lcom/android/internal/telephony/cdma/SmsMessage;)Z

    move-result v0

    .line 653
    :cond_0
    return v0
.end method

.method private static kddiAppendCallerNames(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .parameter "cxt"
    .parameter "s"

    .prologue
    .line 719
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 746
    :goto_0
    return-object v1

    .line 720
    :cond_1
    const/4 v8, 0x0

    .line 721
    .local v8, sb:Ljava/lang/StringBuilder;
    sget-object v12, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 722
    .local v5, m:Ljava/util/regex/Matcher;
    const/4 v7, 0x0

    .line 723
    .local v7, offset:I
    :cond_2
    :goto_1
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 724
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    .line 725
    .local v9, start:I
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 726
    .local v2, end:I
    sget-object v6, Landroid/text/util/Linkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    .line 727
    .local v6, matchFilter:Landroid/text/util/Linkify$MatchFilter;
    sget-object v10, Landroid/text/util/Linkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    .line 728
    .local v10, transformFilter:Landroid/text/util/Linkify$TransformFilter;
    move-object/from16 v0, p1

    invoke-interface {v6, v0, v9, v2}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 729
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v5, v12}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 730
    .local v11, url:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v3

    .line 731
    .local v3, info:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v3, :cond_2

    iget-wide v12, v3, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_2

    .line 732
    iget-object v12, v3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 733
    if-nez v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8           #sb:Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 734
    .restart local v8       #sb:Ljava/lang/StringBuilder;
    :cond_3
    iget-object v12, v3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v4, v12, 0x1

    .line 735
    .local v4, len:I
    add-int v12, v2, v7

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    add-int/2addr v7, v4

    goto :goto_1

    .line 741
    .end local v2           #end:I
    .end local v3           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v4           #len:I
    .end local v6           #matchFilter:Landroid/text/util/Linkify$MatchFilter;
    .end local v9           #start:I
    .end local v10           #transformFilter:Landroid/text/util/Linkify$TransformFilter;
    .end local v11           #url:Ljava/lang/String;
    :cond_4
    if-eqz v8, :cond_5

    .line 742
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 743
    .local v1, body:Ljava/lang/String;
    const-string v12, "SMS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Replace Cmail body> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1           #body:Ljava/lang/String;
    :cond_5
    move-object/from16 v1, p1

    .line 746
    goto/16 :goto_0
.end method

.method private static kddiCheck3gpp2JEADuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 4
    .parameter "context"
    .parameter "smsb"

    .prologue
    .line 519
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->isKddiBCSMS()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageIdentifier()I

    move-result v0

    .line 522
    .local v0, msg_id:I
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-static {p0, v0}, Lcom/android/internal/telephony/HtcMessageHelper;->kddiCheckJEADuplication(Landroid/content/Context;I)Z

    move-result v1

    .line 525
    .end local v0           #msg_id:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static kddiCheck3gppJEADuplication(Landroid/content/Context;[B)Z
    .locals 6
    .parameter "context"
    .parameter "pdu"

    .prologue
    const/4 v2, 0x0

    .line 538
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    .line 539
    .local v0, header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "3GPP CBS format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->format:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "3GPP channel ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget v3, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    invoke-static {v3}, Lcom/android/internal/telephony/HtcMessageHelper;->isKddiEmergencyAlert(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 543
    const/4 v1, -0x1

    .line 544
    .local v1, sn:I
    iget v3, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->format:I

    packed-switch v3, :pswitch_data_0

    .line 559
    :goto_0
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-static {p0, v1}, Lcom/android/internal/telephony/HtcMessageHelper;->kddiCheckJEADuplication(Landroid/content/Context;I)Z

    move-result v2

    .line 562
    .end local v1           #sn:I
    :cond_0
    return v2

    .line 550
    .restart local v1       #sn:I
    :pswitch_0
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 551
    goto :goto_0

    .line 554
    :pswitch_1
    const/4 v2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 555
    goto :goto_0

    .line 544
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static kddiCheckEarthquakeAlertDuplication(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 5
    .parameter "smsb"

    .prologue
    .line 587
    move-object v0, p0

    check-cast v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 599
    .local v0, sms:Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->isKddiEarthquakeAlert()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 600
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last MessageId / MCTimestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/HtcMessageHelper;->mKddiMessageId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/android/internal/telephony/HtcMessageHelper;->mKddiMCTimestamp:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This MessageId / MCTimestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget v1, v0, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    sget v2, Lcom/android/internal/telephony/HtcMessageHelper;->mKddiMessageId:I

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/android/internal/telephony/HtcMessageHelper;->mKddiMCTimestamp:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/HtcMessageHelper;->mKddiUserData:[B

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 604
    const-string v1, "SMS"

    const-string v2, "Get duplicated KDDI Earthquake Alert, drop it!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const/4 v1, 0x1

    .line 613
    :goto_0
    return v1

    .line 607
    :cond_0
    iget v1, v0, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    sput v1, Lcom/android/internal/telephony/HtcMessageHelper;->mKddiMessageId:I

    .line 608
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/android/internal/telephony/HtcMessageHelper;->mKddiMCTimestamp:J

    .line 609
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/HtcMessageHelper;->mKddiUserData:[B

    .line 613
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static kddiCheckJEADuplication(Landroid/content/Context;I)Z
    .locals 9
    .parameter "context"
    .parameter "msg_id"

    .prologue
    .line 473
    const/4 v8, 0x0

    .line 475
    .local v8, result:Z
    const/4 v0, 0x4

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "protocol"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "pdu"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "is_cdma_format"

    aput-object v1, v2, v0

    .line 481
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "protocol = ? "

    .line 482
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 485
    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$HtcCmas;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 487
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 489
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detect duplicated JEA: 0x"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v5, 0x2

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "format: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v5, 0x3

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 493
    const/4 v8, 0x1

    .line 496
    :cond_0
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 503
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return v8

    .line 496
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 499
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 500
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception when checking JEA duplication: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static kddiCheckSmsDuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 12
    .parameter "context"
    .parameter "smsb"

    .prologue
    .line 300
    const/4 v11, 0x0

    .line 301
    .local v11, result:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v6

    .line 302
    .local v6, address:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v8

    .line 312
    .local v8, date:J
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "address"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "date"

    aput-object v1, v2, v0

    .line 316
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "address = ? AND date = ? "

    .line 318
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v6, v4, v0

    const/4 v0, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 322
    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 324
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 326
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    const-string v0, "SMS"

    const-string v1, "Detecte duplicated SMS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    const/4 v11, 0x1

    .line 331
    :cond_0
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 338
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v7           #c:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return v11

    .line 331
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    .restart local v7       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 334
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v7           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 335
    .local v10, e:Ljava/lang/Exception;
    const-string v0, "SMS"

    const-string v1, "exception when checking duplication"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static kddiFormatCmailBody(Landroid/content/Context;Landroid/telephony/SmsMessage;)V
    .locals 4
    .parameter "cxt"
    .parameter "sms"

    .prologue
    .line 692
    sget-boolean v3, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_CONFIG:Z

    if-nez v3, :cond_1

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    iget-object v2, p1, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    .line 696
    .local v2, smsb:Lcom/android/internal/telephony/SmsMessageBase;
    instance-of v3, v2, Lcom/android/internal/telephony/cdma/SmsMessage;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 697
    check-cast v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 699
    .local v0, msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->kddiHasSmsTypeId()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 700
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->kddiGetSmsTypeId()I

    move-result v1

    .line 708
    .local v1, smsId:I
    const/16 v3, 0x101

    if-eq v1, v3, :cond_2

    const/16 v3, 0x102

    if-eq v1, v3, :cond_2

    const/16 v3, 0x201

    if-ne v1, v3, :cond_0

    .line 711
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/HtcMessageHelper;->kddiAppendCallerNames(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->setMessageBody(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static kddiIsDiscarded3gpp2BCSMS(Lcom/android/internal/telephony/cdma/SmsMessage;)Z
    .locals 4
    .parameter "sms"

    .prologue
    .line 667
    const/4 v0, 0x0

    .line 668
    .local v0, result:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 676
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 677
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "discarded BCSMS category: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getServiceCategory()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_1
    return v0

    .line 670
    :cond_2
    sget-boolean v1, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_CONFIG:Z

    if-eqz v1, :cond_0

    .line 671
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->isKddiEmergencyMessage()Z

    move-result v1

    if-nez v1, :cond_0

    .line 672
    const-string v1, "SMS"

    const-string v2, "Received KDDI Earthquake Alert which service category not belong to 0x0001, drop it"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static kddiIsSupported3gpp2BCSMS(Lcom/android/internal/telephony/cdma/SmsMessage;)Z
    .locals 4
    .parameter "sms"

    .prologue
    .line 621
    const/4 v0, 0x1

    .line 622
    .local v0, result:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 631
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 632
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KDDI doesn\'t support 3GPP2 BCSMS category: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getServiceCategory()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_1
    return v0

    .line 627
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->isKddiBroadcastSmsReceived()Z

    move-result v1

    if-nez v1, :cond_0

    .line 628
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sendPendingIntent(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "messageRef"
    .parameter "fillIn"

    .prologue
    .line 377
    invoke-static {p0, p1}, Lcom/android/internal/telephony/HtcMessageHelper;->getIntentFromPendingList(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v2

    .line 378
    .local v2, retIntent:Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 380
    if-eqz p2, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v2, p2, v1}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 381
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 382
    .local v0, am:Landroid/app/IActivityManager;
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    .end local v0           #am:Landroid/app/IActivityManager;
    :cond_1
    :goto_0
    return-void

    .line 384
    :catch_0
    move-exception v11

    .line 385
    .local v11, e:Ljava/lang/Exception;
    const-string v1, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not broadcast intent TP-MR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
