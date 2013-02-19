.class public Lcom/htc/http/multipart/HtcFilePart;
.super Lcom/htc/http/multipart/HtcPartBase;
.source "HtcFilePart.java"


# static fields
.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "ISO-8859-1"

.field public static final DEFAULT_CONTENT_TYPE:Ljava/lang/String; = "application/octet-stream"

.field public static final DEFAULT_TRANSFER_ENCODING:Ljava/lang/String; = "binary"

.field protected static final FILE_NAME:Ljava/lang/String; = "; filename="

.field private static final FILE_NAME_BYTES:[B

.field private static final LOG:Lorg/apache/commons/logging/Log;


# instance fields
.field private source:Lcom/htc/http/multipart/HtcPartSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/htc/http/multipart/HtcFilePart;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/htc/http/multipart/HtcFilePart;->LOG:Lorg/apache/commons/logging/Log;

    .line 50
    const-string v0, "; filename="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/htc/http/multipart/HtcFilePart;->FILE_NAME_BYTES:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/htc/http/multipart/HtcPartSource;)V
    .locals 1
    .parameter "name"
    .parameter "partSource"

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/htc/http/multipart/HtcFilePart;-><init>(Ljava/lang/String;Lcom/htc/http/multipart/HtcPartSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/htc/http/multipart/HtcPartSource;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "partSource"
    .parameter "contentType"
    .parameter "charset"

    .prologue
    .line 68
    if-nez p3, :cond_0

    const-string p3, "application/octet-stream"

    .end local p3
    :cond_0
    if-nez p4, :cond_1

    const-string p4, "ISO-8859-1"

    .end local p4
    :cond_1
    const-string v0, "binary"

    invoke-direct {p0, p1, p3, p4, v0}, Lcom/htc/http/multipart/HtcPartBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    if-nez p2, :cond_2

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_2
    iput-object p2, p0, Lcom/htc/http/multipart/HtcFilePart;->source:Lcom/htc/http/multipart/HtcPartSource;

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .parameter "name"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 102
    new-instance v0, Lcom/htc/http/multipart/HtcFilePartSource;

    invoke-direct {v0, p2}, Lcom/htc/http/multipart/HtcFilePartSource;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/htc/http/multipart/HtcFilePart;-><init>(Ljava/lang/String;Lcom/htc/http/multipart/HtcPartSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "file"
    .parameter "contentType"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Lcom/htc/http/multipart/HtcFilePartSource;

    invoke-direct {v0, p2}, Lcom/htc/http/multipart/HtcFilePartSource;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/htc/http/multipart/HtcFilePart;-><init>(Ljava/lang/String;Lcom/htc/http/multipart/HtcPartSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .parameter "name"
    .parameter "fileName"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 135
    new-instance v0, Lcom/htc/http/multipart/HtcFilePartSource;

    invoke-direct {v0, p2, p3}, Lcom/htc/http/multipart/HtcFilePartSource;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/htc/http/multipart/HtcFilePart;-><init>(Ljava/lang/String;Lcom/htc/http/multipart/HtcPartSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "fileName"
    .parameter "file"
    .parameter "contentType"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Lcom/htc/http/multipart/HtcFilePartSource;

    invoke-direct {v0, p2, p3}, Lcom/htc/http/multipart/HtcFilePartSource;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-direct {p0, p1, v0, p4, p5}, Lcom/htc/http/multipart/HtcFilePart;-><init>(Ljava/lang/String;Lcom/htc/http/multipart/HtcPartSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method


# virtual methods
.method protected getSource()Lcom/htc/http/multipart/HtcPartSource;
    .locals 2

    .prologue
    .line 226
    sget-object v0, Lcom/htc/http/multipart/HtcFilePart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter getSource()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 227
    iget-object v0, p0, Lcom/htc/http/multipart/HtcFilePart;->source:Lcom/htc/http/multipart/HtcPartSource;

    return-object v0
.end method

.method protected lengthOfData()J
    .locals 2

    .prologue
    .line 241
    sget-object v0, Lcom/htc/http/multipart/HtcFilePart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter lengthOfData()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 242
    iget-object v0, p0, Lcom/htc/http/multipart/HtcFilePart;->source:Lcom/htc/http/multipart/HtcPartSource;

    invoke-interface {v0}, Lcom/htc/http/multipart/HtcPartSource;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method protected sendData(Ljava/io/OutputStream;)V
    .locals 7
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    sget-object v3, Lcom/htc/http/multipart/HtcFilePart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "enter sendData(OutputStream out)"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 194
    invoke-virtual {p0}, Lcom/htc/http/multipart/HtcFilePart;->lengthOfData()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 199
    sget-object v3, Lcom/htc/http/multipart/HtcFilePart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "No data to send."

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 214
    :goto_0
    return-void

    .line 203
    :cond_0
    const/16 v3, 0x1000

    new-array v2, v3, [B

    .line 204
    .local v2, tmp:[B
    iget-object v3, p0, Lcom/htc/http/multipart/HtcFilePart;->source:Lcom/htc/http/multipart/HtcPartSource;

    invoke-interface {v3}, Lcom/htc/http/multipart/HtcPartSource;->createInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 207
    .local v0, instream:Ljava/io/InputStream;
    :goto_1
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, len:I
    if-ltz v1, :cond_1

    .line 208
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 212
    .end local v1           #len:I
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v3

    .restart local v1       #len:I
    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0
.end method

.method protected sendDispositionHeader(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    sget-object v1, Lcom/htc/http/multipart/HtcFilePart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter sendDispositionHeader(OutputStream out)"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 171
    invoke-super {p0, p1}, Lcom/htc/http/multipart/HtcPartBase;->sendDispositionHeader(Ljava/io/OutputStream;)V

    .line 172
    iget-object v1, p0, Lcom/htc/http/multipart/HtcFilePart;->source:Lcom/htc/http/multipart/HtcPartSource;

    invoke-interface {v1}, Lcom/htc/http/multipart/HtcPartSource;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, filename:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 174
    sget-object v1, Lcom/htc/http/multipart/HtcFilePart;->FILE_NAME_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 175
    sget-object v1, Lcom/htc/http/multipart/HtcFilePart;->QUOTE_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 176
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 177
    sget-object v1, Lcom/htc/http/multipart/HtcFilePart;->QUOTE_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 179
    :cond_0
    return-void
.end method
