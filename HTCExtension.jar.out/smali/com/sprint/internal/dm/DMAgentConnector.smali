.class public Lcom/sprint/internal/dm/DMAgentConnector;
.super Ljava/lang/Object;
.source "DMAgentConnector.java"


# static fields
.field public static final A_Key:Ljava/lang/String; = "C005"

.field public static final Activate_MIP_Profile:Ljava/lang/String; = "C017"

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "DSA-DMAgentConnector"

.field public static final MDN:Ljava/lang/String; = "C001"

.field public static final MEID:Ljava/lang/String; = "C004"

.field public static final MIN1:Ljava/lang/String; = "C018"

.field public static final MIN2:Ljava/lang/String; = "C019"

.field public static final MSID:Ljava/lang/String; = "C002"

.field private static PrivateKey:Ljava/lang/String; = null

.field public static final Pseudo_ESN:Ljava/lang/String; = "C003"

.field public static final Slot_1_AAA_Auth_Algo:Ljava/lang/String; = "C013"

.field public static final Slot_1_AAA_SPI:Ljava/lang/String; = "C014"

.field public static final Slot_1_HA_Auth_Algo:Ljava/lang/String; = "C010"

.field public static final Slot_1_HA_Password:Ljava/lang/String; = "C012"

.field public static final Slot_1_HA_SPI:Ljava/lang/String; = "C011"

.field public static final Slot_1_Mobile_IP_Address:Ljava/lang/String; = "C016"

.field public static final Slot_1_NAI:Ljava/lang/String; = "C006"

.field public static final Slot_1_NAI_Password:Ljava/lang/String; = "C007"

.field public static final Slot_1_Primary_HA:Ljava/lang/String; = "C008"

.field public static final Slot_1_Reverse_Tunnel:Ljava/lang/String; = "C015"

.field public static final Slot_1_Secondary_HA:Ljava/lang/String; = "C009"

.field private static bEncrypt:Z = false

.field private static bPrivateKey:Z = false

.field public static final cmdID:Ljava/lang/String; = ":IDOMADM"

.field public static final cmdRead:Ljava/lang/String; = "R"

.field public static cmdTY1:Ljava/lang/String; = null

.field public static cmdTY2:Ljava/lang/String; = null

.field public static cmdTY3:Ljava/lang/String; = null

.field public static final cmdWrite:Ljava/lang/String; = "W"

.field public static final cmdXCMD:Ljava/lang/String; = ":XCMD"


# instance fields
.field private final BufferLength:I

.field private My_hex:Ljava/lang/String;

.field private final PORT:I

.field private PublicEncryptKey:Ljava/lang/String;

.field private Result:Ljava/lang/String;

.field private cmdEXIT:Ljava/lang/String;

.field private cmdPWD:Ljava/lang/String;

.field in:Ljava/io/InputStream;

.field isError:Z

.field private mCmdType:Ljava/lang/String;

.field out:Ljava/io/OutputStream;

.field requestSocket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    const-string v0, ":TY1"

    sput-object v0, Lcom/sprint/internal/dm/DMAgentConnector;->cmdTY1:Ljava/lang/String;

    .line 23
    const-string v0, ":TY2"

    sput-object v0, Lcom/sprint/internal/dm/DMAgentConnector;->cmdTY2:Ljava/lang/String;

    .line 24
    const-string v0, ":TY3"

    sput-object v0, Lcom/sprint/internal/dm/DMAgentConnector;->cmdTY3:Ljava/lang/String;

    .line 64
    const-string v0, "ro.omadm.encryptenable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sprint/internal/dm/DMAgentConnector;->bEncrypt:Z

    .line 66
    sput-boolean v1, Lcom/sprint/internal/dm/DMAgentConnector;->bPrivateKey:Z

    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/internal/dm/DMAgentConnector;->PrivateKey:Ljava/lang/String;

    return-void

    .line 64
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "cmdType"

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v0, 0x400

    iput v0, p0, Lcom/sprint/internal/dm/DMAgentConnector;->BufferLength:I

    .line 18
    const/16 v0, 0x2606

    iput v0, p0, Lcom/sprint/internal/dm/DMAgentConnector;->PORT:I

    .line 20
    const-string v0, ":PWDM"

    iput-object v0, p0, Lcom/sprint/internal/dm/DMAgentConnector;->cmdPWD:Ljava/lang/String;

    .line 21
    const-string v0, ":EXIT"

    iput-object v0, p0, Lcom/sprint/internal/dm/DMAgentConnector;->cmdEXIT:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/internal/dm/DMAgentConnector;->Result:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/internal/dm/DMAgentConnector;->My_hex:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/internal/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    .line 65
    const-string v0, "0000000000000000"

    iput-object v0, p0, Lcom/sprint/internal/dm/DMAgentConnector;->PublicEncryptKey:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/internal/dm/DMAgentConnector;->isError:Z

    .line 72
    sget-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_0
    iput-object p1, p0, Lcom/sprint/internal/dm/DMAgentConnector;->mCmdType:Ljava/lang/String;

    goto :goto_0
