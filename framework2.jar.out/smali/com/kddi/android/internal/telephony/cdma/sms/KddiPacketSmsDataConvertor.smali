.class public Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;
.super Ljava/lang/Object;
.source "KddiPacketSmsDataConvertor.java"


# static fields
.field private static final KDDI_BLANK:Ljava/lang/String; = " "

.field public static final KDDI_CHANGE_CODE_MODE_CMAIL:I = 0x0

.field public static final KDDI_CHANGE_CODE_MODE_PICTCHAR:I = 0x1

.field private static final KDDI_CMD_SMSTORE3:Ljava/lang/String; = "smstore3"

.field private static final KDDI_CMD_SMTRAN:Ljava/lang/String; = "smtran"

.field private static final KDDI_CR:Ljava/lang/String; = null

.field private static final KDDI_CRLF:Ljava/lang/String; = null

.field private static final KDDI_CTR_DISP_NUMBER:Ljava/lang/String; = ":(186)"

.field private static final KDDI_EQUAL:C = '='

.field private static final KDDI_LF:Ljava/lang/String; = null

.field private static KDDI_OUTPUT_DEBUG_LOG:Z = false

.field private static KDDI_OUTPUT_LOG:Z = false

.field public static final KDDI_PACKETSMS_CHAR_CODE:Ljava/lang/String; = "kddi-emoji"

.field private static final KDDI_PACKETSMS_DIGIT_MAX:I = 0x13

.field private static final KDDI_PACKETSMS_DIGIT_MIN:I = 0x1

.field private static final KDDI_PACKETSMS_ENCODING_UNICODE:Ljava/lang/String; = "UTF-8"

.field private static final KDDI_PACKETSMS_PAYLOAD_MAX:I = 0x64

.field private static final KDDI_PACKETSMS_PAYLOAD_MIN:I = 0x1

.field private static final KDDI_RESULT_COMMAND_ST:Ljava/lang/String; = "smresp "

.field private static final KDDI_RESULT_COMMAND_TR:Ljava/lang/String; = "tresp "

