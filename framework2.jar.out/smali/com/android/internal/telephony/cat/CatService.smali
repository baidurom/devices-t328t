.class public Lcom/android/internal/telephony/cat/CatService;
.super Landroid/os/Handler;
.source "CatService.java"

# interfaces
.implements Lcom/android/internal/telephony/cat/AppInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/CatService$1;,
        Lcom/android/internal/telephony/cat/CatService$HtcBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final DEV_ID_DISPLAY:I = 0x2

.field private static final DEV_ID_EARPIECE:I = 0x3

.field private static final DEV_ID_KEYPAD:I = 0x1

.field private static final DEV_ID_NETWORK:I = 0x83

.field private static final DEV_ID_TERMINAL:I = 0x82

.field private static final DEV_ID_UICC:I = 0x81

.field static final MSG_HTC_ID_TERMINAL_RESPONSE:I = 0x2725

.field static final MSG_ID_CALL_SETUP:I = 0x4

.field static final MSG_ID_EVENT_NOTIFY:I = 0x3

.field private static final MSG_ID_ICC_RECORDS_LOADED:I = 0x14

.field static final MSG_ID_PROACTIVE_COMMAND:I = 0x2

.field static final MSG_ID_REFRESH:I = 0x5

.field static final MSG_ID_RESPONSE:I = 0x6

.field static final MSG_ID_RIL_MSG_DECODED:I = 0xa

.field static final MSG_ID_SESSION_END:I = 0x1

.field static final MSG_ID_SIM_READY:I = 0x7

.field private static mCdmaSimRecords:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;

.field private static mIccRecords:Lcom/android/internal/telephony/IccRecords;

.field private static sInstance:Lcom/android/internal/telephony/cat/CatService;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mEventListEnabled:[Z

.field private mHtcReceiver:Lcom/android/internal/telephony/cat/CatService$HtcBroadcastReceiver;

.field private mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

.field private mScreenBusy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 156
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)V
    .locals 5
    .parameter "ci"
    .parameter "ir"
    .parameter "context"
    .parameter "fh"
    .parameter "ic"

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 252
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 160
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 161
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 163
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 203
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mHtcReceiver:Lcom/android/internal/telephony/cat/CatService$HtcBroadcastReceiver;

    .line 227
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/CatService;->mScreenBusy:Z

    .line 228
    const/16 v0, 0xb

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mEventListEnabled:[Z

    .line 253
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 255
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Service: Input parameters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 259
    iput-object p3, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    .line 264
    invoke-static {p0, p4}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/IccFileHandler;)Lcom/android/internal/telephony/cat/RilMessageDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 267
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 270
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 275
    sput-object p2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 279
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForRUIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForNVReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 281
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/16 v1, 0x14

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 284
    const-string v0, "ro.stk.fakecmd"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v3, v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/cat/CatService;->registerHtcReceiver(ZLandroid/content/Context;)V

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->reportStkServiceIsRunning(Landroid/os/Message;)V

    .line 288
    const-string v0, "CatService: is running"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    return-void

    .line 228
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private constructor <init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;Landroid/content/Context;Lcom/android/internal/telephony/cdma/HtcCdmaSIMFileHandler;Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;)V
    .locals 4
    .parameter "ci"
    .parameter "sr"
    .parameter "context"
    .parameter "fh"
    .parameter "sc"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 295
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 160
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 161
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 163
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 203
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mHtcReceiver:Lcom/android/internal/telephony/cat/CatService$HtcBroadcastReceiver;

    .line 227
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/CatService;->mScreenBusy:Z

    .line 228
    const/16 v0, 0xb

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mEventListEnabled:[Z

    .line 296
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 298
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Service: Input parameters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 302
    iput-object p3, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    .line 307
    invoke-static {p0, p4}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/IccFileHandler;)Lcom/android/internal/telephony/cat/RilMessageDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 311
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 312
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 313
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 314
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 317
    sput-object p2, Lcom/android/internal/telephony/cat/CatService;->mCdmaSimRecords:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;

    .line 320
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mCdmaSimRecords:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;

    const/16 v1, 0x14

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 323
    const-string v0, "ro.stk.fakecmd"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v3, v0, :cond_2

    .line 324
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/cat/CatService;->registerHtcReceiver(ZLandroid/content/Context;)V

    .line 326
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->reportStkServiceIsRunning(Landroid/os/Message;)V

    .line 327
    const-string v0, "CatService: is running"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    return-void

    .line 228
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/cat/RilMessageDecoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    return-object v0
.end method

