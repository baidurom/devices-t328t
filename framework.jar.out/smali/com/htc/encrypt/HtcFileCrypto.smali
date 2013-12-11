.class public Lcom/htc/encrypt/HtcFileCrypto;
.super Ljava/lang/Object;
.source "HtcFileCrypto.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/htc/encrypt/HtcFileCrypto;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/encrypt/HtcFileCrypto;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDecryptedFile(Ljava/lang/String;Landroid/content/Context;)Ljava/io/InputStream;
    .locals 3
    .parameter "path"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    if-nez p1, :cond_0

    .line 37
    invoke-static {p0}, Lcom/htc/encrypt/FileCrypto;->getDecryptedFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 44
    :goto_0
    return-object v1

    .line 40
    :cond_0
    const-string v0, "getDecryptedFile()"

    .line 41
    .local v0, methodName:Ljava/lang/String;
    const-string v1, "getDecryptedFile()"

    invoke-static {v1}, Lcom/htc/encrypt/HtcFileCrypto;->logEntryMethod(Ljava/lang/String;)V

    .line 42
    const-string v1, "getDecryptedFile()"

    invoke-static {v1, p1}, Lcom/htc/encrypt/HtcFileCrypto;->throwExceptionWhenParameterIsNull(Ljava/lang/String;Landroid/content/Context;)V

    .line 43
    const-string v1, "getDecryptedFile()"

    invoke-static {p1}, Lcom/htc/encrypt/HtcFileCrypto;->getPermission(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/htc/encrypt/HtcFileCrypto;->throwExceptionWhenPermissionDenial(Ljava/lang/String;I)V

    .line 44
    invoke-static {p0}, Lcom/htc/encrypt/FileCrypto;->getDecryptedFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0
.end method

.method public static getEncryptedFile(Ljava/lang/String;Landroid/content/Context;)Ljava/io/InputStream;
    .locals 3
    .parameter "path"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    if-nez p1, :cond_0

    .line 52
    invoke-static {p0}, Lcom/htc/encrypt/FileCrypto;->getEncryptedFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 59
    :goto_0
    return-object v1

    .line 55
    :cond_0
    const-string v0, "getEncryptedFile()"

    .line 56
    .local v0, methodName:Ljava/lang/String;
    const-string v1, "getEncryptedFile()"

    invoke-static {v1}, Lcom/htc/encrypt/HtcFileCrypto;->logEntryMethod(Ljava/lang/String;)V

    .line 57
    const-string v1, "getEncryptedFile()"

    invoke-static {v1, p1}, Lcom/htc/encrypt/HtcFileCrypto;->throwExceptionWhenParameterIsNull(Ljava/lang/String;Landroid/content/Context;)V

    .line 58
    const-string v1, "getEncryptedFile()"

    invoke-static {p1}, Lcom/htc/encrypt/HtcFileCrypto;->getPermission(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/htc/encrypt/HtcFileCrypto;->throwExceptionWhenPermissionDenial(Ljava/lang/String;I)V

    .line 59
    invoke-static {p0}, Lcom/htc/encrypt/FileCrypto;->getEncryptedFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0
.end method

.method private static getPermission(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method private static getPidUid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static logEntryMethod(Ljava/lang/String;)V
    .locals 3
    .parameter "methodName"

    .prologue
    .line 69
    sget-object v0, Lcom/htc/encrypt/HtcFileCrypto;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/encrypt/HtcFileCrypto;->getPidUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method private static throwExceptionWhenParameterIsNull(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .parameter "methodName"
    .parameter "context"

    .prologue
    .line 63
    if-nez p1, :cond_0

    .line 64
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parameter context is null in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    return-void
.end method

.method private static throwExceptionWhenPermissionDenial(Ljava/lang/String;I)V
    .locals 3
    .parameter "invokedMethod"
    .parameter "permission"

    .prologue
    .line 80
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: attempt to invoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/encrypt/HtcFileCrypto;->getPidUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    return-void
.end method
