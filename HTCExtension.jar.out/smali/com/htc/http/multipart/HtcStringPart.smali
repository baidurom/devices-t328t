.class public Lcom/htc/http/multipart/HtcStringPart;
.super Lcom/htc/http/multipart/HtcPartBase;
.source "HtcStringPart.java"


# static fields
.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "US-ASCII"

.field public static final DEFAULT_CONTENT_TYPE:Ljava/lang/String; = "text/plain"

.field public static final DEFAULT_TRANSFER_ENCODING:Ljava/lang/String; = "8bit"

.field private static final LOG:Lorg/apache/commons/logging/Log;


# instance fields
.field private content:[B

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/htc/http/multipart/HtcStringPart;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/htc/http/multipart/HtcStringPart;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/http/multipart/HtcStringPart;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "value"
    .parameter "charset"

    .prologue
    .line 56
    const-string v0, "text/plain"

    if-nez p3, :cond_0

    const-string p3, "US-ASCII"

    .end local p3
    :cond_0
    const-string v1, "8bit"

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/htc/http/multipart/HtcPartBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    if-nez p2, :cond_1

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NULs may not be present in string parts"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_2
    iput-object p2, p0, Lcom/htc/http/multipart/HtcStringPart;->value:Ljava/lang/String;

    .line 70
    return-void
.end method

.method private getContent()[B
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/http/multipart/HtcStringPart;->content:[B

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/htc/http/multipart/HtcStringPart;->value:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/http/multipart/HtcStringPart;->getCharSet()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/htc/http/multipart/HtcStringPart;->content:[B

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/htc/http/multipart/HtcStringPart;->content:[B

    return-object v0
.end method


# virtual methods
.method protected lengthOfData()J
    .locals 2

    .prologue
    .line 121
    sget-object v0, Lcom/htc/http/multipart/HtcStringPart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter lengthOfData()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 122
    invoke-direct {p0}, Lcom/htc/http/multipart/HtcStringPart;->getContent()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method protected sendData(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    sget-object v0, Lcom/htc/http/multipart/HtcStringPart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter sendData(OutputStream)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 107
    invoke-direct {p0}, Lcom/htc/http/multipart/HtcStringPart;->getContent()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 108
    return-void
.end method

.method public setCharSet(Ljava/lang/String;)V
    .locals 1
    .parameter "charSet"

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/htc/http/multipart/HtcPartBase;->setCharSet(Ljava/lang/String;)V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/http/multipart/HtcStringPart;->content:[B

    .line 136
    return-void
.end method
