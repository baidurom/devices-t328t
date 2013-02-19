.class public Lcom/htc/util/mail/lib/org/apache/commons/io/input/SwappedDataInputStream;
.super Lcom/htc/util/mail/lib/org/apache/commons/io/input/ProxyInputStream;
.source "SwappedDataInputStream.java"

# interfaces
.implements Ljava/io/DataInput;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter "input"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    .line 48
    return-void
.end method


# virtual methods
.method public readBoolean()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/SwappedDataInputStream;->readByte()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readByte()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public readChar()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/SwappedDataInputStream;->readShort()S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/EndianUtils;->readSwappedDouble(Ljava/io/InputStream;)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/EndianUtils;->readSwappedFloat(Ljava/io/InputStream;)F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 144
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/SwappedDataInputStream;->readFully([BII)V

    .line 145
    return-void
.end method

.method public readFully([BII)V
    .locals 4
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 164
    move v2, p3

    .line 166
    .local v2, remaining:I
    :goto_0
    if-lez v2, :cond_1

    .line 168
    sub-int v3, p3, v2

    add-int v1, p2, v3

    .line 169
    .local v1, location:I
    invoke-virtual {p0, p1, v1, v2}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/SwappedDataInputStream;->read([BII)I

    move-result v0

    .line 171
    .local v0, count:I
    const/4 v3, -0x1

    if-ne v3, v0, :cond_0

    .line 173
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 176
    :cond_0
    sub-int/2addr v2, v0

    .line 177
    goto :goto_0

    .line 178
    .end local v0           #count:I
    .end local v1           #location:I
    :cond_1
    return-void
.end method

.method public readInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/EndianUtils;->readSwappedInteger(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported: readLine()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/EndianUtils;->readSwappedLong(Ljava/io/InputStream;)J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/EndianUtils;->readSwappedShort(Ljava/io/InputStream;)S

    move-result v0

    return v0
.end method

.method public readUTF()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 290
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported: readUTF()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readUnsignedByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public readUnsignedShort()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/EndianUtils;->readSwappedUnsignedShort(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public skipBytes(I)I
    .locals 3
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
