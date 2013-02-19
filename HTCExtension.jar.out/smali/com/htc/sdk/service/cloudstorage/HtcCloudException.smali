.class public abstract Lcom/htc/sdk/service/cloudstorage/HtcCloudException;
.super Ljava/lang/Exception;
.source "HtcCloudException.java"


# static fields
.field protected static final serialVersionUID:J = 0x1L


# instance fields
.field protected code:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

.field protected errorStream:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter "message"
    .parameter "inner"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    return-void
.end method


# virtual methods
.method public abstract getErrorCode()Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;
.end method

.method public abstract getErrorStream()Ljava/lang/String;
.end method
