.class public Lcom/htc/util/mail/lib/org/apache/commons/io/input/AutoCloseInputStream;
.super Lcom/htc/util/mail/lib/org/apache/commons/io/input/ProxyInputStream;
.source "AutoCloseInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    .line 46
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 67
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/ClosedInputStream;

    invoke-direct {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/ClosedInputStream;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    .line 68
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/AutoCloseInputStream;->close()V

    .line 138
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 139
    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 84
    .local v0, n:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/AutoCloseInputStream;->close()V

    .line 87
    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 101
    .local v0, n:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/AutoCloseInputStream;->close()V

    .line 104
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 120
    .local v0, n:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/AutoCloseInputStream;->close()V

    .line 123
    :cond_0
    return v0
.end method
