.class final Lcom/htc/encrypt/CipherGeneratorFactory$1;
.super Ljava/lang/Object;
.source "CipherGeneratorFactory.java"

# interfaces
.implements Lcom/htc/encrypt/CipherGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/encrypt/CipherGeneratorFactory;->getDESedeCipherGenerator()Lcom/htc/encrypt/CipherGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCipher(I)Ljavax/crypto/Cipher;
    .locals 5
    .parameter "operationMode"

    .prologue
    .line 55
    const/16 v4, 0x18

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    .line 56
    .local v0, KEY_DATA:[B
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "DESede"

    invoke-direct {v3, v0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 57
    .local v3, secretKeySpec:Ljavax/crypto/spec/SecretKeySpec;
    const/4 v1, 0x0

    .line 60
    .local v1, cipher:Ljavax/crypto/Cipher;
    :try_start_0
    const-string v4, "DESede/ECB/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 61
    invoke-virtual {v1, p1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2

    .line 70
    :goto_0
    return-object v1

    .line 62
    :catch_0
    move-exception v2

    .line 63
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 64
    .end local v2           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v2

    .line 65
    .local v2, e:Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v2}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_0

    .line 66
    .end local v2           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v2

    .line 67
    .local v2, e:Ljava/security/InvalidKeyException;
    invoke-virtual {v2}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    .line 55
    :array_0
    .array-data 0x1
        0x1t
        0x8t
        0xcft
        0xe1t
        0x4dt
        0x5at
        0xat
        0x79t
        0xf2t
        0x6dt
        0x6bt
        0x26t
        0x1dt
        0x44t
        0x3bt
        0x5t
        0x52t
        0x31t
        0x1ft
        0x2at
        0xe7t
        0x43t
        0x60t
        0xft
    .end array-data
.end method


# virtual methods
.method public getDecryptCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 1
    .parameter "password"

    .prologue
    .line 47
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/htc/encrypt/CipherGeneratorFactory$1;->getCipher(I)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 1
    .parameter "password"

    .prologue
    .line 43
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/encrypt/CipherGeneratorFactory$1;->getCipher(I)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()B
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method
