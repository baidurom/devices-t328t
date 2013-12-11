.class public Lcom/htc/lockscreen/LockscreenManager;
.super Ljava/lang/Object;
.source "LockscreenManager.java"


# static fields
.field static final LOCKSCREEN_ROOT:Ljava/lang/String; = "/data/misc/lockscreen/"

.field static final LOCKSCREEN_WALLPAPER:Ljava/lang/String; = "/data/misc/lockscreen/lock_screen_"

.field static final LOCKSCREEN_WALLPAPER_PORTRAIT:Ljava/lang/String; = "/data/misc/lockscreen/lock_screen_port"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setStream(Ljava/io/InputStream;Landroid/content/Context;)Z
    .locals 12
    .parameter "data"
    .parameter "context"

    .prologue
    const/4 v11, -0x1

    .line 37
    const/4 v6, 0x0

    .line 39
    .local v6, retVal:Z
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v7, v6

    .line 98
    .end local v6           #retVal:Z
    .local v7, retVal:I
    :goto_0
    return v7

    .line 43
    .end local v7           #retVal:I
    .restart local v6       #retVal:Z
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v9, "/data/misc/lockscreen/lock_screen_port"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, destPortFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 46
    new-instance v5, Ljava/io/File;

    const-string v9, "/data/misc/lockscreen/lock_screen_port"

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .local v5, lockWallpaper_Port:Ljava/io/File;
    if-nez v5, :cond_2

    .line 48
    const-string v9, "LockscreenManager"

    const-string v10, "New lockWallpaper_Port file getting error!"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_2
    const/high16 v9, 0x3800

    :try_start_0
    invoke-static {v5, v9}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 53
    .local v2, fd_Port:Landroid/os/ParcelFileDescriptor;
    if-nez v2, :cond_3

    .line 54
    const-string v9, "LockscreenManager"

    const-string v10, "fd_Port = null"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move v7, v6

    .line 55
    .restart local v7       #retVal:I
    goto :goto_0

    .line 58
    .end local v7           #retVal:I
    :cond_3
    const/4 v3, 0x0

    .line 60
    .local v3, fos_Port:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v4, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .end local v3           #fos_Port:Ljava/io/FileOutputStream;
    .local v4, fos_Port:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-static {p0, v4}, Lcom/htc/lockscreen/LockscreenManager;->setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 70
    if-eqz v4, :cond_4

    .line 72
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 88
    :cond_4
    :goto_1
    const-string v9, "/data/misc/lockscreen/lock_screen_port"

    const/16 v10, 0x1b6

    invoke-static {v9, v10, v11, v11}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 94
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.htc.launcher.lockscreen.WallpaperChanged"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v8, themeChangedIntent:Landroid/content/Intent;
    invoke-virtual {p1, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 96
    const/4 v6, 0x1

    move v7, v6

    .line 98
    .restart local v7       #retVal:I
    goto :goto_0

    .line 63
    .end local v7           #retVal:I
    .end local v8           #themeChangedIntent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 65
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    const-string v9, "LockscreenManager"

    const-string v10, "setWallpaper IOException!"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 70
    if-eqz v4, :cond_5

    .line 72
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_5
    :goto_2
    move v7, v6

    .line 77
    .restart local v7       #retVal:I
    goto :goto_0

    .line 73
    .end local v7           #retVal:I
    :catch_1
    move-exception v1

    .line 75
    :try_start_6
    const-string v9, "LockscreenManager"

    const-string v10, "File close IOException!"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 80
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #fd_Port:Landroid/os/ParcelFileDescriptor;
    .end local v4           #fos_Port:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    .line 82
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v9, "LockscreenManager"

    const-string v10, "FileNotFoundException!"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move v7, v6

    .line 84
    .restart local v7       #retVal:I
    goto :goto_0

    .line 73
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v7           #retVal:I
    .restart local v2       #fd_Port:Landroid/os/ParcelFileDescriptor;
    .restart local v4       #fos_Port:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    .line 75
    .local v1, e:Ljava/io/IOException;
    :try_start_7
    const-string v9, "LockscreenManager"

    const-string v10, "File close IOException!"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    .line 70
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #fos_Port:Ljava/io/FileOutputStream;
    .restart local v3       #fos_Port:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v9

    :goto_3
    if-eqz v3, :cond_6

    .line 72
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_2

    .line 77
    :cond_6
    :goto_4
    :try_start_9
    throw v9

    .line 73
    :catch_4
    move-exception v1

    .line 75
    .restart local v1       #e:Ljava/io/IOException;
    const-string v10, "LockscreenManager"

    const-string v11, "File close IOException!"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_4

    .line 70
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #fos_Port:Ljava/io/FileOutputStream;
    .restart local v4       #fos_Port:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4           #fos_Port:Ljava/io/FileOutputStream;
    .restart local v3       #fos_Port:Ljava/io/FileOutputStream;
    goto :goto_3
.end method

.method private static setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .locals 3
    .parameter "data"
    .parameter "fos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    const v2, 0x8000

    new-array v1, v2, [B

    .line 105
    .local v1, buffer:[B
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, amt:I
    if-lez v0, :cond_0

    .line 106
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 108
    :cond_0
    return-void
.end method
