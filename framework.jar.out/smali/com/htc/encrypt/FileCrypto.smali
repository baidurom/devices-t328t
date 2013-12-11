.class public Lcom/htc/encrypt/FileCrypto;
.super Ljava/lang/Object;
.source "FileCrypto.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDecryptedFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "inPath"
    .parameter "outPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-static {p0}, Lcom/htc/encrypt/FileCrypto;->getDecryptedFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 105
    .local v0, in:Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 107
    .local v1, out:Ljava/io/OutputStream;
    invoke-static {v0, v1}, Lcom/htc/encrypt/FileCrypto;->writeDataToFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 108
    return-void
.end method

.method public static createEncryptedFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "inPath"
    .parameter "outPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-static {p0}, Lcom/htc/encrypt/FileCrypto;->getEncryptedFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 116
    .local v0, in:Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 118
    .local v1, out:Ljava/io/OutputStream;
    invoke-static {v0, v1}, Lcom/htc/encrypt/FileCrypto;->writeDataToFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 119
    return-void
.end method

.method private static getCipherGeneratorByVersion(I)Lcom/htc/encrypt/CipherGenerator;
    .locals 3
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {p0}, Lcom/htc/encrypt/CipherGeneratorFactory;->getCipherGeneratorByVersion(I)Lcom/htc/encrypt/CipherGenerator;

    move-result-object v1

    .line 56
    .local v1, result:Lcom/htc/encrypt/CipherGenerator;
    if-nez v1, :cond_0

    .line 57
    invoke-static {}, Lcom/htc/encrypt/FileCrypto;->getNullCipherGeneratorErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, error:Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    .end local v0           #error:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private static getCipherGeneratorVersion()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public static getDecryptedFile(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 35
    :cond_0
    invoke-static {p0}, Lcom/htc/encrypt/FileCrypto;->getDecryptedInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method private static getDecryptedInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, encryptStreamWithCipherVersion:Ljava/io/InputStream;
    invoke-static {v0}, Lcom/htc/encrypt/FileCrypto;->removeCipherGeneratorVersion(Ljava/io/InputStream;)I

    move-result v2

    .line 41
    .local v2, version:I
    invoke-static {v2}, Lcom/htc/encrypt/FileCrypto;->getCipherGeneratorByVersion(I)Lcom/htc/encrypt/CipherGenerator;

    move-result-object v1

    .line 42
    .local v1, generator:Lcom/htc/encrypt/CipherGenerator;
    new-instance v3, Ljavax/crypto/CipherInputStream;

    invoke-static {}, Lcom/htc/encrypt/FileCrypto;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/htc/encrypt/CipherGenerator;->getDecryptCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v3
.end method

.method public static getEncryptedFile(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_0
    invoke-static {p0}, Lcom/htc/encrypt/FileCrypto;->getEncryptedInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method private static getEncryptedInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-static {}, Lcom/htc/encrypt/FileCrypto;->getCipherGeneratorVersion()I

    move-result v1

    invoke-static {v1}, Lcom/htc/encrypt/FileCrypto;->getCipherGeneratorByVersion(I)Lcom/htc/encrypt/CipherGenerator;

    move-result-object v0

    .line 90
    .local v0, generator:Lcom/htc/encrypt/CipherGenerator;
    invoke-static {p0, v0}, Lcom/htc/encrypt/FileCrypto;->prefixWithCipherGeneratorVersion(Ljava/lang/String;Lcom/htc/encrypt/CipherGenerator;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method private static getNullCipherGeneratorErrorMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .local v0, error:Ljava/lang/StringBuilder;
    const-string v1, "Cannot get "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-class v1, Lcom/htc/encrypt/CipherGenerator;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-class v1, Lcom/htc/encrypt/CipherGeneratorFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method private static prefixWithCipherGeneratorVersion(Ljava/lang/String;Lcom/htc/encrypt/CipherGenerator;)Ljava/io/InputStream;
    .locals 5
    .parameter "path"
    .parameter "generator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 94
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/htc/encrypt/CipherGenerator;->getVersion()B

    move-result v4

    aput-byte v4, v2, v3

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 95
    .local v1, version:Ljava/io/InputStream;
    new-instance v0, Ljavax/crypto/CipherInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/htc/encrypt/FileCrypto;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/htc/encrypt/CipherGenerator;->getEncryptCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 96
    .local v0, cipher:Ljava/io/InputStream;
    new-instance v2, Ljava/io/SequenceInputStream;

    invoke-direct {v2, v1, v0}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    return-object v2
.end method

.method private static removeCipherGeneratorVersion(Ljava/io/InputStream;)I
    .locals 1
    .parameter "encryptStreamWithCipherVersion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method private static writeDataToFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .parameter "in"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 122
    if-nez p0, :cond_0

    .line 123
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Argument InputStream is null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_0
    if-nez p1, :cond_1

    .line 127
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Argument OutputStream is null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 131
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 133
    .local v0, data:I
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 134
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 135
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto :goto_0

    .line 138
    .end local v0           #data:I
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 139
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 140
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 138
    throw v1

    .restart local v0       #data:I
    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 139
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 140
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 142
    return-void
.end method