.method private encodeOptionalTags(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/Input;Ljava/io/ByteArrayOutputStream;)V
    .locals 3
    .parameter "cmdDet"
    .parameter "resultCode"
    .parameter "cmdInput"
    .parameter "buf"

    .prologue
    .line 611
    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    .line 612
    .local v0, cmdType:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    if-eqz v0, :cond_1

    .line 613
    sget-object v1, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encodeOptionalTags() Unsupported Cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 618
    :sswitch_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v2

    if-ne v1, v2, :cond_0

    if-eqz p3, :cond_0

    iget-object v1, p3, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    if-eqz v1, :cond_0

    .line 620
    invoke-direct {p0, p4, p3}, Lcom/android/internal/telephony/cat/CatService;->getInKeyResponse(Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/cat/Input;)V

    goto :goto_0

    .line 624
    :sswitch_1
    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 626
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/cat/CatService;->getPliResponse(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_0

    .line 634
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encodeOptionalTags() bad Cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 613
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method private eventDownload(III[BZ)V
    .locals 11
    .parameter "event"
    .parameter "sourceId"
    .parameter "destinationId"
    .parameter "additionalInfo"
    .parameter "oneShot"

    .prologue
    .line 706
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 709
    .local v2, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0xd6

    .line 710
    .local v8, tag:I
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 713
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 716
    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v8, v9, 0x80

    .line 717
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 718
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 719
    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 722
    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v8, v9, 0x80

    .line 723
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 724
    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 725
    invoke-virtual {v2, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 726
    invoke-virtual {v2, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 729
    if-eqz p4, :cond_0

    .line 730
    move-object v0, p4

    .local v0, arr$:[B
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-byte v1, v0, v4

    .line 731
    .local v1, b:B
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 730
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 735
    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v4           #i$:I
    .end local v6           #len$:I
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 738
    .local v7, rawData:[B
    array-length v9, v7

    add-int/lit8 v5, v9, -0x2

    .line 739
    .local v5, len:I
    const/4 v9, 0x1

    int-to-byte v10, v5

    aput-byte v10, v7, v9

    .line 741
    invoke-static {v7}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 743
    .local v3, hexString:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x0

    invoke-interface {v9, v3, v10}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 744
    return-void
.end method

.method public static getCdmaInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;Landroid/content/Context;Lcom/android/internal/telephony/cdma/HtcCdmaSIMFileHandler;Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;)Lcom/android/internal/telephony/cat/CatService;
    .locals 6
    .parameter "ci"
    .parameter "sr"
    .parameter "context"
    .parameter "fh"
    .parameter "sc"

    .prologue
    const/4 v0, 0x0

    .line 789
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    if-nez v1, :cond_2

    .line 790
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 806
    :cond_0
    :goto_0
    return-object v0

    .line 794
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cat/CatService;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;-><init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;Landroid/content/Context;Lcom/android/internal/telephony/cdma/HtcCdmaSIMFileHandler;Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;)V

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    .line 795
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    const-string v1, "NEW sInstance"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 806
    :goto_1
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    goto :goto_0

    .line 796
    :cond_2
    if-eqz p1, :cond_3

    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mCdmaSimRecords:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;

    if-eq v1, p1, :cond_3

    .line 797
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    const-string v2, "Reinitialize the Service with SIMRecords"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 798
    sput-object p1, Lcom/android/internal/telephony/cat/CatService;->mCdmaSimRecords:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;

    .line 801
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mCdmaSimRecords:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 802
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    const-string v1, "sr changed reinitialize and return current sInstance"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 804
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    const-string v1, "Return current sInstance"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getInKeyResponse(Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/cat/Input;)V
    .locals 2
    .parameter "buf"
    .parameter "cmdInput"

    .prologue
    .line 639
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    .line 641
    .local v0, tag:I
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 642
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 643
    iget-object v1, p2, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/Duration;->timeUnit:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    sget-object v1, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->value()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 644
    iget-object v1, p2, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    iget v1, v1, Lcom/android/internal/telephony/cat/Duration;->timeInterval:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 645
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/cat/AppInterface;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 817
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 818
    invoke-static {v2, v2, v2, v2, v2}, Lcom/android/internal/telephony/cat/CatService;->getCdmaInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;Landroid/content/Context;Lcom/android/internal/telephony/cdma/HtcCdmaSIMFileHandler;Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    .line 821
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v2, v2, v2, v2, v2}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance(I)Lcom/android/internal/telephony/cat/AppInterface;
    .locals 2
    .parameter "phone_type"

    .prologue
    const/4 v1, 0x0

    .line 825
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 826
    invoke-static {v1, v1, v1, v1, v1}, Lcom/android/internal/telephony/cat/CatService;->getCdmaInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;Landroid/content/Context;Lcom/android/internal/telephony/cdma/HtcCdmaSIMFileHandler;Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    .line 828
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1, v1, v1, v1, v1}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)Lcom/android/internal/telephony/cat/CatService;
    .locals 7
    .parameter "ci"
    .parameter "ir"
    .parameter "context"
    .parameter "fh"
    .parameter "ic"

    .prologue
    const/4 v0, 0x0

    .line 758
    sget-object v6, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v6

    .line 759
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    if-nez v1, :cond_2

    .line 760
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 762
    :cond_0
    monitor-exit v6

    .line 782
    :goto_0
    return-object v0

    .line 770
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cat/CatService;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;-><init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)V

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    .line 771
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    const-string v1, "NEW sInstance"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 782
    :goto_1
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    monitor-exit v6

    goto :goto_0

    .line 783
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 772
    :cond_2
    if-eqz p1, :cond_3

    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eq v0, p1, :cond_3

    .line 773
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    const-string v1, "Reinitialize the Service with SIMRecords"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 774
    sput-object p1, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 777
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 778
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    const-string v1, "sr changed reinitialize and return current sInstance"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 780
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    const-string v1, "Return current sInstance"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private getPliResponse(Ljava/io/ByteArrayOutputStream;)V
    .locals 5
    .parameter "buf"

    .prologue
    .line 650
    const-string v2, "persist.sys.language"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 652
    .local v0, lang:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 654
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    .line 655
    .local v1, tag:I
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 656
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/internal/telephony/cat/ResponseData;->writeLength(Ljava/io/ByteArrayOutputStream;I)V

    .line 657
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 659
    .end local v1           #tag:I
    :cond_0
    return-void
