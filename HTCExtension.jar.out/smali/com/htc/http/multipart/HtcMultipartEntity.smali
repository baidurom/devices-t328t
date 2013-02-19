.class public Lcom/htc/http/multipart/HtcMultipartEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "HtcMultipartEntity.java"


# static fields
.field public static final MULTIPART_BOUNDARY:Ljava/lang/String; = "http.method.multipart.boundary"

.field private static MULTIPART_CHARS:[B = null

.field private static final MULTIPART_FORM_CONTENT_TYPE:Ljava/lang/String; = "multipart/form-data"


# instance fields
.field private contentConsumed:Z

.field private multipartBoundary:[B

.field private params:Lorg/apache/http/params/HttpParams;

.field protected parts:[Lcom/htc/http/multipart/HtcPart;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/htc/http/multipart/HtcMultipartEntity;->MULTIPART_CHARS:[B

    return-void
.end method

.method public constructor <init>([Lcom/htc/http/multipart/HtcPart;)V
    .locals 2
    .parameter "parts"

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/http/multipart/HtcMultipartEntity;->contentConsumed:Z

    .line 87
    const-string v0, "multipart/form-data"

    invoke-virtual {p0, v0}, Lcom/htc/http/multipart/HtcMultipartEntity;->setContentType(Ljava/lang/String;)V

    .line 88
    if-nez p1, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parts cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    iput-object p1, p0, Lcom/htc/http/multipart/HtcMultipartEntity;->parts:[Lcom/htc/http/multipart/HtcPart;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/http/multipart/HtcMultipartEntity;->params:Lorg/apache/http/params/HttpParams;

    .line 93
    return-void
.end method

.method public constructor <init>([Lcom/htc/http/multipart/HtcPart;Lorg/apache/http/params/HttpParams;)V
    .locals 2
    .parameter "parts"
    .parameter "params"

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/http/multipart/HtcMultipartEntity;->contentConsumed:Z

    .line 76
    if-nez p1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parts cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    if-nez p2, :cond_1

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "params cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    iput-object p1, p0, Lcom/htc/http/multipart/HtcMultipartEntity;->parts:[Lcom/htc/http/multipart/HtcPart;

    .line 83
    iput-object p2, p0, Lcom/htc/http/multipart/HtcMultipartEntity;->params:Lorg/apache/http/params/HttpParams;

    .line 84
    return-void
.end method

.method private static generateMultipartBoundary()[B
    .locals 5

    .prologue
    .line 46
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 47
    .local v2, rand:Ljava/util/Random;
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1e

    new-array v0, v3, [B

    .line 48
    .local v0, bytes:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 49
    sget-object v3, Lcom/htc/http/multipart/HtcMultipartEntity;->MULTIPART_CHARS:[B

    sget-object v4, Lcom/htc/http/multipart/HtcMultipartEntity;->MULTIPART_CHARS:[B

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-byte v3, v3, v4

    aput-byte v3, v0, v1

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/htc/http/multipart/HtcMultipartEntity;->isRepeatable()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/http/multipart/HtcMultipartEntity;->contentConsumed:Z

    if-eqz v2, :cond_0

    .line 187
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Content has been consumed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 189
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/http/multipart/HtcMultipartEntity;->contentConsumed:Z

    .line 191
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 192
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lcom/htc/http/multipart/HtcMultipartEntity;->parts:[Lcom/htc/http/multipart/HtcPart;

    iget-object v3, p0, Lcom/htc/http/multipart/HtcMultipartEntity;->multipartBoundary:[B

    invoke-static {v1, v2, v3}, Lcom/htc/http/multipart/HtcPart;->sendParts(Ljava/io/OutputStream;[Lcom/htc/http/multipart/HtcPart;[B)V

    .line 193
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 194
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    return-object v0
.end method

.method public getContentLength()J
    .locals 3

    .prologue
    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/htc/http/multipart/HtcMultipartEntity;->parts:[Lcom/htc/http/multipart/HtcPart;

    invoke-virtual {p0}, Lcom/htc/http/multipart/HtcMultipartEntity;->getMultipartBoundary()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/http/multipart/HtcPart;->getLengthOfParts([Lcom/htc/http/multipart/HtcPart;[B)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 177
    :goto_0
    return-wide v1

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 177
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 4

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "multipart/form-data"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, buffer:Ljava/lang/StringBuffer;
    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    invoke-virtual {p0}, Lcom/htc/http/multipart/HtcMultipartEntity;->getMultipartBoundary()[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EncodingUtils;->getAsciiString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Content-Type"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method protected getMultipartBoundary()[B
    .locals 3

    .prologue
    .line 106
    iget-object v1, p0, Lcom/htc/http/multipart/HtcMultipartEntity;->multipartBoundary:[B

    if-nez v1, :cond_1

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, temp:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/http/multipart/HtcMultipartEntity;->params:Lorg/apache/http/params/HttpParams;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/htc/http/multipart/HtcMultipartEntity;->params:Lorg/apache/http/params/HttpParams;

    const-string v2, "http.method.multipart.boundary"

    invoke-interface {v1, v2}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #temp:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 111
    .restart local v0       #temp:Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_2

    .line 112
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/htc/http/multipart/HtcMultipartEntity;->multipartBoundary:[B

    .line 117
    .end local v0           #temp:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/htc/http/multipart/HtcMultipartEntity;->multipartBoundary:[B

    return-object v1

    .line 114
    .restart local v0       #temp:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/htc/http/multipart/HtcMultipartEntity;->generateMultipartBoundary()[B

    move-result-object v1

    iput-object v1, p0, Lcom/htc/http/multipart/HtcMultipartEntity;->multipartBoundary:[B

    goto :goto_0
.end method

.method protected getParts()[Lcom/htc/http/multipart/HtcPart;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/htc/http/multipart/HtcMultipartEntity;->parts:[Lcom/htc/http/multipart/HtcPart;

    return-object v0
.end method

.method public isRepeatable()Z
    .locals 2

    .prologue
    .line 128
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/http/multipart/HtcMultipartEntity;->parts:[Lcom/htc/http/multipart/HtcPart;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/htc/http/multipart/HtcMultipartEntity;->parts:[Lcom/htc/http/multipart/HtcPart;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/http/multipart/HtcPart;->isRepeatable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    const/4 v1, 0x0

    .line 133
    :goto_1
    return v1

    .line 128
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method protected setParts([Lcom/htc/http/multipart/HtcPart;)V
    .locals 0
    .parameter "parts"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/htc/http/multipart/HtcMultipartEntity;->parts:[Lcom/htc/http/multipart/HtcPart;

    .line 219
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/htc/http/multipart/HtcMultipartEntity;->parts:[Lcom/htc/http/multipart/HtcPart;

    invoke-virtual {p0}, Lcom/htc/http/multipart/HtcMultipartEntity;->getMultipartBoundary()[B

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/htc/http/multipart/HtcPart;->sendParts(Ljava/io/OutputStream;[Lcom/htc/http/multipart/HtcPart;[B)V

    .line 145
    return-void
.end method
