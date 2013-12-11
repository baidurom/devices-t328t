.class public Lcom/sprint/internal/dm/Encrypt;
.super Ljava/lang/Object;
.source "Encrypt.java"


# static fields
.field private static final DefaultValue:Ljava/lang/String; = "0"

.field private static final ENCRYPT_ENABLE:Ljava/lang/String; = "ro.omadm.encryptenable"

.field public static PrivateKey:Ljava/lang/String; = null

.field public static PublicEncryptKey:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Encrypt"

.field private static bEncryptEnable:Z

.field public static bPrivateKey:Z

.field private static me:Lcom/sprint/internal/dm/Encrypt;


# instance fields
.field private Hostname:Ljava/lang/String;

.field private Port:I

.field private bConn:Z

.field private in:Ljava/io/InputStream;

.field private out:Ljava/io/OutputStream;

.field private requestSocket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/internal/dm/Encrypt;->me:Lcom/sprint/internal/dm/Encrypt;

    .line 31
    const-string v0, "0000000000000000"

    sput-object v0, Lcom/sprint/internal/dm/Encrypt;->PublicEncryptKey:Ljava/lang/String;

    .line 32
    sput-boolean v1, Lcom/sprint/internal/dm/Encrypt;->bPrivateKey:Z

    .line 33
    const-string v0, "0000000000000000"

    sput-object v0, Lcom/sprint/internal/dm/Encrypt;->PrivateKey:Ljava/lang/String;

    .line 35
    sput-boolean v1, Lcom/sprint/internal/dm/Encrypt;->bEncryptEnable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "127.0.0.1"

    iput-object v0, p0, Lcom/sprint/internal/dm/Encrypt;->Hostname:Ljava/lang/String;

    .line 23
    const/16 v0, 0x2606

    iput v0, p0, Lcom/sprint/internal/dm/Encrypt;->Port:I

    .line 39
    invoke-direct {p0}, Lcom/sprint/internal/dm/Encrypt;->GetEncryptState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sprint/internal/dm/Encrypt;->bEncryptEnable:Z

    .line 41
    invoke-virtual {p0}, Lcom/sprint/internal/dm/Encrypt;->GetPrivateKey()Ljava/lang/String;

    .line 43
    :cond_0
    return-void
.end method

.method private GetEncryptState()Z
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x1

    return v0
.end method

.method public static getInstance()Lcom/sprint/internal/dm/Encrypt;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/sprint/internal/dm/Encrypt;->me:Lcom/sprint/internal/dm/Encrypt;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/sprint/internal/dm/Encrypt;

    invoke-direct {v0}, Lcom/sprint/internal/dm/Encrypt;-><init>()V

    sput-object v0, Lcom/sprint/internal/dm/Encrypt;->me:Lcom/sprint/internal/dm/Encrypt;

    .line 49
    :cond_0
    sget-object v0, Lcom/sprint/internal/dm/Encrypt;->me:Lcom/sprint/internal/dm/Encrypt;

    return-object v0
.end method


