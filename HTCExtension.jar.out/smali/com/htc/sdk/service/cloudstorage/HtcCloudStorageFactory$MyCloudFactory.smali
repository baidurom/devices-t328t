.class public abstract Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$MyCloudFactory;
.super Ljava/lang/Object;
.source "HtcCloudStorageFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MyCloudFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 293
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;
.end method

.method public abstract getServiceInstance(Landroid/content/Context;)Lcom/htc/sdk/service/cloudstorage/HtcCloudService;
.end method

.method public abstract getServiceName(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract isCloudFile(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract isServiceEnabled(Landroid/content/Context;)Z
.end method
