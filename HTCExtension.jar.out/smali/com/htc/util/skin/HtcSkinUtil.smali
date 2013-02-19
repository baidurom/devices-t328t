.class public Lcom/htc/util/skin/HtcSkinUtil;
.super Ljava/lang/Object;
.source "HtcSkinUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/skin/HtcSkinUtil$SkinPackageInfo;
    }
.end annotation


# static fields
.field public static final DEFAULT_SKIN_NAME:Ljava/lang/String; = "HTC"

.field private static final PREVIEW_FILE_NAME:Ljava/lang/String; = "preview"

.field private static final PREVIEW_FILE_NAME_LAND:Ljava/lang/String; = "preview_land"

.field private static final PREVIEW_FILE_PATH:Ljava/lang/String; = "image"

.field public static final PREVIEW_LAND:I = 0x1

.field public static final PREVIEW_PORT:I = 0x0

.field private static final SKIN_ICON_NAME:Ljava/lang/String; = "image/skin_icon.png"

.field private static final TAG:Ljava/lang/String; = "HtcSkinUtil"

.field private static final WALLPAPER_FILE_NAME:Ljava/lang/String; = "image/wallpaper.jpg"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 622
    return-void
.end method

.method public static applySkinFromPackageName(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 156
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 158
    .local v0, am:Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 182
    .local v1, config:Landroid/content/res/Configuration;
    iput-object p0, v1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 183
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v2

    .line 185
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static applySkinWithWallpaperFromPackageName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 194
    invoke-static {p0, p1}, Lcom/htc/util/skin/HtcSkinUtil;->setWallpaperForSkin(Landroid/content/Context;Ljava/lang/String;)Z

    .line 195
    invoke-static {p1}, Lcom/htc/util/skin/HtcSkinUtil;->applySkinFromPackageName(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method private static checkSdCard()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 822
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 823
    .local v0, state:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 824
    const/4 v1, 0x1

    .line 828
    :cond_0
    :goto_0
    return v1

    .line 825
    :cond_1
    const-string v2, "mounted_ro"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public static checkSdSkinVersionCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "apkFileName"

    .prologue
    const/4 v2, 0x0

    .line 1530
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1532
    .local v1, pm:Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 1534
    const/4 v0, 0x0

    .line 1535
    .local v0, packageInfo:Landroid/content/pm/PackageInfo;
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1537
    if-nez v0, :cond_1

    .line 1538
    const-string v3, "HtcSkinUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " packageInfo is null "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    .end local v0           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v2

    .line 1540
    .restart local v0       #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_0

    .line 1542
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->isSkinApk:Z

    if-eqz v3, :cond_0

    .line 1543
    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinVersionCode(Landroid/content/Context;)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1544
    const/4 v2, 0x1

    goto :goto_0

    .line 1546
    :cond_2
    const-string v3, "HtcSkinUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The versionCode of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not for this device"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static checkSkinVersionCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1499
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1501
    .local v2, pm:Landroid/content/pm/PackageManager;
    if-nez p1, :cond_0

    .line 1518
    :goto_0
    return v3

    .line 1503
    :cond_0
    const-string v5, "default"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "com.htc"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move v3, v4

    .line 1504
    goto :goto_0

    .line 1508
    :cond_2
    const/16 v5, 0x2000

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1514
    .local v1, pkgInfo:Landroid/content/pm/PackageInfo;
    iget v5, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinVersionCode(Landroid/content/Context;)I

    move-result v6

    if-ne v5, v6, :cond_3

    move v3, v4

    .line 1515
    goto :goto_0

    .line 1509
    .end local v1           #pkgInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 1510
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "HtcSkinUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No such skin package matches the given name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1517
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_3
    const-string v4, "HtcSkinUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The versionCode of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not for this device"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static compareFile(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Z
    .locals 2
    .parameter "sdTime"
    .parameter "sdSize"
    .parameter "providerTime"
    .parameter "providerSize"

    .prologue
    const/4 v0, 0x0

    .line 1278
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1283
    :cond_0
    :goto_0
    return v0

    .line 1280
    :cond_1
    invoke-virtual {p0, p2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1283
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static deleteProviderSdApk(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "apkFileName"

    .prologue
    .line 1080
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1081
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filename=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "packagetype"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "packagetype"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "packagetype"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1085
    .local v1, where_clause:Ljava/lang/String;
    sget-object v2, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1086
    return-void
.end method

.method public static deleteProviderSystemAndInstalledPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 958
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 959
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packagename=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "packagetype"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "packagetype"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 962
    .local v1, where_clause:Ljava/lang/String;
    sget-object v2, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 963
    return-void
.end method

.method public static deleteWrongVersionData(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 1564
    invoke-static {p0}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinVersionCode(Landroid/content/Context;)I

    move-result v1

    .line 1565
    .local v1, systemVersion:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1566
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "skinversion!="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "packagetype"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1568
    .local v2, where_clause:Ljava/lang/String;
    sget-object v3, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1569
    return-void
.end method

.method public static downloadSdApk(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "sdFileName"

    .prologue
    .line 1245
    invoke-static {}, Lcom/htc/util/skin/HtcSkinUtil;->checkSdCard()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1262
    :cond_0
    :goto_0
    return-void

    .line 1248
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1249
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1252
    new-instance v3, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-direct {v3, v5, v6}, Ljava/lang/Long;-><init>(J)V

    .line 1253
    .local v3, sdTime:Ljava/lang/Long;
    new-instance v2, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-direct {v2, v5, v6}, Ljava/lang/Long;-><init>(J)V

    .line 1255
    .local v2, sdSize:Ljava/lang/Long;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1256
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "filename=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "packagetype"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1258
    .local v4, where_clause:Ljava/lang/String;
    sget-object v5, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v4, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1260
    invoke-static {p0, p1, v3, v2}, Lcom/htc/util/skin/HtcSkinUtil;->insertProviderSdApk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public static getAppliedSkinPackageName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 262
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 264
    .local v0, am:Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 265
    .local v1, config:Landroid/content/res/Configuration;
    iget-object v3, v1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_0
    return-object v3

    .line 266
    :catch_0
    move-exception v2

    .line 267
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 269
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .parameter "context"
    .parameter "resName"
    .parameter "defRes"

    .prologue
    .line 92
    const-string v0, "color"

    invoke-static {p0, p1, p2, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinResId(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getCurrentTheme(Landroid/content/Context;)I
    .locals 7
    .parameter "context"

    .prologue
    const v4, 0x2030067

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->allowSkinChange:Z

    if-eqz v5, :cond_0

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 135
    .local v2, res:Landroid/content/res/Resources;
    if-eqz v2, :cond_0

    .line 136
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 137
    .local v0, config:Landroid/content/res/Configuration;
    iget-object v5, v0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    const-string v6, "default"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 146
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return v4

    .line 140
    .restart local v0       #config:Landroid/content/res/Configuration;
    .restart local v2       #res:Landroid/content/res/Resources;
    :cond_1
    invoke-static {}, Lcom/htc/util/skin/HtcSkinUtil;->getAppliedSkinPackageName()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, packageName:Ljava/lang/String;
    const-string v5, "Skin"

    const-string v6, "style"

    invoke-virtual {v2, v5, v6, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 142
    .local v3, styleId:I
    if-lez v3, :cond_2

    .end local v3           #styleId:I
    :goto_1
    move v4, v3

    goto :goto_0

    .restart local v3       #styleId:I
    :cond_2
    move v3, v4

    goto :goto_1
.end method

.method public static getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .parameter "context"
    .parameter "resName"
    .parameter "defRes"

    .prologue
    .line 79
    const-string v0, "drawable"

    invoke-static {p0, p1, p2, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinResId(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getIntegerResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .parameter "context"
    .parameter "resName"
    .parameter "defRes"

    .prologue
    .line 105
    const-string v0, "integer"

    invoke-static {p0, p1, p2, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinResId(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getPreviewList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/skin/HtcSkinUtil$SkinPackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 594
    invoke-static {p0}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinPackageName(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    .line 595
    .local v5, skins:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 596
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 598
    .local v2, piList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/skin/HtcSkinUtil$SkinPackageInfo;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 599
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 600
    .local v3, pkgName:Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinPreviewImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 601
    .local v4, preview:Landroid/graphics/Bitmap;
    new-instance v1, Lcom/htc/util/skin/HtcSkinUtil$SkinPackageInfo;

    invoke-direct {v1, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil$SkinPackageInfo;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 602
    .local v1, pi:Lcom/htc/util/skin/HtcSkinUtil$SkinPackageInfo;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 604
    .end local v1           #pi:Lcom/htc/util/skin/HtcSkinUtil$SkinPackageInfo;
    .end local v3           #pkgName:Ljava/lang/String;
    .end local v4           #preview:Landroid/graphics/Bitmap;
    :cond_0
    return-object v2
.end method

.method public static getProviderSkinPreviewImage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "context"
    .parameter "fileName"
    .parameter "orientation"

    .prologue
    const/4 v2, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 1428
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1429
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 1430
    .local v7, buf:[B
    const/4 v8, 0x0

    .line 1431
    .local v8, imageCursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 1432
    .local v6, bmpPreview:Landroid/graphics/Bitmap;
    if-ne p2, v2, :cond_0

    .line 1433
    sget-object v1, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "previewland"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filename=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1442
    :goto_0
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1443
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 1444
    if-nez v7, :cond_1

    .line 1445
    const-string v1, "HtcSkinUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProviderSkinPreviewImage(): PreviewImage buf is null fileName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    :goto_1
    return-object v4

    .line 1437
    :cond_0
    sget-object v1, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "preview"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filename=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0

    .line 1448
    :cond_1
    array-length v1, v7

    invoke-static {v7, v9, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1449
    const/4 v7, 0x0

    .line 1450
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1451
    const/4 v8, 0x0

    :cond_2
    move-object v4, v6

    .line 1454
    goto :goto_1
.end method

.method public static getSdSkinName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "fileName"

    .prologue
    .line 648
    if-nez p1, :cond_0

    .line 649
    const-string v2, "HtcSkinUtil"

    const-string v3, "package name should not be null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const-string p1, "default"

    .line 652
    :cond_0
    const-string v2, "default"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 653
    const-string p1, "HTC"

    .line 666
    .end local p1
    :cond_1
    :goto_0
    return-object p1

    .line 656
    .restart local p1
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 659
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 661
    .local v0, packageInfo:Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_1

    .line 664
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 665
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 666
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static getSdSkinPackageCursorInfoList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 15
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/skin/SkinPackageCursorInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1467
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1468
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 1469
    .local v8, c:Landroid/database/Cursor;
    invoke-static {}, Lcom/htc/util/skin/HtcSkinUtil;->checkSdCard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1470
    sget-object v1, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v10

    const-string v3, "filename"

    aput-object v3, v2, v11

    const-string v3, "packagename"

    aput-object v3, v2, v12

    const-string v3, "skinname"

    aput-object v3, v2, v13

    const-string v3, "packagetype"

    aput-object v3, v2, v14

    const-string v3, "packagetype=1"

    const/4 v4, 0x0

    const-string v5, "packagetype DESC, packagename ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1475
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1477
    .local v9, skinPackageCursorInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/skin/SkinPackageCursorInfo;>;"
    if-nez v8, :cond_1

    .line 1488
    :goto_0
    return-object v9

    .line 1481
    :cond_1
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1482
    new-instance v1, Lcom/htc/util/skin/SkinPackageCursorInfo;

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-direct/range {v1 .. v7}, Lcom/htc/util/skin/SkinPackageCursorInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1485
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1486
    const/4 v8, 0x0

    .line 1488
    goto :goto_0
.end method

.method public static getSdSkinPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "fileName"

    .prologue
    .line 740
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 742
    .local v0, SdSkinkPackage:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 743
    .local v2, pm:Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 745
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 746
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->isSkinApk:Z

    if-eqz v3, :cond_0

    .line 747
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 751
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    return-object v0
.end method

.method public static getSdSkinPreviewImage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "context"
    .parameter "fileName"
    .parameter "orientation"

    .prologue
    const/4 v5, 0x0

    .line 679
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 682
    .local v4, pm:Landroid/content/pm/PackageManager;
    if-nez p1, :cond_0

    .line 683
    const-string p1, "default"

    .line 687
    :cond_0
    :try_start_0
    const-string v7, "default"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 688
    const-string v7, "com.htc"

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 705
    .local v6, res:Landroid/content/res/Resources;
    :goto_0
    const-string v7, "default"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 706
    const v7, 0x20803e2

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 728
    .end local v6           #res:Landroid/content/res/Resources;
    :cond_1
    :goto_1
    return-object v5

    .line 690
    :cond_2
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v4, p1, v7}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 691
    .local v3, packageInfo:Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_3

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v7, v7, Landroid/content/pm/ApplicationInfo;->isSkinApk:Z

    if-eqz v7, :cond_3

    .line 692
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 693
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v7, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 694
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v6

    .restart local v6       #res:Landroid/content/res/Resources;
    goto :goto_0

    .line 696
    .end local v6           #res:Landroid/content/res/Resources;
    :cond_3
    const-string v7, "com.htc"

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .restart local v6       #res:Landroid/content/res/Resources;
    goto :goto_0

    .line 698
    .end local v3           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v6           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 699
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "HtcSkinUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No such skin package file matches the given name "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 710
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6       #res:Landroid/content/res/Resources;
    :cond_4
    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 711
    .local v0, a:Landroid/content/res/AssetManager;
    if-eqz v6, :cond_1

    .line 714
    const/4 v7, 0x1

    if-ne p2, v7, :cond_5

    .line 715
    :try_start_2
    const-string v7, "preview_land"

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    .line 723
    .local v2, is:Ljava/io/InputStream;
    :goto_2
    if-eqz v2, :cond_1

    .line 724
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 725
    .local v5, preview:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 717
    .end local v2           #is:Ljava/io/InputStream;
    .end local v5           #preview:Landroid/graphics/Bitmap;
    :cond_5
    :try_start_3
    const-string v7, "preview"

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_2

    .line 718
    .end local v2           #is:Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 719
    .local v1, e:Ljava/io/IOException;
    const-string v7, "HtcSkinUtil"

    const-string v8, "IOException: preview"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getSkinName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 307
    if-nez p1, :cond_0

    .line 308
    const-string v3, "HtcSkinUtil"

    const-string v4, "package name should not be null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string p1, "default"

    .line 311
    :cond_0
    const-string v3, "default"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 312
    const-string p1, "HTC"

    .line 327
    .end local p1
    :cond_1
    :goto_0
    return-object p1

    .line 315
    .restart local p1
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 318
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/16 v3, 0x2000

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 324
    .local v1, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_1

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1

    .line 327
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 319
    .end local v1           #pkgInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 320
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "HtcSkinUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No such skin package matches the given name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSkinPackageCursorInfoList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 15
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/skin/SkinPackageCursorInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1385
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1386
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 1387
    .local v8, c:Landroid/database/Cursor;
    invoke-static {}, Lcom/htc/util/skin/HtcSkinUtil;->checkSdCard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1388
    sget-object v1, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v10

    const-string v3, "filename"

    aput-object v3, v2, v11

    const-string v3, "packagename"

    aput-object v3, v2, v12

    const-string v3, "skinname"

    aput-object v3, v2, v13

    const-string v3, "packagetype"

    aput-object v3, v2, v14

    const-string v3, "packagetype=3 OR packagetype=2 OR packagetype=1"

    const/4 v4, 0x0

    const-string v5, "packagetype DESC, packagename ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1400
    :goto_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1402
    .local v9, skinPackageCursorInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/skin/SkinPackageCursorInfo;>;"
    if-nez v8, :cond_1

    .line 1413
    :goto_1
    return-object v9

    .line 1394
    .end local v9           #skinPackageCursorInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/skin/SkinPackageCursorInfo;>;"
    :cond_0
    sget-object v1, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v10

    const-string v3, "filename"

    aput-object v3, v2, v11

    const-string v3, "packagename"

    aput-object v3, v2, v12

    const-string v3, "skinname"

    aput-object v3, v2, v13

    const-string v3, "packagetype"

    aput-object v3, v2, v14

    const-string v3, "packagetype=3 OR packagetype=2"

    const/4 v4, 0x0

    const-string v5, "packagetype DESC, packagename ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0

    .line 1406
    .restart local v9       #skinPackageCursorInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/skin/SkinPackageCursorInfo;>;"
    :cond_1
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1407
    new-instance v1, Lcom/htc/util/skin/SkinPackageCursorInfo;

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-direct/range {v1 .. v7}, Lcom/htc/util/skin/SkinPackageCursorInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1410
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1411
    const/4 v8, 0x0

    .line 1413
    goto :goto_1
.end method

.method public static getSkinPackageName(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 281
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getInstalledSkinPackages()Ljava/util/List;

    move-result-object v2

    .line 282
    .local v2, pkgs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 283
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v4, skins:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "default"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 286
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 288
    .local v1, pi:Landroid/content/pm/PackageInfo;
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/htc/util/skin/HtcSkinUtil;->checkSkinVersionCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 289
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 290
    :cond_1
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/htc/util/skin/HtcSkinUtil;->getAppliedSkinPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 291
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 295
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    :cond_2
    return-object v4
.end method

.method public static getSkinPreviewImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v7, 0x0

    .line 401
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 404
    .local v6, pm:Landroid/content/pm/PackageManager;
    if-nez p1, :cond_0

    .line 405
    const-string p1, "default"

    .line 408
    :cond_0
    :try_start_0
    const-string v10, "default"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 409
    const-string v10, "com.htc"

    invoke-virtual {v6, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 418
    .local v9, res:Landroid/content/res/Resources;
    :goto_0
    const-string v10, "default"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 420
    const-string v10, "default_skin_preview"

    const-string v11, "drawable"

    const-string v12, "com.htc"

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 421
    .local v8, previewId:I
    if-nez v8, :cond_3

    .line 422
    const v10, 0x20803e2

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 459
    .end local v8           #previewId:I
    .end local v9           #res:Landroid/content/res/Resources;
    :cond_1
    :goto_1
    return-object v7

    .line 411
    :cond_2
    :try_start_1
    invoke-virtual {v6, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .restart local v9       #res:Landroid/content/res/Resources;
    goto :goto_0

    .line 412
    .end local v9           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 413
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "HtcSkinUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No such skin package matches the given name "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 425
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8       #previewId:I
    .restart local v9       #res:Landroid/content/res/Resources;
    :cond_3
    invoke-static {v9, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_1

    .line 430
    .end local v8           #previewId:I
    :cond_4
    invoke-virtual {v9}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 431
    .local v0, a:Landroid/content/res/AssetManager;
    if-eqz v9, :cond_1

    .line 434
    const/4 v2, 0x0

    .line 435
    .local v2, fileName:Ljava/lang/String;
    :try_start_2
    const-string v10, "image"

    invoke-virtual {v0, v10}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 436
    .local v5, list:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    array-length v10, v5

    if-ge v3, v10, :cond_6

    .line 437
    aget-object v10, v5, v3

    const-string v11, "preview.jpg"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    aget-object v10, v5, v3

    const-string v11, "preview.png"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 439
    :cond_5
    aget-object v2, v5, v3

    .line 443
    :cond_6
    if-eqz v2, :cond_1

    .line 444
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "image/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    .line 454
    .local v4, is:Ljava/io/InputStream;
    if-eqz v4, :cond_1

    .line 455
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 456
    .local v7, preview:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 436
    .end local v4           #is:Ljava/io/InputStream;
    .end local v7           #preview:Landroid/graphics/Bitmap;
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 448
    .end local v3           #i:I
    .end local v5           #list:[Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 449
    .local v1, e:Ljava/lang/Exception;
    const-string v10, "HtcSkinUtil"

    const-string v11, "IOException: preview.jpg or preview.png"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getSkinPreviewImage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 15
    .parameter "context"
    .parameter "packageName"
    .parameter "orientation"

    .prologue
    .line 472
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 475
    .local v8, pm:Landroid/content/pm/PackageManager;
    if-nez p1, :cond_0

    .line 476
    const-string p1, "default"

    .line 479
    :cond_0
    :try_start_0
    const-string v12, "default"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 480
    const-string v12, "com.htc"

    invoke-virtual {v8, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 489
    .local v11, res:Landroid/content/res/Resources;
    :goto_0
    const-string v12, "default"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 491
    const-string v12, "default_skin_preview"

    const-string v13, "drawable"

    const-string v14, "com.htc"

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 492
    .local v10, previewId:I
    if-nez v10, :cond_2

    .line 493
    const v12, 0x20803e2

    invoke-static {v11, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 537
    .end local v10           #previewId:I
    .end local v11           #res:Landroid/content/res/Resources;
    :goto_1
    return-object v9

    .line 482
    :cond_1
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    .restart local v11       #res:Landroid/content/res/Resources;
    goto :goto_0

    .line 483
    .end local v11           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v3

    .line 484
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v12, "HtcSkinUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "No such skin package matches the given name "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 486
    const/4 v9, 0x0

    goto :goto_1

    .line 496
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v10       #previewId:I
    .restart local v11       #res:Landroid/content/res/Resources;
    :cond_2
    invoke-static {v11, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    goto :goto_1

    .line 501
    .end local v10           #previewId:I
    :cond_3
    invoke-virtual {v11}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 502
    .local v2, a:Landroid/content/res/AssetManager;
    if-eqz v11, :cond_9

    .line 506
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_6

    .line 507
    const-string v1, "preview_land"

    .line 513
    .local v1, ImageName:Ljava/lang/String;
    :goto_2
    const/4 v4, 0x0

    .line 514
    .local v4, fileName:Ljava/lang/String;
    :try_start_2
    const-string v12, "image"

    invoke-virtual {v2, v12}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 515
    .local v7, list:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3
    array-length v12, v7

    if-ge v5, v12, :cond_5

    .line 516
    aget-object v12, v7, v5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".jpg"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    aget-object v12, v7, v5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".png"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 518
    :cond_4
    aget-object v4, v7, v5

    .line 522
    :cond_5
    if-eqz v4, :cond_8

    .line 523
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "image/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    .line 532
    .local v6, is:Ljava/io/InputStream;
    if-eqz v6, :cond_9

    .line 533
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 534
    .local v9, preview:Landroid/graphics/Bitmap;
    goto/16 :goto_1

    .line 509
    .end local v1           #ImageName:Ljava/lang/String;
    .end local v4           #fileName:Ljava/lang/String;
    .end local v5           #i:I
    .end local v6           #is:Ljava/io/InputStream;
    .end local v7           #list:[Ljava/lang/String;
    .end local v9           #preview:Landroid/graphics/Bitmap;
    :cond_6
    const-string v1, "preview"

    .restart local v1       #ImageName:Ljava/lang/String;
    goto :goto_2

    .line 515
    .restart local v4       #fileName:Ljava/lang/String;
    .restart local v5       #i:I
    .restart local v7       #list:[Ljava/lang/String;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 525
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 527
    .end local v5           #i:I
    .end local v7           #list:[Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 528
    .local v3, e:Ljava/lang/Exception;
    const-string v12, "HtcSkinUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IOException: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".jpg or "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".png"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 530
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 537
    .end local v1           #ImageName:Ljava/lang/String;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #fileName:Ljava/lang/String;
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_1
.end method

.method private static getSkinResId(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I
    .locals 5
    .parameter "context"
    .parameter "resName"
    .parameter "defRes"
    .parameter "type"

    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->allowSkinChange:Z

    if-eqz v2, :cond_0

    .line 110
    invoke-static {}, Lcom/htc/util/skin/HtcSkinUtil;->getAppliedSkinPackageName()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, packageName:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    .end local v1           #packageName:Ljava/lang/String;
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 114
    .restart local v1       #packageName:Ljava/lang/String;
    .restart local p2
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1, p3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 115
    .local v0, id:I
    if-nez v0, :cond_2

    .line 116
    const-string v2, "HtcSkinUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No such resource was found with given name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , requested by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move p2, v0

    .line 120
    goto :goto_0
.end method

.method public static getSkinVersionCode()I
    .locals 2

    .prologue
    .line 356
    sget v0, Lcom/htc/util/skin/SkinVersion;->TYPE:I

    shl-int/lit8 v0, v0, 0x1c

    sget v1, Lcom/htc/util/skin/SkinVersion;->SENSE_VERSION:I

    shl-int/lit8 v1, v1, 0x14

    or-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x0

    or-int/lit8 v0, v0, 0x0

    or-int/lit8 v0, v0, 0x0

    return v0
.end method

.method public static getSkinVersionCode(Landroid/content/Context;)I
    .locals 2
    .parameter "context"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 348
    sget v0, Lcom/htc/util/skin/SkinVersion;->TYPE:I

    shl-int/lit8 v0, v0, 0x1c

    sget v1, Lcom/htc/util/skin/SkinVersion;->SENSE_VERSION:I

    shl-int/lit8 v1, v1, 0x14

    or-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x0

    or-int/lit8 v0, v0, 0x0

    or-int/lit8 v0, v0, 0x0

    return v0
.end method

.method public static getSkinVersionCodeFromFileName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .parameter "context"
    .parameter "apkFileName"

    .prologue
    const/4 v2, -0x1

    .line 1611
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1613
    .local v1, pm:Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 1615
    const/4 v0, 0x0

    .line 1616
    .local v0, packageInfo:Landroid/content/pm/PackageInfo;
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1618
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_1

    .line 1629
    .end local v0           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v2

    .line 1620
    .restart local v0       #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_0

    .line 1622
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->isSkinApk:Z

    if-eqz v3, :cond_0

    .line 1623
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_0
.end method

.method public static getSkinVersionCodeFromPackageName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v3, -0x1

    .line 1580
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1582
    .local v2, pm:Landroid/content/pm/PackageManager;
    if-nez p1, :cond_1

    .line 1600
    :cond_0
    :goto_0
    return v3

    .line 1584
    :cond_1
    const-string v4, "default"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "com.htc"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1585
    :cond_2
    invoke-static {p0}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinVersionCode(Landroid/content/Context;)I

    move-result v3

    goto :goto_0

    .line 1589
    :cond_3
    const/16 v4, 0x2000

    :try_start_0
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1596
    .local v1, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 1600
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_0

    .line 1590
    .end local v1           #pkgInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 1591
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "HtcSkinUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No such skin package matches the given name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getUserInstallSkinPackageName(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1641
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1642
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getInstalledSkinPackages()Ljava/util/List;

    move-result-object v2

    .line 1643
    .local v2, pkgs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1644
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1645
    .local v4, skins:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "default"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1646
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1647
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 1649
    .local v1, pi:Landroid/content/pm/PackageInfo;
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/htc/util/skin/HtcSkinUtil;->isSystemApk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1650
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1654
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    :cond_1
    return-object v4
.end method

.method public static insertProviderSdApk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 17
    .parameter "context"
    .parameter "apkFileName"
    .parameter "sdTime"
    .parameter "sdSize"

    .prologue
    .line 976
    invoke-static/range {p0 .. p1}, Lcom/htc/util/skin/HtcSkinUtil;->deleteProviderSdApk(Landroid/content/Context;Ljava/lang/String;)V

    .line 978
    const/16 v1, 0x64

    .line 983
    .local v1, compressRate:I
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 984
    .local v13, values:Landroid/content/ContentValues;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 986
    .local v2, cr:Landroid/content/ContentResolver;
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 987
    .local v9, previewStream:Ljava/io/ByteArrayOutputStream;
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 988
    .local v11, previewlandStream:Ljava/io/ByteArrayOutputStream;
    const/4 v8, 0x0

    .line 989
    .local v8, preview:Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    .line 990
    .local v10, previewland:Landroid/graphics/Bitmap;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 992
    .local v3, date:Ljava/util/Date;
    move-object/from16 v5, p1

    .line 993
    .local v5, filename:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/htc/util/skin/HtcSkinUtil;->isSkinApk(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 995
    .local v6, isSkinApk:I
    const/4 v14, 0x1

    if-ne v6, v14, :cond_5

    .line 996
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getSdSkinPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 997
    .local v7, packagename:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getSdSkinName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 998
    .local v12, skinname:Ljava/lang/String;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v5, v14}, Lcom/htc/util/skin/HtcSkinUtil;->getSdSkinPreviewImage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 999
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v5, v14}, Lcom/htc/util/skin/HtcSkinUtil;->getSdSkinPreviewImage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1000
    if-eqz v8, :cond_0

    .line 1001
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v8, v14, v1, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1002
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 1005
    :cond_0
    if-eqz v10, :cond_1

    .line 1006
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v10, v14, v1, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1007
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 1011
    :cond_1
    :try_start_0
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1012
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1016
    :goto_0
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 1017
    const-string v14, "filename"

    invoke-virtual {v13, v14, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    const-string v14, "packagename"

    invoke-virtual {v13, v14, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    const-string v14, "skinname"

    invoke-virtual {v13, v14, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    if-eqz v8, :cond_2

    if-eqz v9, :cond_2

    .line 1023
    const-string v14, "preview"

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1024
    :cond_2
    if-eqz v10, :cond_3

    if-eqz v11, :cond_3

    .line 1025
    const-string v14, "previewland"

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1027
    :cond_3
    const-string v14, "packagetype"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1028
    const-string v14, "dateadded"

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1029
    const-string v14, "datemodified"

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1030
    const-string v14, "filesize"

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1031
    const-string v14, "skinversion"

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinVersionCodeFromFileName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1062
    .end local v7           #packagename:Ljava/lang/String;
    .end local v12           #skinname:Ljava/lang/String;
    :cond_4
    :goto_1
    sget-object v14, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v14, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1064
    const/4 v9, 0x0

    .line 1065
    const/4 v11, 0x0

    .line 1066
    return-void

    .line 1013
    .restart local v7       #packagename:Ljava/lang/String;
    .restart local v12       #skinname:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1014
    .local v4, ex:Ljava/io/IOException;
    const-string v14, "HtcSkinUtil"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " got exception ex "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1033
    .end local v4           #ex:Ljava/io/IOException;
    .end local v7           #packagename:Ljava/lang/String;
    .end local v12           #skinname:Ljava/lang/String;
    :cond_5
    if-nez v6, :cond_6

    .line 1034
    const-string v14, "HtcSkinUtil"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " is not a skin pacakge should not put in directory "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".data/HtcSkins"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 1036
    const-string v14, "filename"

    invoke-virtual {v13, v14, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    const-string v14, "packagename"

    invoke-virtual {v13, v14, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    const-string v14, "packagetype"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1042
    const-string v14, "dateadded"

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1043
    const-string v14, "datemodified"

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1044
    const-string v14, "filesize"

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1045
    const-string v14, "skinversion"

    invoke-static/range {p0 .. p0}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinVersionCode(Landroid/content/Context;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 1046
    :cond_6
    const/4 v14, -0x1

    if-ne v6, v14, :cond_4

    .line 1047
    const-string v14, "HtcSkinUtil"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " is not a valid apk file or valid file name should not put in directory "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".data/HtcSkins"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 1049
    const-string v14, "filename"

    invoke-virtual {v13, v14, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    const-string v14, "packagename"

    invoke-virtual {v13, v14, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    const-string v14, "packagetype"

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1055
    const-string v14, "dateadded"

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1056
    const-string v14, "datemodified"

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1057
    const-string v14, "filesize"

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1058
    const-string v14, "skinversion"

    invoke-static/range {p0 .. p0}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinVersionCode(Landroid/content/Context;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1
.end method

.method public static insertProviderSystemAndInstalledPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 17
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 878
    invoke-static/range {p0 .. p1}, Lcom/htc/util/skin/HtcSkinUtil;->isSystemApk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    .line 880
    .local v6, isSystemApk:Z
    if-nez v6, :cond_0

    .line 881
    const-string v14, "HtcSkinUtil"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " should be insert into database when install"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :cond_0
    const/16 v1, 0x64

    .line 889
    .local v1, compressRate:I
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 890
    .local v13, values:Landroid/content/ContentValues;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 892
    .local v2, cr:Landroid/content/ContentResolver;
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 893
    .local v9, previewStream:Ljava/io/ByteArrayOutputStream;
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 894
    .local v11, previewlandStream:Ljava/io/ByteArrayOutputStream;
    const/4 v8, 0x0

    .line 895
    .local v8, preview:Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    .line 896
    .local v10, previewland:Landroid/graphics/Bitmap;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 898
    .local v3, date:Ljava/util/Date;
    move-object/from16 v5, p1

    .line 899
    .local v5, filename:Ljava/lang/String;
    move-object/from16 v7, p1

    .line 900
    .local v7, packagename:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 901
    .local v12, skinname:Ljava/lang/String;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v7, v14}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinPreviewImage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 902
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v7, v14}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinPreviewImage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 903
    if-eqz v8, :cond_1

    .line 904
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v8, v14, v1, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 905
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 908
    :cond_1
    if-eqz v10, :cond_2

    .line 909
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v10, v14, v1, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 910
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 914
    :cond_2
    :try_start_0
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 915
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 920
    :goto_0
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 921
    const-string v14, "filename"

    invoke-virtual {v13, v14, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    const-string v14, "packagename"

    invoke-virtual {v13, v14, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    const-string v14, "skinname"

    invoke-virtual {v13, v14, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    if-eqz v6, :cond_3

    .line 928
    const-string v14, "packagetype"

    const/4 v15, 0x3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 938
    :goto_1
    const-string v14, "dateadded"

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 939
    const-string v14, "datemodified"

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 940
    const-string v14, "filesize"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 941
    const-string v14, "skinversion"

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinVersionCodeFromPackageName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 943
    sget-object v14, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v14, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 945
    const/4 v9, 0x0

    .line 946
    const/4 v11, 0x0

    .line 947
    return-void

    .line 916
    :catch_0
    move-exception v4

    .line 917
    .local v4, ex:Ljava/io/IOException;
    const-string v14, "HtcSkinUtil"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "got exception ex "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 930
    .end local v4           #ex:Ljava/io/IOException;
    :cond_3
    if-eqz v8, :cond_4

    if-eqz v9, :cond_4

    .line 931
    const-string v14, "preview"

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 932
    :cond_4
    if-eqz v10, :cond_5

    if-eqz v11, :cond_5

    .line 933
    const-string v14, "previewland"

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 935
    :cond_5
    const-string v14, "packagetype"

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1
.end method

.method private static isSkinApk(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6
    .parameter "context"
    .parameter "apkFileName"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 843
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 845
    .local v1, pm:Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 847
    const/4 v0, 0x0

    .line 848
    .local v0, packageInfo:Landroid/content/pm/PackageInfo;
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 850
    if-nez v0, :cond_1

    .line 851
    const-string v3, "HtcSkinUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " packageInfo is null "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    .end local v0           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v2

    .line 853
    .restart local v0       #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    .line 855
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->isSkinApk:Z

    if-eqz v4, :cond_3

    .line 856
    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinVersionCode(Landroid/content/Context;)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 857
    const/4 v2, 0x1

    goto :goto_0

    .line 859
    :cond_2
    const-string v3, "HtcSkinUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The versionCode of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not for this device"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v2, v3

    .line 863
    goto :goto_0
.end method

.method public static isSystemApk(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v3, 0x0

    .line 368
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 370
    .local v2, pm:Landroid/content/pm/PackageManager;
    if-eqz p1, :cond_0

    const-string v4, "default"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 371
    :cond_0
    const-string p1, "com.htc"

    .line 373
    :cond_1
    const/16 v4, 0x2000

    :try_start_0
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 380
    .local v1, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_2

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_3

    .line 389
    .end local v1           #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_2
    :goto_0
    return v3

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "HtcSkinUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No such skin package matches the given name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 384
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_3
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_4

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 387
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isSystemSkinPackage(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 615
    const/4 v0, 0x1

    return v0
.end method

.method private static setWallpaperForSkin(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v9, 0x0

    .line 214
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 215
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 217
    .local v4, res:Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    :try_start_0
    const-string v6, "default"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 218
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 226
    :cond_0
    if-eqz v4, :cond_2

    .line 227
    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 230
    .local v0, a:Landroid/content/res/AssetManager;
    :try_start_1
    const-string v6, "image/wallpaper.jpg"

    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 236
    .local v2, is:Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 237
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v5

    .line 239
    .local v5, wm:Landroid/app/WallpaperManager;
    :try_start_2
    invoke-virtual {v5, v2}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 252
    .end local v0           #a:Landroid/content/res/AssetManager;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v5           #wm:Landroid/app/WallpaperManager;
    :cond_1
    :goto_0
    return v9

    .line 220
    :catch_0
    move-exception v1

    .line 221
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "HtcSkinUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No such skin package matches the given name "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 231
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #a:Landroid/content/res/AssetManager;
    :catch_1
    move-exception v1

    .line 232
    .local v1, e:Ljava/io/IOException;
    const-string v6, "HtcSkinUtil"

    const-string v7, "IOException: image/wallpaper.jpg"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 240
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v5       #wm:Landroid/app/WallpaperManager;
    :catch_2
    move-exception v1

    .line 241
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "HtcSkinUtil"

    const-string v7, "failed to apply skin wallpaper"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    .end local v0           #a:Landroid/content/res/AssetManager;
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v5           #wm:Landroid/app/WallpaperManager;
    :cond_2
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v5

    .line 247
    .restart local v5       #wm:Landroid/app/WallpaperManager;
    :try_start_3
    invoke-virtual {v5}, Landroid/app/WallpaperManager;->clear()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 248
    :catch_3
    move-exception v1

    .line 249
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "HtcSkinUtil"

    const-string v7, "An error occurs reverting to the default wallpape"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static syncBoth(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 1289
    invoke-static {p0}, Lcom/htc/util/skin/HtcSkinUtil;->syncSystem(Landroid/content/Context;)V

    .line 1290
    invoke-static {p0}, Lcom/htc/util/skin/HtcSkinUtil;->syncSd(Landroid/content/Context;)V

    .line 1291
    return-void
.end method

.method public static syncLocale(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 1301
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1302
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.htc.skinscanner"

    const-string v4, "com.htc.skinscanner.SkinScannerService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1303
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1304
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "filepath"

    const-string v3, "Locale"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1306
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1307
    return-void
.end method

.method public static syncPackageAdd(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 1349
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1350
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.htc.skinscanner"

    const-string v4, "com.htc.skinscanner.SkinScannerService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1351
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1352
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "filepath"

    const-string v3, "PackageAdd"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    const-string v2, "packagename"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1355
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1356
    return-void
.end method

.method public static syncPackageRemove(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 1366
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1367
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.htc.skinscanner"

    const-string v4, "com.htc.skinscanner.SkinScannerService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1368
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1369
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "filepath"

    const-string v3, "PackageRemove"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    const-string v2, "packagename"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1372
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1373
    return-void
.end method

.method public static syncSd(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 1317
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1318
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.htc.skinscanner"

    const-string v4, "com.htc.skinscanner.SkinScannerService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1319
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1320
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "filepath"

    const-string v3, "Sd"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1322
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1323
    return-void
.end method

.method public static syncSystem(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 1333
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1334
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.htc.skinscanner"

    const-string v4, "com.htc.skinscanner.SkinScannerService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1335
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1336
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "filepath"

    const-string v3, "System"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1338
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1339
    return-void
.end method

.method public static updateToInstalled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "fileName"
    .parameter "packageName"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 1105
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1106
    .local v7, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1108
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packagetype=2 AND filename=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1110
    .local v3, where_clause:Ljava/lang/String;
    sget-object v1, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packagetype=2 AND packagename=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1114
    const/4 v6, 0x0

    .line 1115
    .local v6, c:Landroid/database/Cursor;
    sget-object v1, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v5, "filename"

    aput-object v5, v2, v9

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1117
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1118
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1120
    sget-object v1, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1126
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1127
    const/4 v6, 0x0

    .line 1129
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 1130
    const-string v1, "packagetype"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filename=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "packagetype"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1133
    sget-object v1, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v7, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1134
    return-void

    .line 1122
    :cond_1
    const-string v1, "packagetype"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1123
    sget-object v1, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v7, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateToUninstalled(Landroid/content/Context;Ljava/lang/String;)V
    .locals 18
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 1156
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 1157
    .local v17, values:Landroid/content/ContentValues;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1159
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v11, 0x0

    .line 1160
    .local v11, providerFileName:Ljava/lang/String;
    const/4 v13, 0x0

    .line 1161
    .local v13, providerTime:Ljava/lang/Long;
    const/4 v12, 0x0

    .line 1162
    .local v12, providerSize:Ljava/lang/Long;
    const/4 v9, -0x1

    .line 1164
    .local v9, dataVersion:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packagename=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "packagetype"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1167
    .local v16, self_where:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1169
    .local v8, conflict_where:Ljava/lang/String;
    move-object/from16 v4, v16

    .line 1170
    .local v4, where_clause:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1171
    .local v7, c:Landroid/database/Cursor;
    sget-object v2, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "filename"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "datemodified"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "filesize"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "skinversion"

    aput-object v6, v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1173
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1174
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1175
    new-instance v13, Ljava/lang/Long;

    .end local v13           #providerTime:Ljava/lang/Long;
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v13, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 1176
    .restart local v13       #providerTime:Ljava/lang/Long;
    new-instance v12, Ljava/lang/Long;

    .end local v12           #providerSize:Ljava/lang/Long;
    const/4 v2, 0x2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v12, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 1177
    .restart local v12       #providerSize:Ljava/lang/Long;
    const/4 v2, 0x3

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filename=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "packagetype"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1181
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1182
    const/4 v7, 0x0

    .line 1184
    invoke-static {}, Lcom/htc/util/skin/HtcSkinUtil;->checkSdCard()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1185
    if-eqz v8, :cond_1

    .line 1186
    move-object v4, v8

    .line 1187
    sget-object v2, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "filename"

    aput-object v6, v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1189
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1190
    move-object/from16 v4, v16

    .line 1191
    sget-object v2, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1192
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1193
    const/4 v7, 0x0

    .line 1233
    :cond_1
    :goto_0
    return-void

    .line 1195
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1196
    move-object/from16 v4, v16

    .line 1197
    sget-object v2, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1199
    :cond_3
    move-object/from16 v4, v16

    .line 1200
    invoke-static/range {p0 .. p0}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinVersionCode(Landroid/content/Context;)I

    move-result v2

    if-ne v9, v2, :cond_4

    .line 1201
    const-string v2, "packagetype"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1202
    sget-object v2, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1204
    :cond_4
    sget-object v2, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1211
    :cond_5
    move-object/from16 v4, v16

    .line 1212
    if-eqz v11, :cond_1

    .line 1213
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1214
    .local v10, file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1215
    sget-object v2, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1217
    :cond_6
    new-instance v15, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-direct {v15, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 1218
    .local v15, sdTime:Ljava/lang/Long;
    new-instance v14, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-direct {v14, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 1219
    .local v14, sdSize:Ljava/lang/Long;
    invoke-static {v15, v14, v13, v12}, Lcom/htc/util/skin/HtcSkinUtil;->compareFile(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1220
    sget-object v2, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1222
    :cond_7
    invoke-static/range {p0 .. p0}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinVersionCode(Landroid/content/Context;)I

    move-result v2

    if-ne v9, v2, :cond_8

    .line 1223
    const-string v2, "packagetype"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1224
    sget-object v2, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1226
    :cond_8
    sget-object v2, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1227
    move-object/from16 v0, p0

    invoke-static {v0, v11, v15, v14}, Lcom/htc/util/skin/HtcSkinUtil;->insertProviderSdApk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    goto/16 :goto_0
.end method