# virtual methods
.method public Conn()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 179
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/sprint/internal/dm/Encrypt;->bConn:Z

    .line 181
    new-instance v2, Ljava/net/Socket;

    iget-object v3, p0, Lcom/sprint/internal/dm/Encrypt;->Hostname:Ljava/lang/String;

    iget v4, p0, Lcom/sprint/internal/dm/Encrypt;->Port:I

    invoke-direct {v2, v3, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/sprint/internal/dm/Encrypt;->requestSocket:Ljava/net/Socket;

    .line 182
    iget-object v2, p0, Lcom/sprint/internal/dm/Encrypt;->requestSocket:Ljava/net/Socket;

    if-nez v2, :cond_0

    .line 198
    :goto_0
    return v1

    .line 187
    :cond_0
    iget-object v2, p0, Lcom/sprint/internal/dm/Encrypt;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/internal/dm/Encrypt;->out:Ljava/io/OutputStream;

    .line 188
    iget-object v2, p0, Lcom/sprint/internal/dm/Encrypt;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 190
    iget-object v2, p0, Lcom/sprint/internal/dm/Encrypt;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/internal/dm/Encrypt;->in:Ljava/io/InputStream;

    .line 191
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sprint/internal/dm/Encrypt;->bConn:Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 198
    :goto_1
    iget-boolean v1, p0, Lcom/sprint/internal/dm/Encrypt;->bConn:Z

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 194
    .local v0, unknownHost:Ljava/net/UnknownHostException;
    iput-boolean v1, p0, Lcom/sprint/internal/dm/Encrypt;->bConn:Z

    goto :goto_1

    .line 195
    .end local v0           #unknownHost:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public DisConn()V
    .locals 2

    .prologue
    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/sprint/internal/dm/Encrypt;->requestSocket:Ljava/net/Socket;

    if-nez v1, :cond_0

    .line 211
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/sprint/internal/dm/Encrypt;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 206
    iget-object v1, p0, Lcom/sprint/internal/dm/Encrypt;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 207
    iget-object v1, p0, Lcom/sprint/internal/dm/Encrypt;->requestSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, ioException:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public DmDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "Key"
    .parameter "EncryptText"

    .prologue
    .line 77
    sget-boolean v5, Lcom/sprint/internal/dm/Encrypt;->bEncryptEnable:Z

    if-eqz v5, :cond_0

    .line 78
    const/4 v1, 0x0

    .line 80
    .local v1, decrypted:[B
    :try_start_0
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "AES"

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 81
    .local v4, secret:Ljavax/crypto/spec/SecretKeySpec;
    const-string v5, "AES/ECB/NoPadding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 82
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 83
    const/4 v5, 0x0

    invoke-virtual {p0, p2, v5}, Lcom/sprint/internal/dm/Encrypt;->HexToStr(Ljava/lang/String;Z)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 87
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v4           #secret:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    .line 88
    .local v3, response:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 89
    if-nez v3, :cond_1

    .line 90
    const-string p2, ""

    .line 96
    .end local v1           #decrypted:[B
    .end local v3           #response:Ljava/lang/String;
    .end local p2
    :cond_0
    :goto_1
    return-object p2

    .line 84
    .restart local v1       #decrypted:[B
    .restart local p2
    :catch_0
    move-exception v2

    .line 85
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 92
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #response:Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    goto :goto_1
.end method

.method public DmEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "Key"
    .parameter "PlainText"

    .prologue
    const/4 v8, 0x0

    .line 53
    sget-boolean v6, Lcom/sprint/internal/dm/Encrypt;->bEncryptEnable:Z

    if-eqz v6, :cond_1

    .line 54
    const/4 v4, 0x0

    .line 55
    .local v4, encrypted:[B
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 56
    .local v1, Length:I
    rem-int/lit8 v6, v1, 0x10

    if-lez v6, :cond_0

    .line 57
    div-int/lit8 v6, v1, 0x10

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v1, v6, 0x10

    .line 59
    :cond_0
    new-array v0, v1, [B

    .line 60
    .local v0, Buffer:[B
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v8, v0, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    :try_start_0
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const-string v7, "AES"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 64
    .local v5, secret:Ljavax/crypto/spec/SecretKeySpec;
    const-string v6, "AES/ECB/NoPadding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 65
    .local v2, cipher:Ljavax/crypto/Cipher;
    const/4 v6, 0x1

    invoke-virtual {v2, v6, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 66
    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 70
    .end local v2           #cipher:Ljavax/crypto/Cipher;
    .end local v5           #secret:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    invoke-virtual {p0, v4}, Lcom/sprint/internal/dm/Encrypt;->StrToHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    .line 72
    .end local v0           #Buffer:[B
    .end local v1           #Length:I
    .end local v4           #encrypted:[B
    .end local p2
    :cond_1
    return-object p2

    .line 67
    .restart local v0       #Buffer:[B
    .restart local v1       #Length:I
    .restart local v4       #encrypted:[B
    .restart local p2
    :catch_0
    move-exception v3

    .line 68
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public GetPrivateKey()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v5, 0x200

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 129
    new-array v1, v5, [B

    .line 130
    .local v1, cmdsend:[B
    new-array v0, v5, [B

    .line 132
    .local v0, cmdresp:[B
    sget-boolean v5, Lcom/sprint/internal/dm/Encrypt;->bPrivateKey:Z

    if-eqz v5, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/sprint/internal/dm/Encrypt;->DisConn()V

    .line 134
    sget-object v4, Lcom/sprint/internal/dm/Encrypt;->PrivateKey:Ljava/lang/String;

    .line 174
    :cond_0
    :goto_0
    return-object v4

    .line 137
    :cond_1
    const/16 v5, 0x77

    aput-byte v5, v1, v8

    .line 138
    aput-byte v8, v1, v7

    .line 139
    invoke-virtual {p0}, Lcom/sprint/internal/dm/Encrypt;->Conn()Z

    move-result v5

    if-ne v5, v7, :cond_0

    .line 140
    iget-boolean v5, p0, Lcom/sprint/internal/dm/Encrypt;->bConn:Z

    if-nez v5, :cond_2

    .line 141
    invoke-virtual {p0}, Lcom/sprint/internal/dm/Encrypt;->DisConn()V

    goto :goto_0

    .line 146
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/sprint/internal/dm/Encrypt;->out:Ljava/io/OutputStream;

    invoke-virtual {v5, v1}, Ljava/io/OutputStream;->write([B)V

    .line 147
    iget-object v5, p0, Lcom/sprint/internal/dm/Encrypt;->out:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 148
    iget-object v5, p0, Lcom/sprint/internal/dm/Encrypt;->in:Ljava/io/InputStream;

    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_1
    iget-boolean v5, p0, Lcom/sprint/internal/dm/Encrypt;->bConn:Z

    if-ne v5, v7, :cond_4

    .line 158
    if-eqz v0, :cond_3

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eq v4, v7, :cond_3

    .line 159
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, result:Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eq v4, v7, :cond_3

    .line 161
    sget-object v4, Lcom/sprint/internal/dm/Encrypt;->PublicEncryptKey:Ljava/lang/String;

    invoke-virtual {p0, v4, v3}, Lcom/sprint/internal/dm/Encrypt;->DmDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/sprint/internal/dm/Encrypt;->PrivateKey:Ljava/lang/String;

    .line 162
    sput-boolean v7, Lcom/sprint/internal/dm/Encrypt;->bPrivateKey:Z

    .line 163
    invoke-virtual {p0}, Lcom/sprint/internal/dm/Encrypt;->DisConn()V

    .line 167
    .end local v3           #result:Ljava/lang/String;
    :cond_3
    sget-object v4, Lcom/sprint/internal/dm/Encrypt;->PrivateKey:Ljava/lang/String;

    goto :goto_0

    .line 149
    :catch_0
    move-exception v2

    .line 151
    .local v2, ioException:Ljava/io/IOException;
    const-string v5, "Encrypt"

    const-string v6, "GetPrivateKey IOException."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iput-boolean v8, p0, Lcom/sprint/internal/dm/Encrypt;->bConn:Z

    .line 153
    invoke-virtual {p0}, Lcom/sprint/internal/dm/Encrypt;->DisConn()V

    goto :goto_1

    .line 169
    .end local v2           #ioException:Ljava/io/IOException;
    :cond_4
    sput-boolean v7, Lcom/sprint/internal/dm/Encrypt;->bPrivateKey:Z

    .line 170
    invoke-virtual {p0}, Lcom/sprint/internal/dm/Encrypt;->DisConn()V

    goto :goto_0
.end method

.method public HexToStr(Ljava/lang/String;Z)[B
    .locals 7
    .parameter "input"
    .parameter "lowercase"

    .prologue
    .line 102
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0123456789"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p2, :cond_0

    const-string v5, "ABCDEF"

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, digital:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 104
    .local v2, hex2char:[C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    new-array v0, v5, [B

    .line 106
    .local v0, bytes:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_1

    .line 107
    mul-int/lit8 v5, v3, 0x2

    aget-char v5, v2, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    mul-int/lit8 v4, v5, 0x10

    .line 108
    .local v4, temp:I
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-char v5, v2, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 109
    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    .line 106
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 102
    .end local v0           #bytes:[B
    .end local v1           #digital:Ljava/lang/String;
    .end local v2           #hex2char:[C
    .end local v3           #i:I
    .end local v4           #temp:I
    :cond_0
    const-string v5, "abcdef"

    goto :goto_0

    .line 111
    .restart local v0       #bytes:[B
    .restart local v1       #digital:Ljava/lang/String;
    .restart local v2       #hex2char:[C
    .restart local v3       #i:I
    :cond_1
    return-object v0
.end method

.method public StrToHex([B)Ljava/lang/String;
    .locals 6
    .parameter "bytes"

    .prologue
    const/4 v5, 0x1

    .line 115
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 116
    .local v1, rslt:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 117
    aget-byte v3, p1, v0

    if-ltz v3, :cond_1

    aget-byte v3, p1, v0

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 121
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    .end local v2           #s:Ljava/lang/String;
    :cond_1
    aget-byte v3, p1, v0

    add-int/lit16 v3, v3, 0x100

    goto :goto_1

    .line 123
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
