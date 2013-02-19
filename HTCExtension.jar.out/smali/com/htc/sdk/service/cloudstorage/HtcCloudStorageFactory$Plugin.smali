.class public Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;
.super Ljava/lang/Object;
.source "HtcCloudStorageFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Plugin"
.end annotation


# instance fields
.field public className:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public packageName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 323
    invoke-direct {p0, v0, v0, v0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "pluginClassName"
    .parameter "pluginDescription"
    .parameter "pluginPkgName"

    .prologue
    .line 315
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p1, p0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;->className:Ljava/lang/String;

    .line 317
    iput-object p2, p0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;->description:Ljava/lang/String;

    .line 318
    iput-object p3, p0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;->packageName:Ljava/lang/String;

    .line 319
    return-void
.end method
