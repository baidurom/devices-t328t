.class public Lcom/htc/http/multipart/HtcFilePartSource;
.super Ljava/lang/Object;
.source "HtcFilePartSource.java"

# interfaces
.implements Lcom/htc/http/multipart/HtcPartSource;


# instance fields
.field private file:Ljava/io/File;

.field private fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/htc/http/multipart/HtcFilePartSource;->file:Ljava/io/File;

    .line 19
    iput-object v0, p0, Lcom/htc/http/multipart/HtcFilePartSource;->fileName:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/htc/http/multipart/HtcFilePartSource;->file:Ljava/io/File;

    .line 31
    if-eqz p1, :cond_2

    .line 32
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "File is not a normal file."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_1

    .line 36
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "File is not readable."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/http/multipart/HtcFilePartSource;->fileName:Ljava/lang/String;

    .line 40
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .parameter "fileName"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p2}, Lcom/htc/http/multipart/HtcFilePartSource;-><init>(Ljava/io/File;)V

    .line 54
    if-eqz p1, :cond_0

    .line 55
    iput-object p1, p0, Lcom/htc/http/multipart/HtcFilePartSource;->fileName:Ljava/lang/String;

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public createInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/http/multipart/HtcFilePartSource;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/htc/http/multipart/HtcFilePartSource;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 103
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/http/multipart/HtcFilePartSource;->fileName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "noname"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/http/multipart/HtcFilePartSource;->fileName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/http/multipart/HtcFilePartSource;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/htc/http/multipart/HtcFilePartSource;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 72
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