.end method

.method private handleCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 10
    .parameter "resMsg"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 1011
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->validateResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1087
    :goto_0
    return-void

    .line 1014
    :cond_0
    const/4 v5, 0x0

    .line 1015
    .local v5, resp:Lcom/android/internal/telephony/cat/ResponseData;
    const/4 v6, 0x0

    .line 1016
    .local v6, helpRequired:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->getCmdDetails()Lcom/android/internal/telephony/cat/CommandDetails;

    move-result-object v1

    .line 1018
    .local v1, cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;
    sget-object v0, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1020
    :pswitch_0
    const/4 v6, 0x1

    .line 1032
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget v2, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    sparse-switch v0, :sswitch_data_0

    .line 1085
    :cond_1
    :goto_1
    :sswitch_0
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v3, v8

    move v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1086
    iput-object v9, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto :goto_0

    .line 1034
    :sswitch_1
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v0, v2, :cond_2

    move v6, v3

    .line 1035
    :goto_2
    iget v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersMenuSelection:I

    invoke-direct {p0, v0, v6}, Lcom/android/internal/telephony/cat/CatService;->sendMenuSelection(IZ)V

    goto :goto_0

    :cond_2
    move v6, v8

    .line 1034
    goto :goto_2

    .line 1038
    :sswitch_2
    new-instance v5, Lcom/android/internal/telephony/cat/SelectItemResponseData;

    .end local v5           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    iget v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersMenuSelection:I

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/SelectItemResponseData;-><init>(I)V

    .line 1039
    .restart local v5       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_1

    .line 1042
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v7

    .line 1043
    .local v7, input:Lcom/android/internal/telephony/cat/Input;
    iget-boolean v0, v7, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    if-nez v0, :cond_3

    .line 1046
    if-nez v6, :cond_1

    .line 1047
    new-instance v5, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;

    .end local v5           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersInput:Ljava/lang/String;

    iget-boolean v2, v7, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    iget-boolean v3, v7, Lcom/android/internal/telephony/cat/Input;->packed:Z

    invoke-direct {v5, v0, v2, v3}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;-><init>(Ljava/lang/String;ZZ)V

    .restart local v5       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_1

    .line 1051
    :cond_3
    new-instance v5, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;

    .end local v5           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    iget-boolean v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersYesNoSelection:Z

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;-><init>(Z)V

    .line 1054
    .restart local v5       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_1

    .line 1060
    .end local v7           #input:Lcom/android/internal/telephony/cat/Input;
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersConfirm:Z

    invoke-interface {v0, v2, v9}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZLandroid/os/Message;)V

    .line 1064
    iput-object v9, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto :goto_0

    .line 1069
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget v2, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 1071
    :pswitch_3
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 1080
    :pswitch_4
    const/4 v5, 0x0

    .line 1081
    goto :goto_1

    .line 1018
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 1032
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0xa -> :sswitch_4
        0xb -> :sswitch_0
        0xc -> :sswitch_2
        0xd -> :sswitch_3
        0xe -> :sswitch_3
        0x14 -> :sswitch_4
    .end sparse-switch

    .line 1069
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
    .end packed-switch
