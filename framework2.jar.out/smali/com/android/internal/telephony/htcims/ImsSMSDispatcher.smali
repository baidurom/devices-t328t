.class public final Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "ImsSMSDispatcher.java"


# static fields
.field private static final RIL_TAG:Ljava/lang/String; = "SMS"

.field private static final TAG:Ljava/lang/String; = "IMS"


# instance fields
.field private mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private mImsPhone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 12
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"

    .prologue
    const/4 v5, 0x0

    .line 78
    const/4 v4, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;ILcom/android/internal/telephony/WapPushOverSms;)V

    .line 81
    iput-object p1, p0, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->mImsPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 87
    new-instance v6, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;ILcom/android/internal/telephony/WapPushOverSms;)V

    iput-object v6, p0, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 89
    new-instance v6, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;ILcom/android/internal/telephony/WapPushOverSms;)V

    iput-object v6, p0, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1e

    invoke-interface {v0, p0, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 94
    const-string v0, "registerForImsNetworkStateChanged"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->log(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method private resultToCause(I)I
    .locals 1
    .parameter "rc"

    .prologue
    .line 297
    packed-switch p1, :pswitch_data_0

    .line 306
    :pswitch_0
    const/16 v0, 0xff

    :goto_0
    return v0

    .line 301
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 303
    :pswitch_2
    const/16 v0, 0xd3

    goto :goto_0

    .line 297
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateImsInfo(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 341
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 342
    .local v0, responseArray:[I
    aget v1, v0, v4

    if-ne v1, v3, :cond_1

    .line 343
    const-string v1, "IMS"

    const-string v2, "IMS is registered!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    aget v1, v0, v3

    sput v1, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->mImsRadioTech:I

    .line 351
    sget v1, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->mImsRadioTech:I

    if-eq v1, v3, :cond_0

    sget v1, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->mImsRadioTech:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 354
    const-string v1, "IMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMS encoding was unknown! - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->mImsRadioTech:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    sput v4, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->mImsRadioTech:I

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    const-string v1, "IMS"

    const-string v2, "IMS is NOT registered!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    sput v4, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->mImsRadioTech:I

    goto :goto_0
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 2
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->resultToCause(I)I

    move-result v1

    invoke-interface {v0, p1, v1, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    .line 270
    :cond_0
    return-void
.end method

.method protected activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 2
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 276
    const-string v0, "IMS"

    const-string v1, "Error! The functionality cell broadcast sms is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    .line 278
    return-void
.end method

.method public calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 2
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calculateLength(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->mImsRadioTech:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->log(Ljava/lang/String;)V

    .line 367
    invoke-static {}, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v0

    .line 370
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v0

    goto :goto_0
.end method

.method public dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 2
    .parameter "smsb"

    .prologue
    .line 152
    const-string v0, "IMS"

    const-string v1, "SMS should not dispatched by ImsSMSDispatcher"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v0, 0x2

    return v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V

    .line 100
    const-string v0, "unregisterForImsNetworkStateChanged"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->log(Ljava/lang/String;)V

    .line 101
    invoke-super {p0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 102
    return-void
.end method

.method protected getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 284
    const-string v0, "IMS"

    const-string v1, "Error! The functionality cell broadcast sms is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 286
    return-void
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFormat(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->mImsRadioTech:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->log(Ljava/lang/String;)V

    .line 378
    sget v0, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->mImsRadioTech:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 379
    const-string v0, "3gpp2"

    .line 383
    :goto_0
    return-object v0

    .line 380
    :cond_0
    sget v0, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->mImsRadioTech:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 381
    const-string v0, "3gpp"

    goto :goto_0

    .line 383
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/16 v3, 0x1f

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->log(Ljava/lang/String;)V

    .line 315
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 333
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    .line 336
    :goto_0
    return-void

    .line 317
    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getImsRegistrationState(Landroid/os/Message;)V

    .line 318
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 321
    :sswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getImsRegistrationState(Landroid/os/Message;)V

    goto :goto_0

    .line 324
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 326
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 327
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->updateImsInfo(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 329
    :cond_0
    const-string v1, "IMS"

    const-string v2, "IMS State query failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 315
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0x1e -> :sswitch_1
        0x1f -> :sswitch_2
    .end sparse-switch
.end method

.method public handleStatusReport(Landroid/os/AsyncResult;)V
    .locals 1
    .parameter "ar"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleStatusReport(Landroid/os/AsyncResult;)V

    .line 145
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 389
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ImsSMSDispatcher]> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-void
.end method

.method public sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 164
    invoke-static {}, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 171
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public sendMultipartData(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 8
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter
    .parameter
    .parameter
    .parameter "bundle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 179
    .local p4, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartData(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    .line 186
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartData(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 1
    .parameter "tracker"

    .prologue
    .line 256
    invoke-static {}, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    .line 210
    return-void
.end method

.method public sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 7
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "bundle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 220
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMultipartText(), mImsRadioTech = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->mImsRadioTech:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->log(Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    .line 229
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZ)V
    .locals 2
    .parameter "tracker"
    .parameter "bFirstOfAll"
    .parameter "bLastOfAll"

    .prologue
    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendSms(), mImsRadioTech = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->mImsRadioTech:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->log(Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZ)V

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZ)V

    goto :goto_0
.end method

.method public sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 7
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "bundle"

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendText(), mImsRadioTech = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->mImsRadioTech:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->log(Ljava/lang/String;)V

    .line 196
    invoke-static {}, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    .line 203
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected setCellBroadcastConfig([ILandroid/os/Message;)V
    .locals 2
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 292
    const-string v0, "IMS"

    const-string v1, "Error! The functionality cell broadcast sms is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    .line 294
    return-void
.end method
