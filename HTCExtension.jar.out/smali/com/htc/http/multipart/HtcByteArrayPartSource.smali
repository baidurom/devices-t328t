.class public Lcom/htc/http/multipart/HtcByteArrayPartSource;
.super Ljava/lang/Object;
.source "HtcByteArrayPartSource.java"

# interfaces
.implements Lcom/htc/http/multipart/HtcPartSource;


# instance fields
.field private bytes:[B

.field private fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .parameter "fileName"
    .parameter "bytes"

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/htc/http/multipart/HtcByteArrayPartSource;->fileName:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/htc/http/multipart/HtcByteArrayPartSource;->bytes:[B

    .line 30
    return-void
.end method


# virtual methods
.method public createInputStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/htc/http/multipart/HtcByteArrayPartSource;->bytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/http/multipart/HtcByteArrayPartSource;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/http/multipart/HtcByteArrayPartSource;->bytes:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method
