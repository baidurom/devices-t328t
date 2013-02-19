.class public Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;
.super Ljava/lang/Object;
.source "HtcCloudStorageFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;,
        Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$MyCloudFactory;
    }
.end annotation


# static fields
.field private static AUTHORITY:Ljava/lang/String; = null

.field private static COLUMN_CERTIFICATE:Ljava/lang/String; = null

.field private static COLUMN_DESCRIPTION:Ljava/lang/String; = null

.field private static COLUMN_FEATURE:Ljava/lang/String; = null

.field private static COLUMN_FEATURE_ID:Ljava/lang/String; = null

.field private static COLUMN_FEATURE_TYPE:Ljava/lang/String; = null

.field private static COLUMN_ICON:Ljava/lang/String; = null

.field private static COLUMN_META_NAME:Ljava/lang/String; = null

.field private static COLUMN_META_TYPE:Ljava/lang/String; = null

.field private static COLUMN_META_VALUE:Ljava/lang/String; = null

.field private static COLUMN_PACKAGE:Ljava/lang/String; = null

.field private static COLUMN_PACKAGE_ID:Ljava/lang/String; = null

.field private static COLUMN_PLUGIN_CLASS:Ljava/lang/String; = null

.field private static COLUMN_PLUGIN_META:Ljava/lang/String; = null

.field private static COLUMN_PLUGIN_REMOVED:Ljava/lang/String; = null

.field private static COLUMN_VERSION:Ljava/lang/String; = null

.field private static FEATURE_NAME:Ljava/lang/String; = null

.field private static FEATURE_TB:Ljava/lang/String; = null

.field static final FEATURE_URI:Landroid/net/Uri; = null

.field private static METADATA_TB:Ljava/lang/String; = null

.field static final METADATA_URI:Landroid/net/Uri; = null

.field private static PLUGIN_PKG_TB:Ljava/lang/String; = null

.field private static PLUGIN_TB:Ljava/lang/String; = null

.field public static final RAWQUERY:Landroid/net/Uri; = null

.field private static SERVICE_META_ACCOUNT_TYPE:Ljava/lang/String; = null

.field private static SERVICE_META_EXTRA:Ljava/lang/String; = null

.field private static TAG:Ljava/lang/String; = null

.field public static final URL_RAW_QUERY:Ljava/lang/String; = "rawquery"

.field private static _ID:Ljava/lang/String;