.field private static final KDDI_TAG:Ljava/lang/String; = "PacketSmsDataConvertor"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    const-string v1, "\r\n"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->KDDI_CRLF:Ljava/lang/String;

    .line 41
    const-string v1, "\r"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->KDDI_CR:Ljava/lang/String;

    .line 43
    const-string v1, "\n"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->KDDI_LF:Ljava/lang/String;

    .line 73
    sput-boolean v3, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->KDDI_OUTPUT_LOG:Z

    .line 76
    sput-boolean v3, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->KDDI_OUTPUT_DEBUG_LOG:Z

    .line 86
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 87
    .local v0, type:Ljava/lang/String;
    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    sput-boolean v2, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->KDDI_OUTPUT_LOG:Z

    .line 89
    sput-boolean v2, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->KDDI_OUTPUT_DEBUG_LOG:Z

    .line 91
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method public static kddiCalculateMsgSize(Ljava/lang/String;)I
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 706
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 728
    :cond_0
    :goto_0
    return v1

    .line 708
    :cond_1
    const/4 v2, 0x0

    .line 710
    .local v2, sjisMsg:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/String;

    .end local v2           #sjisMsg:Ljava/lang/String;
    const-string v3, "kddi-emoji"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "kddi-emoji"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 718
    .restart local v2       #sjisMsg:Ljava/lang/String;
    const/4 v1, 0x0

    .line 720
    .local v1, msgLength:I
    :try_start_1
    const-string v3, "kddi-emoji"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v1, v3

    .line 721
    sget-boolean v3, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v3, :cond_0

    .line 722
    const-string v3, "PacketSmsDataConvertor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sjisMsg.getBytes(SJIS).length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 724
    :catch_0
    move-exception v0

    .line 725
    .local v0, e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 726
    const-string v3, "PacketSmsDataConvertor"

    const-string v4, "error: sjisMsg is not SJIS"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 711
    .end local v0           #e1:Ljava/io/UnsupportedEncodingException;
    .end local v1           #msgLength:I
    .end local v2           #sjisMsg:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 712
    .restart local v0       #e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 713
    const-string v3, "PacketSmsDataConvertor"

    const-string v4, "error: msg is not SJIS"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static kddiChangeCmailPictCharCode([BI)[B
    .locals 16
    .parameter "message"
    .parameter "changeMode"

    .prologue
    .line 528
    const/4 v13, 0x4

    new-array v3, v13, [[B

    const/4 v13, 0x0

    const/4 v14, 0x2

    new-array v14, v14, [B

    fill-array-data v14, :array_0

    aput-object v14, v3, v13

    const/4 v13, 0x1

    const/4 v14, 0x2

    new-array v14, v14, [B

    fill-array-data v14, :array_1

    aput-object v14, v3, v13

    const/4 v13, 0x2

    const/4 v14, 0x2

    new-array v14, v14, [B

    fill-array-data v14, :array_2

    aput-object v14, v3, v13

    const/4 v13, 0x3

    const/4 v14, 0x2

    new-array v14, v14, [B

    fill-array-data v14, :array_3

    aput-object v14, v3, v13

    .line 530
    .local v3, PictChar:[[B
    const/4 v13, 0x4

    new-array v2, v13, [[B

    const/4 v13, 0x0

    const/4 v14, 0x2

    new-array v14, v14, [B

    fill-array-data v14, :array_4

    aput-object v14, v2, v13

    const/4 v13, 0x1

    const/4 v14, 0x2

    new-array v14, v14, [B

    fill-array-data v14, :array_5

    aput-object v14, v2, v13

    const/4 v13, 0x2

    const/4 v14, 0x2

    new-array v14, v14, [B

    fill-array-data v14, :array_6

    aput-object v14, v2, v13

    const/4 v13, 0x3

    const/4 v14, 0x2

    new-array v14, v14, [B

    fill-array-data v14, :array_7

    aput-object v14, v2, v13

    .line 532
    .local v2, MailChar:[[B
    const/4 v13, 0x4

    const/4 v14, 0x2

    filled-new-array {v13, v14}, [I

    move-result-object v13

    sget-object v14, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[B

    .line 533
    .local v4, SrcCode:[[B
    const/4 v13, 0x4

    const/4 v14, 0x2

    filled-new-array {v13, v14}, [I

    move-result-object v13

    sget-object v14, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    .line 535
    .local v1, DstCode:[[B
    const/4 v6, 0x0

    .line 536
    .local v6, c:I
    const/4 v9, 0x0

    .line 538
    .local v9, i:I
    sget-boolean v13, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->KDDI_OUTPUT_LOG:Z

    if-eqz v13, :cond_0

    .line 539
    const-string v13, "PacketSmsDataConvertor"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "changePictCharCode Start[change mode ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_0
    if-nez p0, :cond_3

    .line 544
    sget-boolean v13, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->KDDI_OUTPUT_LOG:Z

    if-eqz v13, :cond_1

    .line 545
    const-string v13, "PacketSmsDataConvertor"

    const-string v14, "illegal param [message is null]"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_1
    const/4 v7, 0x0

    .line 677
    :cond_2
    :goto_0
    return-object v7

    .line 551
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 571
    sget-boolean v13, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->KDDI_OUTPUT_LOG:Z

    if-eqz v13, :cond_4

    .line 572
    const-string v13, "PacketSmsDataConvertor"

    const-string v14, "illegal param [changeMode is illegal]"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    .line 554
    :pswitch_0
    const/4 v9, 0x0

    :goto_1
    const/4 v13, 0x4

    if-ge v9, v13, :cond_7

    .line 555
    const/4 v6, 0x0

    :goto_2
    const/4 v13, 0x2

    if-ge v6, v13, :cond_5

    .line 556
    aget-object v13, v4, v9

    aget-object v14, v3, v9

    aget-byte v14, v14, v6

    aput-byte v14, v13, v6

    .line 557
    aget-object v13, v1, v9

    aget-object v14, v2, v9

    aget-byte v14, v14, v6

    aput-byte v14, v13, v6

    .line 555
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 554
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 563
    :pswitch_1
    const/4 v9, 0x0

    :goto_3
    const/4 v13, 0x4

    if-ge v9, v13, :cond_7

    .line 564
    const/4 v6, 0x0

    :goto_4
    const/4 v13, 0x2

    if-ge v6, v13, :cond_6

    .line 565
    aget-object v13, v4, v9

    aget-object v14, v2, v9

    aget-byte v14, v14, v6

    aput-byte v14, v13, v6

    .line 566
    aget-object v13, v1, v9

    aget-object v14, v3, v9

    aget-byte v14, v14, v6

    aput-byte v14, v13, v6

    .line 564
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 563
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 578
    :cond_7
    const-string v13, "SMS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "check pic message> 0x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const/4 v13, 0x1

    new-array v12, v13, [[B

    const/4 v13, 0x0

    const/4 v14, 0x2

    new-array v14, v14, [B

    fill-array-data v14, :array_8

    aput-object v14, v12, v13

    .line 582
    .local v12, pictCodes:[[B
    const/4 v8, 0x0

    .line 583
    .local v8, count:I
    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v13, v0, :cond_8

    .line 584
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->kddiGetCmailPictCharCount([B[[B)I

    move-result v8

    .line 587
    :cond_8
    move-object/from16 v0, p0

    array-length v13, v0

    add-int/2addr v13, v8

    new-array v7, v13, [B

    .line 590
    .local v7, changedCode:[B
    const/4 v11, 0x0

    .line 591
    .local v11, offset:I
    const/4 v9, 0x0

    :goto_5
    move-object/from16 v0, p0

    array-length v13, v0

    if-ge v9, v13, :cond_14

    .line 593
    const/4 v10, 0x0

    .line 594
    .local v10, nChkFlg:Z
    if-nez p1, :cond_b

    .line 596
    const/16 v13, -0x9

    aget-byte v14, p0, v9

    if-ne v13, v14, :cond_a

    const/16 v13, -0x4f

    add-int/lit8 v14, v9, 0x1

    aget-byte v14, p0, v14

    if-le v13, v14, :cond_9

    const/16 v13, -0x4c

    add-int/lit8 v14, v9, 0x1

    aget-byte v14, p0, v14

    if-lt v13, v14, :cond_a

    .line 598
    :cond_9
    const/4 v10, 0x1

    .line 611
    :cond_a
    :goto_6
    const/4 v13, 0x1

    if-ne v13, v10, :cond_11

    .line 613
    aget-byte v13, p0, v9

    const/4 v14, 0x0

    aget-object v14, v4, v14

    const/4 v15, 0x0

    aget-byte v14, v14, v15

    if-ne v13, v14, :cond_d

    add-int/lit8 v13, v9, 0x1

    aget-byte v13, p0, v13

    const/4 v14, 0x0

    aget-object v14, v4, v14

    const/4 v15, 0x1

    aget-byte v14, v14, v15

    if-ne v13, v14, :cond_d

    .line 614
    const/4 v13, 0x0

    aget-object v13, v1, v13

    const/4 v14, 0x0

    aget-byte v13, v13, v14

    aput-byte v13, v7, v11

    .line 615
    add-int/lit8 v11, v11, 0x1

    const/4 v13, 0x0

    aget-object v13, v1, v13

    const/4 v14, 0x1

    aget-byte v13, v13, v14

    aput-byte v13, v7, v11

    .line 616
    add-int/lit8 v11, v11, 0x1

    .line 617
    add-int/lit8 v9, v9, 0x1

    .line 591
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 603
    :cond_b
    const/16 v13, -0x7a

    aget-byte v14, p0, v9

    if-ne v13, v14, :cond_a

    const/16 v13, -0x4e

    add-int/lit8 v14, v9, 0x1

    aget-byte v14, p0, v14

    if-le v13, v14, :cond_c

    const/16 v13, -0x4b

    add-int/lit8 v14, v9, 0x1

    aget-byte v14, p0, v14

    if-lt v13, v14, :cond_a

    .line 604
    :cond_c
    const/4 v10, 0x1

    goto :goto_6

    .line 622
    :cond_d
    aget-byte v13, p0, v9

    const/4 v14, 0x1

    aget-object v14, v4, v14

    const/4 v15, 0x0

    aget-byte v14, v14, v15

    if-ne v13, v14, :cond_e

    add-int/lit8 v13, v9, 0x1

    aget-byte v13, p0, v13

    const/4 v14, 0x1

    aget-object v14, v4, v14

    const/4 v15, 0x1

    aget-byte v14, v14, v15

    if-ne v13, v14, :cond_e

    .line 623
    const/4 v13, 0x1

    aget-object v13, v1, v13

    const/4 v14, 0x0

    aget-byte v13, v13, v14

    aput-byte v13, v7, v11

    .line 624
    add-int/lit8 v11, v11, 0x1

    const/4 v13, 0x1

    aget-object v13, v1, v13

    const/4 v14, 0x1

    aget-byte v13, v13, v14

    aput-byte v13, v7, v11

    .line 625
    add-int/lit8 v11, v11, 0x1

    .line 626
    add-int/lit8 v9, v9, 0x1

    .line 627
    goto :goto_7

    .line 631
    :cond_e
    aget-byte v13, p0, v9

    const/4 v14, 0x2

    aget-object v14, v4, v14

    const/4 v15, 0x0

    aget-byte v14, v14, v15

    if-ne v13, v14, :cond_10

    add-int/lit8 v13, v9, 0x1

    aget-byte v13, p0, v13

    const/4 v14, 0x2

    aget-object v14, v4, v14

    const/4 v15, 0x1

    aget-byte v14, v14, v15

    if-ne v13, v14, :cond_10

    .line 632
    if-nez p1, :cond_f

    .line 633
    const/4 v13, 0x2

    aget-object v13, v1, v13

    const/4 v14, 0x0

    aget-byte v13, v13, v14

    aput-byte v13, v7, v11

    .line 634
    add-int/lit8 v11, v11, 0x1

    const/4 v13, 0x2

    aget-object v13, v1, v13

    const/4 v14, 0x1

    aget-byte v13, v13, v14

    aput-byte v13, v7, v11

    .line 642
    :goto_8
    add-int/lit8 v11, v11, 0x1

    .line 643
    add-int/lit8 v9, v9, 0x1

    .line 644
    goto :goto_7

    .line 637
    :cond_f
    const/16 v13, 0x28

    aput-byte v13, v7, v11

    .line 638
    add-int/lit8 v11, v11, 0x1

    const/16 v13, 0x74

    aput-byte v13, v7, v11

    .line 639
    add-int/lit8 v11, v11, 0x1

    const/16 v13, 0x29

    aput-byte v13, v7, v11

    goto :goto_8

    .line 648
    :cond_10
    aget-byte v13, p0, v9

    const/4 v14, 0x3

    aget-object v14, v4, v14

    const/4 v15, 0x0

    aget-byte v14, v14, v15

    if-ne v13, v14, :cond_11

    add-int/lit8 v13, v9, 0x1

    aget-byte v13, p0, v13

    const/4 v14, 0x3

    aget-object v14, v4, v14

    const/4 v15, 0x1

    aget-byte v14, v14, v15

    if-ne v13, v14, :cond_11

    .line 649
    const/4 v13, 0x3

    aget-object v13, v1, v13

    const/4 v14, 0x0

    aget-byte v13, v13, v14

    aput-byte v13, v7, v11

    .line 650
    add-int/lit8 v11, v11, 0x1

    const/4 v13, 0x3

    aget-object v13, v1, v13

    const/4 v14, 0x1

    aget-byte v13, v13, v14

    aput-byte v13, v7, v11

    .line 651
    add-int/lit8 v11, v11, 0x1

    .line 652
    add-int/lit8 v9, v9, 0x1

    .line 653
    goto/16 :goto_7

    .line 658
    :cond_11
    aget-byte v13, p0, v9

    aput-byte v13, v7, v11

    .line 661
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->kddiIsSJIS([BI)Z

    move-result v5

    .line 662
    .local v5, bResult:Z
    const/4 v13, 0x1

    if-ne v13, v5, :cond_12

    .line 663
    add-int/lit8 v9, v9, 0x1

    .line 665
    add-int/lit8 v11, v11, 0x1

    aget-byte v13, p0, v9

    aput-byte v13, v7, v11

    .line 667
    :cond_12
    add-int/lit8 v13, v9, 0x1

    move-object/from16 v0, p0

    array-length v14, v0

    add-int/lit8 v14, v14, -0x1

    if-ne v13, v14, :cond_13

    .line 668
    add-int/lit8 v9, v9, 0x1

    .line 669
    add-int/lit8 v11, v11, 0x1

    aget-byte v13, p0, v9

    aput-byte v13, v7, v11

    .line 671
    :cond_13
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_7

    .line 674
    .end local v5           #bResult:Z
    .end local v10           #nChkFlg:Z
    :cond_14
    sget-boolean v13, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->KDDI_OUTPUT_LOG:Z

    if-eqz v13, :cond_2

    .line 675
    const-string v13, "PacketSmsDataConvertor"

    const-string v14, "changePictCharCode end"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 528
    :array_0
    .array-data 0x1
        0xf7t
        0xb2t
    .end array-data

    nop

    :array_1
    .array-data 0x1
        0xf7t
        0xb4t
    .end array-data

    nop

    :array_2
    .array-data 0x1
        0xf7t
        0xb3t
    .end array-data

    nop

    :array_3
    .array-data 0x1
        0xf7t
        0xb1t
    .end array-data

    .line 530
    nop

    :array_4
    .array-data 0x1
        0x86t
        0xb2t
    .end array-data

    nop

    :array_5
    .array-data 0x1
        0x86t
        0xb3t
    .end array-data

    nop

    :array_6
    .array-data 0x1
        0x86t
        0xb4t
    .end array-data

    nop

    :array_7
    .array-data 0x1
        0x86t
        0xb5t
    .end array-data

    .line 551
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 580
    :array_8
    .array-data 0x1
        0x86t
        0xb4t
    .end array-data
.end method

.method public static kddiCreateSendMessage(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 15
    .parameter "dest"
    .parameter "msg"
    .parameter "sendMode"

    .prologue
    .line 109
    if-eqz p0, :cond_0

    if-nez p1, :cond_3

    .line 110
    :cond_0
    sget-boolean v12, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v12, :cond_1

    .line 111
    const-string v12, "PacketSmsDataConvertor"

    const-string v13, "error: destAddr or msg is null"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_1
    const/4 v10, 0x0

    .line 240
    :cond_2
    :goto_0
    return-object v10

    .line 117
    :cond_3
    const/4 v2, 0x0

    .line 119
    .local v2, destAddr:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/String;

    .end local v2           #destAddr:Ljava/lang/String;
    const-string v12, "kddi-emoji"

    invoke-virtual {p0, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    const-string v13, "kddi-emoji"

    invoke-direct {v2, v12, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .restart local v2       #destAddr:Ljava/lang/String;
    const/4 v3, 0x0

    .line 130
    .local v3, digitOfDest:I
    :try_start_1
    const-string v12, "kddi-emoji"

    invoke-virtual {v2, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    array-length v3, v12
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 138
    const/4 v12, 0x1

    if-lt v3, v12, :cond_4

    const/16 v12, 0x13

    if-le v3, v12, :cond_8

    .line 139
    :cond_4
    sget-boolean v12, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v12, :cond_5

    .line 140
    const-string v12, "PacketSmsDataConvertor"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "error: digitOfDest = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_5
    const/4 v10, 0x0

    goto :goto_0

    .line 120
    .end local v2           #destAddr:Ljava/lang/String;
    .end local v3           #digitOfDest:I
    :catch_0
    move-exception v6

    .line 121
    .local v6, e2:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 122
    sget-boolean v12, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v12, :cond_6

    .line 123
    const-string v12, "PacketSmsDataConvertor"

    const-string v13, "error: dest is not SJIS"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_6
    const/4 v10, 0x0

    goto :goto_0

    .line 131
    .end local v6           #e2:Ljava/io/UnsupportedEncodingException;
    .restart local v2       #destAddr:Ljava/lang/String;
    .restart local v3       #digitOfDest:I
    :catch_1
    move-exception v6

    .line 132
    .restart local v6       #e2:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 133
    sget-boolean v12, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v12, :cond_7

    .line 134
    const-string v12, "PacketSmsDataConvertor"

    const-string v13, "error: digitOfDest is not SJIS"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_7
    const/4 v10, 0x0

    goto :goto_0

    .line 145
    .end local v6           #e2:Ljava/io/UnsupportedEncodingException;
    :cond_8
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v3, :cond_c

    .line 146
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x30

    if-lt v12, v13, :cond_9

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x39

    if-le v12, v13, :cond_b

    .line 147
    :cond_9
    sget-boolean v12, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v12, :cond_a

    .line 148
    const-string v12, "PacketSmsDataConvertor"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "error: destAddr.charAt("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ") = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 145
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 154
    :cond_c
    const/4 v11, 0x0

    .line 156
    .local v11, sjisMsg:Ljava/lang/String;
    :try_start_2
    new-instance v11, Ljava/lang/String;

    .end local v11           #sjisMsg:Ljava/lang/String;
    const-string v12, "kddi-emoji"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    const-string v13, "kddi-emoji"

    invoke-direct {v11, v12, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 168
    .restart local v11       #sjisMsg:Ljava/lang/String;
    :try_start_3
    const-string v12, "kddi-emoji"

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    array-length v8, v12

    .line 169
    .local v8, msgLength:I
    sget-boolean v12, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->KDDI_OUTPUT_LOG:Z

    if-eqz v12, :cond_d

    .line 170
    const-string v12, "PacketSmsDataConvertor"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sjisMsg.getBytes(SJIS).length = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_d
    const/4 v12, 0x1

    if-lt v8, v12, :cond_e

    const/16 v12, 0x64

    if-le v8, v12, :cond_12

    .line 173
    :cond_e
    sget-boolean v12, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v12, :cond_f

    .line 174
    const-string v12, "PacketSmsDataConvertor"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "error: msgLength = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    .line 176
    :cond_f
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 157
    .end local v8           #msgLength:I
    .end local v11           #sjisMsg:Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 158
    .local v5, e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 159
    sget-boolean v12, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v12, :cond_10

    .line 160
    const-string v12, "PacketSmsDataConvertor"

    const-string v13, "error: msg is not SJIS"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 178
    .end local v5           #e1:Ljava/io/UnsupportedEncodingException;
    .restart local v11       #sjisMsg:Ljava/lang/String;
    :catch_3
    move-exception v5

    .line 179
    .restart local v5       #e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 180
    sget-boolean v12, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v12, :cond_11

    .line 181
    const-string v12, "PacketSmsDataConvertor"

    const-string v13, "error: sjisMsg is not SJIS"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_11
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 187
    .end local v5           #e1:Ljava/io/UnsupportedEncodingException;
    .restart local v8       #msgLength:I
    :cond_12
    sget-object v12, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->KDDI_CRLF:Ljava/lang/String;

    const-string v13, " "

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 188
    sget-object v12, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->KDDI_CR:Ljava/lang/String;

    const-string v13, " "

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 189
    sget-object v12, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->KDDI_LF:Ljava/lang/String;

    const-string v13, " "

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 192
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v9

    .line 193
    .local v9, originAddr:Ljava/lang/String;
    if-nez v9, :cond_14

    .line 194
    sget-boolean v12, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v12, :cond_13

    .line 195
    const-string v12, "PacketSmsDataConvertor"

    const-string v13, "error: cannot get originAddr"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_13
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 201
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .local v1, builder:Ljava/lang/StringBuilder;
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v12, v0, :cond_16

    .line 203
    const-string v12, "smtran "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ":(186)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->KDDI_CRLF:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    sget-boolean v12, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->KDDI_OUTPUT_LOG:Z

    if-eqz v12, :cond_15

    .line 208
    const-string v12, "PacketSmsDataConvertor"

    const-string v13, "send message type is TRANSACTION_MODE"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_15
    :goto_2
    const/4 v10, 0x0

    .line 229
    .local v10, sjisIrcFormat:Ljava/lang/String;
    :try_start_4
    new-instance v10, Ljava/lang/String;

    .end local v10           #sjisIrcFormat:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "kddi-emoji"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    const-string v13, "kddi-emoji"

    invoke-direct {v10, v12, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_4

    .line 237
    .restart local v10       #sjisIrcFormat:Ljava/lang/String;
    sget-boolean v12, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->KDDI_OUTPUT_LOG:Z

    if-eqz v12, :cond_2

    .line 238
    const-string v12, "PacketSmsDataConvertor"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sjisIrcFormat = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 210
    .end local v10           #sjisIrcFormat:Ljava/lang/String;
    :cond_16
    const/4 v12, 0x2

    move/from16 v0, p2

    if-ne v12, v0, :cond_17

    .line 211
    const-string v12, "smstore3 "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ":(186)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->KDDI_CRLF:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    sget-boolean v12, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->KDDI_OUTPUT_LOG:Z

    if-eqz v12, :cond_15

    .line 216
    const-string v12, "PacketSmsDataConvertor"

    const-string v13, "send message type is STORED_MODE"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 220
    :cond_17
    sget-boolean v12, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v12, :cond_18

    .line 221
    const-string v12, "PacketSmsDataConvertor"

    const-string v13, "error: unknown sendMode"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_18
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 230
    :catch_4
    move-exception v4

    .line 231
    .local v4, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 232
    sget-boolean v12, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v12, :cond_19

    .line 233
    const-string v12, "PacketSmsDataConvertor"

    const-string v13, "sjisIrcFormat is not sjis"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_19
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method private static kddiGetCmailPictCharCount([B[[B)I
    .locals 8
    .parameter "message"
    .parameter "pictArray"

    .prologue
    const/4 v4, 0x0

    .line 358
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 359
    :cond_0
    const-string v5, "SMS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byte array or pictArray is null> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 389
    :goto_0
    return v0

    .line 362
    :cond_1
    array-length v5, p0

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2

    move v0, v4

    goto :goto_0

    .line 363
    :cond_2
    const/4 v0, 0x0

    .line 364
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, p0

    if-ge v1, v5, :cond_8

    .line 365
    const/4 v3, 0x0

    .line 366
    .local v3, match:Z
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    array-length v5, p1

    if-ge v2, v5, :cond_3

    .line 367
    aget-byte v5, p0, v1

    aget-object v6, p1, v2

    aget-byte v6, v6, v4

    if-ne v5, v6, :cond_5

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p0, v5

    aget-object v6, p1, v2

    const/4 v7, 0x1

    aget-byte v6, v6, v7

    if-ne v5, v6, :cond_5

    .line 368
    const-string v5, "SMS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "match pic> 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v7, p0, v1

    invoke-static {v7}, Lcom/android/internal/util/HexDump;->toHexString(B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    aget-byte v7, p0, v7

    invoke-static {v7}, Lcom/android/internal/util/HexDump;->toHexString(B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    add-int/lit8 v0, v0, 0x1

    .line 372
    add-int/lit8 v1, v1, 0x1

    .line 373
    const/4 v3, 0x1

    .line 377
    :cond_3
    if-eqz v3, :cond_6

    .line 364
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 366
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 381
    :cond_6
    invoke-static {p0, v1}, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->kddiIsSJIS([BI)Z

    move-result v5

    if-eqz v5, :cond_7

    add-int/lit8 v1, v1, 0x1

    .line 383
    :cond_7
    add-int/lit8 v5, v1, 0x1

    array-length v6, p0

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_4

    .line 388
    .end local v2           #j:I
    .end local v3           #match:Z
    :cond_8
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get pict char count> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static kddiIsSJIS([BI)Z
    .locals 4
    .parameter "data"
    .parameter "pos"

    .prologue
    const/4 v3, -0x4

    .line 689
    const/4 v0, 0x0

    .line 691
    .local v0, bResult:Z
    const/16 v1, -0x7f

    aget-byte v2, p0, p1

    if-gt v1, v2, :cond_0

    const/16 v1, -0x61

    aget-byte v2, p0, p1

    if-ge v1, v2, :cond_1

    :cond_0
    const/16 v1, -0x20

    aget-byte v2, p0, p1

    if-gt v1, v2, :cond_4

    aget-byte v1, p0, p1

    if-lt v3, v1, :cond_4

    .line 692
    :cond_1
    const/16 v1, 0x40

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    if-gt v1, v2, :cond_2

    const/16 v1, 0x7e

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    if-ge v1, v2, :cond_3

    :cond_2
    const/16 v1, -0x80

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    if-gt v1, v2, :cond_4

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    if-lt v3, v1, :cond_4

    .line 693
    :cond_3
    const/4 v0, 0x1

    .line 696
    :cond_4
    return v0
.end method

.method public static kddiParseRetcode([B)I
    .locals 15
    .parameter "result"

    .prologue
    .line 252
    const/4 v4, 0x0

    .line 254
    .local v4, response:Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-direct {v5, p0, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 269
    .end local v4           #response:Ljava/lang/String;
    .local v5, response:Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "tresp "

    const/4 v13, 0x0

    const-string v14, "tresp "

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v5, v11, v12, v13, v14}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 270
    sget-boolean v11, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->KDDI_OUTPUT_LOG:Z

    if-eqz v11, :cond_0

    .line 271
    const-string v11, "PacketSmsDataConvertor"

    const-string v12, "[parseRetcode] TransactionMode"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    const/16 v11, 0xe

    new-array v10, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "Disp"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "Don\'tDisp"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, ":illegal_type"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, ":C_no_user"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, ":C_no_register"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const-string v12, ":C_suspend"

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string v12, ":C_restricted"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    const-string v12, ":R_no_user"

    aput-object v12, v10, v11

    const/16 v11, 0x8

    const-string v12, ":R_no_register"

    aput-object v12, v10, v11

    const/16 v11, 0x9

    const-string v12, ":R_suspend"

    aput-object v12, v10, v11

    const/16 v11, 0xa

    const-string v12, ":R_restricted"

    aput-object v12, v10, v11

    const/16 v11, 0xb

    const-string v12, ":im/f_doesn\'t_work"

    aput-object v12, v10, v11

    const/16 v11, 0xc

    const-string v12, ":im/f_doesn\'t_use"

    aput-object v12, v10, v11

    const/16 v11, 0xd

    const-string v12, ":im/f_unexpected_occurrence"

    aput-object v12, v10, v11

    .line 281
    .local v10, tranRetcodeTable:[Ljava/lang/String;
    const/16 v11, 0xe

    new-array v9, v11, [I

    fill-array-data v9, :array_0

    .line 296
    .local v9, tranResultcodeTable:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v11, v10

    if-ge v2, v11, :cond_5

    .line 297
    const-string v11, "tresp "

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    aget-object v12, v10, v2

    const/4 v13, 0x0

    aget-object v14, v10, v2

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v5, v11, v12, v13, v14}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 298
    sget-boolean v11, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->KDDI_OUTPUT_LOG:Z

    if-eqz v11, :cond_1

    .line 299
    const-string v11, "PacketSmsDataConvertor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[parseRetcode] retcode:("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v10, v2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_1
    aget v11, v9, v2

    move-object v4, v5

    .line 352
    .end local v2           #i:I
    .end local v5           #response:Ljava/lang/String;
    .end local v9           #tranResultcodeTable:[I
    .end local v10           #tranRetcodeTable:[Ljava/lang/String;
    .restart local v4       #response:Ljava/lang/String;
    :goto_1
    return v11

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 257
    sget-boolean v11, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v11, :cond_2

    .line 258
    const-string v11, "PacketSmsDataConvertor"

    const-string v12, "[parseRetcode] encode is not supported"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_2
    const/4 v11, 0x1

    goto :goto_1

    .line 261
    .end local v0           #e1:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 262
    .local v1, e2:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 263
    sget-boolean v11, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v11, :cond_3

    .line 264
    const-string v11, "PacketSmsDataConvertor"

    const-string v12, "[parseRetcode] result is null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_3
    const/4 v11, 0x1

    goto :goto_1

    .line 296
    .end local v1           #e2:Ljava/lang/NullPointerException;
    .end local v4           #response:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v5       #response:Ljava/lang/String;
    .restart local v9       #tranResultcodeTable:[I
    .restart local v10       #tranRetcodeTable:[Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 304
    :cond_5
    const/16 v11, 0x17

    move-object v4, v5

    .end local v5           #response:Ljava/lang/String;
    .restart local v4       #response:Ljava/lang/String;
    goto :goto_1

    .line 305
    .end local v2           #i:I
    .end local v4           #response:Ljava/lang/String;
    .end local v9           #tranResultcodeTable:[I
    .end local v10           #tranRetcodeTable:[Ljava/lang/String;
    .restart local v5       #response:Ljava/lang/String;
    :cond_6
    const/4 v11, 0x0

    const-string v12, "smresp "

    const/4 v13, 0x0

    const-string v14, "smresp "

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v5, v11, v12, v13, v14}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 306
    sget-boolean v11, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->KDDI_OUTPUT_LOG:Z

    if-eqz v11, :cond_7

    .line 307
    const-string v11, "PacketSmsDataConvertor"

    const-string v12, "getResultcode StoreMode"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_7
    const/16 v11, 0xc

    new-array v8, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "\r\n"

    aput-object v12, v8, v11

    const/4 v11, 0x1

    const-string v12, "=C_no_user"

    aput-object v12, v8, v11

    const/4 v11, 0x2

    const-string v12, "=C_no_register"

    aput-object v12, v8, v11

    const/4 v11, 0x3

    const-string v12, "=C_suspend"

    aput-object v12, v8, v11

    const/4 v11, 0x4

    const-string v12, "=C_restricted"

    aput-object v12, v8, v11

    const/4 v11, 0x5

    const-string v12, "=R_no_user"

    aput-object v12, v8, v11

    const/4 v11, 0x6

    const-string v12, "=R_no_register"

    aput-object v12, v8, v11

    const/4 v11, 0x7

    const-string v12, "=R_suspend"

    aput-object v12, v8, v11

    const/16 v11, 0x8

    const-string v12, "=R_restricted"

    aput-object v12, v8, v11

    const/16 v11, 0x9

    const-string v12, "=im/f_doesn\'t_work"

    aput-object v12, v8, v11

    const/16 v11, 0xa

    const-string v12, "=im/f_doesn\'t_use"

    aput-object v12, v8, v11

    const/16 v11, 0xb

    const-string v12, "=mail_box_over_flow"

    aput-object v12, v8, v11

    .line 316
    .local v8, storeRetcodeTable:[Ljava/lang/String;
    const/16 v11, 0xc

    new-array v7, v11, [I

    fill-array-data v7, :array_1

    .line 330
    .local v7, storeResultcodeTable:[I
    const/16 v11, 0x3d

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 331
    .local v3, position:I
    const/4 v6, 0x0

    .line 333
    .local v6, retcode:Ljava/lang/String;
    const/4 v11, -0x1

    if-eq v3, v11, :cond_9

    .line 334
    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 339
    :goto_2
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    array-length v11, v8

    if-ge v2, v11, :cond_b

    .line 340
    const/4 v11, 0x0

    aget-object v12, v8, v2

    const/4 v13, 0x0

    aget-object v14, v8, v2

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v6, v11, v12, v13, v14}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 341
    sget-boolean v11, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->KDDI_OUTPUT_LOG:Z

    if-eqz v11, :cond_8

    .line 342
    const-string v11, "PacketSmsDataConvertor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[parseRetcode] retcode:("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v8, v2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_8
    aget v11, v7, v2

    move-object v4, v5

    .end local v5           #response:Ljava/lang/String;
    .restart local v4       #response:Ljava/lang/String;
    goto/16 :goto_1

    .line 336
    .end local v2           #i:I
    .end local v4           #response:Ljava/lang/String;
    .restart local v5       #response:Ljava/lang/String;
    :cond_9
    const-string v11, "smresp "

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 339
    .restart local v2       #i:I
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 347
    :cond_b
    const/16 v11, 0x2b

    move-object v4, v5

    .end local v5           #response:Ljava/lang/String;
    .restart local v4       #response:Ljava/lang/String;
    goto/16 :goto_1

    .line 349
    .end local v2           #i:I
    .end local v3           #position:I
    .end local v4           #response:Ljava/lang/String;
    .end local v6           #retcode:Ljava/lang/String;
    .end local v7           #storeResultcodeTable:[I
    .end local v8           #storeRetcodeTable:[Ljava/lang/String;
    .restart local v5       #response:Ljava/lang/String;
    :cond_c
    sget-boolean v11, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->KDDI_OUTPUT_LOG:Z

    if-eqz v11, :cond_d

    .line 350
    const-string v11, "PacketSmsDataConvertor"

    const-string v12, "[parseRetcode] no match code"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_d
    const/4 v11, 0x1

    move-object v4, v5

    .end local v5           #response:Ljava/lang/String;
    .restart local v4       #response:Ljava/lang/String;
    goto/16 :goto_1

    .line 281
    nop

    :array_0
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 316
    :array_1
    .array-data 0x4
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
    .end array-data
.end method
