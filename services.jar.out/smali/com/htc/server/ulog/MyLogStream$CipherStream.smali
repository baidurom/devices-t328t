.class final Lcom/htc/server/ulog/MyLogStream$CipherStream;
.super Ljava/lang/Object;
.source "StatLogStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/ulog/MyLogStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CipherStream"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 438
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCipherInputStream(Ljava/io/InputStream;[B)Ljavax/crypto/CipherInputStream;
    .locals 4
    .parameter "is"
    .parameter "seed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 449
    invoke-static {p1}, Lcom/htc/server/ulog/MyLogStream$CipherStream;->getRawKey([B)[B

    move-result-object v1

    .line 450
    .local v1, aesKey:[B
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 451
    .local v2, aeskeySpec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 452
    .local v0, aesCipher:Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 453
    new-instance v3, Ljavax/crypto/CipherInputStream;

    invoke-direct {v3, p0, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v3
.end method

.method public static getCipherOutputStream(Ljava/io/OutputStream;[B)Ljavax/crypto/CipherOutputStream;
    .locals 4
    .parameter "os"
    .parameter "seed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 441
    invoke-static {p1}, Lcom/htc/server/ulog/MyLogStream$CipherStream;->getRawKey([B)[B

    move-result-object v1

    .line 442
    .local v1, aesKey:[B
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 443
    .local v2, aeskeySpec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 444
    .local v0, aesCipher:Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 445
    new-instance v3, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v3, p0, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v3
.end method

.method private static getRawKey([B)[B
    .locals 5
    .parameter "seed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 457
    const-string v4, "AES"

    invoke-static {v4}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 458
    .local v0, kgen:Ljavax/crypto/KeyGenerator;
    const-string v4, "SHA1PRNG"

    invoke-static {v4}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v3

    .line 459
    .local v3, sr:Ljava/security/SecureRandom;
    invoke-virtual {v3, p0}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 460
    const/16 v4, 0x80

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 461
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 462
    .local v2, skey:Ljavax/crypto/SecretKey;
    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    .line 463
    .local v1, raw:[B
    return-object v1
.end method