.end method

.method private handleProactiveCommand(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 1
    .parameter "cmdParams"

    .prologue
    .line 430
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCommand(Lcom/android/internal/telephony/cat/CommandParams;Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 431
    return-void
.end method

.method private handleProactiveCommand(Lcom/android/internal/telephony/cat/CommandParams;Lcom/android/internal/telephony/cat/ResultCode;)V
    .locals 10
    .parameter "cmdParams"
    .parameter "code"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 444
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    const/4 v8, 0x0

    .line 450
    .local v8, isRefresh:Z
    new-instance v6, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v6, p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;-><init>(Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 451
    .local v6, cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    sget-object v0, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 517
    const-string v0, "Unsupported command"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 526
    :goto_0
    return-void

    .line 453
    :pswitch_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatService;->removeMenu(Lcom/android/internal/telephony/cat/Menu;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 454
    iput-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 458
    :goto_1
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 521
    :cond_0
    :goto_2
    :pswitch_1
    if-nez v8, :cond_1

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 523
    :cond_1
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.stk.command"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 524
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "STK CMD"

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 525
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 456
    .end local v7           #intent:Landroid/content/Intent;
    :cond_2
    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto :goto_1

    .line 462
    :pswitch_2
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    if-nez v0, :cond_0

    .line 463
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_2

    .line 471
    :pswitch_3
    const/4 v8, 0x1

    .line 473
    goto :goto_2

    .line 475
    :pswitch_4
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_2

    .line 479
    :pswitch_5
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    packed-switch v0, :pswitch_data_1

    .line 489
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 481
    :pswitch_6
    new-instance v9, Lcom/android/internal/telephony/cat/DTTZResponseData;

    invoke-direct {v9, v5}, Lcom/android/internal/telephony/cat/DTTZResponseData;-><init>(Ljava/util/Calendar;)V

    .line 482
    .local v9, resp:Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 485
    .end local v9           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_7
    new-instance v5, Lcom/android/internal/telephony/cat/LanguageResponseData;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/LanguageResponseData;-><init>(Ljava/lang/String;)V

    .line 486
    .local v5, resp:Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 498
    .end local v5           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_8
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_2

    .line 451
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 479
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V
    .locals 7
    .parameter "rilMsg"

    .prologue
    const/4 v3, 0x0

    .line 371
    if-nez p1, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    const/4 v6, 0x0

    .line 377
    .local v6, cmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    iget v0, p1, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 414
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->handleSessionEnd()V

    goto :goto_0

    .line 379
    :pswitch_2
    iget-object v0, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v0, v1, :cond_0

    .line 380
    invoke-static {p1}, Lcom/android/internal/telephony/cat/CatService;->safeGetCmdParams(Lcom/android/internal/telephony/cat/RilMessage;)Lcom/android/internal/telephony/cat/CommandParams;

    move-result-object v6

    .line 381
    if-eqz v6, :cond_0

    .line 382
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCommand(Lcom/android/internal/telephony/cat/CommandParams;)V

    goto :goto_0

    .line 387
    :pswitch_3
    invoke-static {p1}, Lcom/android/internal/telephony/cat/CatService;->safeGetCmdParams(Lcom/android/internal/telephony/cat/RilMessage;)Lcom/android/internal/telephony/cat/CommandParams;

    move-result-object v6

    .line 388
    if-eqz v6, :cond_0

    .line 389
    iget-object v0, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v0, v1, :cond_2

    .line 390
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCommand(Lcom/android/internal/telephony/cat/CommandParams;)V

    goto :goto_0

    .line 393
    :cond_2
    iget-object v0, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v0, v1, :cond_3

    .line 394
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v6, v0}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCommand(Lcom/android/internal/telephony/cat/CommandParams;Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_0

    .line 402
    :cond_3
    iget-object v1, v6, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-object v2, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 408
    :pswitch_4
    invoke-static {p1}, Lcom/android/internal/telephony/cat/CatService;->safeGetCmdParams(Lcom/android/internal/telephony/cat/RilMessage;)Lcom/android/internal/telephony/cat/CommandParams;

    move-result-object v6

    .line 409
    if-eqz v6, :cond_0

    .line 410
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCommand(Lcom/android/internal/telephony/cat/CommandParams;)V

    goto :goto_0

    .line 377
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private handleSessionEnd()V
    .locals 2

    .prologue
    .line 533
    const-string v1, "SESSION END"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 536
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.stk.session_end"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 537
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 538
    return-void
.end method

.method private registerHtcReceiver(ZLandroid/content/Context;)V
    .locals 3
    .parameter "register"
    .parameter "context"

    .prologue
    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerHtcReceiver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    if-eqz p1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mHtcReceiver:Lcom/android/internal/telephony/cat/CatService$HtcBroadcastReceiver;

    if-nez v1, :cond_0

    .line 209
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.htc.stk.fakecmd"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.stk.fakenotify"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    new-instance v1, Lcom/android/internal/telephony/cat/CatService$HtcBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/CatService$HtcBroadcastReceiver;-><init>(Lcom/android/internal/telephony/cat/CatService;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mHtcReceiver:Lcom/android/internal/telephony/cat/CatService$HtcBroadcastReceiver;

    .line 212
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mHtcReceiver:Lcom/android/internal/telephony/cat/CatService$HtcBroadcastReceiver;

    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 220
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mHtcReceiver:Lcom/android/internal/telephony/cat/CatService$HtcBroadcastReceiver;

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mHtcReceiver:Lcom/android/internal/telephony/cat/CatService$HtcBroadcastReceiver;

    invoke-virtual {p2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 217
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mHtcReceiver:Lcom/android/internal/telephony/cat/CatService$HtcBroadcastReceiver;

    goto :goto_0
.end method

.method private removeMenu(Lcom/android/internal/telephony/cat/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 990
    :try_start_0
    iget-object v3, p1, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v3, p1, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-nez v3, :cond_0

    .line 997
    :goto_0
    return v1

    .line 993
    :catch_0
    move-exception v0

    .line 994
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "Unable to get Menu\'s items size"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_0
    move v1, v2

    .line 997
    goto :goto_0
.end method

.method private responseEventDownload(Lcom/android/internal/telephony/cat/EventResponseMessage;)V
    .locals 9
    .parameter "resMsg"

    .prologue
    const/4 v1, 0x2

    .line 1114
    const/4 v4, 0x0

    .line 1115
    .local v4, additionalInfo:[B
    const/4 v2, 0x0

    .line 1116
    .local v2, src:I
    const/4 v3, 0x0

    .line 1118
    .local v3, dest:I
    iget v0, p1, Lcom/android/internal/telephony/cat/EventResponseMessage;->eventType:I

    packed-switch v0, :pswitch_data_0

    .line 1150
    :pswitch_0
    const-string v0, "CatService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected event download: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p1, Lcom/android/internal/telephony/cat/EventResponseMessage;->eventType:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    :cond_0
    :goto_0
    return-void

    .line 1120
    :pswitch_1
    iget-object v7, p1, Lcom/android/internal/telephony/cat/EventResponseMessage;->language:Ljava/lang/String;

    .line 1121
    .local v7, language:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1122
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1123
    .local v6, buf:Ljava/io/ByteArrayOutputStream;
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1124
    invoke-static {v7}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v8

    .line 1125
    .local v8, languageData:[B
    invoke-virtual {v6, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1126
    const/4 v0, 0x0

    invoke-virtual {v6, v8, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1128
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 1130
    .end local v6           #buf:Ljava/io/ByteArrayOutputStream;
    .end local v8           #languageData:[B
    :cond_1
    if-eqz v4, :cond_0

    .line 1132
    const/16 v2, 0x82

    .line 1133
    const/16 v3, 0x81

    .line 1154
    .end local v7           #language:Ljava/lang/String;
    :goto_1
    iget v1, p1, Lcom/android/internal/telephony/cat/EventResponseMessage;->eventType:I

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->eventDownload(III[BZ)V

    goto :goto_0

    .line 1138
    :pswitch_2
    const/16 v2, 0x82

    .line 1139
    const/16 v3, 0x81

    .line 1141
    goto :goto_1

    .line 1144
    :pswitch_3
    const/4 v2, 0x2

    .line 1145
    const/16 v3, 0x81

    .line 1147
    goto :goto_1

    .line 1118
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static safeGetCmdParams(Lcom/android/internal/telephony/cat/RilMessage;)Lcom/android/internal/telephony/cat/CommandParams;
    .locals 5
    .parameter "rilMsg"

    .prologue
    .line 1098
    const/4 v0, 0x0

    .line 1099
    .local v0, commandParams:Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    .line 1100
    .local v1, data:Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/internal/telephony/cat/CommandParams;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 1101
    check-cast v0, Lcom/android/internal/telephony/cat/CommandParams;

    .line 1109
    :cond_0
    :goto_0
    return-object v0

    .line 1103
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-eq v2, v3, :cond_0

    .line 1104
    const-string v2, "CatService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "safeGetCmdParams. resultCode =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendMenuSelection(IZ)V
    .locals 8
    .parameter "menuId"
    .parameter "helpRequired"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 663
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 666
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0xd3

    .line 667
    .local v4, tag:I
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 670
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 673
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 674
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 675
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 676
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 677
    const/16 v5, 0x81

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 680
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 681
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 682
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 683
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 686
    if-eqz p2, :cond_0

    .line 687
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->HELP_REQUEST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    .line 688
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 689
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 692
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 695
    .local v3, rawData:[B
    array-length v5, v3

    add-int/lit8 v2, v5, -0x2

    .line 696
    .local v2, len:I
    int-to-byte v5, v2

    aput-byte v5, v3, v6

    .line 698
    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 700
    .local v1, hexString:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 701
    return-void
.end method

.method private sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    .locals 9
    .parameter "cmdDet"
    .parameter "resultCode"
    .parameter "includeAdditionalInfo"
    .parameter "additionalInfo"
    .parameter "resp"

    .prologue
    const/4 v3, 0x2

    .line 544
    if-nez p1, :cond_0

    .line 607
    :goto_0
    return-void

    .line 547
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 549
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 550
    .local v1, cmdInput:Lcom/android/internal/telephony/cat/Input;
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v7, :cond_1

    .line 551
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v1

    .line 555
    :cond_1
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v6

    .line 556
    .local v6, tag:I
    iget-boolean v7, p1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    if-eqz v7, :cond_2

    .line 557
    or-int/lit16 v6, v6, 0x80

    .line 559
    :cond_2
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 560
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 561
    iget v7, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 562
    iget v7, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 563
    iget v7, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 572
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v7

    or-int/lit16 v6, v7, 0x80

    .line 573
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 574
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 575
    const/16 v7, 0x82

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 576
    const/16 v7, 0x81

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 579
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v7

    or-int/lit16 v6, v7, 0x80

    .line 580
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 581
    if-eqz p3, :cond_4

    .line 582
    .local v3, length:I
    :goto_1
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 583
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 586
    if-eqz p3, :cond_3

    .line 587
    invoke-virtual {v0, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 591
    :cond_3
    if-eqz p5, :cond_5

    .line 592
    invoke-virtual {p5, v0}, Lcom/android/internal/telephony/cat/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    .line 597
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 598
    .local v4, rawData:[B
    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 600
    .local v2, hexString:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TERMINAL RESPONSE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    const/16 v7, 0x2725

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 605
    .local v5, response:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 581
    .end local v2           #hexString:Ljava/lang/String;
    .end local v3           #length:I
    .end local v4           #rawData:[B
    .end local v5           #response:Landroid/os/Message;
    :cond_4
    const/4 v3, 0x1

    goto :goto_1

    .line 594
    .restart local v3       #length:I
    :cond_5
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/internal/telephony/cat/CatService;->encodeOptionalTags(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/Input;Ljava/io/ByteArrayOutputStream;)V

    goto :goto_2
.end method

.method private validateResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)Z
    .locals 2
    .parameter "resMsg"

    .prologue
    .line 982
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CommandDetails;->compareTo(Lcom/android/internal/telephony/cat/CommandDetails;)Z

    move-result v0

    .line 985
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 334
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_0

    .line 335
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 336
    sput-object v1, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 339
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mCdmaSimRecords:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;

    if-eqz v0, :cond_1

    .line 341
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mCdmaSimRecords:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 342
    sput-object v1, Lcom/android/internal/telephony/cat/CatService;->mCdmaSimRecords:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_2

    .line 346
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatSessionEnd(Landroid/os/Handler;)V

    .line 347
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatProactiveCmd(Landroid/os/Handler;)V

    .line 348
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatEvent(Landroid/os/Handler;)V

    .line 349
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatCallSetUp(Landroid/os/Handler;)V

    .line 352
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/CatService;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 354
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    if-eqz v0, :cond_3

    .line 355
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->dispose()V

    .line 356
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 358
    :cond_3
    sput-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    .line 362
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mHtcReceiver:Lcom/android/internal/telephony/cat/CatService$HtcBroadcastReceiver;

    if-eqz v0, :cond_4

    .line 363
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cat/CatService;->registerHtcReceiver(ZLandroid/content/Context;)V

    .line 364
    :cond_4
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 367
    const-string v0, "Service finalized"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method public getScreenBusyState()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->mScreenBusy:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 834
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 895
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized CAT command: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 838
    :sswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ril message arrived, msg.what="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 839
    const/4 v2, 0x0

    .line 840
    .local v2, data:Ljava/lang/String;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 841
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 842
    .local v0, ar:Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 844
    :try_start_0
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v2           #data:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    .end local v0           #ar:Landroid/os/AsyncResult;
    .restart local v2       #data:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    new-instance v5, Lcom/android/internal/telephony/cat/RilMessage;

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-direct {v5, v6, v2}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    .line 897
    .end local v2           #data:Ljava/lang/String;
    :cond_1
    :goto_0
    :sswitch_1
    return-void

    .line 845
    .restart local v0       #ar:Landroid/os/AsyncResult;
    :catch_0
    move-exception v3

    .line 846
    .local v3, e:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 853
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #e:Ljava/lang/ClassCastException;
    :sswitch_2
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    new-instance v5, Lcom/android/internal/telephony/cat/RilMessage;

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-direct {v5, v6, v7}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    goto :goto_0

    .line 858
    :sswitch_3
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/cat/RilMessage;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cat/CatService;->handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V

    goto :goto_0

    .line 861
    :sswitch_4
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/cat/CatResponseMessage;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cat/CatService;->handleCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_0

    .line 864
    :sswitch_5
    const-string v4, "SIM ready. Reporting STK service running now..."

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 869
    :sswitch_6
    const-string v4, "MSG_HTC_ID_TERMINAL_RESPONSE"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 870
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 871
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 872
    .restart local v0       #ar:Landroid/os/AsyncResult;
    if-eqz v0, :cond_1

    .line 873
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    .line 874
    const-string v4, "response error, fake session end"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 875
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->handleSessionEnd()V

    goto :goto_0

    .line 884
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_7
    const-string v4, "IccRefresh arrived"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 885
    new-instance v1, Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/CommandDetails;-><init>()V

    .line 886
    .local v1, cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;
    iput-boolean v5, v1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    .line 887
    const/4 v4, 0x1

    iput v4, v1, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    .line 888
    sget-object v4, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->REFRESH:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 889
    iput v5, v1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    .line 891
    new-instance v4, Lcom/android/internal/telephony/cat/DisplayTextParams;

    invoke-direct {v4, v1, v7}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCommand(Lcom/android/internal/telephony/cat/CommandParams;)V

    goto :goto_0

    .line 834
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_2
        0x5 -> :sswitch_7
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0xa -> :sswitch_3
        0x14 -> :sswitch_1
        0x2725 -> :sswitch_6
    .end sparse-switch
.end method

.method public notifyUserActivity(I)V
    .locals 5
    .parameter "keyCode"

    .prologue
    .line 955
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mEventListEnabled:[Z

    const/4 v3, 0x4

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    .line 956
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyUserActivity keyCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 957
    new-instance v1, Lcom/android/internal/telephony/cat/EventResponseMessage;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cat/EventResponseMessage;-><init>(I)V

    .line 958
    .local v1, resMsg:Lcom/android/internal/telephony/cat/EventResponseMessage;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/CatService;->sendEventDownload(Lcom/android/internal/telephony/cat/EventResponseMessage;)V

    .line 960
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mEventListEnabled:[Z

    const/4 v3, 0x4

    const/4 v4, 0x0

    aput-boolean v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 965
    .end local v1           #resMsg:Lcom/android/internal/telephony/cat/EventResponseMessage;
    :cond_0
    :goto_0
    return-void

    .line 962
    :catch_0
    move-exception v0

    .line 963
    .local v0, ex:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyUserActivity exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 2
    .parameter "resMsg"

    .prologue
    .line 900
    monitor-enter p0

    if-nez p1, :cond_0

    .line 906
    :goto_0
    monitor-exit p0

    return-void

    .line 904
    :cond_0
    const/4 v1, 0x6

    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 905
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 900
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onHandleEventList(IZ)V
    .locals 3
    .parameter "event"
    .parameter "enable"

    .prologue
    .line 974
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHandleEventList event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 975
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mEventListEnabled:[Z

    aput-boolean p2, v1, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 979
    :goto_0
    return-void

    .line 976
    :catch_0
    move-exception v0

    .line 977
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHandleEventList exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized sendEventDownload(Lcom/android/internal/telephony/cat/EventResponseMessage;)V
    .locals 1
    .parameter "resMsg"

    .prologue
    .line 912
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/android/internal/telephony/cat/EventResponseMessage;->eventType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 924
    :goto_0
    :pswitch_0
    monitor-exit p0

    return-void

    .line 917
    :pswitch_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->responseEventDownload(Lcom/android/internal/telephony/cat/EventResponseMessage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 912
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateIdleScreenState(Z)V
    .locals 5
    .parameter "busy"

    .prologue
    .line 933
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatService;->mScreenBusy:Z

    .line 934
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mEventListEnabled:[Z

    const/4 v3, 0x5

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    .line 935
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIdleScreenState: event is enabling! mScreenBusy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/cat/CatService;->mScreenBusy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 936
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/CatService;->mScreenBusy:Z

    if-nez v2, :cond_0

    .line 937
    new-instance v1, Lcom/android/internal/telephony/cat/EventResponseMessage;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cat/EventResponseMessage;-><init>(I)V

    .line 938
    .local v1, resMsg:Lcom/android/internal/telephony/cat/EventResponseMessage;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/CatService;->sendEventDownload(Lcom/android/internal/telephony/cat/EventResponseMessage;)V

    .line 940
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mEventListEnabled:[Z

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput-boolean v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 946
    .end local v1           #resMsg:Lcom/android/internal/telephony/cat/EventResponseMessage;
    :cond_0
    :goto_0
    return-void

    .line 943
    :catch_0
    move-exception v0

    .line 944
    .local v0, ex:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIdleScreenState exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
