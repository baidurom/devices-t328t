.class Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$1;
.super Ljava/lang/Object;
.source "FilePickerCloudHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->terminatedDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1777
    iput-object p1, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$1;->this$1:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1780
    iget-object v2, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$1;->this$1:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->getDownload()Lcom/htc/sdk/service/cloudstorage/HtcDownload;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1781
    iget-object v2, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$1;->this$1:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->getDownload()Lcom/htc/sdk/service/cloudstorage/HtcDownload;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/sdk/service/cloudstorage/HtcDownload;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 1782
    .local v1, inputStream:Ljava/io/InputStream;
    if-eqz v1, :cond_1

    .line 1784
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1793
    .end local v1           #inputStream:Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-void

    .line 1785
    .restart local v1       #inputStream:Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 1786
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1787
    const-string v2, "FilePickerCloudHelper"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1790
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    const-string v2, ".........."

    const-string v3, "Cannot get downloadStream"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
