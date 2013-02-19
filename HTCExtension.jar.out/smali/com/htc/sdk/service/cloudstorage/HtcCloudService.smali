.class public abstract Lcom/htc/sdk/service/cloudstorage/HtcCloudService;
.super Ljava/lang/Object;
.source "HtcCloudService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract accountInfo()[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/sdk/service/cloudstorage/HtcCloudException;
        }
    .end annotation
.end method

.method public abstract accountInfo(Z)[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/sdk/service/cloudstorage/HtcCloudException;
        }
    .end annotation
.end method

.method public abstract getServiceCachedFolder(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract init()Z
.end method

.method public abstract isSupportedMultipleAccount()Z
.end method

.method public abstract release()V
.end method

.method public abstract signin()Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;
.end method

.method public abstract validFileName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
.end method