.end method

.method public static ASCIIToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "str"

    .prologue
    .line 665
    sget-boolean v5, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v5, :cond_1

    const/4 v3, 0x0

    .line 676
    :cond_0
    return-object v3

    .line 666
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 667
    .local v2, len:I
    const-string v3, ""

    .line 668
    .local v3, result:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 669
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 670
    .local v0, c:I
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 671
    .local v4, tmp:Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2

    .line 672
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 674
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 668
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static DmDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "Key"
    .parameter "EncryptText"

    .prologue
    .line 702
    const/4 v1, 0x0

    .line 704
    .local v1, decrypted:[B
    :try_start_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "AES"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 705
    .local v3, secret:Ljavax/crypto/spec/SecretKeySpec;
    const-string v4, "AES/ECB/NoPadding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 706
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 707
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/sprint/internal/dm/DMAgentConnector;->HexToStr(Ljava/lang/String;Z)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 711
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v3           #secret:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 708
    :catch_0
    move-exception v2

    .line 709
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static DmEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "Key"
    .parameter "PlainText"

    .prologue
    const/4 v8, 0x0

    .line 681
    const/4 v4, 0x0

    .line 682
    .local v4, encrypted:[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 683
    .local v1, Length:I
    rem-int/lit8 v6, v1, 0x10

    if-lez v6, :cond_0

    .line 684
    div-int/lit8 v6, v1, 0x10

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v1, v6, 0x10

    .line 687
    :cond_0
    new-array v0, v1, [B

    .line 688
    .local v0, Buffer:[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v8, v0, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 691
    :try_start_0
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const-string v7, "AES"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 692
    .local v5, secret:Ljavax/crypto/spec/SecretKeySpec;
    const-string v6, "AES/ECB/NoPadding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 693
    .local v2, cipher:Ljavax/crypto/Cipher;
    const/4 v6, 0x1

    invoke-virtual {v2, v6, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 694
    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 698
    .end local v2           #cipher:Ljavax/crypto/Cipher;
    .end local v5           #secret:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    invoke-static {v4}, Lcom/sprint/internal/dm/DMAgentConnector;->StrToHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 695
    :catch_0
    move-exception v3

    .line 696
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static EncodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 10
    .parameter "dwVal"
    .parameter "dwDigits"

    .prologue
    .line 614
    sget-boolean v4, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    .line 627
    :cond_0
    return-object v2

    .line 615
    :cond_1
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .local v3, i:Ljava/lang/Long;
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .local v2, dwRet:Ljava/lang/Long;
    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .local v1, dwBase:Ljava/lang/Long;
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 617
    .local v0, dwBCD:Ljava/lang/Long;
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0xa

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 618
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    const-wide/16 v4, 0x9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 619
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 620
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 622
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 624
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0xa

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 625
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0xa

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method public static EncodeBCD_Min1([C)Ljava/lang/Long;
    .locals 13
    .parameter "pbsVal"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const-wide/16 v9, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    .line 630
    sget-boolean v4, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    .line 661
    :goto_0
    return-object v2

    .line 631
    :cond_0
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .local v2, dwVal:Ljava/lang/Long;
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 632
    .local v3, dwVal1:Ljava/lang/Long;
    const/4 v1, 0x0

    .line 633
    .local v1, bsMin1:[C
    new-array v0, v7, [C

    .line 634
    .local v0, bsDat:[C
    if-eqz p0, :cond_1

    .line 635
    move-object v1, p0

    .line 636
    :cond_1
    array-length v4, v1

    const/4 v5, 0x7

    if-ge v4, v5, :cond_2

    .line 637
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0000000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 639
    :cond_2
    invoke-static {v1, v8, v7}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 641
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 642
    const-wide/16 v4, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sprint/internal/dm/DMAgentConnector;->EncodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    .line 644
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x4

    shl-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 645
    const/16 v4, 0x30

    aput-char v4, v0, v11

    aput-char v4, v0, v8

    .line 646
    aget-char v4, v1, v7

    aput-char v4, v0, v12

    .line 648
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 649
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v9

    if-nez v4, :cond_3

    .line 650
    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 651
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    or-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 653
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v6, 0xa

    shl-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 654
    const/4 v4, 0x4

    aget-char v4, v1, v4

    aput-char v4, v0, v8

    .line 655
    const/4 v4, 0x5

    aget-char v4, v1, v4

    aput-char v4, v0, v11

    .line 656
    const/4 v4, 0x6

    aget-char v4, v1, v4

    aput-char v4, v0, v12

    .line 658
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 659
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/sprint/internal/dm/DMAgentConnector;->EncodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    or-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 661
    goto/16 :goto_0
.end method

.method private static HexToStr(Ljava/lang/String;Z)[B
    .locals 7
    .parameter "input"
    .parameter "lowercase"

    .prologue
    .line 716
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0123456789"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p1, :cond_0

    const-string v5, "ABCDEF"

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 717
    .local v1, digital:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 718
    .local v2, hex2char:[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    new-array v0, v5, [B

    .line 720
    .local v0, bytes:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_1

    .line 721
    mul-int/lit8 v5, v3, 0x2

    aget-char v5, v2, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    mul-int/lit8 v4, v5, 0x10

    .line 722
    .local v4, temp:I
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-char v5, v2, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 723
    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    .line 720
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 716
    .end local v0           #bytes:[B
    .end local v1           #digital:Ljava/lang/String;
    .end local v2           #hex2char:[C
    .end local v3           #i:I
    .end local v4           #temp:I
    :cond_0
    const-string v5, "abcdef"

    goto :goto_0

    .line 725
    .restart local v0       #bytes:[B
    .restart local v1       #digital:Ljava/lang/String;
    .restart local v2       #hex2char:[C
    .restart local v3       #i:I
    :cond_1
    return-object v0
.end method

.method public static ReverseByte(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "val"

    .prologue
    .line 530
    sget-boolean v5, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v5, :cond_1

    const/4 p0, 0x0

    .line 542
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 531
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_0

    .line 534
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 535
    .local v2, length:I
    const-string v3, ""

    .line 536
    .local v3, reverse:Ljava/lang/String;
    move-object v4, p0

    .line 537
    .local v4, tmp:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    div-int/lit8 v5, v2, 0x2

    if-ge v0, v5, :cond_2

    .line 538
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 539
    .local v1, len:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v1, -0x2

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 540
    const/4 v5, 0x0

    add-int/lit8 v6, v1, -0x2

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 537
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #len:I
    :cond_2
    move-object p0, v3

    .line 542
    goto :goto_0
.end method

.method private static StrToHex([B)Ljava/lang/String;
    .locals 6
    .parameter "bytes"

    .prologue
    const/4 v5, 0x1

    .line 729
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 730
    .local v1, rslt:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 731
    aget-byte v3, p0, v0

    if-ltz v3, :cond_1

    aget-byte v3, p0, v0

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 732
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 733
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 734
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 735
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 730
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 731
    .end local v2           #s:Ljava/lang/String;
    :cond_1
    aget-byte v3, p0, v0

    add-int/lit16 v3, v3, 0x100

    goto :goto_1

    .line 737
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static byteToBigHexString([B)Ljava/lang/String;
    .locals 5
    .parameter "bytes"

    .prologue
    .line 418
    sget-boolean v3, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    .line 427
    :cond_0
    return-object v1

    .line 419
    :cond_1
    invoke-static {p0}, Lcom/sprint/internal/dm/DMAgentConnector;->byteToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 420
    .local v2, tmp:Ljava/lang/String;
    const-string v1, ""

    .line 421
    .local v1, result:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 422
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x61

    if-lt v3, v4, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7a

    if-gt v3, v4, :cond_2

    .line 423
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x20

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 421
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 425
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static byteToHexString([B)Ljava/lang/String;
    .locals 6
    .parameter "bytes"

    .prologue
    const/4 v5, 0x1

    .line 431
    sget-boolean v3, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 441
    :goto_0
    return-object v3

    .line 432
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 434
    .local v1, rslt:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_3

    .line 435
    aget-byte v3, p0, v0

    if-ltz v3, :cond_2

    aget-byte v3, p0, v0

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 436
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 437
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 438
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 439
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 434
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 435
    .end local v2           #s:Ljava/lang/String;
    :cond_2
    aget-byte v3, p0, v0

    add-int/lit16 v3, v3, 0x100

    goto :goto_2

    .line 441
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static decodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 11
    .parameter "parDwVal"
    .parameter "dwDigits"

    .prologue
    .line 558
    sget-boolean v5, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v5, :cond_1

    const/4 v2, 0x0

    .line 571
    :cond_0
    return-object v2

    .line 559
    :cond_1
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .local v4, i:Ljava/lang/Long;
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .local v2, dwRet:Ljava/lang/Long;
    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .local v1, dwBase:Ljava/lang/Long;
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 560
    .local v0, dwBCD:Ljava/lang/Long;
    move-object v3, p0

    .line 562
    .local v3, dwVal:Ljava/lang/Long;
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    rem-long/2addr v5, v7

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 563
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    .line 564
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    mul-long/2addr v7, v9

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 566
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    .line 568
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 569
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    mul-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method public static decodeBCDMin1(Ljava/lang/Long;)Ljava/lang/String;
    .locals 14
    .parameter "parDwVal"

    .prologue
    const-wide/16 v12, 0x3

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 575
    sget-boolean v4, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 595
    :goto_0
    return-object v4

    .line 576
    :cond_0
    const/16 v4, 0x8

    new-array v0, v4, [C

    .line 578
    .local v0, bsMin1:[C
    move-object v2, p0

    .line 579
    .local v2, dwVal:Ljava/lang/Long;
    new-array v1, v11, [J

    .line 580
    .local v1, dwMin1:[J
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3ff

    and-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sprint/internal/dm/DMAgentConnector;->decodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v1, v9

    .line 582
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v6, 0xa

    shr-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 583
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0xf

    and-long/2addr v4, v6

    aput-wide v4, v1, v8

    .line 584
    aget-wide v4, v1, v8

    const-wide/16 v6, 0xa

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 585
    const-wide/16 v4, 0x0

    aput-wide v4, v1, v8

    .line 587
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x4

    shr-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 588
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3ff

    and-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sprint/internal/dm/DMAgentConnector;->decodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v1, v10

    .line 590
    const-string v4, "%3d%1d%3d"

    new-array v5, v11, [Ljava/lang/Object;

    aget-wide v6, v1, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v9

    aget-wide v6, v1, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    aget-wide v6, v1, v9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 591
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 592
    aget-char v4, v0, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_2

    .line 593
    const/16 v4, 0x30

    aput-char v4, v0, v3

    .line 591
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 595
    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public static doASCIIToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "str"

    .prologue
    .line 477
    sget-boolean v5, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v5, :cond_1

    const/4 v3, 0x0

    .line 488
    :cond_0
    return-object v3

    .line 478
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 479
    .local v2, len:I
    const-string v3, ""

    .line 480
    .local v3, result:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 481
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 482
    .local v0, c:I
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 483
    .local v4, tmp:Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2

    .line 484
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 486
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 480
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static doStringToASCII(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "str"

    .prologue
    .line 460
    sget-boolean v6, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v6, :cond_1

    const/4 v4, 0x0

    .line 474
    :cond_0
    :goto_0
    return-object v4

    .line 461
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 462
    .local v3, len:I
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x2

    .line 463
    .local v2, j:I
    const-string v4, ""

    .line 465
    .local v4, result:Ljava/lang/String;
    :goto_1
    if-gt v2, v3, :cond_0

    .line 466
    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 467
    .local v5, tmp:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    int-to-char v7, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 468
    move v1, v2

    .line 469
    add-int/lit8 v2, v2, 0x2

    .line 470
    goto :goto_1

    .line 471
    .end local v5           #tmp:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 472
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static hexStringToByte(Ljava/lang/String;Z)[B
    .locals 7
    .parameter "input"
    .parameter "lowercase"

    .prologue
    .line 445
    sget-boolean v5, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v5, :cond_1

    const/4 v0, 0x0

    .line 457
    :cond_0
    return-object v0

    .line 447
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0123456789"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p1, :cond_2

    const-string v5, "ABCDEF"

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, digital:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 450
    .local v2, hex2char:[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    new-array v0, v5, [B

    .line 452
    .local v0, bytes:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_0

    .line 453
    mul-int/lit8 v5, v3, 0x2

    aget-char v5, v2, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    mul-int/lit8 v4, v5, 0x10

    .line 454
    .local v4, temp:I
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-char v5, v2, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 455
    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    .line 452
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 447
    .end local v0           #bytes:[B
    .end local v1           #digital:Ljava/lang/String;
    .end local v2           #hex2char:[C
    .end local v3           #i:I
    .end local v4           #temp:I
    :cond_2
    const-string v5, "abcdef"

    goto :goto_0
.end method

.method private parseReadResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "response"

    .prologue
    const/4 v1, 0x0

    .line 371
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, strs:[Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v0, v2

    const-string v3, "OK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 373
    const/4 v2, 0x2

    aget-object v2, v0, v2

    const-string v3, "0000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-object v1

    .line 376
    :cond_1
    const/4 v1, 0x3

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method private parseWriteResponse(Ljava/lang/String;)Z
    .locals 4
    .parameter "response"

    .prologue
    const/4 v1, 0x1

    .line 382
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, strs:[Ljava/lang/String;
    aget-object v2, v0, v1

    const-string v3, "OK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static pendZero(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "cmd"
    .parameter "digits"

    .prologue
    .line 546
    sget-boolean v1, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 551
    :cond_0
    return-object v0

    .line 547
    :cond_1
    move-object v0, p0

    .line 548
    .local v0, reslt:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, p1, :cond_0

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private readRsponse()V
    .locals 8

    .prologue
    const/16 v7, 0x400

    .line 741
    new-array v2, v7, [B

    .line 742
    .local v2, respond:[B
    const/4 v1, 0x0

    .line 744
    .local v1, length:I
    :try_start_0
    iget-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 750
    :goto_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 751
    .local v3, result:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sprint/internal/dm/DMAgentConnector;->Result:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->Result:Ljava/lang/String;

    .line 753
    if-ge v1, v7, :cond_0

    .line 761
    :goto_1
    return-void

    .line 746
    .end local v3           #result:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 747
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DSA-DMAgentConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ReadSponse fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 758
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #result:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/sprint/internal/dm/DMAgentConnector;->readRsponse()V

    goto :goto_1
.end method

.method public static reverseByte(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "val"

    .prologue
    .line 598
    sget-boolean v5, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v5, :cond_1

    const/4 p0, 0x0

    .line 610
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 599
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_0

    .line 602
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 603
    .local v2, length:I
    const-string v3, ""

    .line 604
    .local v3, reverse:Ljava/lang/String;
    move-object v4, p0

    .line 605
    .local v4, tmp:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    div-int/lit8 v5, v2, 0x2

    if-ge v0, v5, :cond_2

    .line 606
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 607
    .local v1, len:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v1, -0x2

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 608
    const/4 v5, 0x0

    add-int/lit8 v6, v1, -0x2

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 605
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #len:I
    :cond_2
    move-object p0, v3

    .line 610
    goto :goto_0
.end method

.method public static transHexStringtoIP(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "hexStr"

    .prologue
    const/16 v5, 0x10

    .line 511
    sget-boolean v3, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    .line 523
    :cond_0
    return-object v2

    .line 513
    :cond_1
    invoke-static {p0}, Lcom/sprint/internal/dm/DMAgentConnector;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 514
    const-string v2, ""

    .line 515
    .local v2, result:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 516
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 518
    .local v0, hex:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-eq v1, v3, :cond_2

    .line 519
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 515
    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 521
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static transIPtoHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "input"

    .prologue
    .line 497
    sget-boolean v4, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 504
    :goto_0
    return-object v4

    .line 498
    :cond_0
    const-string v2, ""

    .line 499
    .local v2, result:Ljava/lang/String;
    const-string v4, "\\."

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 500
    .local v3, strs:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 501
    aget-object v4, v3, v0

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 502
    .local v1, num:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 500
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 504
    .end local v1           #num:I
    :cond_1
    invoke-static {v2}, Lcom/sprint/internal/dm/DMAgentConnector;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private transfer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "rw"
    .parameter "cmdID"

    .prologue
    .line 365
    const-string v0, ""

    .line 366
    .local v0, result:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 367
    return-object v0
.end method

.method private transfer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "rw"
    .parameter "cmdID"
    .parameter "hex"

    .prologue
    .line 360
    invoke-direct {p0, p1, p2}, Lcom/sprint/internal/dm/DMAgentConnector;->transfer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, result:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    return-object v0
.end method


# virtual methods
.method public GetPrivateKey()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v4, 0x200

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 190
    new-array v1, v4, [B

    .line 191
    .local v1, cmdsend:[B
    new-array v0, v4, [B

    .line 193
    .local v0, cmdresp:[B
    sget-boolean v4, Lcom/sprint/internal/dm/DMAgentConnector;->bPrivateKey:Z

    if-eqz v4, :cond_0

    .line 194
    sget-object v4, Lcom/sprint/internal/dm/DMAgentConnector;->PrivateKey:Ljava/lang/String;

    .line 213
    :goto_0
    return-object v4

    .line 196
    :cond_0
    const/16 v4, 0x77

    aput-byte v4, v1, v5

    .line 197
    aput-byte v5, v1, v6

    .line 200
    :try_start_0
    iget-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, v1}, Ljava/io/OutputStream;->write([B)V

    .line 201
    iget-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 202
    iget-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, result:Ljava/lang/String;
    iget-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->PublicEncryptKey:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/sprint/internal/dm/DMAgentConnector;->DmDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/sprint/internal/dm/DMAgentConnector;->PrivateKey:Ljava/lang/String;

    .line 212
    sput-boolean v6, Lcom/sprint/internal/dm/DMAgentConnector;->bPrivateKey:Z

    .line 213
    sget-object v4, Lcom/sprint/internal/dm/DMAgentConnector;->PrivateKey:Ljava/lang/String;

    goto :goto_0

    .line 203
    .end local v3           #result:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 204
    .local v2, ioException:Ljava/io/IOException;
    const-string v4, "DSA-DMAgentConnector"

    const-string v5, "IOException."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iput-boolean v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->isError:Z

    .line 206
    invoke-virtual {p0}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z

    .line 207
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public changeTTY(Ljava/lang/String;)V
    .locals 4
    .parameter "cmdTTY"

    .prologue
    .line 389
    sget-boolean v2, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v2, :cond_0

    .line 412
    :goto_0
    return-void

    .line 391
    :cond_0
    const/16 v2, 0x200

    :try_start_0
    new-array v1, v2, [B

    .line 393
    .local v1, respond:[B
    iget-object v2, p0, Lcom/sprint/internal/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    sget-object v3, Lcom/sprint/internal/dm/DMAgentConnector;->PrivateKey:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/sprint/internal/dm/DMAgentConnector;->DmEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 405
    invoke-direct {p0}, Lcom/sprint/internal/dm/DMAgentConnector;->readRsponse()V

    .line 406
    sget-object v2, Lcom/sprint/internal/dm/DMAgentConnector;->PrivateKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/sprint/internal/dm/DMAgentConnector;->Result:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sprint/internal/dm/DMAgentConnector;->DmDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 408
    .end local v1           #respond:[B
    :catch_0
    move-exception v0

    .line 409
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sprint/internal/dm/DMAgentConnector;->isError:Z

    .line 410
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public closeConnection()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 223
    sget-boolean v4, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v4, :cond_0

    .line 224
    const/4 v3, 0x1

    .line 270
    :goto_0
    return v3

    .line 226
    :cond_0
    const/4 v3, 0x0

    .line 228
    .local v3, result:Z
    :try_start_0
    iget-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    .line 236
    iget-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->cmdEXIT:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/sprint/internal/dm/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, My_hex:Ljava/lang/String;
    iget-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 241
    iget-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 242
    iget-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    const/4 v3, 0x1

    .line 252
    .end local v0           #My_hex:Ljava/lang/String;
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 257
    :goto_2
    :try_start_2
    iget-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 262
    :goto_3
    :try_start_3
    iget-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 266
    :goto_4
    iput-object v7, p0, Lcom/sprint/internal/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    .line 267
    iput-object v7, p0, Lcom/sprint/internal/dm/DMAgentConnector;->in:Ljava/io/InputStream;

    .line 268
    iput-object v7, p0, Lcom/sprint/internal/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    goto :goto_0

    .line 245
    :catch_0
    move-exception v1

    .line 246
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "DSA-DMAgentConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "closeConnection fail: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 249
    const/4 v3, 0x0

    goto :goto_1

    .line 253
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 254
    .local v2, ioe:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 258
    .end local v2           #ioe:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 259
    .restart local v2       #ioe:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 263
    .end local v2           #ioe:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 264
    .restart local v2       #ioe:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sprint/internal/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/sprint/internal/dm/DMAgentConnector;->isError:Z

    return v0
.end method

.method public openConnection()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 77
    sget-boolean v6, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v6, :cond_1

    move v3, v4

    .line 185
    :cond_0
    :goto_0
    return v3

    .line 82
    :cond_1
    const/4 v3, 0x0

    .line 85
    .local v3, result:Z
    :try_start_0
    iget-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    if-eqz v6, :cond_2

    .line 94
    :goto_1
    iget-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    if-nez v6, :cond_3

    move v3, v5

    .line 95
    goto :goto_0

    .line 89
    :cond_2
    new-instance v6, Ljava/net/Socket;

    const-string v7, "localhost"

    const/16 v8, 0x2606

    invoke-direct {v6, v7, v8}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    .line 90
    iget-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    const/16 v7, 0x1388

    invoke-virtual {v6, v7}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "DSA-DMAgentConnector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "openConnection exception: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    const/4 v3, 0x0

    .line 163
    iput-boolean v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->isError:Z

    .line 165
    if-nez v3, :cond_0

    .line 167
    :try_start_1
    iget-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 172
    :goto_2
    :try_start_2
    iget-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 177
    :goto_3
    :try_start_3
    iget-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 181
    :goto_4
    iput-object v9, p0, Lcom/sprint/internal/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    .line 182
    iput-object v9, p0, Lcom/sprint/internal/dm/DMAgentConnector;->in:Ljava/io/InputStream;

    .line 183
    iput-object v9, p0, Lcom/sprint/internal/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    goto :goto_0

    .line 96
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_4
    iget-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    iput-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    .line 97
    iget-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 98
    iget-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    iput-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->in:Ljava/io/InputStream;

    .line 99
    const/16 v6, 0x200

    new-array v2, v6, [B

    .line 101
    .local v2, respond:[B
    sget-boolean v6, Lcom/sprint/internal/dm/DMAgentConnector;->bEncrypt:Z

    if-eqz v6, :cond_7

    .line 102
    invoke-virtual {p0}, Lcom/sprint/internal/dm/DMAgentConnector;->GetPrivateKey()Ljava/lang/String;

    .line 103
    iget-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->mCmdType:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/sprint/internal/dm/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->My_hex:Ljava/lang/String;

    .line 104
    iget-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->mCmdType:Ljava/lang/String;

    const-string v7, ":IDOMADM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 106
    iget-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->My_hex:Ljava/lang/String;

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_6

    .line 107
    iget-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->cmdPWD:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/sprint/internal/dm/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->My_hex:Ljava/lang/String;

    .line 109
    iget-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->My_hex:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5

    .line 111
    sget-object v6, Lcom/sprint/internal/dm/DMAgentConnector;->cmdTY3:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/sprint/internal/dm/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->My_hex:Ljava/lang/String;

    .line 112
    iget-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->My_hex:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    move v3, v4

    .line 114
    goto/16 :goto_0

    .line 116
    :cond_4
    const-string v6, "DSA-DMAgentConnector"

    const-string v7, "connection fail:cmdTY3fail"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 117
    goto/16 :goto_0

    .line 119
    :cond_5
    const-string v6, "DSA-DMAgentConnector"

    const-string v7, "connection fail:cmdPWD fail 1"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 120
    goto/16 :goto_0

    :cond_6
    move v3, v4

    .line 126
    goto/16 :goto_0

    .line 128
    :cond_7
    iget-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    iget-object v7, p0, Lcom/sprint/internal/dm/DMAgentConnector;->mCmdType:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write([B)V

    .line 129
    iget-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    .line 130
    invoke-static {v2}, Lcom/sprint/internal/dm/DMAgentConnector;->byteToBigHexString([B)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->My_hex:Ljava/lang/String;

    .line 133
    iget-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->My_hex:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, ":IDOMADM"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_a

    .line 134
    iget-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    iget-object v7, p0, Lcom/sprint/internal/dm/DMAgentConnector;->cmdPWD:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write([B)V

    .line 135
    iget-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    .line 136
    invoke-static {v2}, Lcom/sprint/internal/dm/DMAgentConnector;->byteToBigHexString([B)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->My_hex:Ljava/lang/String;

    .line 138
    iget-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->mCmdType:Ljava/lang/String;

    const-string v7, ":IDOMADM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 139
    iget-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->My_hex:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    iget-object v7, p0, Lcom/sprint/internal/dm/DMAgentConnector;->cmdPWD:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_9

    .line 141
    iget-object v5, p0, Lcom/sprint/internal/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    sget-object v6, Lcom/sprint/internal/dm/DMAgentConnector;->cmdTY3:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 142
    iget-object v5, p0, Lcom/sprint/internal/dm/DMAgentConnector;->in:Ljava/io/InputStream;

    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    .line 143
    invoke-static {v2}, Lcom/sprint/internal/dm/DMAgentConnector;->byteToBigHexString([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sprint/internal/dm/DMAgentConnector;->My_hex:Ljava/lang/String;

    .line 146
    iget-object v5, p0, Lcom/sprint/internal/dm/DMAgentConnector;->My_hex:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    sget-object v6, Lcom/sprint/internal/dm/DMAgentConnector;->cmdTY3:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v6

    if-ne v5, v6, :cond_8

    :cond_8
    move v3, v4

    .line 149
    goto/16 :goto_0

    :cond_9
    move v3, v5

    .line 153
    goto/16 :goto_0

    :cond_a
    move v3, v4

    .line 157
    goto/16 :goto_0

    .line 168
    .end local v2           #respond:[B
    .restart local v0       #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 169
    .local v1, ioe:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 173
    .end local v1           #ioe:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 174
    .restart local v1       #ioe:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 178
    .end local v1           #ioe:Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 179
    .restart local v1       #ioe:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4
.end method

.method public sendCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "request"

    .prologue
    const/4 v3, 0x0

    .line 323
    iget-boolean v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->isError:Z

    if-eqz v4, :cond_1

    .line 324
    const-string v3, "DSA-DMAgentConnector"

    const-string v4, "ignore send"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-string v2, ""

    .line 356
    :cond_0
    :goto_0
    return-object v2

    .line 329
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    .line 330
    iget-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 332
    sget-boolean v4, Lcom/sprint/internal/dm/DMAgentConnector;->bEncrypt:Z

    if-eqz v4, :cond_3

    .line 333
    sget-object v4, Lcom/sprint/internal/dm/DMAgentConnector;->PrivateKey:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 334
    const-string v4, "DSA-DMAgentConnector"

    const-string v5, "sendCommand fail:PrivateKey is null"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 335
    goto :goto_0

    .line 337
    :cond_2
    sget-object v4, Lcom/sprint/internal/dm/DMAgentConnector;->PrivateKey:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/sprint/internal/dm/DMAgentConnector;->DmEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 339
    :cond_3
    const-string v4, "DSA-DMAgentConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "request_encrpt:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 342
    iget-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->in:Ljava/io/InputStream;

    .line 343
    const-string v4, ""

    iput-object v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->Result:Ljava/lang/String;

    .line 344
    invoke-direct {p0}, Lcom/sprint/internal/dm/DMAgentConnector;->readRsponse()V

    .line 345
    const-string v4, "DSA-DMAgentConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Result:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sprint/internal/dm/DMAgentConnector;->Result:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    sget-boolean v4, Lcom/sprint/internal/dm/DMAgentConnector;->bEncrypt:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/sprint/internal/dm/DMAgentConnector;->PrivateKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/sprint/internal/dm/DMAgentConnector;->Result:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/sprint/internal/dm/DMAgentConnector;->DmDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, result:Ljava/lang/String;
    :goto_1
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 349
    .local v1, idx:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 350
    const/4 v4, 0x0

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 346
    .end local v1           #idx:I
    .end local v2           #result:Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/sprint/internal/dm/DMAgentConnector;->Result:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DSA-DMAgentConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendCommand fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sprint/internal/dm/DMAgentConnector;->isError:Z

    .line 355
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    .line 356
    goto/16 :goto_0
.end method

.method public sendReadCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "cmdID"

    .prologue
    .line 274
    sget-boolean v2, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 277
    :goto_0
    return-object v2

    .line 275
    :cond_0
    const-string v2, "R"

    invoke-direct {p0, v2, p1}, Lcom/sprint/internal/dm/DMAgentConnector;->transfer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, request:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sprint/internal/dm/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, response:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/sprint/internal/dm/DMAgentConnector;->parseReadResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public sendWriteCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "cmdID"
    .parameter "hex"

    .prologue
    .line 280
    sget-boolean v1, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 282
    :goto_0
    return v1

    .line 281
    :cond_0
    const-string v1, "W"

    invoke-direct {p0, v1, p1, p2}, Lcom/sprint/internal/dm/DMAgentConnector;->transfer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, request:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sprint/internal/dm/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sprint/internal/dm/DMAgentConnector;->parseWriteResponse(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method
