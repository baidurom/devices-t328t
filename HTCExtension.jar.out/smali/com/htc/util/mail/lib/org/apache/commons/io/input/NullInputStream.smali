.class public Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;
.super Ljava/io/InputStream;
.source "NullInputStream.java"


# instance fields
.field private eof:Z

.field private mark:J

.field private markSupported:Z

.field private position:J

.field private readlimit:J

.field private size:J

.field private throwEofException:Z


# direct methods
.method public constructor <init>(J)V
    .locals 2
    .parameter "size"

    .prologue
    .line 80
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;-><init>(JZZ)V

    .line 81
    return-void
.end method

.method public constructor <init>(JZZ)V
    .locals 2
    .parameter "size"
    .parameter "markSupported"
    .parameter "throwEofException"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 67
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->mark:J

    .line 95
    iput-wide p1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->size:J

    .line 96
    iput-boolean p3, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->markSupported:Z

    .line 97
    iput-boolean p4, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->throwEofException:Z

    .line 98
    return-void
.end method

.method private doEndOfFile()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->eof:Z

    .line 367
    iget-boolean v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->throwEofException:Z

    if-eqz v0, :cond_0

    .line 368
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 370
    :cond_0
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public available()I
    .locals 6

    .prologue
    .line 136
    iget-wide v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->size:J

    iget-wide v4, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->position:J

    sub-long v0, v2, v4

    .line 137
    .local v0, avail:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 138
    const/4 v2, 0x0

    .line 142
    :goto_0
    return v2

    .line 139
    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 140
    const v2, 0x7fffffff

    goto :goto_0

    .line 142
    :cond_1
    long-to-int v2, v0

    goto :goto_0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->eof:Z

    .line 158
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->position:J

    .line 159
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->mark:J

    .line 160
    return-void
.end method

.method public getPosition()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->position:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->size:J

    return-wide v0
.end method

.method public declared-synchronized mark(I)V
    .locals 2
    .parameter "readlimit"

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->markSupported:Z

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 177
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->position:J

    iput-wide v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->mark:J

    .line 178
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->readlimit:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->markSupported:Z

    return v0
.end method

.method protected processByte()I
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method protected processBytes([BII)V
    .locals 0
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 355
    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->eof:Z

    if-eqz v0, :cond_0

    .line 210
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Read after end of file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    iget-wide v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->size:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 213
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->doEndOfFile()I

    move-result v0

    .line 216
    :goto_0
    return v0

    .line 215
    :cond_1
    iget-wide v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->position:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->position:J

    .line 216
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->processByte()I

    move-result v0

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    iget-boolean v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->eof:Z

    if-eqz v1, :cond_0

    .line 249
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Read after end of file"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_0
    iget-wide v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v3, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->size:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 252
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->doEndOfFile()I

    move-result v0

    .line 261
    :goto_0
    return v0

    .line 254
    :cond_1
    iget-wide v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->position:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->position:J

    .line 255
    move v0, p3

    .line 256
    .local v0, returnLength:I
    iget-wide v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v3, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->size:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 257
    iget-wide v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v3, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->size:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    sub-int v0, p3, v1

    .line 258
    iget-wide v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->size:J

    iput-wide v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->position:J

    .line 260
    :cond_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->processBytes([BII)V

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->markSupported:Z

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 280
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->mark:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 281
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No position has been marked"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_1
    iget-wide v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->mark:J

    iget-wide v4, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->readlimit:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 284
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Marked position ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->mark:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is no longer valid - passed the read limit ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->readlimit:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_2
    iget-wide v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->mark:J

    iput-wide v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->position:J

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->eof:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    monitor-exit p0

    return-void
.end method

.method public skip(J)J
    .locals 6
    .parameter "numberOfBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    iget-boolean v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->eof:Z

    if-eqz v2, :cond_0

    .line 309
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Skip after end of file"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 311
    :cond_0
    iget-wide v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v4, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->size:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 312
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->doEndOfFile()I

    move-result v2

    int-to-long v0, v2

    .line 320
    :cond_1
    :goto_0
    return-wide v0

    .line 314
    :cond_2
    iget-wide v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->position:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->position:J

    .line 315
    move-wide v0, p1

    .line 316
    .local v0, returnLength:J
    iget-wide v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v4, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->size:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 317
    iget-wide v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v4, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->size:J

    sub-long/2addr v2, v4

    sub-long v0, p1, v2

    .line 318
    iget-wide v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->size:J

    iput-wide v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/NullInputStream;->position:J

    goto :goto_0
.end method
