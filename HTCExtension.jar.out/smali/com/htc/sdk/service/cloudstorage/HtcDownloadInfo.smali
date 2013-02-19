.class public abstract Lcom/htc/sdk/service/cloudstorage/HtcDownloadInfo;
.super Ljava/lang/Object;
.source "HtcDownloadInfo.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field localPath:Ljava/lang/String;

.field outputStream:Ljava/io/FileInputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getInputStream()Ljava/io/FileInputStream;
.end method

.method public abstract getLocalPath()Ljava/lang/String;
.end method

.method public abstract setInputStream(Ljava/io/FileInputStream;)V
.end method

.method public abstract setLocalPath(Ljava/lang/String;)V
.end method