.field private static sSenseVersion:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    const-string v0, "com.htc.opensense.plugin"

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->AUTHORITY:Ljava/lang/String;

    .line 18
    const-string v0, "_id"

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->_ID:Ljava/lang/String;

    .line 19
    const-string v0, "meta_name"

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->COLUMN_META_NAME:Ljava/lang/String;

    .line 20
    const-string v0, "feature_type"

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->COLUMN_FEATURE_TYPE:Ljava/lang/String;

    .line 21
    const-string v0, "plugin_class"

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->COLUMN_PLUGIN_CLASS:Ljava/lang/String;

    .line 22
    const-string v0, "plugin_meta"

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->COLUMN_PLUGIN_META:Ljava/lang/String;

    .line 23
    const-string v0, "package_id"

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->COLUMN_PACKAGE_ID:Ljava/lang/String;

    .line 24
    const-string v0, "package"

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->COLUMN_PACKAGE:Ljava/lang/String;

    .line 25
    const-string v0, "description"

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->COLUMN_DESCRIPTION:Ljava/lang/String;

    .line 26
    const-string v0, "icon"

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->COLUMN_ICON:Ljava/lang/String;

    .line 27
    const-string v0, "certificate"

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->COLUMN_CERTIFICATE:Ljava/lang/String;

    .line 28
    const-string v0, "feature_id"

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->COLUMN_FEATURE_ID:Ljava/lang/String;

    .line 29
    const-string v0, "feature"

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->COLUMN_FEATURE:Ljava/lang/String;

    .line 30
    const-string v0, "version"

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->COLUMN_VERSION:Ljava/lang/String;

    .line 31
    const-string v0, "type"

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->COLUMN_META_TYPE:Ljava/lang/String;

    .line 32
    const-string v0, "value"

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->COLUMN_META_VALUE:Ljava/lang/String;

    .line 33
    const-string v0, "removed"

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->COLUMN_PLUGIN_REMOVED:Ljava/lang/String;

    .line 36
    const-string v0, "meta_data"

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->METADATA_TB:Ljava/lang/String;

    .line 37
    const-string v0, "features"

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->FEATURE_TB:Ljava/lang/String;

    .line 38
    const-string v0, "plugin"

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->PLUGIN_TB:Ljava/lang/String;

    .line 39
    const-string v0, "plugin_pkg"

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->PLUGIN_PKG_TB:Ljava/lang/String;

    .line 41
    const-string v0, "accountType"

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->SERVICE_META_ACCOUNT_TYPE:Ljava/lang/String;

    .line 42
    const-string v0, "extra"

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->SERVICE_META_EXTRA:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    sput v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->sSenseVersion:F

    .line 47
    :try_start_0
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->sSenseVersion:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "rawquery"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->RAWQUERY:Landroid/net/Uri;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->FEATURE_TB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->FEATURE_URI:Landroid/net/Uri;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->METADATA_TB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->METADATA_URI:Landroid/net/Uri;

    .line 62
    const-string v0, "HtcCloudStorageFactory"

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->TAG:Ljava/lang/String;

    .line 63
    const-string v0, "htccloudstorage"

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->FEATURE_NAME:Ljava/lang/String;

    return-void

    .line 48
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method private static getCloudStorageFactory(Landroid/content/Context;Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;)Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$MyCloudFactory;
    .locals 13
    .parameter "context"
    .parameter "plugin"

    .prologue
    const/4 v10, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 244
    const/4 v1, 0x0

    .line 247
    .local v1, adapter:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$MyCloudFactory;
    :try_start_0
    iget-object v7, p1, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;->packageName:Ljava/lang/String;

    const/4 v8, 0x3

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    .line 250
    .local v6, pkgContext:Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 251
    .local v5, loader:Ljava/lang/ClassLoader;
    iget-object v7, p1, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;->className:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 253
    .local v4, exteriorClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$MyCloudFactory;>;"
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 255
    .local v2, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$MyCloudFactory;>;"
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object v6, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$MyCloudFactory;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .end local v2           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$MyCloudFactory;>;"
    .end local v4           #exteriorClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$MyCloudFactory;>;"
    .end local v5           #loader:Ljava/lang/ClassLoader;
    .end local v6           #pkgContext:Landroid/content/Context;
    :goto_0
    return-object v1

    .line 256
    :catch_0
    move-exception v3

    .line 257
    .local v3, e:Ljava/lang/Exception;
    sget-object v7, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->TAG:Ljava/lang/String;

    const-string v8, "MyCloudStorage %s %s could not be loaded."

    new-array v9, v10, [Ljava/lang/Object;

    const-string v10, "com.htc.cloudstorage"

    aput-object v10, v9, v11

    const-string v10, "com.htc.cloudstorage.CSFactory"

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;
    .locals 7
    .parameter "context"
    .parameter "serviceType"
    .parameter "accountId"

    .prologue
    .line 117
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 119
    :cond_0
    sget-object v5, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->TAG:Ljava/lang/String;

    const-string v6, "getInstance(): context == null || serviceType == null || accountId == null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v1, 0x0

    .line 142
    :cond_1
    :goto_0
    return-object v1

    .line 122
    :cond_2
    invoke-static {p0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->getPlugins(Landroid/content/Context;)[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;

    move-result-object v4

    .line 123
    .local v4, plugins:[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;
    const/4 v1, 0x0

    .line 124
    .local v1, cloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;
    if-eqz v4, :cond_1

    .line 126
    const/4 v3, 0x0

    .line 127
    .local v3, plugin:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_3

    .line 129
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;->description:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 131
    aget-object v3, v4, v2

    .line 135
    :cond_3
    if-eqz v3, :cond_1

    .line 137
    invoke-static {p0, v3}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->getCloudStorageFactory(Landroid/content/Context;Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;)Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$MyCloudFactory;

    move-result-object v0

    .line 138
    .local v0, cloudFactory:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$MyCloudFactory;
    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {v0, p0, p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$MyCloudFactory;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

    move-result-object v1

    goto :goto_0

    .line 127
    .end local v0           #cloudFactory:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$MyCloudFactory;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static getPlugins(Landroid/content/Context;)[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;
    .locals 20
    .parameter "context"

    .prologue
    .line 74
    const-string v2, "SELECT t1.%s plugin_id, t2.%s, t3.%s feature_id, t3.%s feature_version, t3.%s, t3.%s, t1.%s, t1.%s, t1.%s, t1.%s FROM %s t1, %s t2, %s t3 WHERE t1.%s=t2.%s AND t1.%s=t3.%s AND t3.%s=\'%s\' %s"

    const/16 v1, 0x14

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v5, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->_ID:Ljava/lang/String;

    aput-object v5, v3, v1

    const/4 v1, 0x1

    sget-object v5, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->COLUMN_PACKAGE:Ljava/lang/String;

    aput-object v5, v3, v1

    const/4 v1, 0x2

    sget-object v5, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->_ID:Ljava/lang/String;

    aput-object v5, v3, v1

    const/4 v1, 0x3

    sget-object v5, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->COLUMN_VERSION:Ljava/lang/String;

    aput-object v5, v3, v1

    const/4 v1, 0x4

    sget-object v5, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->COLUMN_FEATURE:Ljava/lang/String;

    aput-object v5, v3, v1

    const/4 v1, 0x5

    sget-object v5, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->COLUMN_FEATURE_TYPE:Ljava/lang/String;

    aput-object v5, v3, v1

    const/4 v1, 0x6

    sget-object v5, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->COLUMN_VERSION:Ljava/lang/String;

    aput-object v5, v3, v1

    const/4 v1, 0x7

    sget-object v5, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->COLUMN_PLUGIN_CLASS:Ljava/lang/String;

    aput-object v5, v3, v1

    const/16 v1, 0x8

    sget-object v5, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->COLUMN_DESCRIPTION:Ljava/lang/String;

    aput-object v5, v3, v1

    const/16 v1, 0x9

    sget-object v5, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->COLUMN_PLUGIN_META:Ljava/lang/String;

    aput-object v5, v3, v1

    const/16 v1, 0xa

    sget-object v5, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->PLUGIN_TB:Ljava/lang/String;

    aput-object v5, v3, v1

    const/16 v1, 0xb

    sget-object v5, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->PLUGIN_PKG_TB:Ljava/lang/String;

    aput-object v5, v3, v1

    const/16 v1, 0xc

    sget-object v5, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->FEATURE_TB:Ljava/lang/String;

    aput-object v5, v3, v1

    const/16 v1, 0xd

    sget-object v5, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->COLUMN_PACKAGE_ID:Ljava/lang/String;

    aput-object v5, v3, v1

    const/16 v1, 0xe

    sget-object v5, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->_ID:Ljava/lang/String;

    aput-object v5, v3, v1

    const/16 v1, 0xf

    sget-object v5, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->COLUMN_FEATURE_ID:Ljava/lang/String;

    aput-object v5, v3, v1

    const/16 v1, 0x10

    sget-object v5, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->_ID:Ljava/lang/String;

    aput-object v5, v3, v1

    const/16 v1, 0x11

    sget-object v5, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->COLUMN_FEATURE:Ljava/lang/String;

    aput-object v5, v3, v1

    const/16 v1, 0x12

    sget-object v5, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->FEATURE_NAME:Ljava/lang/String;

    aput-object v5, v3, v1

    const/16 v5, 0x13

    sget v1, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->sSenseVersion:F

    const/high16 v6, 0x4000

    cmpg-float v1, v1, v6

    if-gez v1, :cond_1

    const-string v1, ""

    :goto_0
    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, sql:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->RAWQUERY:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 86
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 88
    :try_start_0
    const-string v1, "plugin_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 89
    .local v16, plugin_id:I
    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->COLUMN_PACKAGE:Ljava/lang/String;

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 90
    .local v14, package_name:I
    const-string v1, "feature_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 91
    .local v9, feature_id:I
    const-string v1, "feature_version"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 92
    .local v12, feature_version:I
    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->COLUMN_FEATURE:Ljava/lang/String;

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 93
    .local v10, feature_name:I
    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->COLUMN_FEATURE_TYPE:Ljava/lang/String;

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 94
    .local v11, feature_type:I
    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->COLUMN_VERSION:Ljava/lang/String;

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 95
    .local v18, plugin_version:I
    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->COLUMN_PLUGIN_CLASS:Ljava/lang/String;

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 96
    .local v15, plugin_class:I
    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->COLUMN_DESCRIPTION:Ljava/lang/String;

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 97
    .local v8, description:I
    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->COLUMN_PLUGIN_META:Ljava/lang/String;

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 98
    .local v17, plugin_meta:I
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v0, v1, [Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;

    move-object/from16 v19, v0

    .line 99
    .local v19, plugins:[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/lit8 v13, v1, -0x1

    .local v13, i:I
    :goto_1
    if-ltz v13, :cond_2

    .line 100
    invoke-interface {v7, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    new-instance v1, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;

    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v5}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v19, v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_0
    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    .line 74
    .end local v4           #sql:Ljava/lang/String;
    .end local v7           #c:Landroid/database/Cursor;
    .end local v8           #description:I
    .end local v9           #feature_id:I
    .end local v10           #feature_name:I
    .end local v11           #feature_type:I
    .end local v12           #feature_version:I
    .end local v13           #i:I
    .end local v14           #package_name:I
    .end local v15           #plugin_class:I
    .end local v16           #plugin_id:I
    .end local v17           #plugin_meta:I
    .end local v18           #plugin_version:I
    .end local v19           #plugins:[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AND t1."

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->COLUMN_PLUGIN_REMOVED:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "=0"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 109
    .restart local v4       #sql:Ljava/lang/String;
    .restart local v7       #c:Landroid/database/Cursor;
    .restart local v8       #description:I
    .restart local v9       #feature_id:I
    .restart local v10       #feature_name:I
    .restart local v11       #feature_type:I
    .restart local v12       #feature_version:I
    .restart local v13       #i:I
    .restart local v14       #package_name:I
    .restart local v15       #plugin_class:I
    .restart local v16       #plugin_id:I
    .restart local v17       #plugin_meta:I
    .restart local v18       #plugin_version:I
    .restart local v19       #plugins:[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 112
    .end local v8           #description:I
    .end local v9           #feature_id:I
    .end local v10           #feature_name:I
    .end local v11           #feature_type:I
    .end local v12           #feature_version:I
    .end local v13           #i:I
    .end local v14           #package_name:I
    .end local v15           #plugin_class:I
    .end local v16           #plugin_id:I
    .end local v17           #plugin_meta:I
    .end local v18           #plugin_version:I
    .end local v19           #plugins:[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;
    :goto_2
    return-object v19

    .line 109
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 112
    :cond_3
    const/16 v19, 0x0

    goto :goto_2
.end method

.method public static getServiceInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/sdk/service/cloudstorage/HtcCloudService;
    .locals 7
    .parameter "context"
    .parameter "serviceType"

    .prologue
    .line 153
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 155
    :cond_0
    sget-object v5, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->TAG:Ljava/lang/String;

    const-string v6, "getServiceInstance(): context == null || serviceType == null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v1, 0x0

    .line 179
    :cond_1
    :goto_0
    return-object v1

    .line 158
    :cond_2
    invoke-static {p0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->getPlugins(Landroid/content/Context;)[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;

    move-result-object v4

    .line 159
    .local v4, plugins:[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;
    const/4 v1, 0x0

    .line 160
    .local v1, cloudService:Lcom/htc/sdk/service/cloudstorage/HtcCloudService;
    if-eqz v4, :cond_1

    .line 162
    const/4 v3, 0x0

    .line 163
    .local v3, plugin:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_3

    .line 165
    aget-object v5, v4, v2

    iget-object v5, v5, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;->description:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 167
    aget-object v3, v4, v2

    .line 171
    :cond_3
    if-eqz v3, :cond_1

    .line 173
    invoke-static {p0, v3}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->getCloudStorageFactory(Landroid/content/Context;Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;)Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$MyCloudFactory;

    move-result-object v0

    .line 174
    .local v0, cloudFactory:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$MyCloudFactory;
    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {v0, p0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$MyCloudFactory;->getServiceInstance(Landroid/content/Context;)Lcom/htc/sdk/service/cloudstorage/HtcCloudService;

    move-result-object v1

    goto :goto_0

    .line 163
    .end local v0           #cloudFactory:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$MyCloudFactory;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static getServiceName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "serviceID"

    .prologue
    .line 274
    invoke-static {p0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->getPlugins(Landroid/content/Context;)[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;

    move-result-object v2

    .line 275
    .local v2, plugins:[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;
    if-eqz v2, :cond_1

    .line 277
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 279
    aget-object v3, v2, v1

    iget-object v3, v3, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;->description:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 281
    aget-object v3, v2, v1

    invoke-static {p0, v3}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->getCloudStorageFactory(Landroid/content/Context;Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;)Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$MyCloudFactory;

    move-result-object v0

    .line 282
    .local v0, cloudFactory:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$MyCloudFactory;
    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0, p0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$MyCloudFactory;->getServiceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 290
    .end local v0           #cloudFactory:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$MyCloudFactory;
    .end local v1           #i:I
    :goto_1
    return-object v3

    .line 277
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    .end local v1           #i:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isCloudFile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "path"

    .prologue
    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, b:Z
    invoke-static {p0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->getPlugins(Landroid/content/Context;)[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;

    move-result-object v3

    .line 226
    .local v3, plugins:[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;
    if-eqz v3, :cond_0

    .line 228
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 230
    aget-object v4, v3, v2

    invoke-static {p0, v4}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->getCloudStorageFactory(Landroid/content/Context;Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;)Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$MyCloudFactory;

    move-result-object v1

    .line 231
    .local v1, cloudFactory:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$MyCloudFactory;
    if-eqz v1, :cond_1

    .line 233
    invoke-virtual {v1, p0, p1}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$MyCloudFactory;->isCloudFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 235
    const/4 v0, 0x1

    .line 241
    .end local v0           #b:Z
    .end local v1           #cloudFactory:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$MyCloudFactory;
    .end local v2           #i:I
    :cond_0
    return v0

    .line 228
    .restart local v0       #b:Z
    .restart local v1       #cloudFactory:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$MyCloudFactory;
    .restart local v2       #i:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "service"

    .prologue
    .line 204
    invoke-static {p0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->getPlugins(Landroid/content/Context;)[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;

    move-result-object v3

    .line 205
    .local v3, plugins:[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;
    const/4 v2, 0x0

    .line 206
    .local v2, isEnable:Z
    if-eqz v3, :cond_0

    .line 208
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 210
    aget-object v4, v3, v1

    iget-object v4, v4, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;->description:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 212
    aget-object v4, v3, v1

    invoke-static {p0, v4}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->getCloudStorageFactory(Landroid/content/Context;Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;)Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$MyCloudFactory;

    move-result-object v0

    .line 213
    .local v0, cloudFactory:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$MyCloudFactory;
    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {v0, p0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$MyCloudFactory;->isServiceEnabled(Landroid/content/Context;)Z

    move-result v2

    .line 221
    .end local v0           #cloudFactory:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$MyCloudFactory;
    .end local v1           #i:I
    .end local v2           #isEnable:Z
    :cond_0
    return v2

    .line 208
    .restart local v1       #i:I
    .restart local v2       #isEnable:Z
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static listServices(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 189
    invoke-static {p0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->getPlugins(Landroid/content/Context;)[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;

    move-result-object v1

    .line 190
    .local v1, plugins:[Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;
    const/4 v2, 0x0

    .line 191
    .local v2, serviceNames:[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 193
    array-length v3, v1

    new-array v2, v3, [Ljava/lang/String;

    .line 194
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 196
    aget-object v3, v1, v0

    iget-object v3, v3, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory$Plugin;->description:Ljava/lang/String;

    aput-object v3, v2, v0

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    .end local v0           #i:I
    :cond_0
    return-object v2
.end method
