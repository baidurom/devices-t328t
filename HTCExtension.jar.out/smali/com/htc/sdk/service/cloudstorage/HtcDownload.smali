.class public abstract Lcom/htc/sdk/service/cloudstorage/HtcDownload;
.super Ljava/lang/Object;
.source "HtcDownload.java"


# instance fields
.field inputStream:Ljava/io/InputStream;

.field localPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getInputStream()Ljava/io/InputStream;
.end method

.method public abstract getLocalPath()Ljava/lang/String;
.end method

.method public abstract setInputStream(Ljava/io/InputStream;)V
.end method

.method public abstract setLocalPath(Ljava/lang/String;)V
.end method
