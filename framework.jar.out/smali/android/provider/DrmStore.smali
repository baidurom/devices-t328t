.class public final Landroid/provider/DrmStore;
.super Ljava/lang/Object;
.source "DrmStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/DrmStore$UpdateLicense;,
        Landroid/provider/DrmStore$ErrorCode;,
        Landroid/provider/DrmStore$Err;,
        Landroid/provider/DrmStore$DrmConstraint;,
        Landroid/provider/DrmStore$Stamp;,
        Landroid/provider/DrmStore$AlbumArt;,
        Landroid/provider/DrmStore$Albums;,
        Landroid/provider/DrmStore$Artists;,
        Landroid/provider/DrmStore$Jar;,
        Landroid/provider/DrmStore$Video;,
        Landroid/provider/DrmStore$Audio;,
        Landroid/provider/DrmStore$Images;,
        Landroid/provider/DrmStore$Columns;
    }
.end annotation


# static fields
.field private static final ACCESS_DRM_PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_DRM"

.field public static final ALBUMS_PROJECTION:[Ljava/lang/String; = null

.field public static final ARTISTS_PROJECTION:[Ljava/lang/String; = null

.field public static final AUTHORITY:Ljava/lang/String; = "drm"

.field private static CMD_CHMOD:[Ljava/lang/String; = null

.field public static final CONSTRAINT_PROJECTION:[Ljava/lang/String; = null

.field public static final DCFLIST_PROJECTION:[Ljava/lang/String; = null

.field public static final DELIVERY_TYPE_PROJECTION:[Ljava/lang/String; = null

.field private static DISABLE_COMBINED_DELIVERY:Z = false

.field private static DISABLE_FORWORD_LOCK:Z = false

.field private static DISABLE_SEPARATE_DELIVERY:Z = false

.field public static final DRM_COMBINED_DELIVERY:I = 0x2

.field public static final DRM_DELIVERY_CD:I = 0xf0

.field public static final DRM_DELIVERY_FL:I = 0xf

.field public static final DRM_DELIVERY_SD:I = 0xf00

.field private static final DRM_FIND_BASE64_PATTERN:Ljava/lang/String; = "Content-Transfer-Encoding: base64"

.field public static final DRM_FORWARD_LOCK:I = 0x1

.field public static final DRM_HTC_RIGHTS_DIRECTORY_PATH:Ljava/lang/String; = "/data/data/com.android.providers.drm/rights"

.field public static final DRM_HTC_TMP_DIRECTORY:Ljava/lang/String; = "tmp"

.field public static final DRM_PERMISSION_DISPLAY:I = 0x2

.field public static final DRM_PERMISSION_EXECUTE:I = 0x3

.field public static final DRM_PERMISSION_PLAY:I = 0x1

.field public static final DRM_PERMISSION_PRINT:I = 0x4

.field private static final DRM_REPLACE_PATTERN:Ljava/lang/String; = "Content-Transfer-Encoding: binary"

.field public static final DRM_SEPARATE_DELIVERY:I = 0x3

.field public static final DrmUriCollection:[Landroid/net/Uri; = null

.field public static final FILEPATH_PROJECTION:[Ljava/lang/String; = null

.field private static final GARBAGE_FILE:Ljava/lang/String; = "garbage"

.field private static final LOGD:Z = true

.field public static final METADATA_PROJECTION:[Ljava/lang/String; = null

.field public static final MIDLET_PROJECTION:[Ljava/lang/String; = null

.field private static final PLATFORM_7x27:Ljava/lang/String; = "7x27"

.field private static final PLATFORM_MSM7K:Ljava/lang/String; = "msm7k"

.field private static REBUILD_DATABASE:Z = false

.field private static final REPEAT_COUNT:I = 0x3

.field public static final STAMP_PROJECTION:[Ljava/lang/String; = null

.field private static SWITCH_TO_CID:Z = false

.field private static final TAG:Ljava/lang/String; = "DrmStore"

.field public static final TITLE_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 77
    sput-boolean v3, Landroid/provider/DrmStore;->REBUILD_DATABASE:Z

    .line 78
    sput-boolean v3, Landroid/provider/DrmStore;->DISABLE_FORWORD_LOCK:Z

    .line 79
    sput-boolean v3, Landroid/provider/DrmStore;->DISABLE_COMBINED_DELIVERY:Z

    .line 80
    sput-boolean v3, Landroid/provider/DrmStore;->DISABLE_SEPARATE_DELIVERY:Z

    .line 81
    sput-boolean v3, Landroid/provider/DrmStore;->SWITCH_TO_CID:Z

    .line 8185
    new-array v0, v7, [Landroid/net/Uri;

    sget-object v1, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v3

    sget-object v1, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v4

    sget-object v1, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v5

    sget-object v1, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v6

    sput-object v0, Landroid/provider/DrmStore;->DrmUriCollection:[Landroid/net/Uri;

    .line 8232
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string/jumbo v1, "title"

    aput-object v1, v0, v5

    const-string v1, "content_url"

    aput-object v1, v0, v6

    sput-object v0, Landroid/provider/DrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    .line 8239
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    sput-object v0, Landroid/provider/DrmStore;->FILEPATH_PROJECTION:[Ljava/lang/String;

    .line 8244
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "date_added"

    aput-object v1, v0, v4

    sput-object v0, Landroid/provider/DrmStore;->CONSTRAINT_PROJECTION:[Ljava/lang/String;

    .line 8249
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "_size"

    aput-object v1, v0, v5

    const-string/jumbo v1, "title"

    aput-object v1, v0, v6

    const-string/jumbo v1, "mime_type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "message_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "delivery_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "existence"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "content_offset"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/DrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    .line 8262
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "delivery_type"

    aput-object v1, v0, v5

    sput-object v0, Landroid/provider/DrmStore;->DCFLIST_PROJECTION:[Ljava/lang/String;

    .line 8269
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string/jumbo v1, "mime_type"

    aput-object v1, v0, v5

    const-string v1, "content_id"

    aput-object v1, v0, v6

    sput-object v0, Landroid/provider/DrmStore;->METADATA_PROJECTION:[Ljava/lang/String;

    .line 8276
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    sput-object v0, Landroid/provider/DrmStore;->MIDLET_PROJECTION:[Ljava/lang/String;

    .line 8281
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "album_id"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v4

    const-string v1, "album_key"

    aput-object v1, v0, v5

    sput-object v0, Landroid/provider/DrmStore;->ALBUMS_PROJECTION:[Ljava/lang/String;

    .line 8287
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "artist_id"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v4

    const-string v1, "artist_key"

    aput-object v1, v0, v5

    sput-object v0, Landroid/provider/DrmStore;->ARTISTS_PROJECTION:[Ljava/lang/String;

    .line 8293
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "time_stamp"

    aput-object v1, v0, v4

    const-string v1, "clock_stamp"

    aput-object v1, v0, v5

    const-string/jumbo v1, "timezone_stamp"

    aput-object v1, v0, v6

    const-string/jumbo v1, "time_differential"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "network_sync"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    .line 8327
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "chmod"

    aput-object v1, v0, v3

    const-string v1, "666"

    aput-object v1, v0, v4

    const-string v1, ""

    aput-object v1, v0, v5

    sput-object v0, Landroid/provider/DrmStore;->CMD_CHMOD:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8332
    return-void
.end method

.method private static final NeedToEncrypt(Ljava/lang/String;)Z
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 8177
    const-string v0, "application/java-archive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 8178
    const/4 v0, 0x1

    .line 8180
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final SupportForwardLockOnly()Z
    .locals 2

    .prologue
    .line 8021
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9a

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x51

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x94

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xaf

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x50

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9e

    if-ne v0, v1, :cond_1

    .line 8048
    :cond_0
    const/4 v0, 0x1

    .line 8050
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final acquireRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 18
    .parameter "cx"
    .parameter "contentUri"
    .parameter "strFilePath"
    .parameter "className"

    .prologue
    .line 6772
    const-string v2, "DrmStore"

    const-string v3, "********acquireRights"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6774
    const/16 v16, 0x0

    .line 6776
    .local v16, uri:Landroid/net/Uri;
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 6778
    :cond_0
    const-string v2, "DrmStore"

    const-string v3, "acquireRights (1) : -2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6780
    const/4 v2, 0x0

    .line 6894
    :goto_0
    return-object v2

    .line 6783
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Landroid/provider/DrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const-string v5, "_data=?"

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v6, v3

    const-string v7, "_id"

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 6784
    .local v8, c:Landroid/database/Cursor;
    if-nez v8, :cond_2

    .line 6786
    const-string v2, "DrmStore"

    const-string v3, "acquireRights (2) : -6"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6788
    const/4 v2, 0x0

    goto :goto_0

    .line 6789
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 6791
    const-string v2, "DrmStore"

    const-string v3, "acquireRights no record."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6793
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 6794
    const/4 v2, 0x0

    goto :goto_0

    .line 6797
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6798
    const-string/jumbo v2, "message_type"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 6799
    .local v15, messageTypeColumnId:I
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 6800
    .local v14, messageType:Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 6802
    const-string v2, "application/vnd.oma.drm.content"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 6804
    const-string v2, "DrmStore"

    const-string v3, "acquireRights (3) : -2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6806
    const/4 v2, 0x0

    goto :goto_0

    .line 6809
    :cond_4
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6811
    .local v11, file:Ljava/io/File;
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6812
    .local v12, fis:Ljava/io/InputStream;
    new-instance v9, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v12}, Ljava/io/InputStream;->available()I

    move-result v2

    invoke-direct {v9, v12, v2, v14}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 6813
    .local v9, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual {v9}, Landroid/drm/mobile1/DrmRawContent;->getRightsAddress()Ljava/lang/String;

    move-result-object v13

    .line 6814
    .local v13, issuer:Ljava/lang/String;
    if-nez v13, :cond_5

    .line 6816
    const-string v2, "DrmStore"

    const-string v3, "acquireRights (4) : Null issuer : -9"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6818
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 6819
    const/4 v2, 0x0

    goto :goto_0

    .line 6820
    :cond_5
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 6822
    const-string v2, "DrmStore"

    const-string v3, "acquireRights (5) : Empty issuer : -9"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6824
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 6825
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 6827
    :cond_6
    const-string v2, "\\"

    const-string v3, "/"

    invoke-virtual {v13, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 6829
    const-string v2, "DrmStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireRights (6) : Right Issure = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6833
    :try_start_1
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 6835
    .local v17, values:Landroid/content/ContentValues;
    const-string/jumbo v2, "uri"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6837
    const-string v2, "entity"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6839
    const-string/jumbo v2, "notificationpackage"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6841
    const-string/jumbo v2, "notificationclass"

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6843
    const-string/jumbo v2, "visibility"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6845
    const-string/jumbo v2, "is_visible_in_downloads_ui"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 6850
    const-string/jumbo v2, "restriction"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6880
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v16

    move-object/from16 v2, v16

    .line 6894
    goto/16 :goto_0

    .line 6881
    .end local v17           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v10

    .line 6883
    .local v10, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "DrmStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireRights (10) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6885
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 6886
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 6888
    .end local v9           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v10           #e:Ljava/lang/Exception;
    .end local v12           #fis:Ljava/io/InputStream;
    .end local v13           #issuer:Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 6890
    .restart local v10       #e:Ljava/lang/Exception;
    const-string v2, "DrmStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireRights (11) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6892
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public static final addDrmFile(Landroid/content/ContentResolver;Ljava/io/File;Ljava/lang/String;)Landroid/content/Intent;
    .locals 8
    .parameter "cr"
    .parameter "file"
    .parameter "title"

    .prologue
    .line 296
    const-string v5, "DrmStore"

    const-string v6, " @@@@@     addDrmFile (1)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v1, 0x0

    .line 301
    .local v1, fis:Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 304
    .local v4, result:Landroid/content/Intent;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .end local v1           #fis:Ljava/io/FileInputStream;
    .local v2, fis:Ljava/io/FileInputStream;
    if-nez p2, :cond_0

    .line 306
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    .line 307
    const/16 v5, 0x2e

    invoke-virtual {p2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 308
    .local v3, lastDot:I
    if-lez v3, :cond_0

    .line 309
    const/4 v5, 0x0

    invoke-virtual {p2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 312
    .end local v3           #lastDot:I
    :cond_0
    invoke-static {p0, v2, p2}, Landroid/provider/DrmStore;->addDrmFile(Landroid/content/ContentResolver;Ljava/io/FileInputStream;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v4

    .line 317
    if-eqz v2, :cond_1

    .line 318
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_0
    move-object v1, v2

    .line 324
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    return-object v4

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v5, "DrmStore"

    const-string/jumbo v6, "pushing file failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 317
    if-eqz v1, :cond_2

    .line 318
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 319
    :catch_1
    move-exception v0

    .line 320
    .local v0, e:Ljava/io/IOException;
    const-string v5, "DrmStore"

    const-string v6, "IOException in DrmStore.addDrmFile()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 316
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 317
    :goto_3
    if-eqz v1, :cond_3

    .line 318
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 316
    :cond_3
    :goto_4
    throw v5

    .line 319
    :catch_2
    move-exception v0

    .line 320
    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "DrmStore"

    const-string v7, "IOException in DrmStore.addDrmFile()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 319
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_3
    move-exception v0

    .line 320
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "DrmStore"

    const-string v6, "IOException in DrmStore.addDrmFile()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 316
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 313
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static final addDrmFile(Landroid/content/ContentResolver;Ljava/io/FileInputStream;Ljava/lang/String;)Landroid/content/Intent;
    .locals 22
    .parameter "cr"
    .parameter "fis"
    .parameter "title"

    .prologue
    .line 340
    const-string v19, "DrmStore"

    const-string v20, " @@@@@     addDrmFile (2)"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/4 v10, 0x0

    .line 345
    .local v10, os:Ljava/io/OutputStream;
    const/4 v11, 0x0

    .line 348
    .local v11, result:Landroid/content/Intent;
    :try_start_0
    new-instance v4, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->available()I

    move-result v19

    const-string v20, "application/vnd.oma.drm.message"

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v4, v0, v1, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 350
    .local v4, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual {v4}, Landroid/drm/mobile1/DrmRawContent;->getContentType()Ljava/lang/String;

    move-result-object v9

    .line 352
    .local v9, mimeType:Ljava/lang/String;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v8

    .line 353
    .local v8, manager:Landroid/drm/mobile1/DrmRightsManager;
    invoke-virtual {v8, v4}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v13

    .line 354
    .local v13, rights:Landroid/drm/mobile1/DrmRights;
    invoke-virtual {v4, v13}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v16

    .line 355
    .local v16, stream:Ljava/io/InputStream;
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->available()I

    move-result v19

    move/from16 v0, v19

    int-to-long v14, v0

    .line 357
    .local v14, size:J
    const/4 v5, 0x0

    .line 358
    .local v5, contentUri:Landroid/net/Uri;
    const-string v19, "audio/"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 359
    sget-object v5, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    .line 366
    :goto_0
    if-eqz v5, :cond_7

    .line 367
    new-instance v18, Landroid/content/ContentValues;

    const/16 v19, 0x3

    invoke-direct/range {v18 .. v19}, Landroid/content/ContentValues;-><init>(I)V

    .line 368
    .local v18, values:Landroid/content/ContentValues;
    const-string/jumbo v19, "title"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v19, "_size"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 370
    const-string/jumbo v19, "mime_type"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v17

    .line 373
    .local v17, uri:Landroid/net/Uri;
    if-eqz v17, :cond_7

    .line 374
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v10

    .line 376
    const/16 v19, 0x3e8

    move/from16 v0, v19

    new-array v3, v0, [B

    .line 379
    .local v3, buffer:[B
    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, count:I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v6, v0, :cond_6

    .line 380
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v10, v3, v0, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 387
    .end local v3           #buffer:[B
    .end local v4           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v5           #contentUri:Landroid/net/Uri;
    .end local v6           #count:I
    .end local v8           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v9           #mimeType:Ljava/lang/String;
    .end local v13           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v14           #size:J
    .end local v16           #stream:Ljava/io/InputStream;
    .end local v17           #uri:Landroid/net/Uri;
    .end local v18           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    .line 388
    .local v7, e:Ljava/lang/Exception;
    :goto_2
    :try_start_1
    const-string v19, "DrmStore"

    const-string/jumbo v20, "pushing file failed"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    if-eqz p1, :cond_0

    .line 392
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    .line 393
    :cond_0
    if-eqz v10, :cond_1

    .line 394
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 400
    .end local v7           #e:Ljava/lang/Exception;
    :cond_1
    :goto_3
    return-object v11

    .line 360
    .restart local v4       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v5       #contentUri:Landroid/net/Uri;
    .restart local v8       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v9       #mimeType:Ljava/lang/String;
    .restart local v13       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v14       #size:J
    .restart local v16       #stream:Ljava/io/InputStream;
    :cond_2
    :try_start_3
    const-string/jumbo v19, "image/"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 361
    sget-object v5, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 363
    :cond_3
    const-string v19, "DrmStore"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "unsupported mime type "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 390
    .end local v4           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v5           #contentUri:Landroid/net/Uri;
    .end local v8           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v9           #mimeType:Ljava/lang/String;
    .end local v13           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v14           #size:J
    .end local v16           #stream:Ljava/io/InputStream;
    :catchall_0
    move-exception v19

    .line 391
    :goto_4
    if-eqz p1, :cond_4

    .line 392
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    .line 393
    :cond_4
    if-eqz v10, :cond_5

    .line 394
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 390
    :cond_5
    :goto_5
    throw v19

    .line 382
    .restart local v3       #buffer:[B
    .restart local v4       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v5       #contentUri:Landroid/net/Uri;
    .restart local v6       #count:I
    .restart local v8       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v9       #mimeType:Ljava/lang/String;
    .restart local v13       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v14       #size:J
    .restart local v16       #stream:Ljava/io/InputStream;
    .restart local v17       #uri:Landroid/net/Uri;
    .restart local v18       #values:Landroid/content/ContentValues;
    :cond_6
    :try_start_5
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 383
    .end local v11           #result:Landroid/content/Intent;
    .local v12, result:Landroid/content/Intent;
    :try_start_6
    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-object v11, v12

    .line 391
    .end local v3           #buffer:[B
    .end local v6           #count:I
    .end local v12           #result:Landroid/content/Intent;
    .end local v17           #uri:Landroid/net/Uri;
    .end local v18           #values:Landroid/content/ContentValues;
    .restart local v11       #result:Landroid/content/Intent;
    :cond_7
    if-eqz p1, :cond_8

    .line 392
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    .line 393
    :cond_8
    if-eqz v10, :cond_1

    .line 394
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 395
    :catch_1
    move-exception v7

    .line 396
    .local v7, e:Ljava/io/IOException;
    const-string v19, "DrmStore"

    const-string v20, "IOException in DrmStore.addDrmFile()"

    .end local v4           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v5           #contentUri:Landroid/net/Uri;
    .end local v8           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v9           #mimeType:Ljava/lang/String;
    .end local v13           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v14           #size:J
    .end local v16           #stream:Ljava/io/InputStream;
    :goto_6
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 395
    .end local v7           #e:Ljava/io/IOException;
    :catch_2
    move-exception v7

    .line 396
    .restart local v7       #e:Ljava/io/IOException;
    const-string v20, "DrmStore"

    const-string v21, "IOException in DrmStore.addDrmFile()"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 395
    .local v7, e:Ljava/lang/Exception;
    :catch_3
    move-exception v7

    .line 396
    .local v7, e:Ljava/io/IOException;
    const-string v19, "DrmStore"

    const-string v20, "IOException in DrmStore.addDrmFile()"

    goto :goto_6

    .line 390
    .end local v7           #e:Ljava/io/IOException;
    .end local v11           #result:Landroid/content/Intent;
    .restart local v3       #buffer:[B
    .restart local v4       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v5       #contentUri:Landroid/net/Uri;
    .restart local v6       #count:I
    .restart local v8       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v9       #mimeType:Ljava/lang/String;
    .restart local v12       #result:Landroid/content/Intent;
    .restart local v13       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v14       #size:J
    .restart local v16       #stream:Ljava/io/InputStream;
    .restart local v17       #uri:Landroid/net/Uri;
    .restart local v18       #values:Landroid/content/ContentValues;
    :catchall_1
    move-exception v19

    move-object v11, v12

    .end local v12           #result:Landroid/content/Intent;
    .restart local v11       #result:Landroid/content/Intent;
    goto :goto_4

    .line 387
    .end local v11           #result:Landroid/content/Intent;
    .restart local v12       #result:Landroid/content/Intent;
    :catch_4
    move-exception v7

    move-object v11, v12

    .end local v12           #result:Landroid/content/Intent;
    .restart local v11       #result:Landroid/content/Intent;
    goto/16 :goto_2
.end method

.method public static final addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 48
    .parameter "cx"
    .parameter "file"
    .parameter "title"
    .parameter "mediaType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 626
    const-string v7, "DrmStore"

    const-string v8, "********addDrmFile (deprecated)"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p3, :cond_2

    .line 631
    :cond_0
    const-string v7, "DrmStore"

    const-string v8, "addDrmFile input error."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const/16 v34, 0x0

    .line 953
    :cond_1
    :goto_0
    return-object v34

    .line 636
    :cond_2
    const/16 v34, 0x0

    .line 637
    .local v34, intent:Landroid/content/Intent;
    const/16 v31, 0x0

    .line 640
    .local v31, fin:Ljava/io/FileInputStream;
    const-string v7, "application/vnd.oma.drm.rights+wbxml"

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "application/vnd.oma.drm.rights+wbxml"

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 643
    :cond_3
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/provider/DrmStore;->installRightsObject(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 644
    .local v45, uid:Ljava/lang/String;
    if-eqz v45, :cond_1

    .line 646
    const-string v7, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Install rights : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v45

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    new-instance v34, Landroid/content/Intent;

    .end local v34           #intent:Landroid/content/Intent;
    invoke-direct/range {v34 .. v34}, Landroid/content/Intent;-><init>()V

    .line 649
    .restart local v34       #intent:Landroid/content/Intent;
    const-string v7, "DRM Rights"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    move-object/from16 v0, v34

    move-object/from16 v1, p3

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 654
    .end local v45           #uid:Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 656
    .local v5, cr:Landroid/content/ContentResolver;
    const/16 v29, 0x0

    .line 657
    .local v29, fileName:Ljava/lang/String;
    if-nez p2, :cond_6

    .line 658
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v29

    .line 664
    :goto_1
    const-string v7, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Add DRM file : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :try_start_0
    new-instance v32, Ljava/io/FileInputStream;

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d

    .line 670
    .end local v31           #fin:Ljava/io/FileInputStream;
    .local v32, fin:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v17, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->available()I

    move-result v7

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v7, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 672
    .local v17, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual/range {v17 .. v17}, Landroid/drm/mobile1/DrmRawContent;->getContentType()Ljava/lang/String;

    move-result-object v37

    .line 674
    .local v37, mimeType:Ljava/lang/String;
    const-string v7, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mimeType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    invoke-virtual/range {v17 .. v17}, Landroid/drm/mobile1/DrmRawContent;->getRawType()I

    move-result v36

    .line 679
    .local v36, method:I
    const-string v7, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "method = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/drm/mobile1/DrmRawContent;->getContentOffset(Landroid/drm/mobile1/DrmRights;)I

    move-result v18

    .line 683
    .local v18, contentOffset:I
    const-string v19, ""

    .line 685
    .local v19, contentUid:Ljava/lang/String;
    const/4 v6, 0x0

    .line 688
    .local v6, contentUri:Landroid/net/Uri;
    const-string v7, "audio/"

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 689
    sget-object v6, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    .line 705
    :goto_2
    const/16 v27, 0x0

    .line 706
    .local v27, duplicate:Z
    const/16 v39, 0x0

    .line 707
    .local v39, overwrite:Z
    const/16 v46, 0x0

    .line 708
    .local v46, uri:Landroid/net/Uri;
    sget-object v7, Landroid/provider/DrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v8, "title=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v29, v9, v10

    const-string v10, "_id"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 709
    .local v14, c:Landroid/database/Cursor;
    if-eqz v14, :cond_17

    .line 710
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_5

    .line 712
    const-string v7, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " duplicated."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 716
    const-string v7, "_id"

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 717
    .local v16, columnIdIndex:I
    move/from16 v0, v16

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 718
    .local v15, columnId:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v46

    .line 719
    new-instance v35, Landroid/content/Intent;

    invoke-direct/range {v35 .. v35}, Landroid/content/Intent;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 720
    .end local v34           #intent:Landroid/content/Intent;
    .local v35, intent:Landroid/content/Intent;
    :try_start_2
    move-object/from16 v0, v35

    move-object/from16 v1, v46

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 721
    const/16 v27, 0x1

    .line 722
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 729
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/provider/DrmStore;->getExternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 732
    .local v30, filePath:Ljava/lang/String;
    const-string v7, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Check file path: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    new-instance v26, Ljava/io/File;

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 736
    .local v26, dupFile:Ljava/io/File;
    new-instance v22, Landroid/content/ContentValues;

    const/4 v7, 0x3

    move-object/from16 v0, v22

    invoke-direct {v0, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 738
    .local v22, cv:Landroid/content/ContentValues;
    sget-object v8, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v9, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "_id"

    move-object v7, v5

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v40

    .line 739
    .local v40, stampCursor:Landroid/database/Cursor;
    if-eqz v40, :cond_c

    .line 740
    invoke-interface/range {v40 .. v40}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 746
    const-string/jumbo v7, "time_differential"

    move-object/from16 v0, v40

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 747
    .local v25, differentialColumnId:I
    move-object/from16 v0, v40

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 748
    .local v23, differential:J
    const-string/jumbo v7, "timezone_stamp"

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v44

    .line 749
    .local v44, timeZoneColumnIndex:I
    move/from16 v0, v44

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 750
    .local v42, timeZone:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 751
    .local v20, currentClock:J
    const-string v7, "date_modified"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 752
    const-string v7, "date_added"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 757
    .end local v20           #currentClock:J
    .end local v23           #differential:J
    .end local v25           #differentialColumnId:I
    .end local v42           #timeZone:J
    .end local v44           #timeZoneColumnIndex:I
    :goto_3
    invoke-interface/range {v40 .. v40}, Landroid/database/Cursor;->close()V

    .line 763
    :goto_4
    const/16 v39, 0x1

    .line 765
    const-string v7, "existence"

    const-string v8, "exist"

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v34, v35

    .line 768
    .end local v15           #columnId:I
    .end local v16           #columnIdIndex:I
    .end local v22           #cv:Landroid/content/ContentValues;
    .end local v26           #dupFile:Ljava/io/File;
    .end local v30           #filePath:Ljava/lang/String;
    .end local v35           #intent:Landroid/content/Intent;
    .end local v40           #stampCursor:Landroid/database/Cursor;
    .restart local v34       #intent:Landroid/content/Intent;
    :cond_5
    :try_start_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 770
    if-eqz v27, :cond_e

    if-nez v39, :cond_e

    .line 771
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V

    .line 773
    const-string v7, "DrmStore"

    const-string v8, "File is duplicated and exist."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 944
    if-eqz v32, :cond_1

    .line 945
    :try_start_4
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 947
    :catch_0
    move-exception v28

    .line 949
    .local v28, e:Ljava/lang/Exception;
    const-string v7, "DrmStore"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    .end local v6           #contentUri:Landroid/net/Uri;
    .end local v14           #c:Landroid/database/Cursor;
    .end local v17           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v18           #contentOffset:I
    .end local v19           #contentUid:Ljava/lang/String;
    .end local v27           #duplicate:Z
    .end local v32           #fin:Ljava/io/FileInputStream;
    .end local v34           #intent:Landroid/content/Intent;
    .end local v36           #method:I
    .end local v37           #mimeType:Ljava/lang/String;
    .end local v39           #overwrite:Z
    .end local v46           #uri:Landroid/net/Uri;
    :goto_5
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 660
    .end local v28           #e:Ljava/lang/Exception;
    .restart local v31       #fin:Ljava/io/FileInputStream;
    .restart local v34       #intent:Landroid/content/Intent;
    :cond_6
    move-object/from16 v29, p2

    goto/16 :goto_1

    .line 690
    .end local v31           #fin:Ljava/io/FileInputStream;
    .restart local v6       #contentUri:Landroid/net/Uri;
    .restart local v17       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v18       #contentOffset:I
    .restart local v19       #contentUid:Ljava/lang/String;
    .restart local v32       #fin:Ljava/io/FileInputStream;
    .restart local v36       #method:I
    .restart local v37       #mimeType:Ljava/lang/String;
    :cond_7
    :try_start_5
    const-string/jumbo v7, "image/"

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 691
    sget-object v6, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_2

    .line 692
    :cond_8
    const-string/jumbo v7, "video/"

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 693
    sget-object v6, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_2

    .line 694
    :cond_9
    const-string v7, "application/java-archive"

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 695
    sget-object v6, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_2

    .line 698
    :cond_a
    const-string v7, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported mime type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 701
    const/16 v34, 0x0

    .line 944
    .end local v34           #intent:Landroid/content/Intent;
    if-eqz v32, :cond_1

    .line 945
    :try_start_6
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 947
    :catch_1
    move-exception v28

    .line 949
    .restart local v28       #e:Ljava/lang/Exception;
    const-string v7, "DrmStore"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    .line 754
    .end local v28           #e:Ljava/lang/Exception;
    .restart local v14       #c:Landroid/database/Cursor;
    .restart local v15       #columnId:I
    .restart local v16       #columnIdIndex:I
    .restart local v22       #cv:Landroid/content/ContentValues;
    .restart local v26       #dupFile:Ljava/io/File;
    .restart local v27       #duplicate:Z
    .restart local v30       #filePath:Ljava/lang/String;
    .restart local v35       #intent:Landroid/content/Intent;
    .restart local v39       #overwrite:Z
    .restart local v40       #stampCursor:Landroid/database/Cursor;
    .restart local v46       #uri:Landroid/net/Uri;
    :cond_b
    :try_start_7
    const-string v7, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 755
    const-string v7, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_3

    .line 938
    .end local v15           #columnId:I
    .end local v16           #columnIdIndex:I
    .end local v22           #cv:Landroid/content/ContentValues;
    .end local v26           #dupFile:Ljava/io/File;
    .end local v30           #filePath:Ljava/lang/String;
    .end local v40           #stampCursor:Landroid/database/Cursor;
    :catch_2
    move-exception v28

    move-object/from16 v31, v32

    .end local v32           #fin:Ljava/io/FileInputStream;
    .restart local v31       #fin:Ljava/io/FileInputStream;
    move-object/from16 v34, v35

    .line 940
    .end local v6           #contentUri:Landroid/net/Uri;
    .end local v14           #c:Landroid/database/Cursor;
    .end local v17           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v18           #contentOffset:I
    .end local v19           #contentUid:Ljava/lang/String;
    .end local v27           #duplicate:Z
    .end local v35           #intent:Landroid/content/Intent;
    .end local v36           #method:I
    .end local v37           #mimeType:Ljava/lang/String;
    .end local v39           #overwrite:Z
    .end local v46           #uri:Landroid/net/Uri;
    .restart local v28       #e:Ljava/lang/Exception;
    .restart local v34       #intent:Landroid/content/Intent;
    :goto_6
    :try_start_8
    const-string v7, "DrmStore"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 944
    if-eqz v31, :cond_1

    .line 945
    :try_start_9
    invoke-virtual/range {v31 .. v31}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_0

    .line 947
    :catch_3
    move-exception v28

    .line 949
    const-string v7, "DrmStore"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_5

    .line 759
    .end local v28           #e:Ljava/lang/Exception;
    .end local v31           #fin:Ljava/io/FileInputStream;
    .end local v34           #intent:Landroid/content/Intent;
    .restart local v6       #contentUri:Landroid/net/Uri;
    .restart local v14       #c:Landroid/database/Cursor;
    .restart local v15       #columnId:I
    .restart local v16       #columnIdIndex:I
    .restart local v17       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v18       #contentOffset:I
    .restart local v19       #contentUid:Ljava/lang/String;
    .restart local v22       #cv:Landroid/content/ContentValues;
    .restart local v26       #dupFile:Ljava/io/File;
    .restart local v27       #duplicate:Z
    .restart local v30       #filePath:Ljava/lang/String;
    .restart local v32       #fin:Ljava/io/FileInputStream;
    .restart local v35       #intent:Landroid/content/Intent;
    .restart local v36       #method:I
    .restart local v37       #mimeType:Ljava/lang/String;
    .restart local v39       #overwrite:Z
    .restart local v40       #stampCursor:Landroid/database/Cursor;
    .restart local v46       #uri:Landroid/net/Uri;
    :cond_c
    :try_start_a
    const-string v7, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 760
    const-string v7, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_4

    .line 943
    .end local v15           #columnId:I
    .end local v16           #columnIdIndex:I
    .end local v22           #cv:Landroid/content/ContentValues;
    .end local v26           #dupFile:Ljava/io/File;
    .end local v30           #filePath:Ljava/lang/String;
    .end local v40           #stampCursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v7

    move-object/from16 v31, v32

    .end local v32           #fin:Ljava/io/FileInputStream;
    .restart local v31       #fin:Ljava/io/FileInputStream;
    move-object/from16 v34, v35

    .line 944
    .end local v6           #contentUri:Landroid/net/Uri;
    .end local v14           #c:Landroid/database/Cursor;
    .end local v17           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v18           #contentOffset:I
    .end local v19           #contentUid:Ljava/lang/String;
    .end local v27           #duplicate:Z
    .end local v35           #intent:Landroid/content/Intent;
    .end local v36           #method:I
    .end local v37           #mimeType:Ljava/lang/String;
    .end local v39           #overwrite:Z
    .end local v46           #uri:Landroid/net/Uri;
    .restart local v34       #intent:Landroid/content/Intent;
    :goto_7
    if-eqz v31, :cond_d

    .line 945
    :try_start_b
    invoke-virtual/range {v31 .. v31}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 943
    :cond_d
    :goto_8
    throw v7

    .line 776
    .end local v31           #fin:Ljava/io/FileInputStream;
    .restart local v6       #contentUri:Landroid/net/Uri;
    .restart local v14       #c:Landroid/database/Cursor;
    .restart local v17       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v18       #contentOffset:I
    .restart local v19       #contentUid:Ljava/lang/String;
    .restart local v27       #duplicate:Z
    .restart local v32       #fin:Ljava/io/FileInputStream;
    .restart local v36       #method:I
    .restart local v37       #mimeType:Ljava/lang/String;
    .restart local v39       #overwrite:Z
    .restart local v46       #uri:Landroid/net/Uri;
    :cond_e
    if-eqz v27, :cond_16

    if-eqz v39, :cond_16

    .line 778
    :try_start_c
    const-string v7, "DrmStore"

    const-string v8, "Overwrite the file."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    invoke-static/range {v37 .. v37}, Landroid/provider/DrmStore;->NeedToEncrypt(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_f

    const/4 v7, 0x3

    move/from16 v0, v36

    if-ne v0, v7, :cond_14

    .line 785
    :cond_f
    new-instance v41, Ljava/io/FileInputStream;

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 788
    .local v41, stream:Ljava/io/FileInputStream;
    new-instance v38, Ljava/io/FileOutputStream;

    move-object/from16 v0, v46

    invoke-static {v5, v0}, Landroid/provider/DrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v38

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    .line 790
    .local v38, os:Ljava/io/FileOutputStream;
    if-eqz v38, :cond_10

    .line 791
    :try_start_d
    move-object/from16 v0, v41

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/provider/DrmStore;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 794
    :cond_10
    if-eqz v38, :cond_11

    .line 795
    :try_start_e
    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V

    .line 798
    :cond_11
    invoke-virtual/range {v41 .. v41}, Ljava/io/FileInputStream;->close()V

    .line 814
    .end local v38           #os:Ljava/io/FileOutputStream;
    .end local v41           #stream:Ljava/io/FileInputStream;
    :cond_12
    :goto_9
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    .line 944
    if-eqz v32, :cond_1

    .line 945
    :try_start_f
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    goto/16 :goto_0

    .line 947
    :catch_4
    move-exception v28

    .line 949
    .restart local v28       #e:Ljava/lang/Exception;
    const-string v7, "DrmStore"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_5

    .line 794
    .end local v28           #e:Ljava/lang/Exception;
    .restart local v38       #os:Ljava/io/FileOutputStream;
    .restart local v41       #stream:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    if-eqz v38, :cond_13

    .line 795
    :try_start_10
    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V

    .line 794
    :cond_13
    throw v7

    .line 938
    .end local v6           #contentUri:Landroid/net/Uri;
    .end local v14           #c:Landroid/database/Cursor;
    .end local v17           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v18           #contentOffset:I
    .end local v19           #contentUid:Ljava/lang/String;
    .end local v27           #duplicate:Z
    .end local v36           #method:I
    .end local v37           #mimeType:Ljava/lang/String;
    .end local v38           #os:Ljava/io/FileOutputStream;
    .end local v39           #overwrite:Z
    .end local v41           #stream:Ljava/io/FileInputStream;
    .end local v46           #uri:Landroid/net/Uri;
    :catch_5
    move-exception v28

    move-object/from16 v31, v32

    .end local v32           #fin:Ljava/io/FileInputStream;
    .restart local v31       #fin:Ljava/io/FileInputStream;
    goto/16 :goto_6

    .line 799
    .end local v31           #fin:Ljava/io/FileInputStream;
    .restart local v6       #contentUri:Landroid/net/Uri;
    .restart local v14       #c:Landroid/database/Cursor;
    .restart local v17       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v18       #contentOffset:I
    .restart local v19       #contentUid:Ljava/lang/String;
    .restart local v27       #duplicate:Z
    .restart local v32       #fin:Ljava/io/FileInputStream;
    .restart local v36       #method:I
    .restart local v37       #mimeType:Ljava/lang/String;
    .restart local v39       #overwrite:Z
    .restart local v46       #uri:Landroid/net/Uri;
    :cond_14
    const-string v7, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 802
    new-instance v38, Ljava/io/FileOutputStream;

    move-object/from16 v0, v46

    invoke-static {v5, v0}, Landroid/provider/DrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v38

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    .line 803
    .restart local v38       #os:Ljava/io/FileOutputStream;
    if-eqz v38, :cond_12

    .line 805
    :try_start_11
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/provider/DrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/io/FileOutputStream;)I

    .line 806
    const/4 v7, 0x2

    move/from16 v0, v36

    if-ne v0, v7, :cond_15

    .line 807
    const-string v7, "application/vnd.oma.drm.message"

    move-object/from16 v0, p1

    invoke-static {v0, v7}, Landroid/provider/DrmStore;->installRightsObject(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 810
    :cond_15
    :try_start_12
    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V

    goto :goto_9

    .line 943
    .end local v6           #contentUri:Landroid/net/Uri;
    .end local v14           #c:Landroid/database/Cursor;
    .end local v17           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v18           #contentOffset:I
    .end local v19           #contentUid:Ljava/lang/String;
    .end local v27           #duplicate:Z
    .end local v36           #method:I
    .end local v37           #mimeType:Ljava/lang/String;
    .end local v38           #os:Ljava/io/FileOutputStream;
    .end local v39           #overwrite:Z
    .end local v46           #uri:Landroid/net/Uri;
    :catchall_2
    move-exception v7

    move-object/from16 v31, v32

    .end local v32           #fin:Ljava/io/FileInputStream;
    .restart local v31       #fin:Ljava/io/FileInputStream;
    goto/16 :goto_7

    .line 810
    .end local v31           #fin:Ljava/io/FileInputStream;
    .restart local v6       #contentUri:Landroid/net/Uri;
    .restart local v14       #c:Landroid/database/Cursor;
    .restart local v17       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v18       #contentOffset:I
    .restart local v19       #contentUid:Ljava/lang/String;
    .restart local v27       #duplicate:Z
    .restart local v32       #fin:Ljava/io/FileInputStream;
    .restart local v36       #method:I
    .restart local v37       #mimeType:Ljava/lang/String;
    .restart local v38       #os:Ljava/io/FileOutputStream;
    .restart local v39       #overwrite:Z
    .restart local v46       #uri:Landroid/net/Uri;
    :catchall_3
    move-exception v7

    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V

    throw v7

    .line 818
    .end local v38           #os:Ljava/io/FileOutputStream;
    :cond_16
    const-string v7, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Prepare to install: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5

    :cond_17
    move-object/from16 v35, v34

    .line 823
    .end local v34           #intent:Landroid/content/Intent;
    .restart local v35       #intent:Landroid/content/Intent;
    :try_start_13
    new-instance v22, Landroid/content/ContentValues;

    const/16 v7, 0xb

    move-object/from16 v0, v22

    invoke-direct {v0, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 824
    .restart local v22       #cv:Landroid/content/ContentValues;
    const-string v7, "_size"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 825
    const-string/jumbo v7, "title"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    const-string/jumbo v7, "mime_type"

    move-object/from16 v0, v22

    move-object/from16 v1, v37

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    const-string/jumbo v7, "message_type"

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    const-string v7, "delivery_type"

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 829
    const-string v7, "content_offset"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 832
    sget-object v8, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v9, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "_id"

    move-object v7, v5

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v40

    .line 833
    .restart local v40       #stampCursor:Landroid/database/Cursor;
    if-eqz v40, :cond_19

    .line 834
    invoke-interface/range {v40 .. v40}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_18

    .line 840
    const-string/jumbo v7, "time_differential"

    move-object/from16 v0, v40

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 841
    .restart local v25       #differentialColumnId:I
    move-object/from16 v0, v40

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 842
    .restart local v23       #differential:J
    const-string/jumbo v7, "timezone_stamp"

    move-object/from16 v0, v40

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v44

    .line 843
    .restart local v44       #timeZoneColumnIndex:I
    move-object/from16 v0, v40

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 844
    .restart local v42       #timeZone:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 845
    .restart local v20       #currentClock:J
    const-string v7, "date_added"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 849
    .end local v20           #currentClock:J
    .end local v23           #differential:J
    .end local v25           #differentialColumnId:I
    .end local v42           #timeZone:J
    .end local v44           #timeZoneColumnIndex:I
    :goto_a
    invoke-interface/range {v40 .. v40}, Landroid/database/Cursor;->close()V

    .line 855
    :goto_b
    move-object/from16 v0, v22

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v46

    .line 856
    if-nez v46, :cond_1a

    .line 858
    const-string v7, "DrmStore"

    const-string v8, "Insert DRM db failed."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2

    .line 861
    const/16 v34, 0x0

    .line 944
    if-eqz v32, :cond_1

    .line 945
    :try_start_14
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6

    goto/16 :goto_0

    .line 947
    :catch_6
    move-exception v28

    .line 949
    .restart local v28       #e:Ljava/lang/Exception;
    const-string v7, "DrmStore"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_5

    .line 847
    .end local v28           #e:Ljava/lang/Exception;
    :cond_18
    :try_start_15
    const-string v7, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_a

    .line 851
    :cond_19
    const-string v7, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_b

    .line 863
    :cond_1a
    const/4 v13, 0x0

    .line 866
    .local v13, boundary_length:I
    invoke-static/range {v37 .. v37}, Landroid/provider/DrmStore;->NeedToEncrypt(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1b

    const/4 v7, 0x3

    move/from16 v0, v36

    if-ne v0, v7, :cond_1f

    .line 868
    :cond_1b
    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/drm/mobile1/DrmRawContent;->getContentId(Landroid/drm/mobile1/DrmRights;)Ljava/lang/String;

    move-result-object v19

    .line 869
    new-instance v41, Ljava/io/FileInputStream;

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 872
    .restart local v41       #stream:Ljava/io/FileInputStream;
    new-instance v38, Ljava/io/FileOutputStream;

    move-object/from16 v0, v46

    invoke-static {v5, v0}, Landroid/provider/DrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v38

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 873
    .restart local v38       #os:Ljava/io/FileOutputStream;
    if-nez v38, :cond_1c

    .line 875
    const-string v7, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "openOutputStream from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v46 .. v46}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " return null."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    invoke-virtual/range {v41 .. v41}, Ljava/io/FileInputStream;->close()V

    .line 878
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_2

    .line 879
    const/16 v34, 0x0

    .line 944
    if-eqz v32, :cond_1

    .line 945
    :try_start_16
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_7

    goto/16 :goto_0

    .line 947
    :catch_7
    move-exception v28

    .line 949
    .restart local v28       #e:Ljava/lang/Exception;
    const-string v7, "DrmStore"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_5

    .line 882
    .end local v28           #e:Ljava/lang/Exception;
    :cond_1c
    :try_start_17
    move-object/from16 v0, v41

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/provider/DrmStore;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 884
    :try_start_18
    invoke-virtual/range {v41 .. v41}, Ljava/io/FileInputStream;->close()V

    .line 885
    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V

    .line 923
    .end local v38           #os:Ljava/io/FileOutputStream;
    .end local v41           #stream:Ljava/io/FileInputStream;
    :goto_c
    const-string v7, "audio"

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 924
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v37

    move-object/from16 v4, v46

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/DrmStore;->parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/ContentValues;

    move-result-object v47

    .line 925
    .local v47, values:Landroid/content/ContentValues;
    if-eqz v47, :cond_1d

    .line 926
    const-string v7, "album_id"

    const-string v8, "album_id"

    move-object/from16 v0, v47

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 927
    const-string v7, "artist_id"

    const-string v8, "artist_id"

    move-object/from16 v0, v47

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 931
    .end local v47           #values:Landroid/content/ContentValues;
    :cond_1d
    const-string v7, "content_id"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    const-string v7, "content_boundary_offset"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 934
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 936
    new-instance v34, Landroid/content/Intent;

    invoke-direct/range {v34 .. v34}, Landroid/content/Intent;-><init>()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_2

    .line 937
    .end local v35           #intent:Landroid/content/Intent;
    .restart local v34       #intent:Landroid/content/Intent;
    :try_start_19
    move-object/from16 v0, v34

    move-object/from16 v1, v46

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_5

    .line 944
    if-eqz v32, :cond_1e

    .line 945
    :try_start_1a
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_c

    :cond_1e
    :goto_d
    move-object/from16 v31, v32

    .line 952
    .end local v32           #fin:Ljava/io/FileInputStream;
    .restart local v31       #fin:Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 884
    .end local v31           #fin:Ljava/io/FileInputStream;
    .end local v34           #intent:Landroid/content/Intent;
    .restart local v32       #fin:Ljava/io/FileInputStream;
    .restart local v35       #intent:Landroid/content/Intent;
    .restart local v38       #os:Ljava/io/FileOutputStream;
    .restart local v41       #stream:Ljava/io/FileInputStream;
    :catchall_4
    move-exception v7

    :try_start_1b
    invoke-virtual/range {v41 .. v41}, Ljava/io/FileInputStream;->close()V

    .line 885
    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V

    .line 884
    throw v7

    .line 887
    .end local v38           #os:Ljava/io/FileOutputStream;
    .end local v41           #stream:Ljava/io/FileInputStream;
    :cond_1f
    const/4 v7, 0x1

    move/from16 v0, v36

    if-ne v0, v7, :cond_21

    .line 890
    new-instance v33, Ljava/io/FileOutputStream;

    move-object/from16 v0, v46

    invoke-static {v5, v0}, Landroid/provider/DrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v33

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 891
    .local v33, fl_os:Ljava/io/FileOutputStream;
    if-eqz v33, :cond_20

    .line 892
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/DrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/io/FileOutputStream;)I

    move-result v13

    .line 893
    invoke-virtual/range {v33 .. v33}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_c

    .line 895
    :cond_20
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_2

    .line 896
    const/16 v34, 0x0

    .line 944
    if-eqz v32, :cond_1

    .line 945
    :try_start_1c
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_8

    goto/16 :goto_0

    .line 947
    :catch_8
    move-exception v28

    .line 949
    .restart local v28       #e:Ljava/lang/Exception;
    const-string v7, "DrmStore"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_5

    .line 898
    .end local v28           #e:Ljava/lang/Exception;
    .end local v33           #fl_os:Ljava/io/FileOutputStream;
    :cond_21
    const/4 v7, 0x2

    move/from16 v0, v36

    if-ne v0, v7, :cond_23

    .line 899
    :try_start_1d
    const-string v7, "application/vnd.oma.drm.message"

    move-object/from16 v0, p1

    invoke-static {v0, v7}, Landroid/provider/DrmStore;->installRightsObject(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_22

    .line 901
    const-string v7, "DrmStore"

    const-string v8, "Install rights of combine delivery failed."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_2

    .line 904
    const/16 v34, 0x0

    .line 944
    if-eqz v32, :cond_1

    .line 945
    :try_start_1e
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_9

    goto/16 :goto_0

    .line 947
    :catch_9
    move-exception v28

    .line 949
    .restart local v28       #e:Ljava/lang/Exception;
    const-string v7, "DrmStore"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_5

    .line 908
    .end local v28           #e:Ljava/lang/Exception;
    :cond_22
    :try_start_1f
    new-instance v38, Ljava/io/FileOutputStream;

    move-object/from16 v0, v46

    invoke-static {v5, v0}, Landroid/provider/DrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v38

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_2

    .line 910
    .restart local v38       #os:Ljava/io/FileOutputStream;
    :try_start_20
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/provider/DrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/io/FileOutputStream;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    move-result v13

    .line 912
    :try_start_21
    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_c

    :catchall_5
    move-exception v7

    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V

    throw v7

    .line 916
    .end local v38           #os:Ljava/io/FileOutputStream;
    :cond_23
    const-string v7, "DrmStore"

    const-string v8, "Unknown method."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_2

    .line 919
    const/16 v34, 0x0

    .line 944
    if-eqz v32, :cond_1

    .line 945
    :try_start_22
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_a

    goto/16 :goto_0

    .line 947
    :catch_a
    move-exception v28

    .line 949
    .restart local v28       #e:Ljava/lang/Exception;
    const-string v7, "DrmStore"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_5

    .line 947
    .end local v6           #contentUri:Landroid/net/Uri;
    .end local v13           #boundary_length:I
    .end local v14           #c:Landroid/database/Cursor;
    .end local v17           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v18           #contentOffset:I
    .end local v19           #contentUid:Ljava/lang/String;
    .end local v22           #cv:Landroid/content/ContentValues;
    .end local v27           #duplicate:Z
    .end local v28           #e:Ljava/lang/Exception;
    .end local v32           #fin:Ljava/io/FileInputStream;
    .end local v35           #intent:Landroid/content/Intent;
    .end local v36           #method:I
    .end local v37           #mimeType:Ljava/lang/String;
    .end local v39           #overwrite:Z
    .end local v40           #stampCursor:Landroid/database/Cursor;
    .end local v46           #uri:Landroid/net/Uri;
    .restart local v31       #fin:Ljava/io/FileInputStream;
    .restart local v34       #intent:Landroid/content/Intent;
    :catch_b
    move-exception v28

    .line 949
    .restart local v28       #e:Ljava/lang/Exception;
    const-string v8, "DrmStore"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 947
    .end local v28           #e:Ljava/lang/Exception;
    .end local v31           #fin:Ljava/io/FileInputStream;
    .restart local v6       #contentUri:Landroid/net/Uri;
    .restart local v13       #boundary_length:I
    .restart local v14       #c:Landroid/database/Cursor;
    .restart local v17       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v18       #contentOffset:I
    .restart local v19       #contentUid:Ljava/lang/String;
    .restart local v22       #cv:Landroid/content/ContentValues;
    .restart local v27       #duplicate:Z
    .restart local v32       #fin:Ljava/io/FileInputStream;
    .restart local v36       #method:I
    .restart local v37       #mimeType:Ljava/lang/String;
    .restart local v39       #overwrite:Z
    .restart local v40       #stampCursor:Landroid/database/Cursor;
    .restart local v46       #uri:Landroid/net/Uri;
    :catch_c
    move-exception v28

    .line 949
    .restart local v28       #e:Ljava/lang/Exception;
    const-string v7, "DrmStore"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 943
    .end local v6           #contentUri:Landroid/net/Uri;
    .end local v13           #boundary_length:I
    .end local v14           #c:Landroid/database/Cursor;
    .end local v17           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v18           #contentOffset:I
    .end local v19           #contentUid:Ljava/lang/String;
    .end local v22           #cv:Landroid/content/ContentValues;
    .end local v27           #duplicate:Z
    .end local v28           #e:Ljava/lang/Exception;
    .end local v32           #fin:Ljava/io/FileInputStream;
    .end local v36           #method:I
    .end local v37           #mimeType:Ljava/lang/String;
    .end local v39           #overwrite:Z
    .end local v40           #stampCursor:Landroid/database/Cursor;
    .end local v46           #uri:Landroid/net/Uri;
    .restart local v31       #fin:Ljava/io/FileInputStream;
    :catchall_6
    move-exception v7

    goto/16 :goto_7

    .line 938
    :catch_d
    move-exception v28

    goto/16 :goto_6
.end method

.method public static final addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .parameter "cx"
    .parameter "file"
    .parameter "title"
    .parameter "mediaType"
    .parameter "url"

    .prologue
    .line 971
    const-string v0, "DrmStore"

    const-string v1, " @@@@@     addDrmFile with url (4)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/provider/DrmStore;->addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static final addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 7
    .parameter "cx"
    .parameter "file"
    .parameter "title"
    .parameter "mediaType"
    .parameter "url"
    .parameter "destination"

    .prologue
    .line 998
    const-string v0, "DrmStore"

    const-string v1, " @@@@@     addDrmFile with url and destination (5)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Landroid/provider/DrmStore;->addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static final addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 110
    .parameter "cx"
    .parameter "file"
    .parameter "title"
    .parameter "mediaType"
    .parameter "url"
    .parameter "destination"
    .parameter "targetFolder"

    .prologue
    .line 1026
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6) -BEGIN"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    .line 1036
    :cond_0
    const-string v3, "DrmStore"

    const-string v5, "ERROR: addDrmFile input error."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    const/16 v71, 0x0

    .line 2432
    :cond_1
    :goto_0
    return-object v71

    .line 1050
    :cond_2
    const/4 v3, 0x7

    move/from16 v0, p5

    if-eq v0, v3, :cond_3

    .line 1053
    const/16 p5, 0x0

    .line 1056
    :cond_3
    const/16 v71, 0x0

    .line 1057
    .local v71, intent:Landroid/content/Intent;
    const/16 v61, 0x0

    .line 1060
    .local v61, fin:Ljava/io/FileInputStream;
    const-string v3, "application/vnd.oma.drm.rights+xml"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "application/vnd.oma.drm.rights+wbxml"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1064
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/provider/DrmStore;->installRightsObject(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v107

    .line 1066
    .local v107, uid:Ljava/lang/String;
    if-eqz v107, :cond_6

    .line 1070
    const-string v3, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Install rights : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v107

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->METADATA_PROJECTION:[Ljava/lang/String;

    const-string v6, "content_id=?"

    const/4 v9, 0x1

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v107, v7, v9

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v38

    .line 1079
    .local v38, cursor:Landroid/database/Cursor;
    if-nez v38, :cond_5

    .line 1083
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(1) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1088
    :cond_5
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_7

    .line 1095
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->close()V

    .line 1244
    :goto_1
    new-instance v71, Landroid/content/Intent;

    .end local v71           #intent:Landroid/content/Intent;
    invoke-direct/range {v71 .. v71}, Landroid/content/Intent;-><init>()V

    .line 1245
    .restart local v71       #intent:Landroid/content/Intent;
    const-string v3, "DRM Rights"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v71

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1251
    .end local v38           #cursor:Landroid/database/Cursor;
    :cond_6
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(3) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1104
    .restart local v38       #cursor:Landroid/database/Cursor;
    :cond_7
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1106
    const-string v3, "_data"

    move-object/from16 v0, v38

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v40

    .line 1107
    .local v40, dataColumnIndext:I
    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v59

    .line 1109
    .local v59, filepath:Ljava/lang/String;
    const-string/jumbo v3, "mime_type"

    move-object/from16 v0, v38

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v78

    .line 1110
    .local v78, mimeTypeColumnIndex:I
    move-object/from16 v0, v38

    move/from16 v1, v78

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1112
    .local v6, mimeType:Ljava/lang/String;
    const-string v3, "_id"

    move-object/from16 v0, v38

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v70

    .line 1113
    .local v70, idColumnIndex:I
    move-object/from16 v0, v38

    move/from16 v1, v70

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v69

    .line 1115
    .local v69, id:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v69

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1117
    .local v7, contentUri:Landroid/net/Uri;
    if-eqz v59, :cond_b

    .line 1119
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v59

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1124
    .local v4, parseFile:Ljava/io/File;
    move/from16 v8, p5

    .line 1125
    .local v8, newDestination:I
    const/16 v29, 0x0

    .line 1126
    .local v29, checked:Z
    invoke-static {}, Landroid/os/Environment;->getSupportedStorages()I

    move-result v97

    .line 1128
    .local v97, supportedStorages:I
    and-int/lit8 v3, v97, 0x1

    if-eqz v3, :cond_9

    .line 1135
    invoke-virtual/range {v59 .. v59}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v60

    .line 1136
    .local v60, filepathUpperCase:Ljava/lang/String;
    const/16 v48, 0x0

    .line 1138
    .local v48, downloadPathUpperCase:Ljava/lang/String;
    if-eqz p6, :cond_8

    const-string v3, ""

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1141
    :cond_8
    invoke-static {}, Landroid/provider/DrmStore;->getExternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v48

    .line 1149
    :goto_2
    move-object/from16 v0, v60

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1150
    const/4 v8, 0x0

    .line 1151
    const/16 v29, 0x1

    .line 1167
    .end local v48           #downloadPathUpperCase:Ljava/lang/String;
    .end local v60           #filepathUpperCase:Ljava/lang/String;
    :cond_9
    if-nez v29, :cond_a

    and-int/lit8 v3, v97, 0x2

    if-eqz v3, :cond_a

    .line 1184
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v47

    .line 1187
    .local v47, downloadPath:Ljava/lang/String;
    move-object/from16 v0, v59

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1188
    const/4 v8, 0x7

    .line 1205
    .end local v47           #downloadPath:Ljava/lang/String;
    :cond_a
    sparse-switch v8, :sswitch_data_0

    .line 1214
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     rights\' download destination is unknown!!!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    :goto_3
    const-string v5, "application/vnd.oma.drm.content"

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Landroid/provider/DrmStore;->updateAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentValues;

    move-result-object v109

    .line 1234
    .local v109, values:Landroid/content/ContentValues;
    if-eqz v109, :cond_b

    .line 1236
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v109

    invoke-virtual {v3, v7, v0, v5, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1240
    .end local v4           #parseFile:Ljava/io/File;
    .end local v8           #newDestination:I
    .end local v29           #checked:Z
    .end local v97           #supportedStorages:I
    .end local v109           #values:Landroid/content/ContentValues;
    :cond_b
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1146
    .restart local v4       #parseFile:Ljava/io/File;
    .restart local v8       #newDestination:I
    .restart local v29       #checked:Z
    .restart local v48       #downloadPathUpperCase:Ljava/lang/String;
    .restart local v60       #filepathUpperCase:Ljava/lang/String;
    .restart local v97       #supportedStorages:I
    :cond_c
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v48

    goto :goto_2

    .line 1208
    .end local v48           #downloadPathUpperCase:Ljava/lang/String;
    .end local v60           #filepathUpperCase:Ljava/lang/String;
    :sswitch_0
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     rights\' download destination is in external."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1211
    :sswitch_1
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     rights\' download destination is in internal."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1258
    .end local v4           #parseFile:Ljava/io/File;
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v8           #newDestination:I
    .end local v29           #checked:Z
    .end local v38           #cursor:Landroid/database/Cursor;
    .end local v40           #dataColumnIndext:I
    .end local v59           #filepath:Ljava/lang/String;
    .end local v69           #id:I
    .end local v70           #idColumnIndex:I
    .end local v78           #mimeTypeColumnIndex:I
    .end local v97           #supportedStorages:I
    .end local v107           #uid:Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 1261
    .local v11, cr:Landroid/content/ContentResolver;
    const/16 v56, 0x0

    .line 1263
    .local v56, fileName:Ljava/lang/String;
    if-nez p2, :cond_f

    .line 1265
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v56

    .line 1279
    :goto_4
    const-string v3, "."

    move-object/from16 v0, v56

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v45

    .line 1281
    .local v45, dot:I
    const/4 v3, -0x1

    move/from16 v0, v45

    if-ne v0, v3, :cond_11

    .line 1284
    const-string v3, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1286
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v56

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".dm"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    .line 1307
    :cond_e
    :goto_5
    const-string v3, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Add DRM file : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v56

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    :try_start_0
    new-instance v62, Ljava/io/FileInputStream;

    move-object/from16 v0, v62

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_13

    .line 1314
    .end local v61           #fin:Ljava/io/FileInputStream;
    .local v62, fin:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v32, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->available()I

    move-result v3

    move-object/from16 v0, v32

    move-object/from16 v1, v62

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 1320
    .local v32, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual/range {v32 .. v32}, Landroid/drm/mobile1/DrmRawContent;->getTransferEncoding()I

    move-result v105

    .line 1322
    .local v105, transferEncoding:I
    const-string v3, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v3, 0x3

    move/from16 v0, v105

    if-ne v0, v3, :cond_17

    .line 1327
    const-string v3, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " @@@@@  Handle specific transfer-encoding="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v105

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "."

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    const-string v83, "/data/data/com.android.providers.drm/rights/tmp"

    .line 1333
    .local v83, outputBinaryFilePath:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v83

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/provider/DrmStore;->checkAndCreateFolder(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_13

    .line 1334
    const-string v3, "DrmStore"

    const-string v5, " @@@@@ ERROR: cannot create file!!!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(3)-(1) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1341
    const/16 v71, 0x0

    .line 2415
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v62, :cond_1

    .line 2416
    :try_start_2
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 2418
    :catch_0
    move-exception v52

    .line 2420
    .local v52, e:Ljava/lang/Exception;
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v11           #cr:Landroid/content/ContentResolver;
    .end local v32           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v62           #fin:Ljava/io/FileInputStream;
    .end local v83           #outputBinaryFilePath:Ljava/lang/String;
    .end local v105           #transferEncoding:I
    :goto_6
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1271
    .end local v45           #dot:I
    .end local v52           #e:Ljava/lang/Exception;
    .restart local v11       #cr:Landroid/content/ContentResolver;
    .restart local v61       #fin:Ljava/io/FileInputStream;
    .restart local v71       #intent:Landroid/content/Intent;
    :cond_f
    const-string v3, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Title is "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    move-object/from16 v56, p2

    goto/16 :goto_4

    .line 1288
    .restart local v45       #dot:I
    :cond_10
    const-string v3, "application/vnd.oma.drm.content"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1290
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v56

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".dcf"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    goto/16 :goto_5

    .line 1295
    :cond_11
    const-string v3, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1297
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    move-object/from16 v0, v56

    move/from16 v1, v45

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".dm"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    goto/16 :goto_5

    .line 1299
    :cond_12
    const-string v3, "application/vnd.oma.drm.content"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1301
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    move-object/from16 v0, v56

    move/from16 v1, v45

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".dcf"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    goto/16 :goto_5

    .line 1344
    .end local v61           #fin:Ljava/io/FileInputStream;
    .restart local v32       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v62       #fin:Ljava/io/FileInputStream;
    .restart local v83       #outputBinaryFilePath:Ljava/lang/String;
    .restart local v105       #transferEncoding:I
    :cond_13
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v83

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v56

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v83

    .line 1346
    const/4 v3, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v83

    invoke-static {v0, v1, v2}, Landroid/provider/DrmStore;->saveFileFromBase64ToBinary(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I

    move-result v5

    if-ne v3, v5, :cond_14

    .line 1349
    const-string v3, "DrmStore"

    const-string v5, " @@@@@ ERROR: convert base64 file Fail!!!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(3)-(2) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1356
    const/16 v71, 0x0

    .line 2415
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v62, :cond_1

    .line 2416
    :try_start_4
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 2418
    :catch_1
    move-exception v52

    .line 2420
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 1359
    .end local v52           #e:Ljava/lang/Exception;
    .restart local v71       #intent:Landroid/content/Intent;
    :cond_14
    :try_start_5
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, v83

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1361
    .local v10, binaryFile:Ljava/io/File;
    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {v10, v3, v5}, Ljava/io/File;->setWritable(ZZ)Z

    .line 1362
    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {v10, v3, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1363
    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {v10, v3, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    move-object/from16 v9, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    move-object/from16 v15, p6

    .line 1365
    invoke-static/range {v9 .. v15}, Landroid/provider/DrmStore;->addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .end local v11           #cr:Landroid/content/ContentResolver;
    move-result-object v89

    .line 1369
    .local v89, resultIntent:Landroid/content/Intent;
    :try_start_6
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1370
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 2415
    :cond_15
    :goto_7
    if-eqz v62, :cond_16

    .line 2416
    :try_start_7
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1d

    :cond_16
    :goto_8
    move-object/from16 v71, v89

    .line 1378
    goto/16 :goto_0

    .line 1372
    :catch_2
    move-exception v52

    .line 1373
    .restart local v52       #e:Ljava/lang/Exception;
    :try_start_8
    const-string v3, "DrmStore"

    const-string v5, " @@@@@  ERROR: delete temp files FAILED!!!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_7

    .line 2397
    .end local v10           #binaryFile:Ljava/io/File;
    .end local v32           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v52           #e:Ljava/lang/Exception;
    .end local v83           #outputBinaryFilePath:Ljava/lang/String;
    .end local v89           #resultIntent:Landroid/content/Intent;
    .end local v105           #transferEncoding:I
    :catch_3
    move-exception v52

    move-object/from16 v61, v62

    .line 2403
    .end local v62           #fin:Ljava/io/FileInputStream;
    .restart local v52       #e:Ljava/lang/Exception;
    .restart local v61       #fin:Ljava/io/FileInputStream;
    :goto_9
    :try_start_9
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->printStackTrace()V

    .line 2408
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(12) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 2411
    const/16 v71, 0x0

    .line 2415
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v61, :cond_1

    .line 2416
    :try_start_a
    invoke-virtual/range {v61 .. v61}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    .line 2418
    :catch_4
    move-exception v52

    .line 2420
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 1383
    .end local v52           #e:Ljava/lang/Exception;
    .end local v61           #fin:Ljava/io/FileInputStream;
    .restart local v11       #cr:Landroid/content/ContentResolver;
    .restart local v32       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v62       #fin:Ljava/io/FileInputStream;
    .restart local v71       #intent:Landroid/content/Intent;
    .restart local v105       #transferEncoding:I
    :cond_17
    :try_start_b
    invoke-virtual/range {v32 .. v32}, Landroid/drm/mobile1/DrmRawContent;->getContentType()Ljava/lang/String;

    move-result-object v6

    .line 1385
    .restart local v6       #mimeType:Ljava/lang/String;
    const-string v3, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mimeType = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    invoke-virtual/range {v32 .. v32}, Landroid/drm/mobile1/DrmRawContent;->getRawType()I

    move-result v77

    .line 1390
    .local v77, method:I
    const-string v3, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "method = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v77

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    const/4 v3, 0x1

    move/from16 v0, v77

    if-ne v0, v3, :cond_26

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x91

    if-eq v3, v5, :cond_1a

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x93

    if-ne v3, v5, :cond_18

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x94

    if-eq v3, v5, :cond_1a

    :cond_18
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x3a

    if-ne v3, v5, :cond_19

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x94

    if-eq v3, v5, :cond_1a

    :cond_19
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x63

    if-ne v3, v5, :cond_26

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x66

    if-ne v3, v5, :cond_26

    .line 1416
    :cond_1a
    const/16 v18, 0x1

    .line 1422
    .local v18, flRingtone:Z
    :goto_a
    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/drm/mobile1/DrmRawContent;->getContentOffset(Landroid/drm/mobile1/DrmRights;)I

    move-result v33

    .line 1429
    .local v33, contentOffset:I
    const-string/jumbo v3, "video"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b

    const-string v3, "audio"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    :cond_1b
    const/4 v3, 0x1

    move/from16 v0, v77

    if-eq v0, v3, :cond_1c

    const/4 v3, 0x2

    move/from16 v0, v77

    if-ne v0, v3, :cond_30

    .line 1432
    :cond_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2e

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v6}, Landroid/media/MediaFile;->getExtensionForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    .line 1437
    .local v54, extention:Ljava/lang/String;
    new-instance v82, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.android.providers.drm/rights/DRM"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v82

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 1444
    .local v82, outFile:Ljava/io/File;
    const/16 v63, 0x0

    .line 1445
    .local v63, fis:Ljava/io/FileInputStream;
    const/16 v65, 0x0

    .line 1447
    .local v65, fis2:Ljava/io/FileInputStream;
    const/16 v67, 0x0

    .line 1448
    .local v67, fos:Ljava/io/FileOutputStream;
    const/16 v73, 0x0

    .line 1449
    .local v73, is:Ljava/io/InputStream;
    const/16 v74, 0x0

    .line 1456
    .local v74, isTerminated:Z
    :try_start_c
    new-instance v64, Ljava/io/FileInputStream;

    move-object/from16 v0, v64

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 1465
    .end local v63           #fis:Ljava/io/FileInputStream;
    .local v64, fis:Ljava/io/FileInputStream;
    :try_start_d
    new-instance v98, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v64 .. v64}, Ljava/io/FileInputStream;->available()I

    move-result v3

    move-object/from16 v0, v98

    move-object/from16 v1, v64

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 1469
    .local v98, tempContent:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v75

    .line 1470
    .local v75, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, v75

    move-object/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v91

    .line 1475
    .local v91, rights:Landroid/drm/mobile1/DrmRights;
    const/16 v41, 0x0

    .line 1476
    .local v41, deleteRights:Z
    if-nez v91, :cond_76

    const/4 v3, 0x2

    move/from16 v0, v77

    if-ne v0, v3, :cond_76

    .line 1505
    if-eqz v64, :cond_1d

    .line 1506
    invoke-virtual/range {v64 .. v64}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_20

    .line 1507
    const/16 v63, 0x0

    .end local v64           #fis:Ljava/io/FileInputStream;
    .restart local v63       #fis:Ljava/io/FileInputStream;
    move-object/from16 v64, v63

    .line 1509
    .end local v63           #fis:Ljava/io/FileInputStream;
    .restart local v64       #fis:Ljava/io/FileInputStream;
    :try_start_e
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 1512
    :cond_1d
    :try_start_f
    new-instance v63, Ljava/io/FileInputStream;

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_20

    .line 1518
    .end local v64           #fis:Ljava/io/FileInputStream;
    .restart local v63       #fis:Ljava/io/FileInputStream;
    :try_start_10
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileInputStream;->available()I

    move-result v3

    move-object/from16 v0, v75

    move-object/from16 v1, v63

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v3, v2}, Landroid/drm/mobile1/DrmRightsManager;->installRights(Ljava/io/InputStream;ILjava/lang/String;)Landroid/drm/mobile1/DrmRights;

    move-result-object v91

    .line 1520
    const/16 v41, 0x1

    .line 1526
    :goto_b
    if-eqz v63, :cond_1e

    .line 1527
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileInputStream;->close()V

    .line 1528
    const/16 v63, 0x0

    .line 1532
    :cond_1e
    if-eqz v91, :cond_28

    .line 1539
    new-instance v66, Ljava/io/FileInputStream;

    move-object/from16 v0, v66

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    .line 1540
    .end local v65           #fis2:Ljava/io/FileInputStream;
    .local v66, fis2:Ljava/io/FileInputStream;
    :try_start_11
    new-instance v98, Landroid/drm/mobile1/DrmRawContent;

    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual/range {v66 .. v66}, Ljava/io/FileInputStream;->available()I

    move-result v3

    move-object/from16 v0, v98

    move-object/from16 v1, v66

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 1544
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    move-object/from16 v0, v98

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v73

    .line 1545
    new-instance v68, Ljava/io/FileOutputStream;

    move-object/from16 v0, v68

    move-object/from16 v1, v82

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_21

    .line 1547
    .end local v67           #fos:Ljava/io/FileOutputStream;
    .local v68, fos:Ljava/io/FileOutputStream;
    :try_start_12
    move-object/from16 v0, v73

    move-object/from16 v1, v68

    invoke-static {v0, v1}, Landroid/provider/DrmStore;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I

    .line 1549
    if-eqz v41, :cond_1f

    .line 1550
    move-object/from16 v0, v75

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRightsManager;->deleteRights(Landroid/drm/mobile1/DrmRights;)V

    .line 1555
    :cond_1f
    sget-object v3, Landroid/provider/DrmStore;->CMD_CHMOD:[Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v5

    .line 1556
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    sget-object v5, Landroid/provider/DrmStore;->CMD_CHMOD:[Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    .line 1558
    new-instance v76, Landroid/media/MediaInfo;

    move-object/from16 v0, v76

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/media/MediaInfo;-><init>(Landroid/content/Context;)V

    .line 1559
    .local v76, mediaInfo:Landroid/media/MediaInfo;
    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v76

    invoke-virtual {v0, v3}, Landroid/media/MediaInfo;->getFileType(Ljava/lang/String;)I

    move-result v106

    .line 1560
    .local v106, type:I
    const/4 v3, 0x1

    move/from16 v0, v106

    if-ne v0, v3, :cond_27

    .line 1561
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audio/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v6, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1570
    :cond_20
    :goto_c
    const-string v3, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MIME type by MediaInfo: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_22

    move-object/from16 v67, v68

    .end local v68           #fos:Ljava/io/FileOutputStream;
    .restart local v67       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v65, v66

    .line 1579
    .end local v66           #fis2:Ljava/io/FileInputStream;
    .end local v76           #mediaInfo:Landroid/media/MediaInfo;
    .end local v106           #type:I
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    :goto_d
    if-eqz v67, :cond_21

    .line 1580
    :try_start_13
    invoke-virtual/range {v67 .. v67}, Ljava/io/FileOutputStream;->close()V

    .line 1581
    const/16 v67, 0x0

    .line 1583
    :cond_21
    if-eqz v73, :cond_22

    .line 1584
    invoke-virtual/range {v73 .. v73}, Ljava/io/InputStream;->close()V

    .line 1585
    const/16 v73, 0x0

    .line 1594
    :cond_22
    if-eqz v63, :cond_23

    .line 1595
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileInputStream;->close()V

    .line 1596
    const/16 v63, 0x0

    .line 1598
    :cond_23
    if-eqz v65, :cond_24

    .line 1599
    invoke-virtual/range {v65 .. v65}, Ljava/io/FileInputStream;->close()V

    .line 1600
    const/16 v65, 0x0

    .line 1603
    :cond_24
    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1604
    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->delete()Z

    .line 1606
    :cond_25
    if-eqz v74, :cond_30

    .line 1610
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(4) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3

    .line 1612
    const/16 v71, 0x0

    .line 2415
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v62, :cond_1

    .line 2416
    :try_start_14
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5

    goto/16 :goto_0

    .line 2418
    :catch_5
    move-exception v52

    .line 2420
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 1418
    .end local v18           #flRingtone:Z
    .end local v33           #contentOffset:I
    .end local v41           #deleteRights:Z
    .end local v52           #e:Ljava/lang/Exception;
    .end local v54           #extention:Ljava/lang/String;
    .end local v63           #fis:Ljava/io/FileInputStream;
    .end local v65           #fis2:Ljava/io/FileInputStream;
    .end local v67           #fos:Ljava/io/FileOutputStream;
    .end local v73           #is:Ljava/io/InputStream;
    .end local v74           #isTerminated:Z
    .end local v75           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v82           #outFile:Ljava/io/File;
    .end local v91           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v71       #intent:Landroid/content/Intent;
    :cond_26
    const/16 v18, 0x0

    .restart local v18       #flRingtone:Z
    goto/16 :goto_a

    .line 1563
    .restart local v33       #contentOffset:I
    .restart local v41       #deleteRights:Z
    .restart local v54       #extention:Ljava/lang/String;
    .restart local v63       #fis:Ljava/io/FileInputStream;
    .restart local v66       #fis2:Ljava/io/FileInputStream;
    .restart local v68       #fos:Ljava/io/FileOutputStream;
    .restart local v73       #is:Ljava/io/InputStream;
    .restart local v74       #isTerminated:Z
    .restart local v75       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v76       #mediaInfo:Landroid/media/MediaInfo;
    .restart local v82       #outFile:Ljava/io/File;
    .restart local v91       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v106       #type:I
    :cond_27
    const/4 v3, 0x2

    move/from16 v0, v106

    if-ne v0, v3, :cond_20

    .line 1564
    :try_start_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "video/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v6, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_22

    move-result-object v6

    goto/16 :goto_c

    .line 1573
    .end local v66           #fis2:Ljava/io/FileInputStream;
    .end local v68           #fos:Ljava/io/FileOutputStream;
    .end local v76           #mediaInfo:Landroid/media/MediaInfo;
    .end local v106           #type:I
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    .restart local v67       #fos:Ljava/io/FileOutputStream;
    :cond_28
    :try_start_16
    const-string v3, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MIME type from DRM header: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6

    goto/16 :goto_d

    .line 1575
    .end local v41           #deleteRights:Z
    .end local v63           #fis:Ljava/io/FileInputStream;
    .end local v75           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v91           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    :catch_6
    move-exception v52

    .line 1576
    .restart local v52       #e:Ljava/lang/Exception;
    :goto_e
    :try_start_17
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_c

    .line 1577
    const/16 v74, 0x1

    .line 1579
    if-eqz v67, :cond_29

    .line 1580
    :try_start_18
    invoke-virtual/range {v67 .. v67}, Ljava/io/FileOutputStream;->close()V

    .line 1581
    const/16 v67, 0x0

    .line 1583
    :cond_29
    if-eqz v73, :cond_2a

    .line 1584
    invoke-virtual/range {v73 .. v73}, Ljava/io/InputStream;->close()V

    .line 1585
    const/16 v73, 0x0

    .line 1594
    :cond_2a
    if-eqz v63, :cond_2b

    .line 1595
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileInputStream;->close()V

    .line 1596
    const/16 v63, 0x0

    .line 1598
    :cond_2b
    if-eqz v65, :cond_2c

    .line 1599
    invoke-virtual/range {v65 .. v65}, Ljava/io/FileInputStream;->close()V

    .line 1600
    const/16 v65, 0x0

    .line 1603
    :cond_2c
    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1604
    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->delete()Z

    .line 1606
    :cond_2d
    if-eqz v74, :cond_30

    .line 1610
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(4) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_3

    .line 1612
    const/16 v71, 0x0

    .line 2415
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v62, :cond_1

    .line 2416
    :try_start_19
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_7

    goto/16 :goto_0

    .line 2418
    :catch_7
    move-exception v52

    .line 2420
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 1579
    .end local v52           #e:Ljava/lang/Exception;
    .restart local v71       #intent:Landroid/content/Intent;
    :cond_2e
    :try_start_1a
    throw v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_3

    .line 2414
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v11           #cr:Landroid/content/ContentResolver;
    .end local v18           #flRingtone:Z
    .end local v32           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v33           #contentOffset:I
    .end local v54           #extention:Ljava/lang/String;
    .end local v65           #fis2:Ljava/io/FileInputStream;
    .end local v67           #fos:Ljava/io/FileOutputStream;
    .end local v73           #is:Ljava/io/InputStream;
    .end local v74           #isTerminated:Z
    .end local v77           #method:I
    .end local v82           #outFile:Ljava/io/File;
    .end local v105           #transferEncoding:I
    :catchall_0
    move-exception v3

    move-object/from16 v61, v62

    .line 2415
    .end local v62           #fin:Ljava/io/FileInputStream;
    .restart local v61       #fin:Ljava/io/FileInputStream;
    :goto_f
    if-eqz v61, :cond_2f

    .line 2416
    :try_start_1b
    invoke-virtual/range {v61 .. v61}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1c

    .line 2414
    :cond_2f
    :goto_10
    throw v3

    .line 1619
    .end local v61           #fin:Ljava/io/FileInputStream;
    .restart local v6       #mimeType:Ljava/lang/String;
    .restart local v11       #cr:Landroid/content/ContentResolver;
    .restart local v18       #flRingtone:Z
    .restart local v32       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v33       #contentOffset:I
    .restart local v62       #fin:Ljava/io/FileInputStream;
    .restart local v77       #method:I
    .restart local v105       #transferEncoding:I
    :cond_30
    :try_start_1c
    const-string v34, ""

    .line 1621
    .local v34, contentUid:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1624
    .restart local v7       #contentUri:Landroid/net/Uri;
    const-string v3, "audio/"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1625
    sget-object v7, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    .line 1647
    :goto_11
    const/16 v50, 0x0

    .line 1648
    .local v50, duplicate:Z
    const/16 v84, 0x0

    .line 1649
    .local v84, overwrite:Z
    const/16 v108, 0x0

    .line 1651
    .local v108, uri:Landroid/net/Uri;
    sget-object v13, Landroid/provider/DrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    const-string v14, "content_url=?"

    const/4 v3, 0x1

    new-array v15, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p4, v15, v3

    const-string v16, "_id"

    move-object v12, v7

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 1652
    .local v26, c:Landroid/database/Cursor;
    if-eqz v26, :cond_75

    .line 1653
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_74

    .line 1657
    const-string v3, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v56

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " duplicated."

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1660
    const-string v3, "_id"

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 1661
    .local v31, columnIdIndex:I
    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 1662
    .local v30, columnId:I
    const-string v3, "_data"

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v58

    .line 1663
    .local v58, filePathIndex:I
    move-object/from16 v0, v26

    move/from16 v1, v58

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v57

    .line 1664
    .local v57, filePath:Ljava/lang/String;
    const-string/jumbo v3, "title"

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v104

    .line 1665
    .local v104, titleInddex:I
    move-object/from16 v0, v26

    move/from16 v1, v104

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 1666
    .local v49, dup_title:Ljava/lang/String;
    const/16 v47, 0x0

    .line 1668
    .restart local v47       #downloadPath:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v108

    .line 1669
    new-instance v72, Landroid/content/Intent;

    invoke-direct/range {v72 .. v72}, Landroid/content/Intent;-><init>()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_3

    .line 1670
    .end local v71           #intent:Landroid/content/Intent;
    .local v72, intent:Landroid/content/Intent;
    :try_start_1d
    move-object/from16 v0, v72

    move-object/from16 v1, v108

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1672
    const-string v3, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dup_title:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    const-string/jumbo v3, "title"

    move-object/from16 v0, v72

    move-object/from16 v1, v49

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1675
    const/16 v50, 0x1

    .line 1680
    const-string v3, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Check file path: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    new-instance v55, Ljava/io/File;

    move-object/from16 v0, v55

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1684
    .local v55, f:Ljava/io/File;
    invoke-virtual/range {v55 .. v55}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v56

    .line 1685
    invoke-virtual/range {v55 .. v55}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1686
    invoke-virtual/range {v55 .. v55}, Ljava/io/File;->delete()Z

    .line 1690
    :cond_31
    const/4 v3, 0x7

    move/from16 v0, p5

    if-ne v0, v3, :cond_39

    .line 1700
    invoke-static {}, Landroid/provider/DrmStore;->getInternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v47

    .line 1702
    if-eqz v47, :cond_32

    const-string v3, ""

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1703
    :cond_32
    const-string v3, "DrmStore"

    const-string v5, " @@@@@ internal download path doesn\'t exist!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_c

    .line 1706
    const/16 v71, 0x0

    .line 2415
    if-eqz v62, :cond_1

    .line 2416
    :try_start_1e
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_8

    goto/16 :goto_0

    .line 2418
    :catch_8
    move-exception v52

    .line 2420
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 1626
    .end local v26           #c:Landroid/database/Cursor;
    .end local v30           #columnId:I
    .end local v31           #columnIdIndex:I
    .end local v47           #downloadPath:Ljava/lang/String;
    .end local v49           #dup_title:Ljava/lang/String;
    .end local v50           #duplicate:Z
    .end local v52           #e:Ljava/lang/Exception;
    .end local v55           #f:Ljava/io/File;
    .end local v57           #filePath:Ljava/lang/String;
    .end local v58           #filePathIndex:I
    .end local v72           #intent:Landroid/content/Intent;
    .end local v84           #overwrite:Z
    .end local v104           #titleInddex:I
    .end local v108           #uri:Landroid/net/Uri;
    .restart local v71       #intent:Landroid/content/Intent;
    :cond_33
    :try_start_1f
    const-string/jumbo v3, "image/"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1627
    sget-object v7, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_11

    .line 1628
    :cond_34
    const-string/jumbo v3, "video/"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1629
    sget-object v7, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_11

    .line 1630
    :cond_35
    const-string v3, "application/java-archive"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1631
    sget-object v7, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_11

    .line 1634
    :cond_36
    const-string v3, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported mime type "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V

    .line 1640
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(5) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_3

    .line 1643
    const/16 v71, 0x0

    .line 2415
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v62, :cond_1

    .line 2416
    :try_start_20
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_9

    goto/16 :goto_0

    .line 2418
    :catch_9
    move-exception v52

    .line 2420
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 1709
    .end local v52           #e:Ljava/lang/Exception;
    .restart local v26       #c:Landroid/database/Cursor;
    .restart local v30       #columnId:I
    .restart local v31       #columnIdIndex:I
    .restart local v47       #downloadPath:Ljava/lang/String;
    .restart local v49       #dup_title:Ljava/lang/String;
    .restart local v50       #duplicate:Z
    .restart local v55       #f:Ljava/io/File;
    .restart local v57       #filePath:Ljava/lang/String;
    .restart local v58       #filePathIndex:I
    .restart local v72       #intent:Landroid/content/Intent;
    .restart local v84       #overwrite:Z
    .restart local v104       #titleInddex:I
    .restart local v108       #uri:Landroid/net/Uri;
    :cond_37
    :try_start_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v56

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    .line 1751
    :goto_12
    const-string v3, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Saved file path: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    new-instance v55, Ljava/io/File;

    .end local v55           #f:Ljava/io/File;
    move-object/from16 v0, v55

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1758
    .restart local v55       #f:Ljava/io/File;
    invoke-virtual/range {v55 .. v55}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 1760
    const-string v3, "DrmStore"

    const-string v5, "File exists, use a new name"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    const-string v3, "."

    move-object/from16 v0, v56

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v53

    .line 1763
    .local v53, ext:I
    const/16 v87, 0x0

    .line 1764
    .local v87, prefix:Ljava/lang/String;
    const/16 v96, 0x0

    .line 1765
    .local v96, suffix:Ljava/lang/String;
    if-lez v53, :cond_3e

    .line 1766
    const/4 v3, 0x0

    move-object/from16 v0, v56

    move/from16 v1, v53

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v87

    .line 1767
    invoke-virtual/range {v56 .. v56}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v56

    move/from16 v1, v53

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v96

    .line 1772
    :goto_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v87

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "---"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v55 .. v55}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    move-object/from16 v0, v96

    invoke-static {v3, v0, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v79

    .line 1774
    .local v79, newFile:Ljava/io/File;
    invoke-virtual/range {v79 .. v79}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v57

    .line 1776
    const-string v3, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "New file path: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    .end local v53           #ext:I
    .end local v79           #newFile:Ljava/io/File;
    .end local v87           #prefix:Ljava/lang/String;
    .end local v96           #suffix:Ljava/lang/String;
    :cond_38
    new-instance v39, Landroid/content/ContentValues;

    invoke-direct/range {v39 .. v39}, Landroid/content/ContentValues;-><init>()V

    .line 1783
    .local v39, cv:Landroid/content/ContentValues;
    sget-object v12, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v13, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v16, "_id"

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v93

    .line 1784
    .local v93, stampCursor:Landroid/database/Cursor;
    if-eqz v93, :cond_40

    .line 1785
    invoke-interface/range {v93 .. v93}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 1791
    const-string/jumbo v3, "time_differential"

    move-object/from16 v0, v93

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v44

    .line 1792
    .local v44, differentialColumnId:I
    move-object/from16 v0, v93

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 1793
    .local v42, differential:J
    const-string/jumbo v3, "timezone_stamp"

    move-object/from16 v0, v93

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v102

    .line 1794
    .local v102, timeZoneColumnIndex:I
    move-object/from16 v0, v93

    move/from16 v1, v102

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v100

    .line 1795
    .local v100, timeZone:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    .line 1796
    .local v36, currentClock:J
    const-string v3, "date_modified"

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1797
    const-string v3, "date_added"

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1802
    .end local v36           #currentClock:J
    .end local v42           #differential:J
    .end local v44           #differentialColumnId:I
    .end local v100           #timeZone:J
    .end local v102           #timeZoneColumnIndex:I
    :goto_14
    invoke-interface/range {v93 .. v93}, Landroid/database/Cursor;->close()V

    .line 1808
    :goto_15
    const/16 v84, 0x1

    .line 1810
    const-string v3, "existence"

    const-string v5, "exist"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1812
    const-string v3, "_data"

    move-object/from16 v0, v39

    move-object/from16 v1, v57

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
    const-string v3, "/"

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v92

    .line 1820
    .local v92, slashPos:I
    add-int/lit8 v3, v92, 0x1

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v46

    .line 1822
    .local v46, downloadName:Ljava/lang/String;
    const-string v3, "bucket_display_name"

    move-object/from16 v0, v39

    move-object/from16 v1, v46

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v108

    move-object/from16 v1, v39

    invoke-virtual {v11, v0, v1, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_c

    move-object/from16 v16, v108

    .end local v108           #uri:Landroid/net/Uri;
    .local v16, uri:Landroid/net/Uri;
    move-object/from16 v71, v72

    .line 1827
    .end local v30           #columnId:I
    .end local v31           #columnIdIndex:I
    .end local v39           #cv:Landroid/content/ContentValues;
    .end local v46           #downloadName:Ljava/lang/String;
    .end local v47           #downloadPath:Ljava/lang/String;
    .end local v49           #dup_title:Ljava/lang/String;
    .end local v55           #f:Ljava/io/File;
    .end local v57           #filePath:Ljava/lang/String;
    .end local v58           #filePathIndex:I
    .end local v72           #intent:Landroid/content/Intent;
    .end local v92           #slashPos:I
    .end local v93           #stampCursor:Landroid/database/Cursor;
    .end local v104           #titleInddex:I
    .restart local v71       #intent:Landroid/content/Intent;
    :goto_16
    :try_start_22
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 1829
    if-eqz v50, :cond_41

    if-nez v84, :cond_41

    .line 1831
    const-string v3, "DrmStore"

    const-string v5, "File is duplicated and exist."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_3

    .line 2415
    if-eqz v62, :cond_1

    .line 2416
    :try_start_23
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_a

    goto/16 :goto_0

    .line 2418
    :catch_a
    move-exception v52

    .line 2420
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 1733
    .end local v16           #uri:Landroid/net/Uri;
    .end local v52           #e:Ljava/lang/Exception;
    .end local v71           #intent:Landroid/content/Intent;
    .restart local v30       #columnId:I
    .restart local v31       #columnIdIndex:I
    .restart local v47       #downloadPath:Ljava/lang/String;
    .restart local v49       #dup_title:Ljava/lang/String;
    .restart local v55       #f:Ljava/io/File;
    .restart local v57       #filePath:Ljava/lang/String;
    .restart local v58       #filePathIndex:I
    .restart local v72       #intent:Landroid/content/Intent;
    .restart local v104       #titleInddex:I
    .restart local v108       #uri:Landroid/net/Uri;
    :cond_39
    if-eqz p6, :cond_3a

    :try_start_24
    const-string v3, ""

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 1734
    :cond_3a
    invoke-static {}, Landroid/provider/DrmStore;->getExternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v47

    .line 1740
    :goto_17
    if-eqz v47, :cond_3b

    const-string v3, ""

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 1741
    :cond_3b
    const-string v3, "DrmStore"

    const-string v5, " @@@@@ external download path doesn\'t exist!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_c

    .line 1744
    const/16 v71, 0x0

    .line 2415
    if-eqz v62, :cond_1

    .line 2416
    :try_start_25
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_b

    goto/16 :goto_0

    .line 2418
    :catch_b
    move-exception v52

    .line 2420
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 1737
    .end local v52           #e:Ljava/lang/Exception;
    :cond_3c
    move-object/from16 v47, p6

    goto :goto_17

    .line 1747
    :cond_3d
    :try_start_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v56

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    goto/16 :goto_12

    .line 1769
    .restart local v53       #ext:I
    .restart local v87       #prefix:Ljava/lang/String;
    .restart local v96       #suffix:Ljava/lang/String;
    :cond_3e
    move-object/from16 v87, v56

    .line 1770
    const-string v96, ""

    goto/16 :goto_13

    .line 1799
    .end local v53           #ext:I
    .end local v87           #prefix:Ljava/lang/String;
    .end local v96           #suffix:Ljava/lang/String;
    .restart local v39       #cv:Landroid/content/ContentValues;
    .restart local v93       #stampCursor:Landroid/database/Cursor;
    :cond_3f
    const-string v3, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1800
    const-string v3, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_14

    .line 2397
    .end local v30           #columnId:I
    .end local v31           #columnIdIndex:I
    .end local v39           #cv:Landroid/content/ContentValues;
    .end local v47           #downloadPath:Ljava/lang/String;
    .end local v49           #dup_title:Ljava/lang/String;
    .end local v55           #f:Ljava/io/File;
    .end local v57           #filePath:Ljava/lang/String;
    .end local v58           #filePathIndex:I
    .end local v93           #stampCursor:Landroid/database/Cursor;
    .end local v104           #titleInddex:I
    .end local v108           #uri:Landroid/net/Uri;
    :catch_c
    move-exception v52

    move-object/from16 v61, v62

    .end local v62           #fin:Ljava/io/FileInputStream;
    .restart local v61       #fin:Ljava/io/FileInputStream;
    move-object/from16 v71, v72

    .end local v72           #intent:Landroid/content/Intent;
    .restart local v71       #intent:Landroid/content/Intent;
    goto/16 :goto_9

    .line 1804
    .end local v61           #fin:Ljava/io/FileInputStream;
    .end local v71           #intent:Landroid/content/Intent;
    .restart local v30       #columnId:I
    .restart local v31       #columnIdIndex:I
    .restart local v39       #cv:Landroid/content/ContentValues;
    .restart local v47       #downloadPath:Ljava/lang/String;
    .restart local v49       #dup_title:Ljava/lang/String;
    .restart local v55       #f:Ljava/io/File;
    .restart local v57       #filePath:Ljava/lang/String;
    .restart local v58       #filePathIndex:I
    .restart local v62       #fin:Ljava/io/FileInputStream;
    .restart local v72       #intent:Landroid/content/Intent;
    .restart local v93       #stampCursor:Landroid/database/Cursor;
    .restart local v104       #titleInddex:I
    .restart local v108       #uri:Landroid/net/Uri;
    :cond_40
    const-string v3, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1805
    const-string v3, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_c

    goto/16 :goto_15

    .line 2414
    .end local v30           #columnId:I
    .end local v31           #columnIdIndex:I
    .end local v39           #cv:Landroid/content/ContentValues;
    .end local v47           #downloadPath:Ljava/lang/String;
    .end local v49           #dup_title:Ljava/lang/String;
    .end local v55           #f:Ljava/io/File;
    .end local v57           #filePath:Ljava/lang/String;
    .end local v58           #filePathIndex:I
    .end local v93           #stampCursor:Landroid/database/Cursor;
    .end local v104           #titleInddex:I
    .end local v108           #uri:Landroid/net/Uri;
    :catchall_1
    move-exception v3

    move-object/from16 v61, v62

    .end local v62           #fin:Ljava/io/FileInputStream;
    .restart local v61       #fin:Ljava/io/FileInputStream;
    move-object/from16 v71, v72

    .end local v72           #intent:Landroid/content/Intent;
    .restart local v71       #intent:Landroid/content/Intent;
    goto/16 :goto_f

    .line 1835
    .end local v61           #fin:Ljava/io/FileInputStream;
    .restart local v16       #uri:Landroid/net/Uri;
    .restart local v62       #fin:Ljava/io/FileInputStream;
    :cond_41
    if-eqz v50, :cond_54

    if-eqz v84, :cond_54

    .line 1837
    :try_start_27
    const-string v3, "DrmStore"

    const-string v5, "Overwrite the file."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/provider/DrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v51

    .line 1843
    .local v51, duplicatePath:Ljava/lang/String;
    new-instance v28, Ljava/io/File;

    move-object/from16 v0, v28

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1844
    .local v28, checkFile:Ljava/io/File;
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_42

    .line 1845
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 1850
    :cond_42
    invoke-static {v6}, Landroid/provider/DrmStore;->NeedToEncrypt(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_43

    const/4 v3, 0x3

    move/from16 v0, v77

    if-ne v0, v3, :cond_48

    .line 1853
    :cond_43
    new-instance v94, Ljava/io/FileInputStream;

    move-object/from16 v0, v94

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_3

    .line 1859
    .local v94, stream:Ljava/io/FileInputStream;
    :try_start_28
    new-instance v81, Ljava/io/FileOutputStream;

    move-object/from16 v0, v81

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_28} :catch_e
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_3

    .line 1877
    .local v81, os:Ljava/io/FileOutputStream;
    :goto_18
    if-nez v81, :cond_47

    .line 1878
    :try_start_29
    invoke-virtual/range {v94 .. v94}, Ljava/io/FileInputStream;->close()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_3

    .line 2022
    .end local v81           #os:Ljava/io/FileOutputStream;
    .end local v94           #stream:Ljava/io/FileInputStream;
    :cond_44
    :goto_19
    :try_start_2a
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_12

    move-object/from16 v61, v62

    .line 2032
    .end local v62           #fin:Ljava/io/FileInputStream;
    .restart local v61       #fin:Ljava/io/FileInputStream;
    :goto_1a
    :try_start_2b
    const-string v3, "audio"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p3

    move-object v15, v6

    move/from16 v17, p5

    .line 2044
    invoke-static/range {v12 .. v18}, Landroid/provider/DrmStore;->parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentValues;
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_14

    .line 2415
    :cond_45
    :goto_1b
    if-eqz v61, :cond_1

    .line 2416
    :try_start_2c
    invoke-virtual/range {v61 .. v61}, Ljava/io/FileInputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_d

    goto/16 :goto_0

    .line 2418
    :catch_d
    move-exception v52

    .line 2420
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 1860
    .end local v52           #e:Ljava/lang/Exception;
    .end local v61           #fin:Ljava/io/FileInputStream;
    .restart local v62       #fin:Ljava/io/FileInputStream;
    .restart local v94       #stream:Ljava/io/FileInputStream;
    :catch_e
    move-exception v52

    .line 1861
    .local v52, e:Ljava/io/FileNotFoundException;
    :try_start_2d
    new-instance v35, Ljava/io/File;

    move-object/from16 v0, v35

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1862
    .local v35, createFile:Ljava/io/File;
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 1863
    new-instance v81, Ljava/io/FileOutputStream;

    move-object/from16 v0, v81

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .restart local v81       #os:Ljava/io/FileOutputStream;
    goto :goto_18

    .line 1865
    .end local v81           #os:Ljava/io/FileOutputStream;
    :cond_46
    const-string v3, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Create new file:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " failed."

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V

    .line 1870
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(6) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_3

    .line 1873
    const/16 v71, 0x0

    .line 2415
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v62, :cond_1

    .line 2416
    :try_start_2e
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_f

    goto/16 :goto_0

    .line 2418
    :catch_f
    move-exception v52

    .line 2420
    .local v52, e:Ljava/lang/Exception;
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 1881
    .end local v35           #createFile:Ljava/io/File;
    .end local v52           #e:Ljava/lang/Exception;
    .restart local v71       #intent:Landroid/content/Intent;
    .restart local v81       #os:Ljava/io/FileOutputStream;
    :cond_47
    :try_start_2f
    move-object/from16 v0, v94

    move-object/from16 v1, v81

    invoke-static {v0, v1}, Landroid/provider/DrmStore;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_2

    .line 1883
    :try_start_30
    invoke-virtual/range {v94 .. v94}, Ljava/io/FileInputStream;->close()V

    .line 1884
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_19

    .line 1883
    :catchall_2
    move-exception v3

    invoke-virtual/range {v94 .. v94}, Ljava/io/FileInputStream;->close()V

    .line 1884
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    .line 1883
    throw v3

    .line 1887
    .end local v81           #os:Ljava/io/FileOutputStream;
    .end local v94           #stream:Ljava/io/FileInputStream;
    :cond_48
    const-string v3, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 1889
    const/4 v3, 0x2

    move/from16 v0, v77

    if-ne v0, v3, :cond_49

    .line 1890
    const-string v3, "application/vnd.oma.drm.message"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Landroid/provider/DrmStore;->installRightsObject(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 1899
    :cond_49
    const-string/jumbo v3, "ro.board.platform"

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v85

    .line 1902
    .local v85, platform:Ljava/lang/String;
    if-eqz v85, :cond_4a

    const-string v3, ""

    move-object/from16 v0, v85

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 1903
    :cond_4a
    const/16 v86, 0x0

    .line 1908
    .local v86, platformLowerCase:Ljava/lang/String;
    :goto_1c
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x62

    if-eq v3, v5, :cond_4b

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x42

    if-eq v3, v5, :cond_4b

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x10

    if-eq v3, v5, :cond_4b

    if-eqz v86, :cond_51

    const-string v3, ""

    move-object/from16 v0, v86

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    const-string/jumbo v3, "msm7k"

    move-object/from16 v0, v86

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4b

    const-string v3, "7x27"

    move-object/from16 v0, v86

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 1923
    :cond_4b
    const-string v3, "DrmStore"

    const-string v5, " @@@@@ save duplicate File for MSM7K case."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_3

    .line 1927
    :try_start_31
    new-instance v35, Ljava/io/File;

    move-object/from16 v0, v35

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1929
    .restart local v35       #createFile:Ljava/io/File;
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->exists()Z
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_4

    move-result v3

    if-nez v3, :cond_4c

    .line 1931
    :try_start_32
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->createNewFile()Z
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_19

    .line 1934
    const/16 v35, 0x0

    .line 1935
    :try_start_33
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1939
    :cond_4c
    :goto_1d
    const/16 v88, 0x0

    .line 1940
    .local v88, repeat:I
    const/16 v95, 0x0

    .line 1941
    .local v95, success:Z
    const/16 v90, 0x0

    .line 1943
    .local v90, resultSaveFile:I
    :goto_1e
    const/4 v3, 0x3

    move/from16 v0, v88

    if-ge v0, v3, :cond_50

    .line 1945
    if-ltz v88, :cond_4e

    .line 1946
    new-instance v99, Ljava/io/FileInputStream;

    move-object/from16 v0, v99

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1947
    .local v99, tempFin:Ljava/io/FileInputStream;
    new-instance v98, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v99 .. v99}, Ljava/io/FileInputStream;->available()I

    move-result v3

    move-object/from16 v0, v98

    move-object/from16 v1, v99

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 1950
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    move-object/from16 v0, p1

    move-object/from16 v1, v98

    move-object/from16 v2, v51

    invoke-static {v0, v1, v2}, Landroid/provider/DrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_4

    move-result v90

    .line 1953
    :try_start_34
    invoke-virtual/range {v99 .. v99}, Ljava/io/FileInputStream;->close()V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_1a

    .line 1962
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v99           #tempFin:Ljava/io/FileInputStream;
    :goto_1f
    const/4 v3, -0x1

    move/from16 v0, v90

    if-ne v0, v3, :cond_4f

    .line 1963
    add-int/lit8 v88, v88, 0x1

    goto :goto_1e

    .line 1905
    .end local v35           #createFile:Ljava/io/File;
    .end local v86           #platformLowerCase:Ljava/lang/String;
    .end local v88           #repeat:I
    .end local v90           #resultSaveFile:I
    .end local v95           #success:Z
    :cond_4d
    :try_start_35
    invoke-virtual/range {v85 .. v85}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_3

    move-result-object v86

    .restart local v86       #platformLowerCase:Ljava/lang/String;
    goto/16 :goto_1c

    .line 1934
    .restart local v35       #createFile:Ljava/io/File;
    :catchall_3
    move-exception v3

    const/16 v35, 0x0

    .line 1935
    :try_start_36
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1934
    throw v3
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_4

    .line 1974
    .end local v35           #createFile:Ljava/io/File;
    :catchall_4
    move-exception v3

    :try_start_37
    throw v3
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_3

    .line 1955
    .restart local v35       #createFile:Ljava/io/File;
    .restart local v88       #repeat:I
    .restart local v90       #resultSaveFile:I
    .restart local v95       #success:Z
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v99       #tempFin:Ljava/io/FileInputStream;
    :catchall_5
    move-exception v3

    :try_start_38
    throw v3

    .line 1959
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v99           #tempFin:Ljava/io/FileInputStream;
    :cond_4e
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v51

    invoke-static {v0, v1, v2}, Landroid/provider/DrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_4

    move-result v90

    goto :goto_1f

    .line 1966
    :cond_4f
    const/16 v88, 0x3

    .line 1967
    const/16 v95, 0x1

    goto :goto_1e

    .line 1971
    :cond_50
    if-nez v95, :cond_44

    .line 1972
    const/16 v71, 0x0

    goto/16 :goto_19

    .line 1983
    .end local v35           #createFile:Ljava/io/File;
    .end local v88           #repeat:I
    .end local v90           #resultSaveFile:I
    .end local v95           #success:Z
    :cond_51
    :try_start_39
    new-instance v81, Ljava/io/FileOutputStream;

    move-object/from16 v0, v81

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_39} :catch_10
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_3

    .line 2001
    .restart local v81       #os:Ljava/io/FileOutputStream;
    :goto_20
    if-eqz v81, :cond_44

    .line 2007
    const/4 v3, -0x1

    :try_start_3a
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v81

    invoke-static {v0, v1, v2}, Landroid/provider/DrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/io/FileOutputStream;)I
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_6

    move-result v5

    if-ne v3, v5, :cond_52

    .line 2009
    const/16 v71, 0x0

    .line 2013
    :cond_52
    :try_start_3b
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_19

    .line 1984
    .end local v81           #os:Ljava/io/FileOutputStream;
    :catch_10
    move-exception v52

    .line 1985
    .local v52, e:Ljava/io/FileNotFoundException;
    new-instance v35, Ljava/io/File;

    move-object/from16 v0, v35

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1986
    .restart local v35       #createFile:Ljava/io/File;
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 1987
    new-instance v81, Ljava/io/FileOutputStream;

    move-object/from16 v0, v81

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .restart local v81       #os:Ljava/io/FileOutputStream;
    goto :goto_20

    .line 1989
    .end local v81           #os:Ljava/io/FileOutputStream;
    :cond_53
    const-string v3, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Create new file:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " failed."

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V

    .line 1994
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(7) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_3

    .line 1997
    const/16 v71, 0x0

    .line 2415
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v62, :cond_1

    .line 2416
    :try_start_3c
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_11

    goto/16 :goto_0

    .line 2418
    :catch_11
    move-exception v52

    .line 2420
    .local v52, e:Ljava/lang/Exception;
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 2013
    .end local v35           #createFile:Ljava/io/File;
    .end local v52           #e:Ljava/lang/Exception;
    .restart local v71       #intent:Landroid/content/Intent;
    .restart local v81       #os:Ljava/io/FileOutputStream;
    :catchall_6
    move-exception v3

    :try_start_3d
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    throw v3

    .line 2023
    .end local v81           #os:Ljava/io/FileOutputStream;
    .end local v85           #platform:Ljava/lang/String;
    .end local v86           #platformLowerCase:Ljava/lang/String;
    :catch_12
    move-exception v52

    .line 2024
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmStore"

    const-string v5, " @@@@@  ERROR: close file failed!!! (6)-(7)-(1)"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_3

    .line 2028
    const/16 v61, 0x0

    .line 2029
    .end local v62           #fin:Ljava/io/FileInputStream;
    .restart local v61       #fin:Ljava/io/FileInputStream;
    :try_start_3e
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_1a

    .line 2397
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v16           #uri:Landroid/net/Uri;
    .end local v18           #flRingtone:Z
    .end local v26           #c:Landroid/database/Cursor;
    .end local v28           #checkFile:Ljava/io/File;
    .end local v32           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v33           #contentOffset:I
    .end local v34           #contentUid:Ljava/lang/String;
    .end local v50           #duplicate:Z
    .end local v51           #duplicatePath:Ljava/lang/String;
    .end local v52           #e:Ljava/lang/Exception;
    .end local v77           #method:I
    .end local v84           #overwrite:Z
    .end local v105           #transferEncoding:I
    :catch_13
    move-exception v52

    goto/16 :goto_9

    .line 2048
    .restart local v6       #mimeType:Ljava/lang/String;
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v16       #uri:Landroid/net/Uri;
    .restart local v18       #flRingtone:Z
    .restart local v26       #c:Landroid/database/Cursor;
    .restart local v28       #checkFile:Ljava/io/File;
    .restart local v32       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v33       #contentOffset:I
    .restart local v34       #contentUid:Ljava/lang/String;
    .restart local v50       #duplicate:Z
    .restart local v51       #duplicatePath:Ljava/lang/String;
    .restart local v77       #method:I
    .restart local v84       #overwrite:Z
    .restart local v105       #transferEncoding:I
    :catch_14
    move-exception v52

    .line 2050
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File duplicate parse Media: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_13

    goto/16 :goto_1b

    .line 2414
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v11           #cr:Landroid/content/ContentResolver;
    .end local v16           #uri:Landroid/net/Uri;
    .end local v18           #flRingtone:Z
    .end local v26           #c:Landroid/database/Cursor;
    .end local v28           #checkFile:Ljava/io/File;
    .end local v32           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v33           #contentOffset:I
    .end local v34           #contentUid:Ljava/lang/String;
    .end local v50           #duplicate:Z
    .end local v51           #duplicatePath:Ljava/lang/String;
    .end local v52           #e:Ljava/lang/Exception;
    .end local v77           #method:I
    .end local v84           #overwrite:Z
    .end local v105           #transferEncoding:I
    :catchall_7
    move-exception v3

    goto/16 :goto_f

    .line 2056
    .end local v61           #fin:Ljava/io/FileInputStream;
    .restart local v6       #mimeType:Ljava/lang/String;
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v11       #cr:Landroid/content/ContentResolver;
    .restart local v16       #uri:Landroid/net/Uri;
    .restart local v18       #flRingtone:Z
    .restart local v26       #c:Landroid/database/Cursor;
    .restart local v32       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v33       #contentOffset:I
    .restart local v34       #contentUid:Ljava/lang/String;
    .restart local v50       #duplicate:Z
    .restart local v62       #fin:Ljava/io/FileInputStream;
    .restart local v77       #method:I
    .restart local v84       #overwrite:Z
    .restart local v105       #transferEncoding:I
    :cond_54
    :try_start_3f
    const-string v3, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Prepare to install: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v56

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_3

    move-object/from16 v72, v71

    .line 2062
    .end local v71           #intent:Landroid/content/Intent;
    .restart local v72       #intent:Landroid/content/Intent;
    :goto_21
    :try_start_40
    new-instance v39, Landroid/content/ContentValues;

    invoke-direct/range {v39 .. v39}, Landroid/content/ContentValues;-><init>()V

    .line 2064
    .restart local v39       #cv:Landroid/content/ContentValues;
    const-string v3, "_size"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2066
    const-string/jumbo v3, "title"

    move-object/from16 v0, v39

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    const-string/jumbo v3, "mime_type"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    const-string/jumbo v3, "message_type"

    move-object/from16 v0, v39

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2070
    const-string v3, "delivery_type"

    invoke-static/range {v77 .. v77}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2071
    const-string v3, "content_offset"

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2072
    const-string v3, "content_url"

    move-object/from16 v0, v39

    move-object/from16 v1, p4

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2075
    sget-object v20, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v21, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v24, "_id"

    move-object/from16 v19, v11

    invoke-virtual/range {v19 .. v24}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v93

    .line 2076
    .restart local v93       #stampCursor:Landroid/database/Cursor;
    if-eqz v93, :cond_57

    .line 2077
    invoke-interface/range {v93 .. v93}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 2083
    const-string/jumbo v3, "time_differential"

    move-object/from16 v0, v93

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v44

    .line 2084
    .restart local v44       #differentialColumnId:I
    move-object/from16 v0, v93

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 2085
    .restart local v42       #differential:J
    const-string/jumbo v3, "timezone_stamp"

    move-object/from16 v0, v93

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v102

    .line 2086
    .restart local v102       #timeZoneColumnIndex:I
    move-object/from16 v0, v93

    move/from16 v1, v102

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v100

    .line 2087
    .restart local v100       #timeZone:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    .line 2088
    .restart local v36       #currentClock:J
    const-string v3, "date_added"

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2092
    .end local v36           #currentClock:J
    .end local v42           #differential:J
    .end local v44           #differentialColumnId:I
    .end local v100           #timeZone:J
    .end local v102           #timeZoneColumnIndex:I
    :goto_22
    invoke-interface/range {v93 .. v93}, Landroid/database/Cursor;->close()V

    .line 2104
    :goto_23
    if-eqz p6, :cond_55

    const-string v3, ""

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 2106
    :cond_55
    const-string v3, "Destination"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2155
    :goto_24
    move-object/from16 v0, v39

    invoke-virtual {v11, v7, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v16

    .line 2156
    if-nez v16, :cond_5b

    .line 2158
    const-string v3, "DrmStore"

    const-string v5, "Insert to DRM db failed."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V

    .line 2164
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(8) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_c

    .line 2167
    const/16 v71, 0x0

    .line 2415
    if-eqz v62, :cond_1

    .line 2416
    :try_start_41
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_15

    goto/16 :goto_0

    .line 2418
    :catch_15
    move-exception v52

    .line 2420
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 2090
    .end local v52           #e:Ljava/lang/Exception;
    :cond_56
    :try_start_42
    const-string v3, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_22

    .line 2094
    :cond_57
    const-string v3, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_23

    .line 2110
    :cond_58
    move/from16 v8, p5

    .line 2111
    .restart local v8       #newDestination:I
    const/16 v29, 0x0

    .line 2112
    .restart local v29       #checked:Z
    invoke-static {}, Landroid/os/Environment;->getSupportedStorages()I

    move-result v97

    .line 2114
    .restart local v97       #supportedStorages:I
    and-int/lit8 v3, v97, 0x1

    if-eqz v3, :cond_59

    .line 2116
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 2119
    const/4 v8, 0x0

    .line 2120
    const/16 v29, 0x1

    .line 2124
    :cond_59
    if-nez v29, :cond_5a

    and-int/lit8 v3, v97, 0x2

    if-eqz v3, :cond_5a

    .line 2126
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 2129
    const/4 v8, 0x7

    .line 2133
    :cond_5a
    const-string v3, "Destination"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2134
    const-string v3, "_data"

    move-object/from16 v0, v39

    move-object/from16 v1, p6

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2138
    sparse-switch v8, :sswitch_data_1

    .line 2147
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     rights\' download destination is unknown!!!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24

    .line 2141
    :sswitch_2
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     rights\' download destination is in external."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24

    .line 2144
    :sswitch_3
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     rights\' download destination is in internal."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24

    .line 2173
    .end local v8           #newDestination:I
    .end local v29           #checked:Z
    .end local v97           #supportedStorages:I
    :cond_5b
    const-string v3, "_data"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2176
    const/16 v25, 0x0

    .line 2179
    .local v25, boundary_length:I
    invoke-static {v6}, Landroid/provider/DrmStore;->NeedToEncrypt(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5c

    const/4 v3, 0x3

    move/from16 v0, v77

    if-ne v0, v3, :cond_5e

    .line 2181
    :cond_5c
    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/drm/mobile1/DrmRawContent;->getContentId(Landroid/drm/mobile1/DrmRights;)Ljava/lang/String;

    move-result-object v34

    .line 2182
    new-instance v94, Ljava/io/FileInputStream;

    move-object/from16 v0, v94

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2185
    .restart local v94       #stream:Ljava/io/FileInputStream;
    new-instance v81, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/provider/DrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v81

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_c

    .line 2186
    .restart local v81       #os:Ljava/io/FileOutputStream;
    if-eqz v81, :cond_5d

    .line 2188
    :try_start_43
    move-object/from16 v0, v94

    move-object/from16 v1, v81

    invoke-static {v0, v1}, Landroid/provider/DrmStore;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_8

    .line 2190
    :try_start_44
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    .line 2319
    .end local v81           #os:Ljava/io/FileOutputStream;
    .end local v94           #stream:Ljava/io/FileInputStream;
    :cond_5d
    :goto_25
    const/4 v3, -0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_68

    .line 2322
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(11) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_c

    .line 2325
    const/16 v71, 0x0

    .line 2415
    if-eqz v62, :cond_1

    .line 2416
    :try_start_45
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_16

    goto/16 :goto_0

    .line 2418
    :catch_16
    move-exception v52

    .line 2420
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 2190
    .end local v52           #e:Ljava/lang/Exception;
    .restart local v81       #os:Ljava/io/FileOutputStream;
    .restart local v94       #stream:Ljava/io/FileInputStream;
    :catchall_8
    move-exception v3

    :try_start_46
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    throw v3

    .line 2193
    .end local v81           #os:Ljava/io/FileOutputStream;
    .end local v94           #stream:Ljava/io/FileInputStream;
    :cond_5e
    const/4 v3, 0x1

    move/from16 v0, v77

    if-ne v0, v3, :cond_5f

    .line 2195
    new-instance v81, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/provider/DrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v81

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_c

    .line 2196
    .restart local v81       #os:Ljava/io/FileOutputStream;
    if-eqz v81, :cond_5d

    .line 2198
    :try_start_47
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v81

    invoke-static {v0, v1, v2}, Landroid/provider/DrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/io/FileOutputStream;)I
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_9

    move-result v25

    .line 2200
    :try_start_48
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    goto :goto_25

    :catchall_9
    move-exception v3

    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    throw v3

    .line 2203
    .end local v81           #os:Ljava/io/FileOutputStream;
    :cond_5f
    const/4 v3, 0x2

    move/from16 v0, v77

    if-ne v0, v3, :cond_67

    .line 2204
    const-string v3, "application/vnd.oma.drm.message"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Landroid/provider/DrmStore;->installRightsObject(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_60

    .line 2206
    const-string v3, "DrmStore"

    const-string v5, "Install rights of combine delivery failed."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V

    .line 2212
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(9) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_c

    .line 2215
    const/16 v71, 0x0

    .line 2415
    if-eqz v62, :cond_1

    .line 2416
    :try_start_49
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_49} :catch_17

    goto/16 :goto_0

    .line 2418
    :catch_17
    move-exception v52

    .line 2420
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 2223
    .end local v52           #e:Ljava/lang/Exception;
    :cond_60
    :try_start_4a
    const-string/jumbo v3, "ro.board.platform"

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v85

    .line 2226
    .restart local v85       #platform:Ljava/lang/String;
    if-eqz v85, :cond_61

    const-string v3, ""

    move-object/from16 v0, v85

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 2227
    :cond_61
    const/16 v86, 0x0

    .line 2232
    .restart local v86       #platformLowerCase:Ljava/lang/String;
    :goto_26
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x62

    if-eq v3, v5, :cond_62

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x42

    if-eq v3, v5, :cond_62

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x10

    if-eq v3, v5, :cond_62

    if-eqz v86, :cond_66

    const-string v3, ""

    move-object/from16 v0, v86

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_66

    const-string/jumbo v3, "msm7k"

    move-object/from16 v0, v86

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_62

    const-string v3, "7x27"

    move-object/from16 v0, v86

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 2247
    :cond_62
    const-string v3, "DrmStore"

    const-string v5, " @@@@@ saveFile for MSM7K case."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    const/16 v88, 0x0

    .line 2252
    .restart local v88       #repeat:I
    :goto_27
    const/4 v3, 0x3

    move/from16 v0, v88

    if-ge v0, v3, :cond_5d

    .line 2254
    if-ltz v88, :cond_64

    .line 2255
    new-instance v99, Ljava/io/FileInputStream;

    move-object/from16 v0, v99

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2256
    .restart local v99       #tempFin:Ljava/io/FileInputStream;
    new-instance v98, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v99 .. v99}, Ljava/io/FileInputStream;->available()I

    move-result v3

    move-object/from16 v0, v98

    move-object/from16 v1, v99

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 2259
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/provider/DrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v98

    invoke-static {v0, v1, v3}, Landroid/provider/DrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_c

    move-result v25

    .line 2262
    :try_start_4b
    invoke-virtual/range {v99 .. v99}, Ljava/io/FileInputStream;->close()V
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_a
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_1b

    .line 2271
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v99           #tempFin:Ljava/io/FileInputStream;
    :goto_28
    const/4 v3, -0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_65

    .line 2272
    add-int/lit8 v88, v88, 0x1

    goto :goto_27

    .line 2229
    .end local v86           #platformLowerCase:Ljava/lang/String;
    .end local v88           #repeat:I
    :cond_63
    :try_start_4c
    invoke-virtual/range {v85 .. v85}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v86

    .restart local v86       #platformLowerCase:Ljava/lang/String;
    goto :goto_26

    .line 2264
    .restart local v88       #repeat:I
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v99       #tempFin:Ljava/io/FileInputStream;
    :catchall_a
    move-exception v3

    throw v3

    .line 2268
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v99           #tempFin:Ljava/io/FileInputStream;
    :cond_64
    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/provider/DrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-static {v0, v1, v3}, Landroid/provider/DrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I

    move-result v25

    goto :goto_28

    .line 2275
    :cond_65
    const/16 v88, 0x3

    goto :goto_27

    .line 2284
    .end local v88           #repeat:I
    :cond_66
    const-string v3, "DrmStore"

    const-string v5, " @@@@@ saveFile for NORMAL case."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    new-instance v81, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/provider/DrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v81

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_c

    .line 2289
    .restart local v81       #os:Ljava/io/FileOutputStream;
    if-eqz v81, :cond_5d

    .line 2291
    :try_start_4d
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v81

    invoke-static {v0, v1, v2}, Landroid/provider/DrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/io/FileOutputStream;)I
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_b

    move-result v25

    .line 2294
    :try_start_4e
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_25

    :catchall_b
    move-exception v3

    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    throw v3

    .line 2303
    .end local v81           #os:Ljava/io/FileOutputStream;
    .end local v85           #platform:Ljava/lang/String;
    .end local v86           #platformLowerCase:Ljava/lang/String;
    :cond_67
    const-string v3, "DrmStore"

    const-string v5, "Unknown method."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V

    .line 2309
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(10) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_c

    .line 2312
    const/16 v71, 0x0

    .line 2415
    if-eqz v62, :cond_1

    .line 2416
    :try_start_4f
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_18

    goto/16 :goto_0

    .line 2418
    :catch_18
    move-exception v52

    .line 2420
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 2329
    .end local v52           #e:Ljava/lang/Exception;
    :cond_68
    :try_start_50
    new-instance v71, Landroid/content/Intent;

    invoke-direct/range {v71 .. v71}, Landroid/content/Intent;-><init>()V
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_c

    .line 2330
    .end local v72           #intent:Landroid/content/Intent;
    .restart local v71       #intent:Landroid/content/Intent;
    :try_start_51
    move-object/from16 v0, v71

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2332
    sget-object v21, Landroid/provider/DrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v24, "_id"

    move-object/from16 v19, v11

    move-object/from16 v20, v16

    invoke-virtual/range {v19 .. v24}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 2333
    .local v27, c_title:Landroid/database/Cursor;
    if-eqz v27, :cond_6a

    .line 2334
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_69

    .line 2335
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2336
    const-string/jumbo v3, "title"

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v103

    .line 2337
    .local v103, titleIdIndex:I
    move-object/from16 v0, v27

    move/from16 v1, v103

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v80

    .line 2339
    .local v80, newTitle:Ljava/lang/String;
    const-string v3, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "newTitle:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v80

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    if-eqz v80, :cond_69

    .line 2342
    const-string/jumbo v3, "title"

    move-object/from16 v0, v71

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2343
    const-string/jumbo v3, "title"

    move-object/from16 v0, v39

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2346
    .end local v80           #newTitle:Ljava/lang/String;
    .end local v103           #titleIdIndex:I
    :cond_69
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 2350
    :cond_6a
    const-string v3, "audio"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6c

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p3

    move-object v15, v6

    move/from16 v17, p5

    .line 2363
    invoke-static/range {v12 .. v18}, Landroid/provider/DrmStore;->parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentValues;

    move-result-object v109

    .line 2365
    .restart local v109       #values:Landroid/content/ContentValues;
    if-eqz v109, :cond_6b

    .line 2366
    const-string v3, "album_id"

    const-string v5, "album_id"

    move-object/from16 v0, v109

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2367
    const-string v3, "artist_id"

    const-string v5, "artist_id"

    move-object/from16 v0, v109

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2369
    const-string/jumbo v3, "title"

    move-object/from16 v0, v109

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6b

    const-string/jumbo v3, "title"

    move-object/from16 v0, v109

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6b

    .line 2370
    const-string/jumbo v3, "title"

    const-string/jumbo v5, "title"

    move-object/from16 v0, v109

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2380
    :cond_6b
    if-eqz v18, :cond_6e

    .line 2381
    const-string/jumbo v3, "is_ringtone"

    const-string v5, "1"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2392
    .end local v109           #values:Landroid/content/ContentValues;
    :cond_6c
    :goto_29
    const-string v3, "content_id"

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2393
    const-string v3, "content_boundary_offset"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2395
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v39

    invoke-virtual {v11, v0, v1, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_3

    .line 2415
    if-eqz v62, :cond_6d

    .line 2416
    :try_start_52
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_1f

    .line 2429
    :cond_6d
    :goto_2a
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(20) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2382
    .restart local v109       #values:Landroid/content/ContentValues;
    :cond_6e
    :try_start_53
    invoke-static {}, Landroid/provider/DrmStore;->SupportForwardLockOnly()Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 2383
    const/4 v3, 0x1

    move/from16 v0, v77

    if-ne v0, v3, :cond_6c

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/32 v14, 0x4b000

    cmp-long v3, v12, v14

    if-gez v3, :cond_6c

    .line 2384
    const-string/jumbo v3, "is_ringtone"

    const-string v5, "1"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_3

    goto :goto_29

    .line 1932
    .end local v25           #boundary_length:I
    .end local v27           #c_title:Landroid/database/Cursor;
    .end local v39           #cv:Landroid/content/ContentValues;
    .end local v93           #stampCursor:Landroid/database/Cursor;
    .end local v109           #values:Landroid/content/ContentValues;
    .restart local v28       #checkFile:Ljava/io/File;
    .restart local v35       #createFile:Ljava/io/File;
    .restart local v51       #duplicatePath:Ljava/lang/String;
    .restart local v85       #platform:Ljava/lang/String;
    .restart local v86       #platformLowerCase:Ljava/lang/String;
    :catch_19
    move-exception v3

    .line 1934
    const/16 v35, 0x0

    .line 1935
    :try_start_54
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_4

    goto/16 :goto_1d

    .line 1954
    .restart local v88       #repeat:I
    .restart local v90       #resultSaveFile:I
    .restart local v95       #success:Z
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v99       #tempFin:Ljava/io/FileInputStream;
    :catch_1a
    move-exception v3

    goto/16 :goto_1f

    .line 2263
    .end local v28           #checkFile:Ljava/io/File;
    .end local v35           #createFile:Ljava/io/File;
    .end local v51           #duplicatePath:Ljava/lang/String;
    .end local v71           #intent:Landroid/content/Intent;
    .end local v90           #resultSaveFile:I
    .end local v95           #success:Z
    .restart local v25       #boundary_length:I
    .restart local v39       #cv:Landroid/content/ContentValues;
    .restart local v72       #intent:Landroid/content/Intent;
    .restart local v93       #stampCursor:Landroid/database/Cursor;
    :catch_1b
    move-exception v3

    goto/16 :goto_28

    .line 2418
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v11           #cr:Landroid/content/ContentResolver;
    .end local v16           #uri:Landroid/net/Uri;
    .end local v18           #flRingtone:Z
    .end local v25           #boundary_length:I
    .end local v26           #c:Landroid/database/Cursor;
    .end local v32           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v33           #contentOffset:I
    .end local v34           #contentUid:Ljava/lang/String;
    .end local v39           #cv:Landroid/content/ContentValues;
    .end local v50           #duplicate:Z
    .end local v62           #fin:Ljava/io/FileInputStream;
    .end local v72           #intent:Landroid/content/Intent;
    .end local v77           #method:I
    .end local v84           #overwrite:Z
    .end local v85           #platform:Ljava/lang/String;
    .end local v86           #platformLowerCase:Ljava/lang/String;
    .end local v88           #repeat:I
    .end local v93           #stampCursor:Landroid/database/Cursor;
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v99           #tempFin:Ljava/io/FileInputStream;
    .end local v105           #transferEncoding:I
    .restart local v61       #fin:Ljava/io/FileInputStream;
    .restart local v71       #intent:Landroid/content/Intent;
    :catch_1c
    move-exception v52

    .line 2420
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v5, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 2418
    .end local v52           #e:Ljava/lang/Exception;
    .end local v61           #fin:Ljava/io/FileInputStream;
    .restart local v10       #binaryFile:Ljava/io/File;
    .restart local v32       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v62       #fin:Ljava/io/FileInputStream;
    .restart local v83       #outputBinaryFilePath:Ljava/lang/String;
    .restart local v89       #resultIntent:Landroid/content/Intent;
    .restart local v105       #transferEncoding:I
    :catch_1d
    move-exception v52

    .line 2420
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1579
    .end local v10           #binaryFile:Ljava/io/File;
    .end local v52           #e:Ljava/lang/Exception;
    .end local v83           #outputBinaryFilePath:Ljava/lang/String;
    .end local v89           #resultIntent:Landroid/content/Intent;
    .restart local v6       #mimeType:Ljava/lang/String;
    .restart local v11       #cr:Landroid/content/ContentResolver;
    .restart local v18       #flRingtone:Z
    .restart local v33       #contentOffset:I
    .restart local v54       #extention:Ljava/lang/String;
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    .restart local v67       #fos:Ljava/io/FileOutputStream;
    .restart local v73       #is:Ljava/io/InputStream;
    .restart local v74       #isTerminated:Z
    .restart local v77       #method:I
    .restart local v82       #outFile:Ljava/io/File;
    :catchall_c
    move-exception v3

    :goto_2b
    if-eqz v67, :cond_6f

    .line 1580
    :try_start_55
    invoke-virtual/range {v67 .. v67}, Ljava/io/FileOutputStream;->close()V

    .line 1581
    const/16 v67, 0x0

    .line 1583
    :cond_6f
    if-eqz v73, :cond_70

    .line 1584
    invoke-virtual/range {v73 .. v73}, Ljava/io/InputStream;->close()V

    .line 1585
    const/16 v73, 0x0

    .line 1594
    :cond_70
    if-eqz v63, :cond_71

    .line 1595
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileInputStream;->close()V

    .line 1596
    const/16 v63, 0x0

    .line 1598
    :cond_71
    if-eqz v65, :cond_72

    .line 1599
    invoke-virtual/range {v65 .. v65}, Ljava/io/FileInputStream;->close()V

    .line 1600
    const/16 v65, 0x0

    .line 1603
    :cond_72
    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_73

    .line 1604
    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->delete()Z

    .line 1606
    :cond_73
    if-eqz v74, :cond_2e

    .line 1610
    const-string v3, "DrmStore"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(4) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_55} :catch_3

    .line 1612
    const/16 v71, 0x0

    .line 2415
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v62, :cond_1

    .line 2416
    :try_start_56
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_56} :catch_1e

    goto/16 :goto_0

    .line 2418
    :catch_1e
    move-exception v52

    .line 2420
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 2418
    .end local v52           #e:Ljava/lang/Exception;
    .end local v54           #extention:Ljava/lang/String;
    .end local v65           #fis2:Ljava/io/FileInputStream;
    .end local v67           #fos:Ljava/io/FileOutputStream;
    .end local v73           #is:Ljava/io/InputStream;
    .end local v74           #isTerminated:Z
    .end local v82           #outFile:Ljava/io/File;
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v16       #uri:Landroid/net/Uri;
    .restart local v25       #boundary_length:I
    .restart local v26       #c:Landroid/database/Cursor;
    .restart local v27       #c_title:Landroid/database/Cursor;
    .restart local v34       #contentUid:Ljava/lang/String;
    .restart local v39       #cv:Landroid/content/ContentValues;
    .restart local v50       #duplicate:Z
    .restart local v71       #intent:Landroid/content/Intent;
    .restart local v84       #overwrite:Z
    .restart local v93       #stampCursor:Landroid/database/Cursor;
    :catch_1f
    move-exception v52

    .line 2420
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmStore"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    .line 1579
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v16           #uri:Landroid/net/Uri;
    .end local v25           #boundary_length:I
    .end local v26           #c:Landroid/database/Cursor;
    .end local v27           #c_title:Landroid/database/Cursor;
    .end local v34           #contentUid:Ljava/lang/String;
    .end local v39           #cv:Landroid/content/ContentValues;
    .end local v50           #duplicate:Z
    .end local v52           #e:Ljava/lang/Exception;
    .end local v84           #overwrite:Z
    .end local v93           #stampCursor:Landroid/database/Cursor;
    .restart local v54       #extention:Ljava/lang/String;
    .restart local v64       #fis:Ljava/io/FileInputStream;
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    .restart local v67       #fos:Ljava/io/FileOutputStream;
    .restart local v73       #is:Ljava/io/InputStream;
    .restart local v74       #isTerminated:Z
    .restart local v82       #outFile:Ljava/io/File;
    :catchall_d
    move-exception v3

    move-object/from16 v63, v64

    .end local v64           #fis:Ljava/io/FileInputStream;
    .restart local v63       #fis:Ljava/io/FileInputStream;
    goto :goto_2b

    .end local v65           #fis2:Ljava/io/FileInputStream;
    .restart local v41       #deleteRights:Z
    .restart local v66       #fis2:Ljava/io/FileInputStream;
    .restart local v75       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v91       #rights:Landroid/drm/mobile1/DrmRights;
    :catchall_e
    move-exception v3

    move-object/from16 v65, v66

    .end local v66           #fis2:Ljava/io/FileInputStream;
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    goto :goto_2b

    .end local v65           #fis2:Ljava/io/FileInputStream;
    .end local v67           #fos:Ljava/io/FileOutputStream;
    .restart local v66       #fis2:Ljava/io/FileInputStream;
    .restart local v68       #fos:Ljava/io/FileOutputStream;
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    :catchall_f
    move-exception v3

    move-object/from16 v67, v68

    .end local v68           #fos:Ljava/io/FileOutputStream;
    .restart local v67       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v65, v66

    .end local v66           #fis2:Ljava/io/FileInputStream;
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    goto :goto_2b

    .line 1575
    .end local v41           #deleteRights:Z
    .end local v63           #fis:Ljava/io/FileInputStream;
    .end local v75           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v91           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v64       #fis:Ljava/io/FileInputStream;
    :catch_20
    move-exception v52

    move-object/from16 v63, v64

    .end local v64           #fis:Ljava/io/FileInputStream;
    .restart local v63       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_e

    .end local v65           #fis2:Ljava/io/FileInputStream;
    .restart local v41       #deleteRights:Z
    .restart local v66       #fis2:Ljava/io/FileInputStream;
    .restart local v75       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v91       #rights:Landroid/drm/mobile1/DrmRights;
    :catch_21
    move-exception v52

    move-object/from16 v65, v66

    .end local v66           #fis2:Ljava/io/FileInputStream;
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    goto/16 :goto_e

    .end local v65           #fis2:Ljava/io/FileInputStream;
    .end local v67           #fos:Ljava/io/FileOutputStream;
    .restart local v66       #fis2:Ljava/io/FileInputStream;
    .restart local v68       #fos:Ljava/io/FileOutputStream;
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    :catch_22
    move-exception v52

    move-object/from16 v67, v68

    .end local v68           #fos:Ljava/io/FileOutputStream;
    .restart local v67       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v65, v66

    .end local v66           #fis2:Ljava/io/FileInputStream;
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    goto/16 :goto_e

    .end local v41           #deleteRights:Z
    .end local v54           #extention:Ljava/lang/String;
    .end local v63           #fis:Ljava/io/FileInputStream;
    .end local v65           #fis2:Ljava/io/FileInputStream;
    .end local v67           #fos:Ljava/io/FileOutputStream;
    .end local v73           #is:Ljava/io/InputStream;
    .end local v74           #isTerminated:Z
    .end local v75           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v82           #outFile:Ljava/io/File;
    .end local v91           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v26       #c:Landroid/database/Cursor;
    .restart local v34       #contentUid:Ljava/lang/String;
    .restart local v50       #duplicate:Z
    .restart local v84       #overwrite:Z
    .restart local v108       #uri:Landroid/net/Uri;
    :cond_74
    move-object/from16 v16, v108

    .end local v108           #uri:Landroid/net/Uri;
    .restart local v16       #uri:Landroid/net/Uri;
    goto/16 :goto_16

    .end local v16           #uri:Landroid/net/Uri;
    .restart local v108       #uri:Landroid/net/Uri;
    :cond_75
    move-object/from16 v16, v108

    .end local v108           #uri:Landroid/net/Uri;
    .restart local v16       #uri:Landroid/net/Uri;
    move-object/from16 v72, v71

    .end local v71           #intent:Landroid/content/Intent;
    .restart local v72       #intent:Landroid/content/Intent;
    goto/16 :goto_21

    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v16           #uri:Landroid/net/Uri;
    .end local v26           #c:Landroid/database/Cursor;
    .end local v34           #contentUid:Ljava/lang/String;
    .end local v50           #duplicate:Z
    .end local v72           #intent:Landroid/content/Intent;
    .end local v84           #overwrite:Z
    .restart local v41       #deleteRights:Z
    .restart local v54       #extention:Ljava/lang/String;
    .restart local v64       #fis:Ljava/io/FileInputStream;
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    .restart local v67       #fos:Ljava/io/FileOutputStream;
    .restart local v71       #intent:Landroid/content/Intent;
    .restart local v73       #is:Ljava/io/InputStream;
    .restart local v74       #isTerminated:Z
    .restart local v75       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v82       #outFile:Ljava/io/File;
    .restart local v91       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    :cond_76
    move-object/from16 v63, v64

    .end local v64           #fis:Ljava/io/FileInputStream;
    .restart local v63       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_b

    .line 1205
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch

    .line 2138
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x7 -> :sswitch_3
    .end sparse-switch
.end method

.method public static final addDrmFileWithoutRights(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 91
    .parameter "cx"
    .parameter "file"
    .parameter "title"
    .parameter "mediaType"
    .parameter "url"
    .parameter "destination"

    .prologue
    .line 3343
    const-string v4, "DrmStore"

    const-string v8, "********addDrmFileWithoutRights"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3346
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    .line 3348
    :cond_0
    const-string v4, "DrmStore"

    const-string v8, "addDrmFile input error."

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3350
    const/16 v53, 0x0

    .line 4373
    :cond_1
    :goto_0
    return-object v53

    .line 3360
    :cond_2
    const/4 v4, 0x7

    move/from16 v0, p5

    if-eq v0, v4, :cond_3

    .line 3363
    const/16 p5, 0x0

    .line 3366
    :cond_3
    const/16 v53, 0x0

    .line 3367
    .local v53, intent:Landroid/content/Intent;
    const/16 v45, 0x0

    .line 3370
    .local v45, fin:Ljava/io/FileInputStream;
    const-string v4, "application/vnd.oma.drm.rights+xml"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "application/vnd.oma.drm.rights+wbxml"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3373
    :cond_4
    const-string v4, "DrmStore"

    const-string v8, "Rights object installation is not supported via this method"

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3374
    const/16 v53, 0x0

    goto :goto_0

    .line 3414
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 3416
    .local v6, cr:Landroid/content/ContentResolver;
    const/16 v42, 0x0

    .line 3417
    .local v42, fileName:Ljava/lang/String;
    if-nez p2, :cond_7

    .line 3418
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v42

    .line 3427
    :goto_1
    const-string v4, "."

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v32

    .line 3428
    .local v32, dot:I
    const/4 v4, -0x1

    move/from16 v0, v32

    if-ne v0, v4, :cond_9

    .line 3430
    const-string v4, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3431
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ".dm"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 3444
    :cond_6
    :goto_2
    const-string v4, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Add DRM file : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3449
    :try_start_0
    new-instance v46, Ljava/io/FileInputStream;

    move-object/from16 v0, v46

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_f

    .line 3450
    .end local v45           #fin:Ljava/io/FileInputStream;
    .local v46, fin:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v20, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->available()I

    move-result v4

    move-object/from16 v0, v20

    move-object/from16 v1, v46

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v4, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 3454
    .local v20, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual/range {v20 .. v20}, Landroid/drm/mobile1/DrmRawContent;->getTransferEncoding()I

    move-result v87

    .line 3456
    .local v87, transferEncoding:I
    const-string v4, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x3

    move/from16 v0, v87

    if-ne v0, v4, :cond_f

    .line 3461
    const-string v4, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " @@@@@  Handle specific transfer-encoding="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v87

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3464
    const-string v65, "/data/data/com.android.providers.drm/rights/tmp"

    .line 3467
    .local v65, outputBinaryFilePath:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v65

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    invoke-static {v4, v8}, Landroid/provider/DrmStore;->checkAndCreateFolder(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_b

    .line 3468
    const-string v4, "DrmStore"

    const-string v8, " @@@@@ ERROR: cannot create file!!!"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3472
    const-string v4, "DrmStore"

    const-string v8, " @@@@@     addDrmFileWithoutRights (1)-(3)-(1) -END"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 3475
    const/16 v53, 0x0

    .line 4364
    .end local v53           #intent:Landroid/content/Intent;
    if-eqz v46, :cond_1

    .line 4365
    :try_start_2
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 4367
    :catch_0
    move-exception v38

    .line 4369
    .local v38, e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    .end local v6           #cr:Landroid/content/ContentResolver;
    .end local v20           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v46           #fin:Ljava/io/FileInputStream;
    .end local v65           #outputBinaryFilePath:Ljava/lang/String;
    .end local v87           #transferEncoding:I
    :goto_3
    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3421
    .end local v32           #dot:I
    .end local v38           #e:Ljava/lang/Exception;
    .restart local v6       #cr:Landroid/content/ContentResolver;
    .restart local v45       #fin:Ljava/io/FileInputStream;
    .restart local v53       #intent:Landroid/content/Intent;
    :cond_7
    const-string v4, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Title is "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3423
    move-object/from16 v42, p2

    goto/16 :goto_1

    .line 3432
    .restart local v32       #dot:I
    :cond_8
    const-string v4, "application/vnd.oma.drm.content"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3433
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ".dcf"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    goto/16 :goto_2

    .line 3436
    :cond_9
    const-string v4, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3437
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v32

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ".dm"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    goto/16 :goto_2

    .line 3438
    :cond_a
    const-string v4, "application/vnd.oma.drm.content"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3439
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v32

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ".dcf"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    goto/16 :goto_2

    .line 3478
    .end local v45           #fin:Ljava/io/FileInputStream;
    .restart local v20       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v46       #fin:Ljava/io/FileInputStream;
    .restart local v65       #outputBinaryFilePath:Ljava/lang/String;
    .restart local v87       #transferEncoding:I
    :cond_b
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v65

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    .line 3480
    const/4 v4, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v65

    invoke-static {v0, v1, v2}, Landroid/provider/DrmStore;->saveFileFromBase64ToBinary(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I

    move-result v8

    if-ne v4, v8, :cond_c

    .line 3483
    const-string v4, "DrmStore"

    const-string v8, " @@@@@ ERROR: convert base64 file Fail!!!"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3487
    const-string v4, "DrmStore"

    const-string v8, " @@@@@     addDrmFileWithoutRights (1)-(3)-(2) -END"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 3490
    const/16 v53, 0x0

    .line 4364
    .end local v53           #intent:Landroid/content/Intent;
    if-eqz v46, :cond_1

    .line 4365
    :try_start_4
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 4367
    :catch_1
    move-exception v38

    .line 4369
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3493
    .end local v38           #e:Ljava/lang/Exception;
    .restart local v53       #intent:Landroid/content/Intent;
    :cond_c
    :try_start_5
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, v65

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3495
    .local v5, binaryFile:Ljava/io/File;
    const/4 v4, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v4, v8}, Ljava/io/File;->setWritable(ZZ)Z

    .line 3496
    const/4 v4, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v4, v8}, Ljava/io/File;->setReadable(ZZ)Z

    .line 3497
    const/4 v4, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v4, v8}, Ljava/io/File;->setExecutable(ZZ)Z

    move-object/from16 v4, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    .line 3499
    invoke-static/range {v4 .. v9}, Landroid/provider/DrmStore;->addDrmFileWithoutRights(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .end local v6           #cr:Landroid/content/ContentResolver;
    move-result-object v71

    .line 3503
    .local v71, resultIntent:Landroid/content/Intent;
    :try_start_6
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3504
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 4364
    :cond_d
    :goto_4
    if-eqz v46, :cond_e

    .line 4365
    :try_start_7
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1c

    :cond_e
    :goto_5
    move-object/from16 v53, v71

    .line 3512
    goto/16 :goto_0

    .line 3506
    :catch_2
    move-exception v38

    .line 3507
    .restart local v38       #e:Ljava/lang/Exception;
    :try_start_8
    const-string v4, "DrmStore"

    const-string v8, " @@@@@  ERROR: delete temp files FAILED!!!"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3508
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3509
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_4

    .line 4352
    .end local v5           #binaryFile:Ljava/io/File;
    .end local v20           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v38           #e:Ljava/lang/Exception;
    .end local v65           #outputBinaryFilePath:Ljava/lang/String;
    .end local v71           #resultIntent:Landroid/content/Intent;
    .end local v87           #transferEncoding:I
    :catch_3
    move-exception v38

    move-object/from16 v45, v46

    .line 4358
    .end local v46           #fin:Ljava/io/FileInputStream;
    .restart local v38       #e:Ljava/lang/Exception;
    .restart local v45       #fin:Ljava/io/FileInputStream;
    :goto_6
    :try_start_9
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 4360
    const/16 v53, 0x0

    .line 4364
    .end local v53           #intent:Landroid/content/Intent;
    if-eqz v45, :cond_1

    .line 4365
    :try_start_a
    invoke-virtual/range {v45 .. v45}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    .line 4367
    :catch_4
    move-exception v38

    .line 4369
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3516
    .end local v38           #e:Ljava/lang/Exception;
    .end local v45           #fin:Ljava/io/FileInputStream;
    .restart local v6       #cr:Landroid/content/ContentResolver;
    .restart local v20       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v46       #fin:Ljava/io/FileInputStream;
    .restart local v53       #intent:Landroid/content/Intent;
    .restart local v87       #transferEncoding:I
    :cond_f
    :try_start_b
    invoke-virtual/range {v20 .. v20}, Landroid/drm/mobile1/DrmRawContent;->getContentType()Ljava/lang/String;

    move-result-object v60

    .line 3518
    .local v60, mimeType:Ljava/lang/String;
    const-string v4, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mimeType = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v60

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3521
    invoke-virtual/range {v20 .. v20}, Landroid/drm/mobile1/DrmRawContent;->getRawType()I

    move-result v59

    .line 3523
    .local v59, method:I
    const-string v4, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "method = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v59

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3526
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/drm/mobile1/DrmRawContent;->getContentOffset(Landroid/drm/mobile1/DrmRights;)I

    move-result v21

    .line 3533
    .local v21, contentOffset:I
    const-string/jumbo v4, "video"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    const-string v4, "audio"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    :cond_10
    const/4 v4, 0x1

    move/from16 v0, v59

    if-eq v0, v4, :cond_11

    const/4 v4, 0x2

    move/from16 v0, v59

    if-ne v0, v4, :cond_23

    .line 3536
    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x2e

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v60 .. v60}, Landroid/media/MediaFile;->getExtensionForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    .line 3541
    .local v40, extention:Ljava/lang/String;
    new-instance v64, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/data/com.android.providers.drm/rights/DRM"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v64

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 3548
    .local v64, outFile:Ljava/io/File;
    const/16 v47, 0x0

    .line 3549
    .local v47, fis:Ljava/io/FileInputStream;
    const/16 v49, 0x0

    .line 3551
    .local v49, fis2:Ljava/io/FileInputStream;
    const/16 v51, 0x0

    .line 3552
    .local v51, fos:Ljava/io/FileOutputStream;
    const/16 v55, 0x0

    .line 3553
    .local v55, is:Ljava/io/InputStream;
    const/16 v56, 0x0

    .line 3560
    .local v56, isTerminated:Z
    :try_start_c
    new-instance v48, Ljava/io/FileInputStream;

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 3569
    .end local v47           #fis:Ljava/io/FileInputStream;
    .local v48, fis:Ljava/io/FileInputStream;
    :try_start_d
    new-instance v80, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v48 .. v48}, Ljava/io/FileInputStream;->available()I

    move-result v4

    move-object/from16 v0, v80

    move-object/from16 v1, v48

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v4, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 3573
    .local v80, tempContent:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v57

    .line 3574
    .local v57, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, v57

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v73

    .line 3579
    .local v73, rights:Landroid/drm/mobile1/DrmRights;
    const/16 v27, 0x0

    .line 3580
    .local v27, deleteRights:Z
    if-nez v73, :cond_12

    const/4 v4, 0x2

    move/from16 v0, v59

    if-ne v0, v4, :cond_12

    .line 3588
    invoke-virtual/range {v48 .. v48}, Ljava/io/FileInputStream;->available()I

    move-result v4

    move-object/from16 v0, v57

    move-object/from16 v1, v48

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v4, v2}, Landroid/drm/mobile1/DrmRightsManager;->installRights(Ljava/io/InputStream;ILjava/lang/String;)Landroid/drm/mobile1/DrmRights;

    move-result-object v73

    .line 3590
    const/16 v27, 0x1

    .line 3596
    :cond_12
    if-eqz v48, :cond_64

    .line 3597
    invoke-virtual/range {v48 .. v48}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1f

    .line 3598
    const/16 v47, 0x0

    .line 3602
    .end local v48           #fis:Ljava/io/FileInputStream;
    .restart local v47       #fis:Ljava/io/FileInputStream;
    :goto_7
    if-eqz v73, :cond_1b

    .line 3609
    :try_start_e
    new-instance v50, Ljava/io/FileInputStream;

    move-object/from16 v0, v50

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 3610
    .end local v49           #fis2:Ljava/io/FileInputStream;
    .local v50, fis2:Ljava/io/FileInputStream;
    :try_start_f
    new-instance v80, Landroid/drm/mobile1/DrmRawContent;

    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual/range {v50 .. v50}, Ljava/io/FileInputStream;->available()I

    move-result v4

    move-object/from16 v0, v80

    move-object/from16 v1, v50

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v4, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 3614
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    move-object/from16 v0, v80

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v55

    .line 3615
    new-instance v52, Ljava/io/FileOutputStream;

    move-object/from16 v0, v52

    move-object/from16 v1, v64

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_20

    .line 3617
    .end local v51           #fos:Ljava/io/FileOutputStream;
    .local v52, fos:Ljava/io/FileOutputStream;
    :try_start_10
    move-object/from16 v0, v55

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Landroid/provider/DrmStore;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I

    .line 3619
    if-eqz v27, :cond_13

    .line 3620
    move-object/from16 v0, v57

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRightsManager;->deleteRights(Landroid/drm/mobile1/DrmRights;)V

    .line 3625
    :cond_13
    sget-object v4, Landroid/provider/DrmStore;->CMD_CHMOD:[Ljava/lang/String;

    const/4 v8, 0x2

    invoke-virtual/range {v64 .. v64}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v8

    .line 3626
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    sget-object v8, Landroid/provider/DrmStore;->CMD_CHMOD:[Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    .line 3628
    new-instance v58, Landroid/media/MediaInfo;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/media/MediaInfo;-><init>(Landroid/content/Context;)V

    .line 3629
    .local v58, mediaInfo:Landroid/media/MediaInfo;
    invoke-virtual/range {v64 .. v64}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v58

    invoke-virtual {v0, v4}, Landroid/media/MediaInfo;->getFileType(Ljava/lang/String;)I

    move-result v88

    .line 3630
    .local v88, type:I
    const/4 v4, 0x1

    move/from16 v0, v88

    if-ne v0, v4, :cond_1a

    .line 3631
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "audio/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    move-object/from16 v0, v60

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v60

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    .line 3640
    :cond_14
    :goto_8
    const-string v4, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MIME type by MediaInfo: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v60

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_21

    move-object/from16 v51, v52

    .end local v52           #fos:Ljava/io/FileOutputStream;
    .restart local v51       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v49, v50

    .line 3649
    .end local v50           #fis2:Ljava/io/FileInputStream;
    .end local v58           #mediaInfo:Landroid/media/MediaInfo;
    .end local v88           #type:I
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    :goto_9
    if-eqz v51, :cond_15

    .line 3650
    :try_start_11
    invoke-virtual/range {v51 .. v51}, Ljava/io/FileOutputStream;->close()V

    .line 3651
    const/16 v51, 0x0

    .line 3653
    :cond_15
    if-eqz v55, :cond_16

    .line 3654
    invoke-virtual/range {v55 .. v55}, Ljava/io/InputStream;->close()V

    .line 3655
    const/16 v55, 0x0

    .line 3664
    :cond_16
    if-eqz v47, :cond_17

    .line 3665
    invoke-virtual/range {v47 .. v47}, Ljava/io/FileInputStream;->close()V

    .line 3666
    const/16 v47, 0x0

    .line 3668
    :cond_17
    if-eqz v49, :cond_18

    .line 3669
    invoke-virtual/range {v49 .. v49}, Ljava/io/FileInputStream;->close()V

    .line 3670
    const/16 v49, 0x0

    .line 3673
    :cond_18
    invoke-virtual/range {v64 .. v64}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 3674
    invoke-virtual/range {v64 .. v64}, Ljava/io/File;->delete()Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    .line 3676
    :cond_19
    if-eqz v56, :cond_23

    .line 3677
    const/16 v53, 0x0

    .line 4364
    .end local v53           #intent:Landroid/content/Intent;
    if-eqz v46, :cond_1

    .line 4365
    :try_start_12
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5

    goto/16 :goto_0

    .line 4367
    :catch_5
    move-exception v38

    .line 4369
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3633
    .end local v38           #e:Ljava/lang/Exception;
    .end local v49           #fis2:Ljava/io/FileInputStream;
    .end local v51           #fos:Ljava/io/FileOutputStream;
    .restart local v50       #fis2:Ljava/io/FileInputStream;
    .restart local v52       #fos:Ljava/io/FileOutputStream;
    .restart local v53       #intent:Landroid/content/Intent;
    .restart local v58       #mediaInfo:Landroid/media/MediaInfo;
    .restart local v88       #type:I
    :cond_1a
    const/4 v4, 0x2

    move/from16 v0, v88

    if-ne v0, v4, :cond_14

    .line 3634
    :try_start_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "video/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    move-object/from16 v0, v60

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v60

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_10
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_21

    move-result-object v60

    goto :goto_8

    .line 3643
    .end local v50           #fis2:Ljava/io/FileInputStream;
    .end local v52           #fos:Ljava/io/FileOutputStream;
    .end local v58           #mediaInfo:Landroid/media/MediaInfo;
    .end local v88           #type:I
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    .restart local v51       #fos:Ljava/io/FileOutputStream;
    :cond_1b
    :try_start_14
    const-string v4, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MIME type from DRM header: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v60

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6

    goto :goto_9

    .line 3645
    .end local v27           #deleteRights:Z
    .end local v57           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v73           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    :catch_6
    move-exception v38

    .line 3646
    .restart local v38       #e:Ljava/lang/Exception;
    :goto_a
    :try_start_15
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    .line 3647
    const/16 v56, 0x1

    .line 3649
    if-eqz v51, :cond_1c

    .line 3650
    :try_start_16
    invoke-virtual/range {v51 .. v51}, Ljava/io/FileOutputStream;->close()V

    .line 3651
    const/16 v51, 0x0

    .line 3653
    :cond_1c
    if-eqz v55, :cond_1d

    .line 3654
    invoke-virtual/range {v55 .. v55}, Ljava/io/InputStream;->close()V

    .line 3655
    const/16 v55, 0x0

    .line 3664
    :cond_1d
    if-eqz v47, :cond_1e

    .line 3665
    invoke-virtual/range {v47 .. v47}, Ljava/io/FileInputStream;->close()V

    .line 3666
    const/16 v47, 0x0

    .line 3668
    :cond_1e
    if-eqz v49, :cond_1f

    .line 3669
    invoke-virtual/range {v49 .. v49}, Ljava/io/FileInputStream;->close()V

    .line 3670
    const/16 v49, 0x0

    .line 3673
    :cond_1f
    invoke-virtual/range {v64 .. v64}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 3674
    invoke-virtual/range {v64 .. v64}, Ljava/io/File;->delete()Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_3

    .line 3676
    :cond_20
    if-eqz v56, :cond_23

    .line 3677
    const/16 v53, 0x0

    .line 4364
    .end local v53           #intent:Landroid/content/Intent;
    if-eqz v46, :cond_1

    .line 4365
    :try_start_17
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_7

    goto/16 :goto_0

    .line 4367
    :catch_7
    move-exception v38

    .line 4369
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3649
    .end local v38           #e:Ljava/lang/Exception;
    .restart local v53       #intent:Landroid/content/Intent;
    :cond_21
    :try_start_18
    throw v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_3

    .line 4363
    .end local v6           #cr:Landroid/content/ContentResolver;
    .end local v20           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v21           #contentOffset:I
    .end local v40           #extention:Ljava/lang/String;
    .end local v47           #fis:Ljava/io/FileInputStream;
    .end local v49           #fis2:Ljava/io/FileInputStream;
    .end local v51           #fos:Ljava/io/FileOutputStream;
    .end local v55           #is:Ljava/io/InputStream;
    .end local v56           #isTerminated:Z
    .end local v59           #method:I
    .end local v60           #mimeType:Ljava/lang/String;
    .end local v64           #outFile:Ljava/io/File;
    .end local v87           #transferEncoding:I
    :catchall_0
    move-exception v4

    move-object/from16 v45, v46

    .line 4364
    .end local v46           #fin:Ljava/io/FileInputStream;
    .restart local v45       #fin:Ljava/io/FileInputStream;
    :goto_b
    if-eqz v45, :cond_22

    .line 4365
    :try_start_19
    invoke-virtual/range {v45 .. v45}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_1b

    .line 4363
    :cond_22
    :goto_c
    throw v4

    .line 3683
    .end local v45           #fin:Ljava/io/FileInputStream;
    .restart local v6       #cr:Landroid/content/ContentResolver;
    .restart local v20       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v21       #contentOffset:I
    .restart local v46       #fin:Ljava/io/FileInputStream;
    .restart local v59       #method:I
    .restart local v60       #mimeType:Ljava/lang/String;
    .restart local v87       #transferEncoding:I
    :cond_23
    :try_start_1a
    const-string v22, ""

    .line 3685
    .local v22, contentUid:Ljava/lang/String;
    const/4 v7, 0x0

    .line 3688
    .local v7, contentUri:Landroid/net/Uri;
    const-string v4, "audio/"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 3689
    sget-object v7, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    .line 3705
    :goto_d
    const/16 v36, 0x0

    .line 3706
    .local v36, duplicate:Z
    const/16 v66, 0x0

    .line 3707
    .local v66, overwrite:Z
    const/16 v89, 0x0

    .line 3709
    .local v89, uri:Landroid/net/Uri;
    sget-object v8, Landroid/provider/DrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    const-string v9, "content_url=?"

    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p4, v10, v4

    const-string v11, "_id"

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 3710
    .local v15, c:Landroid/database/Cursor;
    if-eqz v15, :cond_63

    .line 3711
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_62

    .line 3715
    const-string v4, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " duplicated."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3717
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3718
    const-string v4, "_id"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 3719
    .local v19, columnIdIndex:I
    move/from16 v0, v19

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 3720
    .local v18, columnId:I
    const-string v4, "_data"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v44

    .line 3721
    .local v44, filePathIndex:I
    move/from16 v0, v44

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 3722
    .local v43, filePath:Ljava/lang/String;
    const-string/jumbo v4, "title"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    .line 3723
    .local v86, titleInddex:I
    move/from16 v0, v86

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 3724
    .local v35, dup_title:Ljava/lang/String;
    const/16 v34, 0x0

    .line 3726
    .local v34, downloadPath:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v89

    .line 3727
    new-instance v54, Landroid/content/Intent;

    invoke-direct/range {v54 .. v54}, Landroid/content/Intent;-><init>()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_3

    .line 3728
    .end local v53           #intent:Landroid/content/Intent;
    .local v54, intent:Landroid/content/Intent;
    :try_start_1b
    move-object/from16 v0, v54

    move-object/from16 v1, v89

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3730
    const-string v4, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dup_title:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3732
    const-string/jumbo v4, "title"

    move-object/from16 v0, v54

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3733
    const/16 v36, 0x1

    .line 3739
    const-string v4, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Check file path: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v43

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3742
    new-instance v41, Ljava/io/File;

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3743
    .local v41, f:Ljava/io/File;
    invoke-virtual/range {v41 .. v41}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v42

    .line 3744
    invoke-virtual/range {v41 .. v41}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 3745
    invoke-virtual/range {v41 .. v41}, Ljava/io/File;->delete()Z

    .line 3749
    :cond_24
    const/4 v4, 0x7

    move/from16 v0, p5

    if-ne v0, v4, :cond_2c

    .line 3759
    invoke-static {}, Landroid/provider/DrmStore;->getInternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v34

    .line 3761
    if-eqz v34, :cond_25

    const-string v4, ""

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 3762
    :cond_25
    const-string v4, "DrmStore"

    const-string v8, " @@@@@ internal download path doesn\'t exist!"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3764
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_c

    .line 3765
    const/16 v53, 0x0

    .line 4364
    if-eqz v46, :cond_1

    .line 4365
    :try_start_1c
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_8

    goto/16 :goto_0

    .line 4367
    :catch_8
    move-exception v38

    .line 4369
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3690
    .end local v15           #c:Landroid/database/Cursor;
    .end local v18           #columnId:I
    .end local v19           #columnIdIndex:I
    .end local v34           #downloadPath:Ljava/lang/String;
    .end local v35           #dup_title:Ljava/lang/String;
    .end local v36           #duplicate:Z
    .end local v38           #e:Ljava/lang/Exception;
    .end local v41           #f:Ljava/io/File;
    .end local v43           #filePath:Ljava/lang/String;
    .end local v44           #filePathIndex:I
    .end local v54           #intent:Landroid/content/Intent;
    .end local v66           #overwrite:Z
    .end local v86           #titleInddex:I
    .end local v89           #uri:Landroid/net/Uri;
    .restart local v53       #intent:Landroid/content/Intent;
    :cond_26
    :try_start_1d
    const-string/jumbo v4, "image/"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 3691
    sget-object v7, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_d

    .line 3692
    :cond_27
    const-string/jumbo v4, "video/"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 3693
    sget-object v7, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_d

    .line 3694
    :cond_28
    const-string v4, "application/java-archive"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 3695
    sget-object v7, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_d

    .line 3698
    :cond_29
    const-string v4, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported mime type "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v60

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3700
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_3

    .line 3701
    const/16 v53, 0x0

    .line 4364
    .end local v53           #intent:Landroid/content/Intent;
    if-eqz v46, :cond_1

    .line 4365
    :try_start_1e
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_9

    goto/16 :goto_0

    .line 4367
    :catch_9
    move-exception v38

    .line 4369
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3768
    .end local v38           #e:Ljava/lang/Exception;
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v18       #columnId:I
    .restart local v19       #columnIdIndex:I
    .restart local v34       #downloadPath:Ljava/lang/String;
    .restart local v35       #dup_title:Ljava/lang/String;
    .restart local v36       #duplicate:Z
    .restart local v41       #f:Ljava/io/File;
    .restart local v43       #filePath:Ljava/lang/String;
    .restart local v44       #filePathIndex:I
    .restart local v54       #intent:Landroid/content/Intent;
    .restart local v66       #overwrite:Z
    .restart local v86       #titleInddex:I
    .restart local v89       #uri:Landroid/net/Uri;
    :cond_2a
    :try_start_1f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 3804
    :goto_e
    const-string v4, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Saved file path: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v43

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3810
    new-instance v41, Ljava/io/File;

    .end local v41           #f:Ljava/io/File;
    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3811
    .restart local v41       #f:Ljava/io/File;
    invoke-virtual/range {v41 .. v41}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 3813
    const-string v4, "DrmStore"

    const-string v8, "File exists, use a new name"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3815
    const-string v4, "."

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v39

    .line 3816
    .local v39, ext:I
    const/16 v69, 0x0

    .line 3817
    .local v69, prefix:Ljava/lang/String;
    const/16 v79, 0x0

    .line 3818
    .local v79, suffix:Ljava/lang/String;
    if-lez v39, :cond_2f

    .line 3819
    const/4 v4, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v39

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v69

    .line 3820
    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v42

    move/from16 v1, v39

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v79

    .line 3825
    :goto_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "---"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v41 .. v41}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    move-object/from16 v0, v79

    invoke-static {v4, v0, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v61

    .line 3827
    .local v61, newFile:Ljava/io/File;
    invoke-virtual/range {v61 .. v61}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v43

    .line 3829
    const-string v4, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "New file path: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v43

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3834
    .end local v39           #ext:I
    .end local v61           #newFile:Ljava/io/File;
    .end local v69           #prefix:Ljava/lang/String;
    .end local v79           #suffix:Ljava/lang/String;
    :cond_2b
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 3836
    .local v26, cv:Landroid/content/ContentValues;
    sget-object v9, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v10, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "_id"

    move-object v8, v6

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v76

    .line 3837
    .local v76, stampCursor:Landroid/database/Cursor;
    if-eqz v76, :cond_31

    .line 3838
    invoke-interface/range {v76 .. v76}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 3844
    const-string/jumbo v4, "time_differential"

    move-object/from16 v0, v76

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 3845
    .local v31, differentialColumnId:I
    move-object/from16 v0, v76

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 3846
    .local v29, differential:J
    const-string/jumbo v4, "timezone_stamp"

    move-object/from16 v0, v76

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v84

    .line 3847
    .local v84, timeZoneColumnIndex:I
    move-object/from16 v0, v76

    move/from16 v1, v84

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v82

    .line 3848
    .local v82, timeZone:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 3849
    .local v24, currentClock:J
    const-string v4, "date_modified"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3850
    const-string v4, "date_added"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3855
    .end local v24           #currentClock:J
    .end local v29           #differential:J
    .end local v31           #differentialColumnId:I
    .end local v82           #timeZone:J
    .end local v84           #timeZoneColumnIndex:I
    :goto_10
    invoke-interface/range {v76 .. v76}, Landroid/database/Cursor;->close()V

    .line 3861
    :goto_11
    const/16 v66, 0x1

    .line 3863
    const-string v4, "existence"

    const-string v8, "exist"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3865
    const-string v4, "_data"

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3872
    const-string v4, "/"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v74

    .line 3873
    .local v74, slashPos:I
    add-int/lit8 v4, v74, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v33

    .line 3875
    .local v33, downloadName:Ljava/lang/String;
    const-string v4, "bucket_display_name"

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3878
    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v89

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1, v4, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_c

    move-object/from16 v9, v89

    .end local v89           #uri:Landroid/net/Uri;
    .local v9, uri:Landroid/net/Uri;
    move-object/from16 v53, v54

    .line 3880
    .end local v18           #columnId:I
    .end local v19           #columnIdIndex:I
    .end local v26           #cv:Landroid/content/ContentValues;
    .end local v33           #downloadName:Ljava/lang/String;
    .end local v34           #downloadPath:Ljava/lang/String;
    .end local v35           #dup_title:Ljava/lang/String;
    .end local v41           #f:Ljava/io/File;
    .end local v43           #filePath:Ljava/lang/String;
    .end local v44           #filePathIndex:I
    .end local v54           #intent:Landroid/content/Intent;
    .end local v74           #slashPos:I
    .end local v76           #stampCursor:Landroid/database/Cursor;
    .end local v86           #titleInddex:I
    .restart local v53       #intent:Landroid/content/Intent;
    :goto_12
    :try_start_20
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 3882
    if-eqz v36, :cond_32

    if-nez v66, :cond_32

    .line 3884
    const-string v4, "DrmStore"

    const-string v8, "File is duplicated and exist."

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3886
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_3

    .line 4364
    if-eqz v46, :cond_1

    .line 4365
    :try_start_21
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_a

    goto/16 :goto_0

    .line 4367
    :catch_a
    move-exception v38

    .line 4369
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3790
    .end local v9           #uri:Landroid/net/Uri;
    .end local v38           #e:Ljava/lang/Exception;
    .end local v53           #intent:Landroid/content/Intent;
    .restart local v18       #columnId:I
    .restart local v19       #columnIdIndex:I
    .restart local v34       #downloadPath:Ljava/lang/String;
    .restart local v35       #dup_title:Ljava/lang/String;
    .restart local v41       #f:Ljava/io/File;
    .restart local v43       #filePath:Ljava/lang/String;
    .restart local v44       #filePathIndex:I
    .restart local v54       #intent:Landroid/content/Intent;
    .restart local v86       #titleInddex:I
    .restart local v89       #uri:Landroid/net/Uri;
    :cond_2c
    :try_start_22
    invoke-static {}, Landroid/provider/DrmStore;->getExternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v34

    .line 3792
    if-eqz v34, :cond_2d

    const-string v4, ""

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 3793
    :cond_2d
    const-string v4, "DrmStore"

    const-string v8, " @@@@@ external download path doesn\'t exist!"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3795
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_c

    .line 3796
    const/16 v53, 0x0

    .line 4364
    if-eqz v46, :cond_1

    .line 4365
    :try_start_23
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_b

    goto/16 :goto_0

    .line 4367
    :catch_b
    move-exception v38

    .line 4369
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3799
    .end local v38           #e:Ljava/lang/Exception;
    :cond_2e
    :try_start_24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    goto/16 :goto_e

    .line 3822
    .restart local v39       #ext:I
    .restart local v69       #prefix:Ljava/lang/String;
    .restart local v79       #suffix:Ljava/lang/String;
    :cond_2f
    move-object/from16 v69, v42

    .line 3823
    const-string v79, ""

    goto/16 :goto_f

    .line 3852
    .end local v39           #ext:I
    .end local v69           #prefix:Ljava/lang/String;
    .end local v79           #suffix:Ljava/lang/String;
    .restart local v26       #cv:Landroid/content/ContentValues;
    .restart local v76       #stampCursor:Landroid/database/Cursor;
    :cond_30
    const-string v4, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3853
    const-string v4, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_10

    .line 4352
    .end local v18           #columnId:I
    .end local v19           #columnIdIndex:I
    .end local v26           #cv:Landroid/content/ContentValues;
    .end local v34           #downloadPath:Ljava/lang/String;
    .end local v35           #dup_title:Ljava/lang/String;
    .end local v41           #f:Ljava/io/File;
    .end local v43           #filePath:Ljava/lang/String;
    .end local v44           #filePathIndex:I
    .end local v76           #stampCursor:Landroid/database/Cursor;
    .end local v86           #titleInddex:I
    .end local v89           #uri:Landroid/net/Uri;
    :catch_c
    move-exception v38

    move-object/from16 v45, v46

    .end local v46           #fin:Ljava/io/FileInputStream;
    .restart local v45       #fin:Ljava/io/FileInputStream;
    move-object/from16 v53, v54

    .end local v54           #intent:Landroid/content/Intent;
    .restart local v53       #intent:Landroid/content/Intent;
    goto/16 :goto_6

    .line 3857
    .end local v45           #fin:Ljava/io/FileInputStream;
    .end local v53           #intent:Landroid/content/Intent;
    .restart local v18       #columnId:I
    .restart local v19       #columnIdIndex:I
    .restart local v26       #cv:Landroid/content/ContentValues;
    .restart local v34       #downloadPath:Ljava/lang/String;
    .restart local v35       #dup_title:Ljava/lang/String;
    .restart local v41       #f:Ljava/io/File;
    .restart local v43       #filePath:Ljava/lang/String;
    .restart local v44       #filePathIndex:I
    .restart local v46       #fin:Ljava/io/FileInputStream;
    .restart local v54       #intent:Landroid/content/Intent;
    .restart local v76       #stampCursor:Landroid/database/Cursor;
    .restart local v86       #titleInddex:I
    .restart local v89       #uri:Landroid/net/Uri;
    :cond_31
    const-string v4, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3858
    const-string v4, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_c

    goto/16 :goto_11

    .line 4363
    .end local v18           #columnId:I
    .end local v19           #columnIdIndex:I
    .end local v26           #cv:Landroid/content/ContentValues;
    .end local v34           #downloadPath:Ljava/lang/String;
    .end local v35           #dup_title:Ljava/lang/String;
    .end local v41           #f:Ljava/io/File;
    .end local v43           #filePath:Ljava/lang/String;
    .end local v44           #filePathIndex:I
    .end local v76           #stampCursor:Landroid/database/Cursor;
    .end local v86           #titleInddex:I
    .end local v89           #uri:Landroid/net/Uri;
    :catchall_1
    move-exception v4

    move-object/from16 v45, v46

    .end local v46           #fin:Ljava/io/FileInputStream;
    .restart local v45       #fin:Ljava/io/FileInputStream;
    move-object/from16 v53, v54

    .end local v54           #intent:Landroid/content/Intent;
    .restart local v53       #intent:Landroid/content/Intent;
    goto/16 :goto_b

    .line 3888
    .end local v45           #fin:Ljava/io/FileInputStream;
    .restart local v9       #uri:Landroid/net/Uri;
    .restart local v46       #fin:Ljava/io/FileInputStream;
    :cond_32
    if-eqz v36, :cond_43

    if-eqz v66, :cond_43

    .line 3890
    :try_start_25
    const-string v4, "DrmStore"

    const-string v8, "Overwrite the file."

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3895
    invoke-static {v6, v9}, Landroid/provider/DrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v37

    .line 3896
    .local v37, duplicatePath:Ljava/lang/String;
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3897
    .local v17, checkFile:Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_33

    .line 3898
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 3903
    :cond_33
    invoke-static/range {v60 .. v60}, Landroid/provider/DrmStore;->NeedToEncrypt(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_34

    const/4 v4, 0x3

    move/from16 v0, v59

    if-ne v0, v4, :cond_38

    .line 3906
    :cond_34
    new-instance v77, Ljava/io/FileInputStream;

    move-object/from16 v0, v77

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3909
    .local v77, stream:Ljava/io/FileInputStream;
    new-instance v63, Ljava/io/FileOutputStream;

    move-object/from16 v0, v63

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 3910
    .local v63, os:Ljava/io/FileOutputStream;
    if-nez v63, :cond_37

    .line 3911
    invoke-virtual/range {v77 .. v77}, Ljava/io/FileInputStream;->close()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_3

    .line 4032
    .end local v63           #os:Ljava/io/FileOutputStream;
    .end local v77           #stream:Ljava/io/FileInputStream;
    :cond_35
    :goto_13
    :try_start_26
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_e

    move-object/from16 v45, v46

    .line 4043
    .end local v46           #fin:Ljava/io/FileInputStream;
    .restart local v45       #fin:Ljava/io/FileInputStream;
    :goto_14
    :try_start_27
    const-string v4, "audio"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 4044
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v60

    invoke-static {v0, v1, v2, v3, v9}, Landroid/provider/DrmStore;->parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/ContentValues;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_10

    .line 4364
    :cond_36
    :goto_15
    if-eqz v45, :cond_1

    .line 4365
    :try_start_28
    invoke-virtual/range {v45 .. v45}, Ljava/io/FileInputStream;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_d

    goto/16 :goto_0

    .line 4367
    :catch_d
    move-exception v38

    .line 4369
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3914
    .end local v38           #e:Ljava/lang/Exception;
    .end local v45           #fin:Ljava/io/FileInputStream;
    .restart local v46       #fin:Ljava/io/FileInputStream;
    .restart local v63       #os:Ljava/io/FileOutputStream;
    .restart local v77       #stream:Ljava/io/FileInputStream;
    :cond_37
    :try_start_29
    move-object/from16 v0, v77

    move-object/from16 v1, v63

    invoke-static {v0, v1}, Landroid/provider/DrmStore;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_2

    .line 3916
    :try_start_2a
    invoke-virtual/range {v77 .. v77}, Ljava/io/FileInputStream;->close()V

    .line 3917
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    goto :goto_13

    .line 3916
    :catchall_2
    move-exception v4

    invoke-virtual/range {v77 .. v77}, Ljava/io/FileInputStream;->close()V

    .line 3917
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    .line 3916
    throw v4

    .line 3920
    .end local v63           #os:Ljava/io/FileOutputStream;
    .end local v77           #stream:Ljava/io/FileInputStream;
    :cond_38
    const-string v4, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 3922
    const/4 v4, 0x2

    move/from16 v0, v59

    if-ne v0, v4, :cond_39

    .line 3932
    :cond_39
    const-string/jumbo v4, "ro.board.platform"

    const/4 v8, 0x0

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    .line 3935
    .local v67, platform:Ljava/lang/String;
    if-eqz v67, :cond_3a

    const-string v4, ""

    move-object/from16 v0, v67

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 3936
    :cond_3a
    const/16 v68, 0x0

    .line 3941
    .local v68, platformLowerCase:Ljava/lang/String;
    :goto_16
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x62

    if-eq v4, v8, :cond_3b

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x42

    if-eq v4, v8, :cond_3b

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x10

    if-eq v4, v8, :cond_3b

    if-eqz v68, :cond_41

    const-string v4, ""

    move-object/from16 v0, v68

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_41

    const-string/jumbo v4, "msm7k"

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3b

    const-string v4, "7x27"

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 3956
    :cond_3b
    const-string v4, "DrmStore"

    const-string v8, " @@@@@ save Duplicate File for MSM7K case."

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_3

    .line 3960
    :try_start_2b
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3962
    .local v23, createFile:Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_4

    move-result v4

    if-nez v4, :cond_3c

    .line 3964
    :try_start_2c
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->createNewFile()Z
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_18

    .line 3967
    const/16 v23, 0x0

    .line 3968
    :try_start_2d
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 3972
    :cond_3c
    :goto_17
    const/16 v70, 0x0

    .line 3973
    .local v70, repeat:I
    const/16 v78, 0x0

    .line 3974
    .local v78, success:Z
    const/16 v72, 0x0

    .line 3976
    .local v72, resultSaveFile:I
    :goto_18
    const/4 v4, 0x3

    move/from16 v0, v70

    if-ge v0, v4, :cond_40

    .line 3978
    if-ltz v70, :cond_3e

    .line 3979
    new-instance v81, Ljava/io/FileInputStream;

    move-object/from16 v0, v81

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3980
    .local v81, tempFin:Ljava/io/FileInputStream;
    new-instance v80, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v81 .. v81}, Ljava/io/FileInputStream;->available()I

    move-result v4

    move-object/from16 v0, v80

    move-object/from16 v1, v81

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v4, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 3983
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    move-object/from16 v0, p1

    move-object/from16 v1, v80

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/DrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_4

    move-result v72

    .line 3986
    :try_start_2e
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileInputStream;->close()V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_19

    .line 3995
    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v81           #tempFin:Ljava/io/FileInputStream;
    :goto_19
    const/4 v4, -0x1

    move/from16 v0, v72

    if-ne v0, v4, :cond_3f

    .line 3996
    add-int/lit8 v70, v70, 0x1

    goto :goto_18

    .line 3938
    .end local v23           #createFile:Ljava/io/File;
    .end local v68           #platformLowerCase:Ljava/lang/String;
    .end local v70           #repeat:I
    .end local v72           #resultSaveFile:I
    .end local v78           #success:Z
    :cond_3d
    :try_start_2f
    invoke-virtual/range {v67 .. v67}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_3

    move-result-object v68

    .restart local v68       #platformLowerCase:Ljava/lang/String;
    goto/16 :goto_16

    .line 3967
    .restart local v23       #createFile:Ljava/io/File;
    :catchall_3
    move-exception v4

    const/16 v23, 0x0

    .line 3968
    :try_start_30
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 3967
    throw v4
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_4

    .line 4007
    .end local v23           #createFile:Ljava/io/File;
    :catchall_4
    move-exception v4

    :try_start_31
    throw v4
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_3

    .line 3988
    .restart local v23       #createFile:Ljava/io/File;
    .restart local v70       #repeat:I
    .restart local v72       #resultSaveFile:I
    .restart local v78       #success:Z
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v81       #tempFin:Ljava/io/FileInputStream;
    :catchall_5
    move-exception v4

    :try_start_32
    throw v4

    .line 3992
    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v81           #tempFin:Ljava/io/FileInputStream;
    :cond_3e
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/DrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_4

    move-result v72

    goto :goto_19

    .line 3999
    :cond_3f
    const/16 v70, 0x3

    .line 4000
    const/16 v78, 0x1

    goto :goto_18

    .line 4004
    :cond_40
    if-nez v78, :cond_35

    .line 4005
    const/16 v53, 0x0

    goto/16 :goto_13

    .line 4011
    .end local v23           #createFile:Ljava/io/File;
    .end local v70           #repeat:I
    .end local v72           #resultSaveFile:I
    .end local v78           #success:Z
    :cond_41
    :try_start_33
    new-instance v63, Ljava/io/FileOutputStream;

    move-object/from16 v0, v63

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_3

    .line 4012
    .restart local v63       #os:Ljava/io/FileOutputStream;
    if-eqz v63, :cond_35

    .line 4018
    const/4 v4, -0x1

    :try_start_34
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v63

    invoke-static {v0, v1, v2}, Landroid/provider/DrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/io/FileOutputStream;)I
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_6

    move-result v8

    if-ne v4, v8, :cond_42

    .line 4020
    const/16 v53, 0x0

    .line 4024
    :cond_42
    :try_start_35
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_13

    :catchall_6
    move-exception v4

    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    throw v4

    .line 4033
    .end local v63           #os:Ljava/io/FileOutputStream;
    .end local v67           #platform:Ljava/lang/String;
    .end local v68           #platformLowerCase:Ljava/lang/String;
    :catch_e
    move-exception v38

    .line 4034
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    const-string v8, " @@@@@  ERROR: close file failed!!! (addDrmFileWithoutRights)"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4035
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4036
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_3

    .line 4038
    const/16 v45, 0x0

    .line 4039
    .end local v46           #fin:Ljava/io/FileInputStream;
    .restart local v45       #fin:Ljava/io/FileInputStream;
    :try_start_36
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_14

    .line 4352
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v9           #uri:Landroid/net/Uri;
    .end local v15           #c:Landroid/database/Cursor;
    .end local v17           #checkFile:Ljava/io/File;
    .end local v20           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v21           #contentOffset:I
    .end local v22           #contentUid:Ljava/lang/String;
    .end local v36           #duplicate:Z
    .end local v37           #duplicatePath:Ljava/lang/String;
    .end local v38           #e:Ljava/lang/Exception;
    .end local v59           #method:I
    .end local v60           #mimeType:Ljava/lang/String;
    .end local v66           #overwrite:Z
    .end local v87           #transferEncoding:I
    :catch_f
    move-exception v38

    goto/16 :goto_6

    .line 4046
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v9       #uri:Landroid/net/Uri;
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v17       #checkFile:Ljava/io/File;
    .restart local v20       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v21       #contentOffset:I
    .restart local v22       #contentUid:Ljava/lang/String;
    .restart local v36       #duplicate:Z
    .restart local v37       #duplicatePath:Ljava/lang/String;
    .restart local v59       #method:I
    .restart local v60       #mimeType:Ljava/lang/String;
    .restart local v66       #overwrite:Z
    .restart local v87       #transferEncoding:I
    :catch_10
    move-exception v38

    .line 4048
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File duplicate parse Media: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_f

    goto/16 :goto_15

    .line 4363
    .end local v6           #cr:Landroid/content/ContentResolver;
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v9           #uri:Landroid/net/Uri;
    .end local v15           #c:Landroid/database/Cursor;
    .end local v17           #checkFile:Ljava/io/File;
    .end local v20           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v21           #contentOffset:I
    .end local v22           #contentUid:Ljava/lang/String;
    .end local v36           #duplicate:Z
    .end local v37           #duplicatePath:Ljava/lang/String;
    .end local v38           #e:Ljava/lang/Exception;
    .end local v59           #method:I
    .end local v60           #mimeType:Ljava/lang/String;
    .end local v66           #overwrite:Z
    .end local v87           #transferEncoding:I
    :catchall_7
    move-exception v4

    goto/16 :goto_b

    .line 4054
    .end local v45           #fin:Ljava/io/FileInputStream;
    .restart local v6       #cr:Landroid/content/ContentResolver;
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v9       #uri:Landroid/net/Uri;
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v20       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v21       #contentOffset:I
    .restart local v22       #contentUid:Ljava/lang/String;
    .restart local v36       #duplicate:Z
    .restart local v46       #fin:Ljava/io/FileInputStream;
    .restart local v59       #method:I
    .restart local v60       #mimeType:Ljava/lang/String;
    .restart local v66       #overwrite:Z
    .restart local v87       #transferEncoding:I
    :cond_43
    :try_start_37
    const-string v4, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Prepare to install: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_3

    move-object/from16 v54, v53

    .line 4060
    .end local v53           #intent:Landroid/content/Intent;
    .restart local v54       #intent:Landroid/content/Intent;
    :goto_1a
    :try_start_38
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 4062
    .restart local v26       #cv:Landroid/content/ContentValues;
    const-string v4, "_size"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4064
    const-string/jumbo v4, "title"

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4066
    const-string/jumbo v4, "mime_type"

    move-object/from16 v0, v26

    move-object/from16 v1, v60

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4067
    const-string/jumbo v4, "message_type"

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4068
    const-string v4, "delivery_type"

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4069
    const-string v4, "content_offset"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4070
    const-string v4, "content_url"

    move-object/from16 v0, v26

    move-object/from16 v1, p4

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4073
    sget-object v9, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    .end local v9           #uri:Landroid/net/Uri;
    sget-object v10, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "_id"

    move-object v8, v6

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v76

    .line 4074
    .restart local v76       #stampCursor:Landroid/database/Cursor;
    if-eqz v76, :cond_45

    .line 4075
    invoke-interface/range {v76 .. v76}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 4081
    const-string/jumbo v4, "time_differential"

    move-object/from16 v0, v76

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 4082
    .restart local v31       #differentialColumnId:I
    move-object/from16 v0, v76

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 4083
    .restart local v29       #differential:J
    const-string/jumbo v4, "timezone_stamp"

    move-object/from16 v0, v76

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v84

    .line 4084
    .restart local v84       #timeZoneColumnIndex:I
    move-object/from16 v0, v76

    move/from16 v1, v84

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v82

    .line 4085
    .restart local v82       #timeZone:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 4086
    .restart local v24       #currentClock:J
    const-string v4, "date_added"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4090
    .end local v24           #currentClock:J
    .end local v29           #differential:J
    .end local v31           #differentialColumnId:I
    .end local v82           #timeZone:J
    .end local v84           #timeZoneColumnIndex:I
    :goto_1b
    invoke-interface/range {v76 .. v76}, Landroid/database/Cursor;->close()V

    .line 4096
    :goto_1c
    const-string v4, "Destination"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4099
    move-object/from16 v0, v26

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 4100
    .restart local v9       #uri:Landroid/net/Uri;
    if-nez v9, :cond_46

    .line 4102
    const-string v4, "DrmStore"

    const-string v8, "Insert to DRM db failed."

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4104
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_c

    .line 4105
    const/16 v53, 0x0

    .line 4364
    if-eqz v46, :cond_1

    .line 4365
    :try_start_39
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_11

    goto/16 :goto_0

    .line 4367
    :catch_11
    move-exception v38

    .line 4369
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 4088
    .end local v9           #uri:Landroid/net/Uri;
    .end local v38           #e:Ljava/lang/Exception;
    :cond_44
    :try_start_3a
    const-string v4, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1b

    .line 4092
    :cond_45
    const-string v4, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1c

    .line 4107
    .restart local v9       #uri:Landroid/net/Uri;
    :cond_46
    const/4 v14, 0x0

    .line 4111
    .local v14, boundary_length:I
    invoke-static/range {v60 .. v60}, Landroid/provider/DrmStore;->NeedToEncrypt(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_47

    const/4 v4, 0x3

    move/from16 v0, v59

    if-ne v0, v4, :cond_49

    .line 4113
    :cond_47
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/drm/mobile1/DrmRawContent;->getContentId(Landroid/drm/mobile1/DrmRights;)Ljava/lang/String;

    move-result-object v22

    .line 4114
    new-instance v77, Ljava/io/FileInputStream;

    move-object/from16 v0, v77

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4117
    .restart local v77       #stream:Ljava/io/FileInputStream;
    new-instance v63, Ljava/io/FileOutputStream;

    invoke-static {v6, v9}, Landroid/provider/DrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v63

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_c

    .line 4118
    .restart local v63       #os:Ljava/io/FileOutputStream;
    if-eqz v63, :cond_48

    .line 4120
    :try_start_3b
    move-object/from16 v0, v77

    move-object/from16 v1, v63

    invoke-static {v0, v1}, Landroid/provider/DrmStore;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_8

    .line 4122
    :try_start_3c
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_c

    .line 4291
    .end local v63           #os:Ljava/io/FileOutputStream;
    .end local v77           #stream:Ljava/io/FileInputStream;
    :cond_48
    :goto_1d
    const/4 v4, -0x1

    if-ne v14, v4, :cond_57

    .line 4292
    const/16 v53, 0x0

    .line 4364
    if-eqz v46, :cond_1

    .line 4365
    :try_start_3d
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_12

    goto/16 :goto_0

    .line 4367
    :catch_12
    move-exception v38

    .line 4369
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 4122
    .end local v38           #e:Ljava/lang/Exception;
    .restart local v63       #os:Ljava/io/FileOutputStream;
    .restart local v77       #stream:Ljava/io/FileInputStream;
    :catchall_8
    move-exception v4

    :try_start_3e
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    throw v4

    .line 4125
    .end local v63           #os:Ljava/io/FileOutputStream;
    .end local v77           #stream:Ljava/io/FileInputStream;
    :cond_49
    const/4 v4, 0x1

    move/from16 v0, v59

    if-ne v0, v4, :cond_4f

    .line 4135
    sget-boolean v4, Landroid/provider/DrmStore;->REBUILD_DATABASE:Z

    const/4 v8, 0x1

    if-ne v4, v8, :cond_4e

    .line 4137
    new-instance v75, Ljava/io/FileInputStream;

    move-object/from16 v0, v75

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4139
    .local v75, sourceFileInputStream:Ljava/io/FileInputStream;
    new-instance v28, Ljava/io/FileOutputStream;

    invoke-static {v6, v9}, Landroid/provider/DrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_c

    .line 4142
    .local v28, destinationFileOutputStream:Ljava/io/FileOutputStream;
    if-eqz v28, :cond_48

    .line 4146
    :try_start_3f
    move-object/from16 v0, v75

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/provider/DrmStore;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_9
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_14

    .line 4156
    if-eqz v75, :cond_4a

    .line 4158
    :try_start_40
    invoke-virtual/range {v75 .. v75}, Ljava/io/FileInputStream;->close()V

    .line 4161
    :cond_4a
    if-eqz v28, :cond_48

    .line 4163
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileOutputStream;->close()V
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_13

    goto :goto_1d

    .line 4166
    :catch_13
    move-exception v38

    .line 4168
    .restart local v38       #e:Ljava/lang/Exception;
    :try_start_41
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_c

    goto :goto_1d

    .line 4148
    .end local v38           #e:Ljava/lang/Exception;
    :catch_14
    move-exception v38

    .line 4150
    .restart local v38       #e:Ljava/lang/Exception;
    :try_start_42
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_9

    .line 4156
    if-eqz v75, :cond_4b

    .line 4158
    :try_start_43
    invoke-virtual/range {v75 .. v75}, Ljava/io/FileInputStream;->close()V

    .line 4161
    :cond_4b
    if-eqz v28, :cond_48

    .line 4163
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileOutputStream;->close()V
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_15

    goto :goto_1d

    .line 4166
    :catch_15
    move-exception v38

    .line 4168
    :try_start_44
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_c

    goto :goto_1d

    .line 4154
    .end local v38           #e:Ljava/lang/Exception;
    :catchall_9
    move-exception v4

    .line 4156
    if-eqz v75, :cond_4c

    .line 4158
    :try_start_45
    invoke-virtual/range {v75 .. v75}, Ljava/io/FileInputStream;->close()V

    .line 4161
    :cond_4c
    if-eqz v28, :cond_4d

    .line 4163
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileOutputStream;->close()V
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_1e

    .line 4154
    :cond_4d
    :goto_1e
    :try_start_46
    throw v4

    .line 4177
    .end local v28           #destinationFileOutputStream:Ljava/io/FileOutputStream;
    .end local v75           #sourceFileInputStream:Ljava/io/FileInputStream;
    :cond_4e
    new-instance v63, Ljava/io/FileOutputStream;

    invoke-static {v6, v9}, Landroid/provider/DrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v63

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_c

    .line 4178
    .restart local v63       #os:Ljava/io/FileOutputStream;
    if-eqz v63, :cond_48

    .line 4180
    :try_start_47
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v63

    invoke-static {v0, v1, v2}, Landroid/provider/DrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/io/FileOutputStream;)I
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_a

    move-result v14

    .line 4182
    :try_start_48
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_1d

    :catchall_a
    move-exception v4

    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    throw v4

    .line 4188
    .end local v63           #os:Ljava/io/FileOutputStream;
    :cond_4f
    const/4 v4, 0x2

    move/from16 v0, v59

    if-ne v0, v4, :cond_56

    .line 4203
    const-string/jumbo v4, "ro.board.platform"

    const/4 v8, 0x0

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    .line 4206
    .restart local v67       #platform:Ljava/lang/String;
    if-eqz v67, :cond_50

    const-string v4, ""

    move-object/from16 v0, v67

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 4207
    :cond_50
    const/16 v68, 0x0

    .line 4212
    .restart local v68       #platformLowerCase:Ljava/lang/String;
    :goto_1f
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x62

    if-eq v4, v8, :cond_51

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x42

    if-eq v4, v8, :cond_51

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x10

    if-eq v4, v8, :cond_51

    if-eqz v68, :cond_55

    const-string v4, ""

    move-object/from16 v0, v68

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_55

    const-string/jumbo v4, "msm7k"

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_51

    const-string v4, "7x27"

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 4227
    :cond_51
    const-string v4, "DrmStore"

    const-string v8, " @@@@@ saveFile for MSM7K case."

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4230
    const/16 v70, 0x0

    .line 4232
    .restart local v70       #repeat:I
    :goto_20
    const/4 v4, 0x3

    move/from16 v0, v70

    if-ge v0, v4, :cond_48

    .line 4234
    if-ltz v70, :cond_53

    .line 4235
    new-instance v81, Ljava/io/FileInputStream;

    move-object/from16 v0, v81

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4236
    .restart local v81       #tempFin:Ljava/io/FileInputStream;
    new-instance v80, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v81 .. v81}, Ljava/io/FileInputStream;->available()I

    move-result v4

    move-object/from16 v0, v80

    move-object/from16 v1, v81

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v4, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 4239
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {v6, v9}, Landroid/provider/DrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, v80

    invoke-static {v0, v1, v4}, Landroid/provider/DrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_c

    move-result v14

    .line 4242
    :try_start_49
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileInputStream;->close()V
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_b
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_49} :catch_1a

    .line 4251
    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v81           #tempFin:Ljava/io/FileInputStream;
    :goto_21
    const/4 v4, -0x1

    if-ne v14, v4, :cond_54

    .line 4252
    add-int/lit8 v70, v70, 0x1

    goto :goto_20

    .line 4209
    .end local v68           #platformLowerCase:Ljava/lang/String;
    .end local v70           #repeat:I
    :cond_52
    :try_start_4a
    invoke-virtual/range {v67 .. v67}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v68

    .restart local v68       #platformLowerCase:Ljava/lang/String;
    goto :goto_1f

    .line 4244
    .restart local v70       #repeat:I
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v81       #tempFin:Ljava/io/FileInputStream;
    :catchall_b
    move-exception v4

    throw v4

    .line 4248
    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v81           #tempFin:Ljava/io/FileInputStream;
    :cond_53
    invoke-static {v6, v9}, Landroid/provider/DrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4}, Landroid/provider/DrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I

    move-result v14

    goto :goto_21

    .line 4255
    :cond_54
    const/16 v70, 0x3

    goto :goto_20

    .line 4264
    .end local v70           #repeat:I
    :cond_55
    const-string v4, "DrmStore"

    const-string v8, " @@@@@ saveFile for NORMAL case."

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4267
    new-instance v63, Ljava/io/FileOutputStream;

    invoke-static {v6, v9}, Landroid/provider/DrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v63

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_c

    .line 4269
    .restart local v63       #os:Ljava/io/FileOutputStream;
    if-eqz v63, :cond_48

    .line 4271
    :try_start_4b
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v63

    invoke-static {v0, v1, v2}, Landroid/provider/DrmStore;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/io/FileOutputStream;)I
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_c

    move-result v14

    .line 4274
    :try_start_4c
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_1d

    :catchall_c
    move-exception v4

    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    throw v4

    .line 4281
    .end local v63           #os:Ljava/io/FileOutputStream;
    .end local v67           #platform:Ljava/lang/String;
    .end local v68           #platformLowerCase:Ljava/lang/String;
    :cond_56
    const-string v4, "DrmStore"

    const-string v8, "Unknown method."

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4283
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_c

    .line 4284
    const/16 v53, 0x0

    .line 4364
    if-eqz v46, :cond_1

    .line 4365
    :try_start_4d
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4d} :catch_16

    goto/16 :goto_0

    .line 4367
    :catch_16
    move-exception v38

    .line 4369
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 4296
    .end local v38           #e:Ljava/lang/Exception;
    :cond_57
    :try_start_4e
    new-instance v53, Landroid/content/Intent;

    invoke-direct/range {v53 .. v53}, Landroid/content/Intent;-><init>()V
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_c

    .line 4297
    .end local v54           #intent:Landroid/content/Intent;
    .restart local v53       #intent:Landroid/content/Intent;
    :try_start_4f
    move-object/from16 v0, v53

    move-object/from16 v1, v60

    invoke-virtual {v0, v9, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 4299
    sget-object v10, Landroid/provider/DrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "_id"

    move-object v8, v6

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 4300
    .local v16, c_title:Landroid/database/Cursor;
    if-eqz v16, :cond_59

    .line 4301
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_58

    .line 4302
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4303
    const-string/jumbo v4, "title"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v85

    .line 4304
    .local v85, titleIdIndex:I
    move-object/from16 v0, v16

    move/from16 v1, v85

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v62

    .line 4306
    .local v62, newTitle:Ljava/lang/String;
    const-string v4, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "newTitle:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v62

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4308
    if-eqz v62, :cond_58

    .line 4309
    const-string/jumbo v4, "title"

    move-object/from16 v0, v53

    move-object/from16 v1, v62

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4310
    const-string/jumbo v4, "title"

    move-object/from16 v0, v26

    move-object/from16 v1, v62

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4313
    .end local v62           #newTitle:Ljava/lang/String;
    .end local v85           #titleIdIndex:I
    :cond_58
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 4317
    :cond_59
    const-string v4, "audio"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 4318
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v60

    invoke-static {v0, v1, v2, v3, v9}, Landroid/provider/DrmStore;->parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/ContentValues;

    move-result-object v90

    .line 4319
    .local v90, values:Landroid/content/ContentValues;
    if-eqz v90, :cond_5a

    .line 4320
    const-string v4, "album_id"

    const-string v8, "album_id"

    move-object/from16 v0, v90

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4321
    const-string v4, "artist_id"

    const-string v8, "artist_id"

    move-object/from16 v0, v90

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4323
    const-string/jumbo v4, "title"

    move-object/from16 v0, v90

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5a

    const-string/jumbo v4, "title"

    move-object/from16 v0, v90

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5a

    .line 4324
    const-string/jumbo v4, "title"

    const-string/jumbo v8, "title"

    move-object/from16 v0, v90

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4328
    :cond_5a
    invoke-static {}, Landroid/provider/DrmStore;->SupportForwardLockOnly()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 4329
    const/4 v4, 0x1

    move/from16 v0, v59

    if-ne v0, v4, :cond_5b

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/32 v12, 0x4b000

    cmp-long v4, v10, v12

    if-gez v4, :cond_5b

    .line 4330
    const-string/jumbo v4, "is_ringtone"

    const-string v8, "1"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4335
    .end local v90           #values:Landroid/content/ContentValues;
    :cond_5b
    const-string v4, "content_id"

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4336
    const-string v4, "content_boundary_offset"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4344
    sget-boolean v4, Landroid/provider/DrmStore;->REBUILD_DATABASE:Z

    const/4 v8, 0x1

    if-ne v4, v8, :cond_5c

    .line 4346
    const-string v4, "content_url"

    invoke-static {v6, v9}, Landroid/provider/DrmStore;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4347
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 4351
    :cond_5c
    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v6, v9, v0, v4, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_3

    .line 4364
    if-eqz v46, :cond_1

    .line 4365
    :try_start_50
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_17

    goto/16 :goto_0

    .line 4367
    :catch_17
    move-exception v38

    .line 4369
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3965
    .end local v14           #boundary_length:I
    .end local v16           #c_title:Landroid/database/Cursor;
    .end local v26           #cv:Landroid/content/ContentValues;
    .end local v38           #e:Ljava/lang/Exception;
    .end local v76           #stampCursor:Landroid/database/Cursor;
    .restart local v17       #checkFile:Ljava/io/File;
    .restart local v23       #createFile:Ljava/io/File;
    .restart local v37       #duplicatePath:Ljava/lang/String;
    .restart local v67       #platform:Ljava/lang/String;
    .restart local v68       #platformLowerCase:Ljava/lang/String;
    :catch_18
    move-exception v4

    .line 3967
    const/16 v23, 0x0

    .line 3968
    :try_start_51
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_4

    goto/16 :goto_17

    .line 3987
    .restart local v70       #repeat:I
    .restart local v72       #resultSaveFile:I
    .restart local v78       #success:Z
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v81       #tempFin:Ljava/io/FileInputStream;
    :catch_19
    move-exception v4

    goto/16 :goto_19

    .line 4243
    .end local v17           #checkFile:Ljava/io/File;
    .end local v23           #createFile:Ljava/io/File;
    .end local v37           #duplicatePath:Ljava/lang/String;
    .end local v53           #intent:Landroid/content/Intent;
    .end local v72           #resultSaveFile:I
    .end local v78           #success:Z
    .restart local v14       #boundary_length:I
    .restart local v26       #cv:Landroid/content/ContentValues;
    .restart local v54       #intent:Landroid/content/Intent;
    .restart local v76       #stampCursor:Landroid/database/Cursor;
    :catch_1a
    move-exception v4

    goto/16 :goto_21

    .line 4367
    .end local v6           #cr:Landroid/content/ContentResolver;
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v9           #uri:Landroid/net/Uri;
    .end local v14           #boundary_length:I
    .end local v15           #c:Landroid/database/Cursor;
    .end local v20           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v21           #contentOffset:I
    .end local v22           #contentUid:Ljava/lang/String;
    .end local v26           #cv:Landroid/content/ContentValues;
    .end local v36           #duplicate:Z
    .end local v46           #fin:Ljava/io/FileInputStream;
    .end local v54           #intent:Landroid/content/Intent;
    .end local v59           #method:I
    .end local v60           #mimeType:Ljava/lang/String;
    .end local v66           #overwrite:Z
    .end local v67           #platform:Ljava/lang/String;
    .end local v68           #platformLowerCase:Ljava/lang/String;
    .end local v70           #repeat:I
    .end local v76           #stampCursor:Landroid/database/Cursor;
    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v81           #tempFin:Ljava/io/FileInputStream;
    .end local v87           #transferEncoding:I
    .restart local v45       #fin:Ljava/io/FileInputStream;
    .restart local v53       #intent:Landroid/content/Intent;
    :catch_1b
    move-exception v38

    .line 4369
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v8, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 4367
    .end local v38           #e:Ljava/lang/Exception;
    .end local v45           #fin:Ljava/io/FileInputStream;
    .restart local v5       #binaryFile:Ljava/io/File;
    .restart local v20       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v46       #fin:Ljava/io/FileInputStream;
    .restart local v65       #outputBinaryFilePath:Ljava/lang/String;
    .restart local v71       #resultIntent:Landroid/content/Intent;
    .restart local v87       #transferEncoding:I
    :catch_1c
    move-exception v38

    .line 4369
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 3649
    .end local v5           #binaryFile:Ljava/io/File;
    .end local v38           #e:Ljava/lang/Exception;
    .end local v65           #outputBinaryFilePath:Ljava/lang/String;
    .end local v71           #resultIntent:Landroid/content/Intent;
    .restart local v6       #cr:Landroid/content/ContentResolver;
    .restart local v21       #contentOffset:I
    .restart local v40       #extention:Ljava/lang/String;
    .restart local v47       #fis:Ljava/io/FileInputStream;
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    .restart local v51       #fos:Ljava/io/FileOutputStream;
    .restart local v55       #is:Ljava/io/InputStream;
    .restart local v56       #isTerminated:Z
    .restart local v59       #method:I
    .restart local v60       #mimeType:Ljava/lang/String;
    .restart local v64       #outFile:Ljava/io/File;
    :catchall_d
    move-exception v4

    :goto_22
    if-eqz v51, :cond_5d

    .line 3650
    :try_start_52
    invoke-virtual/range {v51 .. v51}, Ljava/io/FileOutputStream;->close()V

    .line 3651
    const/16 v51, 0x0

    .line 3653
    :cond_5d
    if-eqz v55, :cond_5e

    .line 3654
    invoke-virtual/range {v55 .. v55}, Ljava/io/InputStream;->close()V

    .line 3655
    const/16 v55, 0x0

    .line 3664
    :cond_5e
    if-eqz v47, :cond_5f

    .line 3665
    invoke-virtual/range {v47 .. v47}, Ljava/io/FileInputStream;->close()V

    .line 3666
    const/16 v47, 0x0

    .line 3668
    :cond_5f
    if-eqz v49, :cond_60

    .line 3669
    invoke-virtual/range {v49 .. v49}, Ljava/io/FileInputStream;->close()V

    .line 3670
    const/16 v49, 0x0

    .line 3673
    :cond_60
    invoke-virtual/range {v64 .. v64}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_61

    .line 3674
    invoke-virtual/range {v64 .. v64}, Ljava/io/File;->delete()Z
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_3

    .line 3676
    :cond_61
    if-eqz v56, :cond_21

    .line 3677
    const/16 v53, 0x0

    .line 4364
    .end local v53           #intent:Landroid/content/Intent;
    if-eqz v46, :cond_1

    .line 4365
    :try_start_53
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_1d

    goto/16 :goto_0

    .line 4367
    :catch_1d
    move-exception v38

    .line 4369
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 4166
    .end local v38           #e:Ljava/lang/Exception;
    .end local v40           #extention:Ljava/lang/String;
    .end local v47           #fis:Ljava/io/FileInputStream;
    .end local v49           #fis2:Ljava/io/FileInputStream;
    .end local v51           #fos:Ljava/io/FileOutputStream;
    .end local v55           #is:Ljava/io/InputStream;
    .end local v56           #isTerminated:Z
    .end local v64           #outFile:Ljava/io/File;
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v9       #uri:Landroid/net/Uri;
    .restart local v14       #boundary_length:I
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v22       #contentUid:Ljava/lang/String;
    .restart local v26       #cv:Landroid/content/ContentValues;
    .restart local v28       #destinationFileOutputStream:Ljava/io/FileOutputStream;
    .restart local v36       #duplicate:Z
    .restart local v54       #intent:Landroid/content/Intent;
    .restart local v66       #overwrite:Z
    .restart local v75       #sourceFileInputStream:Ljava/io/FileInputStream;
    .restart local v76       #stampCursor:Landroid/database/Cursor;
    :catch_1e
    move-exception v38

    .line 4168
    .restart local v38       #e:Ljava/lang/Exception;
    :try_start_54
    const-string v8, "DrmStore"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_54} :catch_c

    goto/16 :goto_1e

    .line 3649
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v9           #uri:Landroid/net/Uri;
    .end local v14           #boundary_length:I
    .end local v15           #c:Landroid/database/Cursor;
    .end local v22           #contentUid:Ljava/lang/String;
    .end local v26           #cv:Landroid/content/ContentValues;
    .end local v28           #destinationFileOutputStream:Ljava/io/FileOutputStream;
    .end local v36           #duplicate:Z
    .end local v38           #e:Ljava/lang/Exception;
    .end local v54           #intent:Landroid/content/Intent;
    .end local v66           #overwrite:Z
    .end local v75           #sourceFileInputStream:Ljava/io/FileInputStream;
    .end local v76           #stampCursor:Landroid/database/Cursor;
    .restart local v40       #extention:Ljava/lang/String;
    .restart local v48       #fis:Ljava/io/FileInputStream;
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    .restart local v51       #fos:Ljava/io/FileOutputStream;
    .restart local v53       #intent:Landroid/content/Intent;
    .restart local v55       #is:Ljava/io/InputStream;
    .restart local v56       #isTerminated:Z
    .restart local v64       #outFile:Ljava/io/File;
    :catchall_e
    move-exception v4

    move-object/from16 v47, v48

    .end local v48           #fis:Ljava/io/FileInputStream;
    .restart local v47       #fis:Ljava/io/FileInputStream;
    goto :goto_22

    .end local v49           #fis2:Ljava/io/FileInputStream;
    .restart local v27       #deleteRights:Z
    .restart local v50       #fis2:Ljava/io/FileInputStream;
    .restart local v57       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v73       #rights:Landroid/drm/mobile1/DrmRights;
    :catchall_f
    move-exception v4

    move-object/from16 v49, v50

    .end local v50           #fis2:Ljava/io/FileInputStream;
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    goto :goto_22

    .end local v49           #fis2:Ljava/io/FileInputStream;
    .end local v51           #fos:Ljava/io/FileOutputStream;
    .restart local v50       #fis2:Ljava/io/FileInputStream;
    .restart local v52       #fos:Ljava/io/FileOutputStream;
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    :catchall_10
    move-exception v4

    move-object/from16 v51, v52

    .end local v52           #fos:Ljava/io/FileOutputStream;
    .restart local v51       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v49, v50

    .end local v50           #fis2:Ljava/io/FileInputStream;
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    goto :goto_22

    .line 3645
    .end local v27           #deleteRights:Z
    .end local v47           #fis:Ljava/io/FileInputStream;
    .end local v57           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v73           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v48       #fis:Ljava/io/FileInputStream;
    :catch_1f
    move-exception v38

    move-object/from16 v47, v48

    .end local v48           #fis:Ljava/io/FileInputStream;
    .restart local v47       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_a

    .end local v49           #fis2:Ljava/io/FileInputStream;
    .restart local v27       #deleteRights:Z
    .restart local v50       #fis2:Ljava/io/FileInputStream;
    .restart local v57       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v73       #rights:Landroid/drm/mobile1/DrmRights;
    :catch_20
    move-exception v38

    move-object/from16 v49, v50

    .end local v50           #fis2:Ljava/io/FileInputStream;
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    goto/16 :goto_a

    .end local v49           #fis2:Ljava/io/FileInputStream;
    .end local v51           #fos:Ljava/io/FileOutputStream;
    .restart local v50       #fis2:Ljava/io/FileInputStream;
    .restart local v52       #fos:Ljava/io/FileOutputStream;
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    :catch_21
    move-exception v38

    move-object/from16 v51, v52

    .end local v52           #fos:Ljava/io/FileOutputStream;
    .restart local v51       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v49, v50

    .end local v50           #fis2:Ljava/io/FileInputStream;
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    goto/16 :goto_a

    .end local v27           #deleteRights:Z
    .end local v40           #extention:Ljava/lang/String;
    .end local v47           #fis:Ljava/io/FileInputStream;
    .end local v49           #fis2:Ljava/io/FileInputStream;
    .end local v51           #fos:Ljava/io/FileOutputStream;
    .end local v55           #is:Ljava/io/InputStream;
    .end local v56           #isTerminated:Z
    .end local v57           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v64           #outFile:Ljava/io/File;
    .end local v73           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v22       #contentUid:Ljava/lang/String;
    .restart local v36       #duplicate:Z
    .restart local v66       #overwrite:Z
    .restart local v89       #uri:Landroid/net/Uri;
    :cond_62
    move-object/from16 v9, v89

    .end local v89           #uri:Landroid/net/Uri;
    .restart local v9       #uri:Landroid/net/Uri;
    goto/16 :goto_12

    .end local v9           #uri:Landroid/net/Uri;
    .restart local v89       #uri:Landroid/net/Uri;
    :cond_63
    move-object/from16 v9, v89

    .end local v89           #uri:Landroid/net/Uri;
    .restart local v9       #uri:Landroid/net/Uri;
    move-object/from16 v54, v53

    .end local v53           #intent:Landroid/content/Intent;
    .restart local v54       #intent:Landroid/content/Intent;
    goto/16 :goto_1a

    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v9           #uri:Landroid/net/Uri;
    .end local v15           #c:Landroid/database/Cursor;
    .end local v22           #contentUid:Ljava/lang/String;
    .end local v36           #duplicate:Z
    .end local v54           #intent:Landroid/content/Intent;
    .end local v66           #overwrite:Z
    .restart local v27       #deleteRights:Z
    .restart local v40       #extention:Ljava/lang/String;
    .restart local v48       #fis:Ljava/io/FileInputStream;
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    .restart local v51       #fos:Ljava/io/FileOutputStream;
    .restart local v53       #intent:Landroid/content/Intent;
    .restart local v55       #is:Ljava/io/InputStream;
    .restart local v56       #isTerminated:Z
    .restart local v57       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v64       #outFile:Ljava/io/File;
    .restart local v73       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    :cond_64
    move-object/from16 v47, v48

    .end local v48           #fis:Ljava/io/FileInputStream;
    .restart local v47       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_7
.end method

.method public static final addDrmFileWithoutRightsAndRebuild(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 3
    .parameter "cx"
    .parameter "file"
    .parameter "title"
    .parameter "mediaType"
    .parameter "url"
    .parameter "destination"

    .prologue
    .line 3306
    const-string v1, "DrmStore"

    const-string v2, " @@@@@     addDrmFileWithoutRightsAndRebuild() - BEGIN. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3309
    const/4 v0, 0x0

    .line 3313
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    sput-boolean v1, Landroid/provider/DrmStore;->REBUILD_DATABASE:Z

    .line 3314
    invoke-static/range {p0 .. p5}, Landroid/provider/DrmStore;->addDrmFileWithoutRights(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 3315
    const/4 v1, 0x0

    sput-boolean v1, Landroid/provider/DrmStore;->REBUILD_DATABASE:Z

    .line 3320
    const-string v1, "DrmStore"

    const-string v2, " @@@@@     addDrmFileWithoutRightsAndRebuild() - END. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3323
    return-object v0
.end method

.method private static checkAndCreateFolder(Ljava/lang/String;Z)Z
    .locals 6
    .parameter "checkFolderPath"
    .parameter "setPermission"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 8147
    if-eqz p0, :cond_0

    const-string v4, ""

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    .line 8169
    :cond_1
    :goto_0
    return v2

    .line 8151
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8154
    .local v0, checkF:Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 8155
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 8158
    :cond_3
    if-eqz p1, :cond_1

    .line 8159
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/io/File;->setWritable(ZZ)Z

    .line 8160
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 8161
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/io/File;->setExecutable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8165
    :catch_0
    move-exception v1

    .line 8166
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "DrmStore"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8167
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 8169
    goto :goto_0
.end method

.method public static checkBeforeDownload(Landroid/content/Context;[BLjava/lang/String;)I
    .locals 26
    .parameter "context"
    .parameter "buffer"
    .parameter "mediaType"

    .prologue
    .line 428
    const-string v23, "DrmStore"

    const-string v24, "********checkBeforeDownload"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 433
    :cond_0
    const-string v23, "DrmStore"

    const-string v24, "checkBeforeDownload :-2"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/16 v23, -0x2

    .line 609
    :goto_0
    return v23

    .line 441
    :cond_1
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x800

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_3

    const/16 v5, 0x800

    .line 443
    .local v5, dataSize:I
    :goto_1
    new-array v4, v5, [B

    .line 445
    .local v4, data:[B
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v5, :cond_5

    .line 448
    const-string v23, "application/vnd.oma.drm.message"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_4

    aget-byte v23, p1, v7

    const/16 v24, 0xa

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    aget-byte v23, p1, v7

    const/16 v24, 0xd

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    aget-byte v23, p1, v7

    const/16 v24, 0x3b

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    .line 449
    :cond_2
    const/16 v23, 0x20

    aput-byte v23, v4, v7

    .line 445
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 441
    .end local v4           #data:[B
    .end local v5           #dataSize:I
    .end local v7           #i:I
    :cond_3
    move-object/from16 v0, p1

    array-length v5, v0

    goto :goto_1

    .line 451
    .restart local v4       #data:[B
    .restart local v5       #dataSize:I
    .restart local v7       #i:I
    :cond_4
    aget-byte v23, p1, v7

    aput-byte v23, v4, v7

    goto :goto_3

    .line 455
    :cond_5
    new-instance v23, Ljava/lang/String;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v0, v4, v1, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    .line 456
    .local v21, segment:Ljava/lang/String;
    const-string v18, "content-type: "

    .line 457
    .local v18, pattern:Ljava/lang/String;
    const/4 v2, 0x0

    .line 459
    .local v2, MIMEType:Ljava/lang/String;
    const-string v23, "application/vnd.oma.drm.message"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 460
    const-string v23, "content-type: "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 461
    .local v12, indexOfPattern:I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v12, v0, :cond_6

    .line 463
    const-string v23, "DrmStore"

    const-string v24, "checkBeforeDownload :-7"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/16 v23, -0x7

    goto/16 :goto_0

    .line 467
    :cond_6
    const-string v23, "content-type: "

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    add-int v8, v12, v23

    .line 468
    .local v8, indexOfContentType:I
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    .line 469
    .local v22, subString:Ljava/lang/String;
    const/16 v23, 0x20

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 470
    .local v13, indexOfReturn:I
    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 471
    const-string v23, "application/vnd.oma.drm.rights+xml"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 477
    invoke-static {}, Landroid/provider/DrmStore;->fnIsDisableCombinedDeliveryAndSeparateDelivery()Z

    move-result v23

    if-nez v23, :cond_7

    invoke-static {}, Landroid/provider/DrmStore;->fnIsDisableCombinedDeliveryOnly()Z

    move-result v23

    if-eqz v23, :cond_8

    .line 482
    :cond_7
    const-string v23, "DrmStore"

    const-string v24, "checkBeforeDownload :-8 for FIESTA_ATT"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const/16 v23, -0x8

    goto/16 :goto_0

    .line 504
    :cond_8
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 505
    .local v16, nextSegment:Ljava/lang/String;
    const-string v23, "content-type: "

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 506
    .local v10, indexOfNextPattern:I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v10, v0, :cond_9

    .line 508
    const-string v23, "DrmStore"

    const-string v24, "checkBeforeDownload :-7"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/16 v23, -0x7

    goto/16 :goto_0

    .line 512
    :cond_9
    const-string v23, "content-type: "

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    add-int v9, v10, v23

    .line 513
    .local v9, indexOfNextContentType:I
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 514
    .local v17, nextSubString:Ljava/lang/String;
    const/16 v23, 0x20

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 515
    .local v11, indexOfNextReturn:I
    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 568
    .end local v8           #indexOfContentType:I
    .end local v9           #indexOfNextContentType:I
    .end local v10           #indexOfNextPattern:I
    .end local v11           #indexOfNextReturn:I
    .end local v12           #indexOfPattern:I
    .end local v13           #indexOfReturn:I
    .end local v16           #nextSegment:Ljava/lang/String;
    .end local v17           #nextSubString:Ljava/lang/String;
    .end local v22           #subString:Ljava/lang/String;
    :cond_a
    :goto_4
    if-nez v2, :cond_10

    .line 570
    const-string v23, "DrmStore"

    const-string v24, "checkBeforeDownload :-7"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const/16 v23, -0x7

    goto/16 :goto_0

    .line 519
    :cond_b
    const-string v23, "application/vnd.oma.drm.content"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 525
    invoke-static {}, Landroid/provider/DrmStore;->fnIsDisableCombinedDeliveryAndSeparateDelivery()Z

    move-result v23

    if-nez v23, :cond_c

    invoke-static {}, Landroid/provider/DrmStore;->fnIsDisableSeparateDeliveryOnly()Z

    move-result v23

    if-eqz v23, :cond_d

    .line 530
    :cond_c
    const-string v23, "DrmStore"

    const-string v24, "checkBeforeDownload :-8 for FIESTA_ATT"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const/16 v23, -0x8

    goto/16 :goto_0

    .line 551
    :cond_d
    const/16 v23, 0x1

    aget-byte v3, v4, v23

    .line 553
    .local v3, contentTypeLen:I
    :try_start_0
    new-instance v2, Ljava/lang/String;

    .end local v2           #MIMEType:Ljava/lang/String;
    const/16 v23, 0x3

    move/from16 v0, v23

    invoke-direct {v2, v4, v0, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2       #MIMEType:Ljava/lang/String;
    goto :goto_4

    .line 554
    .end local v2           #MIMEType:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 556
    .local v6, e:Ljava/lang/Exception;
    const-string v23, "DrmStore"

    const-string v24, "checkBeforeDownload :-7"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/16 v23, -0x7

    goto/16 :goto_0

    .line 560
    .end local v3           #contentTypeLen:I
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v2       #MIMEType:Ljava/lang/String;
    :cond_e
    const-string v23, "application/vnd.oma.drm.rights+wbxml"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_f

    const-string v23, "application/vnd.oma.drm.rights+xml"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 563
    :cond_f
    const-string v23, "DrmStore"

    const-string v24, "checkBeforeDownload :0"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 575
    :cond_10
    new-instance v14, Landroid/content/Intent;

    const-string v23, "android.intent.action.VIEW"

    move-object/from16 v0, v23

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 576
    .local v14, intent:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 577
    .local v19, pm:Landroid/content/pm/PackageManager;
    const/16 v20, 0x0

    .line 579
    .local v20, result:Z
    const-string v23, "DrmStore"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Check Before Download MIME = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const-string v23, "application/java-archive"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 583
    const/16 v20, 0x1

    .line 600
    :goto_5
    if-eqz v20, :cond_18

    .line 602
    const-string v23, "DrmStore"

    const-string v24, "checkBeforeDownload :0"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 584
    :cond_11
    const-string/jumbo v23, "image/"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 585
    const-string v23, "content://media"

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    const/high16 v23, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 587
    .local v15, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_12

    const/16 v20, 0x1

    .line 588
    :goto_6
    goto :goto_5

    .line 587
    :cond_12
    const/16 v20, 0x0

    goto :goto_6

    .line 588
    .end local v15           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_13
    const-string v23, "audio/"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_15

    .line 589
    const-string v23, "content://media"

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    const/high16 v23, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 591
    .restart local v15       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_14

    const/16 v20, 0x1

    .line 592
    :goto_7
    goto :goto_5

    .line 591
    :cond_14
    const/16 v20, 0x0

    goto :goto_7

    .line 592
    .end local v15           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_15
    const-string/jumbo v23, "video/"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_17

    .line 593
    const-string v23, "content://media"

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    const/high16 v23, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 595
    .restart local v15       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_16

    const/16 v20, 0x1

    .line 596
    :goto_8
    goto/16 :goto_5

    .line 595
    :cond_16
    const/16 v20, 0x0

    goto :goto_8

    .line 597
    .end local v15           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_17
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 607
    :cond_18
    const-string v23, "DrmStore"

    const-string v24, "checkBeforeDownload :-8"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const/16 v23, -0x8

    goto/16 :goto_0
.end method

.method public static final checkExpiration(Landroid/content/ContentResolver;Landroid/provider/DrmStore$DrmConstraint;Landroid/net/Uri;)I
    .locals 35
    .parameter "cr"
    .parameter "dcr"
    .parameter "contentUri"

    .prologue
    .line 6318
    const-string v3, "DrmStore"

    const-string v4, "********checkExpiration"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6319
    const-string v3, "DrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6322
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 6324
    :cond_0
    const-string v3, "DrmStore"

    const-string v4, "checkExpiration (1): -2"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6326
    const/4 v3, -0x2

    .line 6486
    :goto_0
    return v3

    .line 6329
    :cond_1
    sget-object v5, Landroid/provider/DrmStore;->FILEPATH_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 6330
    .local v11, cursor:Landroid/database/Cursor;
    if-nez v11, :cond_2

    .line 6332
    const-string v3, "DrmStore"

    const-string v4, "checkExpiration (2): -6"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6334
    const/4 v3, -0x6

    goto :goto_0

    .line 6335
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_3

    .line 6337
    const-string v3, "DrmStore"

    const-string v4, "checkExpiration (3): -2"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6339
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 6340
    const/4 v3, -0x2

    goto :goto_0

    .line 6343
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6344
    const-string v3, "_data"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 6345
    .local v10, columnIndex:I
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 6346
    .local v20, filePath:Ljava/lang/String;
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 6348
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/DrmStore;->getDrmRight(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/drm/mobile1/DrmRights;

    move-result-object v24

    .line 6349
    .local v24, rights:Landroid/drm/mobile1/DrmRights;
    if-nez v24, :cond_4

    .line 6351
    const-string v3, "DrmStore"

    const-string v4, "checkExpiration (4): -3"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6353
    const/4 v3, -0x3

    goto :goto_0

    .line 6358
    :cond_4
    #getter for: Landroid/provider/DrmStore$DrmConstraint;->mNoConstraint:Z
    invoke-static/range {p1 .. p1}, Landroid/provider/DrmStore$DrmConstraint;->access$000(Landroid/provider/DrmStore$DrmConstraint;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6359
    const/4 v3, 0x0

    goto :goto_0

    .line 6364
    :cond_5
    #getter for: Landroid/provider/DrmStore$DrmConstraint;->mCount:I
    invoke-static/range {p1 .. p1}, Landroid/provider/DrmStore$DrmConstraint;->access$100(Landroid/provider/DrmStore$DrmConstraint;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    #getter for: Landroid/provider/DrmStore$DrmConstraint;->mInterval:J
    invoke-static/range {p1 .. p1}, Landroid/provider/DrmStore$DrmConstraint;->access$200(Landroid/provider/DrmStore$DrmConstraint;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    #getter for: Landroid/provider/DrmStore$DrmConstraint;->mStartDate:Ljava/util/Date;
    invoke-static/range {p1 .. p1}, Landroid/provider/DrmStore$DrmConstraint;->access$300(Landroid/provider/DrmStore$DrmConstraint;)Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_6

    #getter for: Landroid/provider/DrmStore$DrmConstraint;->mEndDate:Ljava/util/Date;
    invoke-static/range {p1 .. p1}, Landroid/provider/DrmStore$DrmConstraint;->access$400(Landroid/provider/DrmStore$DrmConstraint;)Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_6

    .line 6365
    const-string v3, "DrmStore"

    const-string v4, "checkExpiration (5):  All constraint expired."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6366
    const/4 v3, -0x4

    goto :goto_0

    .line 6370
    :cond_6
    #getter for: Landroid/provider/DrmStore$DrmConstraint;->mCount:I
    invoke-static/range {p1 .. p1}, Landroid/provider/DrmStore$DrmConstraint;->access$100(Landroid/provider/DrmStore$DrmConstraint;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_8

    .line 6371
    #getter for: Landroid/provider/DrmStore$DrmConstraint;->mCount:I
    invoke-static/range {p1 .. p1}, Landroid/provider/DrmStore$DrmConstraint;->access$100(Landroid/provider/DrmStore$DrmConstraint;)I

    move-result v3

    if-gtz v3, :cond_7

    .line 6373
    const-string v3, "DrmStore"

    const-string v4, "checkExpiration (6):  checkExpiration counts expired"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6375
    const/4 v3, -0x4

    goto/16 :goto_0

    .line 6377
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 6381
    :cond_8
    const/16 v23, 0x0

    .line 6382
    .local v23, permissionType:I
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 6383
    const/16 v23, 0x2

    .line 6392
    :cond_9
    :goto_1
    sget-object v4, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 6393
    .local v9, c:Landroid/database/Cursor;
    if-nez v9, :cond_d

    .line 6395
    const-string v3, "DrmStore"

    const-string v4, "checkExpiration (7): -6"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6397
    const/4 v3, -0x6

    goto/16 :goto_0

    .line 6384
    .end local v9           #c:Landroid/database/Cursor;
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 6385
    const/16 v23, 0x1

    goto :goto_1

    .line 6386
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 6387
    const/16 v23, 0x1

    goto :goto_1

    .line 6388
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 6389
    const/16 v23, 0x3

    goto :goto_1

    .line 6398
    .restart local v9       #c:Landroid/database/Cursor;
    :cond_d
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_e

    .line 6400
    const-string v3, "DrmStore"

    const-string v4, "checkExpiration (8): -5"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6402
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 6403
    const/4 v3, -0x5

    goto/16 :goto_0

    .line 6406
    :cond_e
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6407
    const-string/jumbo v3, "time_stamp"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 6408
    .local v31, syncTimeColumnId:I
    move/from16 v0, v31

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 6409
    .local v29, syncTime:J
    const-string v3, "clock_stamp"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 6410
    .local v28, syncClockColumnId:I
    move/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 6411
    .local v26, syncClock:J
    const-string/jumbo v3, "timezone_stamp"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 6412
    .local v34, syncTimeZoneColumnId:I
    move/from16 v0, v34

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 6413
    .local v32, syncTimeZone:J
    const-string/jumbo v3, "time_differential"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 6414
    .local v14, differentColumnId:I
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 6415
    .local v15, differential:J
    const-string/jumbo v3, "network_sync"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 6416
    .local v22, network_sync:I
    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 6417
    .local v21, networkSync:Ljava/lang/String;
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 6419
    const-wide/16 v3, 0x0

    cmp-long v3, v29, v3

    if-eqz v3, :cond_f

    const-wide/16 v3, 0x0

    cmp-long v3, v26, v3

    if-nez v3, :cond_10

    .line 6421
    :cond_f
    const-string v3, "DrmStore"

    const-string v4, "checkExpiration (9): -5"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6423
    const/4 v3, -0x5

    goto/16 :goto_0

    .line 6426
    :cond_10
    if-nez v21, :cond_11

    .line 6428
    const-string v3, "DrmStore"

    const-string v4, "checkExpiration (10): -5"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6430
    const/4 v3, -0x5

    goto/16 :goto_0

    .line 6431
    :cond_11
    const-string v3, "TRUE"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 6433
    const-string v3, "DrmStore"

    const-string v4, "checkExpiration (11): -5"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6435
    const/4 v3, -0x5

    goto/16 :goto_0

    .line 6439
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 6440
    .local v12, date:J
    new-instance v18, Ljava/util/Date;

    move-object/from16 v0, v18

    invoke-direct {v0, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 6442
    .local v18, drmDate:Ljava/util/Date;
    const-string v3, "DrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkExpiration (12): Current Date-Time (UTC) is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getYear()I

    move-result v5

    add-int/lit16 v5, v5, 0x76c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getMonth()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getDate()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getHours()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getMinutes()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getSeconds()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6445
    invoke-virtual/range {p1 .. p1}, Landroid/provider/DrmStore$DrmConstraint;->getStartDate()Ljava/util/Date;

    move-result-object v25

    .line 6446
    .local v25, startDate:Ljava/util/Date;
    if-eqz v25, :cond_13

    .line 6448
    const-string v3, "DrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkExpiration (13): Start Date (UTC) is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getYear()I

    move-result v5

    add-int/lit16 v5, v5, 0x76c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getMonth()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getDate()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getHours()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getMinutes()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getSeconds()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6450
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 6452
    const-string v3, "DrmStore"

    const-string v4, "checkExpiration (14): start date expired."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6454
    const/4 v3, -0x4

    goto/16 :goto_0

    .line 6458
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/provider/DrmStore$DrmConstraint;->getEndDate()Ljava/util/Date;

    move-result-object v19

    .line 6459
    .local v19, endDate:Ljava/util/Date;
    if-eqz v19, :cond_14

    .line 6461
    const-string v3, "DrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkExpiration (15): End Date (UTC) is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getYear()I

    move-result v5

    add-int/lit16 v5, v5, 0x76c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getMonth()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getDate()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getHours()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getMinutes()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getSeconds()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6463
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 6465
    const-string v3, "DrmStore"

    const-string v4, "checkExpiration (16): end date expired."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6467
    new-instance v17, Ljava/util/Date;

    sub-long v3, v12, v15

    sub-long v3, v3, v32

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 6468
    .local v17, drmClock:Ljava/util/Date;
    move-object/from16 v0, v24

    move/from16 v1, v23

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/drm/mobile1/DrmRights;->consumeRightsWithSync(ILjava/util/Date;)Z

    .line 6469
    const/4 v3, -0x4

    goto/16 :goto_0

    .line 6473
    .end local v17           #drmClock:Ljava/util/Date;
    :cond_14
    #getter for: Landroid/provider/DrmStore$DrmConstraint;->mInterval:J
    invoke-static/range {p1 .. p1}, Landroid/provider/DrmStore$DrmConstraint;->access$200(Landroid/provider/DrmStore$DrmConstraint;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_15

    .line 6475
    const-string v3, "DrmStore"

    const-string v4, "checkExpiration (17): Interval constraint, pass anyway"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6478
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 6482
    :cond_15
    const-string v3, "DrmStore"

    const-string v4, "checkExpiration (18): Unknown Error!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6486
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public static final checkExpiration(Landroid/net/Uri;Landroid/app/Activity;)I
    .locals 1
    .parameter "uri"
    .parameter "activity"

    .prologue
    .line 7957
    const/4 v0, 0x0

    return v0
.end method

.method public static final checkExpiration(Ljava/lang/String;Landroid/app/Activity;)I
    .locals 1
    .parameter "fileName"
    .parameter "activity"

    .prologue
    .line 7961
    const/4 v0, 0x0

    return v0
.end method

.method public static checkFileExistence(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 11
    .parameter "cr"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 7403
    sget-object v2, Landroid/provider/DrmStore;->FILEPATH_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7404
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 7406
    const-string v0, "DrmStore"

    const-string v1, "checkFileExistence query DRM db failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 7427
    :goto_0
    return v0

    .line 7409
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 7411
    const-string v0, "DrmStore"

    const-string v1, "checkFileExistence no record."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7413
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 7414
    goto :goto_0

    .line 7416
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7417
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 7418
    .local v8, fileColumnIndex:I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 7419
    .local v9, fileName:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7421
    const-string v0, "DrmStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check if "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exists."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7423
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7424
    .local v7, file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7425
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v10

    .line 7427
    goto :goto_0
.end method

.method public static final consumeRights(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 1
    .parameter "cx"
    .parameter "uri"

    .prologue
    .line 7965
    const/4 v0, 0x0

    return v0
.end method

.method public static final consumeRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I
    .locals 41
    .parameter "cx"
    .parameter "contentUri"
    .parameter "strFilePath"
    .parameter "permissionType"

    .prologue
    .line 6500
    const-string v3, "DrmStore"

    const-string v4, "********consumeRights"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6503
    const/4 v9, 0x0

    .line 6504
    .local v9, c:Landroid/database/Cursor;
    if-nez p2, :cond_0

    .line 6505
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Landroid/provider/DrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 6510
    :goto_0
    const/16 v22, 0x0

    .line 6511
    .local v22, filePath:Ljava/lang/String;
    if-nez v9, :cond_1

    .line 6513
    const-string v3, "DrmStore"

    const-string v4, "consumeRights(1): -6"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6515
    const/4 v3, -0x6

    .line 6689
    :goto_1
    return v3

    .line 6507
    .end local v22           #filePath:Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Landroid/provider/DrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const-string v6, "_data=?"

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v7, v4

    const-string v8, "_id"

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    .line 6516
    .restart local v22       #filePath:Ljava/lang/String;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 6518
    const-string v3, "DrmStore"

    const-string v4, "consumeRights(2): -6"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6520
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 6521
    const/4 v3, -0x6

    goto :goto_1

    .line 6522
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_6

    .line 6523
    if-nez p2, :cond_3

    .line 6525
    const-string v3, "DrmStore"

    const-string v4, "consumeRights(3): -2"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6527
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 6528
    const/4 v3, -0x2

    goto :goto_1

    .line 6530
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6531
    const-string v3, "_data"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 6532
    .local v23, filePathColumnId:I
    move/from16 v0, v23

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6533
    move-object/from16 v22, p2

    .line 6548
    :cond_4
    :goto_2
    if-nez v22, :cond_7

    .line 6550
    const-string v3, "DrmStore"

    const-string v4, "consumeRights(4): -1"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6552
    const/4 v3, -0x1

    goto :goto_1

    .line 6535
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6536
    move/from16 v0, v23

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6537
    move-object/from16 v22, p2

    .line 6538
    goto :goto_2

    .line 6543
    .end local v23           #filePathColumnId:I
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6544
    const-string v3, "_data"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 6545
    .restart local v23       #filePathColumnId:I
    move/from16 v0, v23

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto :goto_2

    .line 6555
    :cond_7
    const-string/jumbo v3, "message_type"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 6556
    .local v27, messageTypeColumnId:I
    move/from16 v0, v27

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 6557
    .local v26, messageType:Ljava/lang/String;
    const-string v3, "delivery_type"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 6558
    .local v15, deliveryTypeColumnId:I
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 6559
    .local v14, deliveryType:I
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 6561
    const/4 v3, 0x1

    if-ne v14, v3, :cond_8

    .line 6562
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 6566
    :cond_8
    :try_start_0
    new-instance v21, Ljava/io/File;

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6567
    .local v21, file:Ljava/io/File;
    if-nez v21, :cond_9

    .line 6569
    const-string v3, "DrmStore"

    const-string v4, "consumeRights(5): -2"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6571
    const/4 v3, -0x2

    goto/16 :goto_1

    .line 6573
    :cond_9
    new-instance v24, Ljava/io/FileInputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6574
    .local v24, fis:Ljava/io/InputStream;
    new-instance v11, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->available()I

    move-result v3

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v11, v0, v3, v1}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 6575
    .local v11, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v25

    .line 6576
    .local v25, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v30

    .line 6578
    .local v30, rights:Landroid/drm/mobile1/DrmRights;
    if-nez v30, :cond_a

    .line 6580
    const-string v3, "DrmStore"

    const-string v4, "consumeRights(7): -3"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6582
    const/4 v3, -0x3

    goto/16 :goto_1

    .line 6585
    :cond_a
    move-object/from16 v0, v30

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRights;->getConstraint(I)Landroid/drm/mobile1/DrmConstraintInfo;

    move-result-object v10

    .line 6586
    .local v10, constraintInfo:Landroid/drm/mobile1/DrmConstraintInfo;
    if-nez v10, :cond_b

    .line 6588
    const-string v3, "DrmStore"

    const-string v4, "consumeRights(9): -1"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6590
    const/4 v3, -0x1

    goto/16 :goto_1

    .line 6594
    :cond_b
    invoke-virtual {v10}, Landroid/drm/mobile1/DrmConstraintInfo;->isNoConstraint()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    .line 6600
    const-string v3, "DrmStore"

    const-string v4, " @@@@@     consumeRights(10): NO Constraint."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6603
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 6608
    :cond_c
    invoke-virtual {v10}, Landroid/drm/mobile1/DrmConstraintInfo;->getCount()I

    move-result v3

    if-ltz v3, :cond_e

    .line 6609
    move-object/from16 v0, v30

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRights;->consumeRights(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 6610
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 6613
    :cond_d
    const-string v3, "DrmStore"

    const-string v4, "consumeRights(11): -4"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6615
    const/4 v3, -0x4

    goto/16 :goto_1

    .line 6620
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    .line 6621
    .local v31, stamp:Landroid/database/Cursor;
    if-nez v31, :cond_f

    .line 6623
    const-string v3, "DrmStore"

    const-string v4, "consumeRights query stamp failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6625
    const/4 v3, -0x6

    goto/16 :goto_1

    .line 6626
    :cond_f
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_10

    .line 6628
    const-string v3, "DrmStore"

    const-string v4, "consumeRights(12): -5"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6630
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 6631
    const/4 v3, -0x5

    goto/16 :goto_1

    .line 6634
    :cond_10
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6635
    const-string/jumbo v3, "time_stamp"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v37

    .line 6636
    .local v37, syncTimeColumnId:I
    move-object/from16 v0, v31

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    .line 6637
    .local v35, syncTime:J
    const-string v3, "clock_stamp"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 6638
    .local v34, syncClockColumnId:I
    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 6639
    .local v32, syncClock:J
    const-string/jumbo v3, "timezone_stamp"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    .line 6640
    .local v40, syncTimeZoneColumnId:I
    move-object/from16 v0, v31

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    .line 6641
    .local v38, syncTimeZone:J
    const-string/jumbo v3, "time_differential"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 6642
    .local v16, differentColumnId:I
    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 6643
    .local v17, differential:J
    const-string/jumbo v3, "network_sync"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 6644
    .local v29, network_sync:I
    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 6645
    .local v28, networkSync:Ljava/lang/String;
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 6647
    const-wide/16 v3, 0x0

    cmp-long v3, v35, v3

    if-eqz v3, :cond_11

    const-wide/16 v3, 0x0

    cmp-long v3, v32, v3

    if-nez v3, :cond_12

    .line 6649
    :cond_11
    const-string v3, "DrmStore"

    const-string v4, "consumeRights(13): -5"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6651
    const/4 v3, -0x5

    goto/16 :goto_1

    .line 6654
    :cond_12
    if-nez v28, :cond_13

    .line 6656
    const-string v3, "DrmStore"

    const-string v4, "consumeRights(14): checkExpiration : -5"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6658
    const/4 v3, -0x5

    goto/16 :goto_1

    .line 6659
    :cond_13
    const-string v3, "TRUE"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 6661
    const-string v3, "DrmStore"

    const-string v4, "consumeRights(15): checkExpiration : -5"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6663
    const/4 v3, -0x5

    goto/16 :goto_1

    .line 6667
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v17

    sub-long v12, v3, v38

    .line 6669
    .local v12, date:J
    const-string v3, "DrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "syncTimeZone = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long v5, v38, v5

    const-wide/16 v7, 0x3c

    div-long/2addr v5, v7

    const-wide/16 v7, 0x3c

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6671
    new-instance v19, Ljava/util/Date;

    move-object/from16 v0, v19

    invoke-direct {v0, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 6672
    .local v19, drmDate:Ljava/util/Date;
    move-object/from16 v0, v30

    move/from16 v1, p3

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/drm/mobile1/DrmRights;->consumeRightsWithSync(ILjava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 6673
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 6676
    :cond_15
    const-string v3, "DrmStore"

    const-string v4, "consumeRights(16): -4"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6678
    const/4 v3, -0x4

    goto/16 :goto_1

    .line 6681
    .end local v10           #constraintInfo:Landroid/drm/mobile1/DrmConstraintInfo;
    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v12           #date:J
    .end local v16           #differentColumnId:I
    .end local v17           #differential:J
    .end local v19           #drmDate:Ljava/util/Date;
    .end local v21           #file:Ljava/io/File;
    .end local v24           #fis:Ljava/io/InputStream;
    .end local v25           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v28           #networkSync:Ljava/lang/String;
    .end local v29           #network_sync:I
    .end local v30           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v31           #stamp:Landroid/database/Cursor;
    .end local v32           #syncClock:J
    .end local v34           #syncClockColumnId:I
    .end local v35           #syncTime:J
    .end local v37           #syncTimeColumnId:I
    .end local v38           #syncTimeZone:J
    .end local v40           #syncTimeZoneColumnId:I
    :catch_0
    move-exception v20

    .line 6683
    .local v20, e:Ljava/lang/Exception;
    const-string v3, "DrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "consumeRights(17): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6687
    const-string v3, "DrmStore"

    const-string v4, "consumeRights(18): -1"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6689
    const/4 v3, -0x1

    goto/16 :goto_1
.end method

.method public static final consumeRights(Ljava/lang/String;)I
    .locals 1
    .parameter "fileName"

    .prologue
    .line 7969
    const/4 v0, 0x0

    return v0
.end method

.method public static final deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 1
    .parameter "cr"
    .parameter "uri"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5789
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/DrmStore;->deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)I
    .locals 13
    .parameter "cr"
    .parameter "uri"
    .parameter "filePath"

    .prologue
    .line 5717
    const-string v0, "DrmStore"

    const-string v1, "********deleteDrmFile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5719
    const/4 v6, 0x0

    .line 5720
    .local v6, c:Landroid/database/Cursor;
    if-eqz p2, :cond_0

    .line 5721
    sget-object v2, Landroid/provider/DrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const-string v3, "_data=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const-string v5, "_id"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5726
    :goto_0
    if-nez v6, :cond_1

    .line 5728
    const-string v0, "DrmStore"

    const-string v1, "deleteDrmFile : -6"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5730
    const/4 v0, -0x6

    .line 5775
    :goto_1
    return v0

    .line 5723
    :cond_0
    sget-object v2, Landroid/provider/DrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0

    .line 5731
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5733
    const-string v0, "DrmStore"

    const-string v1, "deleteDrmFile : -6"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5735
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5736
    const/4 v0, -0x6

    goto :goto_1

    .line 5739
    :cond_2
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 5740
    .local v10, filenameColumnId:I
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 5742
    .local v9, filename:Ljava/lang/String;
    const-string v0, "delivery_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 5743
    .local v8, deliveryTypeColumnId:I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 5745
    .local v7, deliveryType:I
    const-string/jumbo v0, "message_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 5746
    .local v12, messageTypeColumnId:I
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 5748
    .local v11, messageType:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5775
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_1
.end method

.method public static enforceAccessDrmPermission(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 412
    const-string v0, "android.permission.ACCESS_DRM"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DRM permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_0
    return-void
.end method

.method private static final fnIsDisableCombinedDeliveryAndSeparateDelivery()Z
    .locals 1

    .prologue
    .line 8063
    sget-boolean v0, Landroid/provider/DrmStore;->SWITCH_TO_CID:Z

    if-eqz v0, :cond_1

    .line 8064
    sget-boolean v0, Landroid/provider/DrmStore;->DISABLE_FORWORD_LOCK:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/provider/DrmStore;->DISABLE_COMBINED_DELIVERY:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/provider/DrmStore;->DISABLE_SEPARATE_DELIVERY:Z

    if-eqz v0, :cond_0

    .line 8066
    const/4 v0, 0x1

    .line 8073
    :goto_0
    return v0

    .line 8069
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 8073
    :cond_1
    invoke-static {}, Landroid/provider/DrmStore;->SupportForwardLockOnly()Z

    move-result v0

    goto :goto_0
.end method

.method private static final fnIsDisableCombinedDeliveryOnly()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 8085
    sget-boolean v1, Landroid/provider/DrmStore;->SWITCH_TO_CID:Z

    if-eqz v1, :cond_0

    .line 8087
    sget-boolean v1, Landroid/provider/DrmStore;->DISABLE_FORWORD_LOCK:Z

    if-nez v1, :cond_0

    sget-boolean v1, Landroid/provider/DrmStore;->DISABLE_COMBINED_DELIVERY:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Landroid/provider/DrmStore;->DISABLE_SEPARATE_DELIVERY:Z

    if-nez v1, :cond_0

    .line 8089
    const/4 v0, 0x1

    .line 8099
    :cond_0
    return v0
.end method

.method private static final fnIsDisableSeparateDeliveryOnly()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 8109
    sget-boolean v2, Landroid/provider/DrmStore;->SWITCH_TO_CID:Z

    if-eqz v2, :cond_2

    .line 8110
    sget-boolean v2, Landroid/provider/DrmStore;->DISABLE_FORWORD_LOCK:Z

    if-nez v2, :cond_1

    sget-boolean v2, Landroid/provider/DrmStore;->DISABLE_COMBINED_DELIVERY:Z

    if-nez v2, :cond_1

    sget-boolean v2, Landroid/provider/DrmStore;->DISABLE_SEPARATE_DELIVERY:Z

    if-eqz v2, :cond_1

    .line 8138
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 8115
    goto :goto_0

    .line 8119
    :cond_2
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x31

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x88

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 8138
    goto :goto_0
.end method

.method private static getCipher(Ljavax/crypto/spec/SecretKeySpec;I)Ljavax/crypto/Cipher;
    .locals 6
    .parameter "skeySpec"
    .parameter "mode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 7306
    const/4 v0, 0x0

    .line 7308
    .local v0, cipher:Ljavax/crypto/Cipher;
    if-nez p0, :cond_0

    .line 7310
    const-string v4, "DrmStore"

    const-string/jumbo v5, "skeySpec == null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7345
    :goto_0
    return-object v3

    .line 7313
    :cond_0
    const/4 v4, 0x1

    if-eq p1, v4, :cond_1

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    .line 7315
    const-string v4, "DrmStore"

    const-string v5, "Cipher mode error."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7322
    :cond_1
    :try_start_0
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 7324
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    const-string v3, "f45gt7g83sd56210"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 7326
    .local v2, ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v0, p1, p0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3

    .end local v2           #ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    :goto_1
    move-object v3, v0

    .line 7345
    goto :goto_0

    .line 7328
    :catch_0
    move-exception v1

    .line 7330
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    const-string v3, "DrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NoSuchAlgorithmException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 7332
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 7334
    .local v1, e:Ljavax/crypto/NoSuchPaddingException;
    const-string v3, "DrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NoSuchPaddingException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 7336
    .end local v1           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v1

    .line 7338
    .local v1, e:Ljava/security/InvalidKeyException;
    const-string v3, "DrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InvalidKeyException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 7340
    .end local v1           #e:Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v1

    .line 7342
    .local v1, e:Ljava/security/InvalidAlgorithmParameterException;
    const-string v3, "DrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InvalidAlgorithmParameterException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getDcfFileList(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;
    .locals 11
    .parameter "contentResolver"
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 7438
    sget-object v2, Landroid/provider/DrmStore;->DCFLIST_PROJECTION:[Ljava/lang/String;

    const-string v3, "delivery_type=\'3\'"

    const-string v5, "_id"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7439
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 7440
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 7441
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 7442
    .local v7, count:I
    new-array v10, v7, [Ljava/lang/String;

    .line 7443
    .local v10, result:[Ljava/lang/String;
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 7444
    .local v8, dataColumnIndex:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v7, :cond_1

    .line 7445
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7446
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v9

    .line 7444
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 7449
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7454
    .end local v7           #count:I
    .end local v8           #dataColumnIndex:I
    .end local v9           #i:I
    .end local v10           #result:[Ljava/lang/String;
    :goto_1
    return-object v10

    .line 7452
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v10, v4

    .line 7454
    goto :goto_1
.end method

.method public static getDmFileList(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;
    .locals 11
    .parameter "contentResolver"
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 7461
    sget-object v2, Landroid/provider/DrmStore;->DCFLIST_PROJECTION:[Ljava/lang/String;

    const-string v3, "delivery_type=\'1\' OR delivery_type=\'2\'"

    const-string v5, "_id"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7466
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 7467
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 7468
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 7469
    .local v7, count:I
    new-array v10, v7, [Ljava/lang/String;

    .line 7470
    .local v10, result:[Ljava/lang/String;
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 7471
    .local v8, dataColumnIndex:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v7, :cond_1

    .line 7472
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7473
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v9

    .line 7471
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 7476
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7481
    .end local v7           #count:I
    .end local v8           #dataColumnIndex:I
    .end local v9           #i:I
    .end local v10           #result:[Ljava/lang/String;
    :goto_1
    return-object v10

    .line 7479
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v10, v4

    .line 7481
    goto :goto_1
.end method

.method public static getDrmAudioConstraint(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7866
    sget-object v0, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    return-object v0
.end method

.method public static getDrmAudioCursor(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 1
    .parameter "cx"
    .parameter "nDeliveryType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7814
    sget-object v0, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Landroid/provider/DrmStore;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmAudioStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7918
    sget-object v0, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Landroid/provider/DrmStore;->getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;
    .locals 31
    .parameter "cr"
    .parameter "uri"
    .parameter "permissionType"

    .prologue
    .line 6214
    const-string v3, "DrmStore"

    const-string v4, "********getDrmConstraint (2)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6216
    const/16 v27, 0x0

    .line 6218
    .local v27, res:Landroid/provider/DrmStore$DrmConstraint;
    sget-object v5, Landroid/provider/DrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 6219
    .local v9, c:Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 6221
    const-string v3, "DrmStore"

    const-string v4, "getDrmConstraint query DRM db failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6223
    const/4 v3, 0x0

    .line 6306
    :goto_0
    return-object v3

    .line 6224
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 6226
    const-string v3, "DrmStore"

    const-string v4, "getDrmConstraint no record."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6228
    const/4 v3, 0x0

    goto :goto_0

    .line 6231
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToLast()Z

    .line 6232
    const-string v3, "_data"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 6233
    .local v21, filenameColumnId:I
    move/from16 v0, v21

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 6235
    .local v20, filename:Ljava/lang/String;
    const-string/jumbo v3, "message_type"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 6236
    .local v26, messageTypeColumnId:I
    move/from16 v0, v26

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 6238
    .local v25, messageType:Ljava/lang/String;
    const-string v3, "delivery_type"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 6239
    .local v12, deliveryTypeColumnId:I
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 6241
    .local v11, deliveryType:I
    const-string v3, "_size"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 6242
    .local v19, fileSizeColumnId:I
    move/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 6243
    .local v18, fileSize:I
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 6245
    const/4 v3, 0x1

    if-ne v11, v3, :cond_2

    .line 6247
    const-string v3, "DrmStore"

    const-string v4, "FL doesn\'t have constraint."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6249
    const/4 v3, 0x0

    goto :goto_0

    .line 6251
    :cond_2
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6253
    .local v17, file:Ljava/io/File;
    :try_start_0
    new-instance v22, Ljava/io/FileInputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6254
    .local v22, fis:Ljava/io/InputStream;
    new-instance v10, Landroid/drm/mobile1/DrmRawContent;

    move-object/from16 v0, v22

    move/from16 v1, v18

    move-object/from16 v2, v25

    invoke-direct {v10, v0, v1, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 6255
    .local v10, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v24

    .line 6256
    .local v24, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v29

    .line 6259
    .local v29, rights:Landroid/drm/mobile1/DrmRights;
    const-string v3, "DrmStore"

    const-string v4, " @@@@@ getDrmConstraint (2) - (1)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6262
    if-eqz v29, :cond_7

    .line 6263
    move-object/from16 v0, v29

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRights;->getConstraint(I)Landroid/drm/mobile1/DrmConstraintInfo;

    move-result-object v23

    .line 6265
    .local v23, info:Landroid/drm/mobile1/DrmConstraintInfo;
    if-eqz v23, :cond_6

    .line 6266
    new-instance v28, Landroid/provider/DrmStore$DrmConstraint;

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/provider/DrmStore$DrmConstraint;-><init>(Landroid/drm/mobile1/DrmConstraintInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 6267
    .end local v27           #res:Landroid/provider/DrmStore$DrmConstraint;
    .local v28, res:Landroid/provider/DrmStore$DrmConstraint;
    if-eqz v28, :cond_8

    .line 6268
    const-wide/16 v13, 0x0

    .line 6269
    .local v13, differential:J
    const/16 v30, 0x0

    .line 6271
    .local v30, stampCursor:Landroid/database/Cursor;
    :try_start_1
    sget-object v4, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v30

    .line 6272
    if-eqz v30, :cond_3

    .line 6273
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6274
    const-string/jumbo v3, "time_differential"

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 6275
    .local v15, differentialColumnId:I
    move-object/from16 v0, v30

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v13

    .line 6281
    .end local v15           #differentialColumnId:I
    :cond_3
    if-eqz v30, :cond_4

    .line 6282
    :try_start_2
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    .line 6285
    :cond_4
    :goto_1
    move-object/from16 v0, v28

    invoke-virtual {v0, v13, v14}, Landroid/provider/DrmStore$DrmConstraint;->setDisserential(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v27, v28

    .line 6296
    .end local v13           #differential:J
    .end local v23           #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .end local v28           #res:Landroid/provider/DrmStore$DrmConstraint;
    .end local v30           #stampCursor:Landroid/database/Cursor;
    .restart local v27       #res:Landroid/provider/DrmStore$DrmConstraint;
    :goto_2
    :try_start_3
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v22           #fis:Ljava/io/InputStream;
    .end local v24           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v29           #rights:Landroid/drm/mobile1/DrmRights;
    :goto_3
    move-object/from16 v3, v27

    .line 6306
    goto/16 :goto_0

    .line 6278
    .end local v27           #res:Landroid/provider/DrmStore$DrmConstraint;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v13       #differential:J
    .restart local v22       #fis:Ljava/io/InputStream;
    .restart local v23       #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .restart local v24       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v28       #res:Landroid/provider/DrmStore$DrmConstraint;
    .restart local v29       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v30       #stampCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v16

    .line 6279
    .local v16, e:Ljava/lang/Exception;
    :try_start_4
    const-string v3, "DrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get differential: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 6281
    if-eqz v30, :cond_4

    .line 6282
    :try_start_5
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 6297
    .end local v16           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v16

    move-object/from16 v27, v28

    .line 6299
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v13           #differential:J
    .end local v22           #fis:Ljava/io/InputStream;
    .end local v23           #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .end local v24           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v28           #res:Landroid/provider/DrmStore$DrmConstraint;
    .end local v29           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v30           #stampCursor:Landroid/database/Cursor;
    .restart local v16       #e:Ljava/lang/Exception;
    .restart local v27       #res:Landroid/provider/DrmStore$DrmConstraint;
    :goto_4
    :try_start_6
    const-string v3, "DrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDrmConstraint : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 6301
    .end local v16           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_5
    throw v3

    .line 6281
    .end local v27           #res:Landroid/provider/DrmStore$DrmConstraint;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v13       #differential:J
    .restart local v22       #fis:Ljava/io/InputStream;
    .restart local v23       #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .restart local v24       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v28       #res:Landroid/provider/DrmStore$DrmConstraint;
    .restart local v29       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v30       #stampCursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v3

    if-eqz v30, :cond_5

    .line 6282
    :try_start_7
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    .line 6281
    :cond_5
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 6301
    :catchall_2
    move-exception v3

    move-object/from16 v27, v28

    .end local v28           #res:Landroid/provider/DrmStore$DrmConstraint;
    .restart local v27       #res:Landroid/provider/DrmStore$DrmConstraint;
    goto :goto_5

    .line 6289
    .end local v13           #differential:J
    .end local v30           #stampCursor:Landroid/database/Cursor;
    :cond_6
    :try_start_8
    const-string v3, "DrmStore"

    const-string v4, " @@@@@ NO Drm Constraint Info !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 6297
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v22           #fis:Ljava/io/InputStream;
    .end local v23           #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .end local v24           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v29           #rights:Landroid/drm/mobile1/DrmRights;
    :catch_2
    move-exception v16

    goto :goto_4

    .line 6293
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v22       #fis:Ljava/io/InputStream;
    .restart local v24       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v29       #rights:Landroid/drm/mobile1/DrmRights;
    :cond_7
    const-string v3, "DrmStore"

    const-string v4, " @@@@@ NO Drm Rights !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    .end local v27           #res:Landroid/provider/DrmStore$DrmConstraint;
    .restart local v23       #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .restart local v28       #res:Landroid/provider/DrmStore$DrmConstraint;
    :cond_8
    move-object/from16 v27, v28

    .end local v28           #res:Landroid/provider/DrmStore$DrmConstraint;
    .restart local v27       #res:Landroid/provider/DrmStore$DrmConstraint;
    goto :goto_2
.end method

.method public static final getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;
    .locals 36
    .parameter "cx"
    .parameter "uri"
    .parameter "strFilePath"

    .prologue
    .line 5801
    const-string v4, "DrmStore"

    const-string v5, "********getDrmConstraint without renew call back"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5802
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5804
    const/4 v9, 0x0

    .line 5805
    .local v9, c:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 5806
    .local v12, contentUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 5807
    .local v3, cr:Landroid/content/ContentResolver;
    if-nez p2, :cond_1

    .line 5808
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 5813
    :goto_0
    if-nez v9, :cond_2

    .line 5815
    const-string v4, "DrmStore"

    const-string v5, "getDrmConstraint query DRM db failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5817
    const/4 v10, 0x0

    .line 5978
    :cond_0
    :goto_1
    return-object v10

    .line 5810
    :cond_1
    const/4 v5, 0x0

    const-string v6, "_data=?"

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v7, v4

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    .line 5818
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    .line 5819
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5821
    const-string v4, "DrmStore"

    const-string v5, "getDrmConstraint no record."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5823
    const/4 v10, 0x0

    goto :goto_1

    .line 5826
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5827
    if-eqz p2, :cond_e

    .line 5828
    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 5829
    .local v25, index:I
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 5830
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 5849
    .end local v25           #index:I
    :goto_2
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contentUri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5852
    const-string v4, "delivery_type"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 5853
    .local v15, deliveryTypeColumnId:I
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 5854
    .local v14, deliveryType:I
    const-string/jumbo v4, "message_type"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 5855
    .local v29, messageTypeColumnId:I
    move/from16 v0, v29

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 5856
    .local v28, messageType:Ljava/lang/String;
    const-string v4, "_size"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 5857
    .local v23, fileSizeColumnId:I
    move/from16 v0, v23

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 5858
    .local v22, fileSize:I
    const/16 v31, 0x2

    .line 5859
    .local v31, permissionType:I
    if-nez p2, :cond_4

    .line 5860
    const-string v4, "_data"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 5861
    .local v21, filePathColumnId:I
    move/from16 v0, v21

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 5863
    .end local v21           #filePathColumnId:I
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5865
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 5866
    const/16 v31, 0x2

    .line 5882
    :goto_3
    :try_start_0
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5885
    .local v20, file:Ljava/io/File;
    const/4 v4, 0x3

    if-eq v14, v4, :cond_5

    const/4 v4, 0x2

    if-ne v14, v4, :cond_13

    .line 5887
    :cond_5
    new-instance v24, Ljava/io/FileInputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 5895
    .local v24, fis:Ljava/io/InputStream;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v27

    .line 5899
    .local v27, manager:Landroid/drm/mobile1/DrmRightsManager;
    const/4 v10, 0x0

    .line 5900
    .local v10, constraint:Landroid/provider/DrmStore$DrmConstraint;
    new-instance v11, Landroid/drm/mobile1/DrmRawContent;

    move-object/from16 v0, v24

    move/from16 v1, v22

    move-object/from16 v2, v28

    invoke-direct {v11, v0, v1, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 5901
    .local v11, content:Landroid/drm/mobile1/DrmRawContent;
    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v33

    .line 5904
    .local v33, rights:Landroid/drm/mobile1/DrmRights;
    if-nez v33, :cond_6

    const/4 v4, 0x3

    if-ne v14, v4, :cond_6

    .line 5906
    move-object/from16 v13, p0

    .line 5907
    .local v13, context:Landroid/content/Context;
    new-instance v35, Landroid/widget/TextView;

    invoke-direct/range {v35 .. v36}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 5908
    .local v35, tv:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.htc"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v32

    .line 5909
    .local v32, rc:Landroid/content/res/Resources;
    const v4, 0x20400e8

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    .line 5910
    .local v30, notify:Ljava/lang/String;
    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5911
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x20400e9

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "OK"

    new-instance v6, Landroid/provider/DrmStore$2;

    move-object/from16 v0, v33

    invoke-direct {v6, v0, v11, v13}, Landroid/provider/DrmStore$2;-><init>(Landroid/drm/mobile1/DrmRights;Landroid/drm/mobile1/DrmRawContent;Landroid/content/Context;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "Cancel"

    new-instance v6, Landroid/provider/DrmStore$1;

    invoke-direct {v6}, Landroid/provider/DrmStore$1;-><init>()V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 5944
    .end local v13           #context:Landroid/content/Context;
    .end local v30           #notify:Ljava/lang/String;
    .end local v32           #rc:Landroid/content/res/Resources;
    .end local v35           #tv:Landroid/widget/TextView;
    :cond_6
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V

    .line 5946
    if-eqz v33, :cond_9

    .line 5947
    move-object/from16 v0, v33

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRights;->getConstraint(I)Landroid/drm/mobile1/DrmConstraintInfo;

    move-result-object v26

    .line 5948
    .local v26, info:Landroid/drm/mobile1/DrmConstraintInfo;
    new-instance v10, Landroid/provider/DrmStore$DrmConstraint;

    .end local v10           #constraint:Landroid/provider/DrmStore$DrmConstraint;
    move-object/from16 v0, v26

    invoke-direct {v10, v0}, Landroid/provider/DrmStore$DrmConstraint;-><init>(Landroid/drm/mobile1/DrmConstraintInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5949
    .restart local v10       #constraint:Landroid/provider/DrmStore$DrmConstraint;
    if-eqz v10, :cond_0

    .line 5950
    const-wide/16 v16, 0x0

    .line 5951
    .local v16, differential:J
    const/16 v34, 0x0

    .line 5953
    .local v34, stampCursor:Landroid/database/Cursor;
    :try_start_1
    sget-object v4, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v34

    .line 5954
    if-eqz v34, :cond_7

    .line 5955
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 5956
    const-string/jumbo v4, "time_differential"

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 5957
    .local v18, differentialColumnId:I
    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v16

    .line 5965
    .end local v18           #differentialColumnId:I
    :cond_7
    if-eqz v34, :cond_8

    .line 5966
    :try_start_2
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    .line 5969
    :cond_8
    :goto_4
    move-wide/from16 v0, v16

    invoke-virtual {v10, v0, v1}, Landroid/provider/DrmStore$DrmConstraint;->setDisserential(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 5973
    .end local v10           #constraint:Landroid/provider/DrmStore$DrmConstraint;
    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v16           #differential:J
    .end local v20           #file:Ljava/io/File;
    .end local v24           #fis:Ljava/io/InputStream;
    .end local v26           #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .end local v27           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v33           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v34           #stampCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v19

    .line 5975
    .local v19, e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDrmConstraint : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5978
    .end local v19           #e:Ljava/lang/Exception;
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 5832
    .end local v14           #deliveryType:I
    .end local v15           #deliveryTypeColumnId:I
    .end local v22           #fileSize:I
    .end local v23           #fileSizeColumnId:I
    .end local v28           #messageType:Ljava/lang/String;
    .end local v29           #messageTypeColumnId:I
    .end local v31           #permissionType:I
    .restart local v25       #index:I
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 5833
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2

    .line 5835
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 5836
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2

    .line 5838
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 5839
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2

    .line 5842
    :cond_d
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5843
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 5846
    .end local v25           #index:I
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2

    .line 5868
    .restart local v14       #deliveryType:I
    .restart local v15       #deliveryTypeColumnId:I
    .restart local v22       #fileSize:I
    .restart local v23       #fileSizeColumnId:I
    .restart local v28       #messageType:Ljava/lang/String;
    .restart local v29       #messageTypeColumnId:I
    .restart local v31       #permissionType:I
    :cond_f
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 5869
    const/16 v31, 0x1

    goto/16 :goto_3

    .line 5871
    :cond_10
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 5872
    const/16 v31, 0x1

    goto/16 :goto_3

    .line 5874
    :cond_11
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 5875
    const/16 v31, 0x3

    goto/16 :goto_3

    .line 5878
    :cond_12
    const/16 v31, 0x2

    goto/16 :goto_3

    .line 5890
    .restart local v20       #file:Ljava/io/File;
    :cond_13
    :try_start_3
    const-string v4, "DrmStore"

    const-string v5, "getDrmConstraint no rights."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 5892
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 5960
    .restart local v10       #constraint:Landroid/provider/DrmStore$DrmConstraint;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v16       #differential:J
    .restart local v24       #fis:Ljava/io/InputStream;
    .restart local v26       #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .restart local v27       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v33       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v34       #stampCursor:Landroid/database/Cursor;
    :catch_1
    move-exception v19

    .line 5962
    .restart local v19       #e:Ljava/lang/Exception;
    :try_start_4
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get differential: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5965
    if-eqz v34, :cond_8

    .line 5966
    :try_start_5
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 5965
    .end local v19           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v34, :cond_14

    .line 5966
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    .line 5965
    :cond_14
    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public static final getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/provider/DrmStore$UpdateLicense;)Landroid/provider/DrmStore$DrmConstraint;
    .locals 33
    .parameter "cx"
    .parameter "uri"
    .parameter "strFilePath"
    .parameter "updateLicense"

    .prologue
    .line 5991
    const-string v4, "DrmStore"

    const-string v5, "********getDrmConstraint (1)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5993
    const/4 v9, 0x0

    .line 5994
    .local v9, c:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 5995
    .local v12, contentUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 5996
    .local v3, cr:Landroid/content/ContentResolver;
    if-nez p2, :cond_0

    .line 5997
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 6002
    :goto_0
    if-nez v9, :cond_1

    .line 6004
    const-string v4, "DrmStore"

    const-string v5, "getDrmConstraint query DRM db failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6006
    const/4 v10, 0x0

    .line 6188
    :goto_1
    return-object v10

    .line 5999
    :cond_0
    const/4 v5, 0x0

    const-string v6, "_data=?"

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v7, v4

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    .line 6007
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 6008
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 6010
    const-string v4, "DrmStore"

    const-string v5, "getDrmConstraint no record."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6012
    const/4 v10, 0x0

    goto :goto_1

    .line 6015
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6016
    if-eqz p2, :cond_d

    .line 6017
    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 6018
    .local v24, index:I
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 6019
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 6038
    .end local v24           #index:I
    :goto_2
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contentUri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6041
    const-string v4, "delivery_type"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 6042
    .local v14, deliveryTypeColumnId:I
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 6043
    .local v13, deliveryType:I
    const-string/jumbo v4, "message_type"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 6044
    .local v28, messageTypeColumnId:I
    move/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 6045
    .local v27, messageType:Ljava/lang/String;
    const-string v4, "_size"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 6046
    .local v22, fileSizeColumnId:I
    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 6047
    .local v21, fileSize:I
    const/16 v29, 0x2

    .line 6048
    .local v29, permissionType:I
    if-nez p2, :cond_3

    .line 6049
    const-string v4, "_data"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 6050
    .local v20, filePathColumnId:I
    move/from16 v0, v20

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 6052
    .end local v20           #filePathColumnId:I
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 6054
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 6055
    const/16 v29, 0x2

    .line 6071
    :goto_3
    :try_start_0
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6074
    .local v19, file:Ljava/io/File;
    const/4 v4, 0x3

    if-eq v13, v4, :cond_4

    const/4 v4, 0x2

    if-ne v13, v4, :cond_12

    .line 6076
    :cond_4
    new-instance v23, Ljava/io/FileInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6084
    .local v23, fis:Ljava/io/InputStream;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v26

    .line 6091
    .local v26, manager:Landroid/drm/mobile1/DrmRightsManager;
    new-instance v11, Landroid/drm/mobile1/DrmRawContent;

    move-object/from16 v0, v23

    move/from16 v1, v21

    move-object/from16 v2, v27

    invoke-direct {v11, v0, v1, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 6092
    .local v11, content:Landroid/drm/mobile1/DrmRawContent;
    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v30

    .line 6095
    .local v30, rights:Landroid/drm/mobile1/DrmRights;
    if-nez v30, :cond_5

    const/4 v4, 0x3

    if-ne v13, v4, :cond_5

    .line 6097
    if-eqz p3, :cond_5

    .line 6098
    invoke-virtual {v11}, Landroid/drm/mobile1/DrmRawContent;->getRightsAddress()Ljava/lang/String;

    move-result-object v31

    .line 6099
    .local v31, rightsIssuer:Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/provider/DrmStore$UpdateLicense;->update(Ljava/lang/String;)V

    .line 6140
    .end local v31           #rightsIssuer:Ljava/lang/String;
    :cond_5
    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->close()V

    .line 6142
    if-eqz v30, :cond_14

    .line 6143
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRights;->getConstraint(I)Landroid/drm/mobile1/DrmConstraintInfo;

    move-result-object v25

    .line 6146
    .local v25, info:Landroid/drm/mobile1/DrmConstraintInfo;
    new-instance v10, Landroid/provider/DrmStore$DrmConstraint;

    move-object/from16 v0, v25

    invoke-direct {v10, v0}, Landroid/provider/DrmStore$DrmConstraint;-><init>(Landroid/drm/mobile1/DrmConstraintInfo;)V

    .line 6149
    .local v10, constraint:Landroid/provider/DrmStore$DrmConstraint;
    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6151
    if-eqz v10, :cond_8

    .line 6152
    const-wide/16 v15, 0x0

    .line 6153
    .local v15, differential:J
    const/16 v32, 0x0

    .line 6155
    .local v32, stampCursor:Landroid/database/Cursor;
    :try_start_1
    sget-object v4, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v32

    .line 6156
    if-eqz v32, :cond_6

    .line 6157
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 6158
    const-string/jumbo v4, "time_differential"

    move-object/from16 v0, v32

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 6159
    .local v17, differentialColumnId:I
    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v15

    .line 6167
    .end local v17           #differentialColumnId:I
    :cond_6
    if-eqz v32, :cond_7

    .line 6168
    :try_start_2
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 6171
    :cond_7
    :goto_4
    move-wide v0, v15

    invoke-virtual {v10, v0, v1}, Landroid/provider/DrmStore$DrmConstraint;->setDisserential(J)V

    .line 6173
    .end local v15           #differential:J
    .end local v32           #stampCursor:Landroid/database/Cursor;
    :cond_8
    monitor-exit v10

    goto/16 :goto_1

    .line 6175
    :catchall_0
    move-exception v4

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 6182
    .end local v10           #constraint:Landroid/provider/DrmStore$DrmConstraint;
    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v19           #file:Ljava/io/File;
    .end local v23           #fis:Ljava/io/InputStream;
    .end local v25           #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .end local v26           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v30           #rights:Landroid/drm/mobile1/DrmRights;
    :catch_0
    move-exception v18

    .line 6184
    .local v18, e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDrmConstraint : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6188
    .end local v18           #e:Ljava/lang/Exception;
    :goto_5
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 6021
    .end local v13           #deliveryType:I
    .end local v14           #deliveryTypeColumnId:I
    .end local v21           #fileSize:I
    .end local v22           #fileSizeColumnId:I
    .end local v27           #messageType:Ljava/lang/String;
    .end local v28           #messageTypeColumnId:I
    .end local v29           #permissionType:I
    .restart local v24       #index:I
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 6022
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2

    .line 6024
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 6025
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2

    .line 6027
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 6028
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2

    .line 6031
    :cond_c
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 6032
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 6035
    .end local v24           #index:I
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2

    .line 6057
    .restart local v13       #deliveryType:I
    .restart local v14       #deliveryTypeColumnId:I
    .restart local v21       #fileSize:I
    .restart local v22       #fileSizeColumnId:I
    .restart local v27       #messageType:Ljava/lang/String;
    .restart local v28       #messageTypeColumnId:I
    .restart local v29       #permissionType:I
    :cond_e
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 6058
    const/16 v29, 0x1

    goto/16 :goto_3

    .line 6060
    :cond_f
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 6061
    const/16 v29, 0x1

    goto/16 :goto_3

    .line 6063
    :cond_10
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 6064
    const/16 v29, 0x3

    goto/16 :goto_3

    .line 6067
    :cond_11
    const/16 v29, 0x2

    goto/16 :goto_3

    .line 6079
    .restart local v19       #file:Ljava/io/File;
    :cond_12
    :try_start_4
    const-string v4, "DrmStore"

    const-string v5, "getDrmConstraint no rights."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 6081
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 6162
    .restart local v10       #constraint:Landroid/provider/DrmStore$DrmConstraint;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v15       #differential:J
    .restart local v23       #fis:Ljava/io/InputStream;
    .restart local v25       #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .restart local v26       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v30       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v32       #stampCursor:Landroid/database/Cursor;
    :catch_1
    move-exception v18

    .line 6164
    .restart local v18       #e:Ljava/lang/Exception;
    :try_start_5
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get differential: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 6167
    if-eqz v32, :cond_7

    .line 6168
    :try_start_6
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 6167
    .end local v18           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    if-eqz v32, :cond_13

    .line 6168
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 6167
    :cond_13
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 6179
    .end local v10           #constraint:Landroid/provider/DrmStore$DrmConstraint;
    .end local v15           #differential:J
    .end local v25           #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .end local v32           #stampCursor:Landroid/database/Cursor;
    :cond_14
    :try_start_7
    const-string v4, "DrmStore"

    const-string v5, "getDrmConstraint : rights is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_5
.end method

.method public static final getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 1
    .parameter "cx"
    .parameter "uri"

    .prologue
    .line 7991
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 24
    .parameter "cx"
    .parameter "uri"
    .parameter "strFilePath"

    .prologue
    .line 7038
    const-string v3, "DrmStore"

    const-string v4, "********getDrmContentStream"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7041
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 7042
    .local v2, cr:Landroid/content/ContentResolver;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v20

    .line 7043
    .local v20, manager:Landroid/drm/mobile1/DrmRightsManager;
    const/4 v10, 0x0

    .line 7044
    .local v10, content:Landroid/drm/mobile1/DrmRawContent;
    const/16 v22, 0x0

    .line 7045
    .local v22, rights:Landroid/drm/mobile1/DrmRights;
    const/4 v14, 0x0

    .line 7046
    .local v14, drmContentStream:Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 7048
    .local v8, c:Landroid/database/Cursor;
    if-nez p2, :cond_0

    .line 7049
    sget-object v4, Landroid/provider/DrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id"

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 7054
    :goto_0
    if-nez v8, :cond_1

    .line 7056
    const-string v3, "DrmStore"

    const-string v4, "getDrmContentStream query failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7058
    const/4 v3, 0x0

    .line 7130
    :goto_1
    return-object v3

    .line 7051
    :cond_0
    sget-object v4, Landroid/provider/DrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const-string v5, "_data=?"

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v6, v3

    const-string v7, "_id"

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0

    .line 7059
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 7061
    const-string v3, "DrmStore"

    const-string v4, "getDrmContentStream no record."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7063
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 7064
    const/4 v3, 0x0

    goto :goto_1

    .line 7067
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7068
    const-string v3, "delivery_type"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 7069
    .local v13, deliveryTypeColumnId:I
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 7070
    .local v12, deliveryType:I
    const-string v3, "_size"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 7071
    .local v19, fileSizeColumnId:I
    move/from16 v0, v19

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 7072
    .local v18, fileSize:I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 7075
    :try_start_0
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7076
    .local v17, file:Ljava/io/File;
    new-instance v23, Ljava/io/FileInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 7078
    .local v23, tempFin:Ljava/io/InputStream;
    packed-switch v12, :pswitch_data_0

    .end local v17           #file:Ljava/io/File;
    .end local v23           #tempFin:Ljava/io/InputStream;
    :goto_2
    move-object v3, v14

    .line 7130
    goto :goto_1

    .line 7081
    .restart local v17       #file:Ljava/io/File;
    .restart local v23       #tempFin:Ljava/io/InputStream;
    :pswitch_0
    new-instance v11, Landroid/drm/mobile1/DrmRawContent;

    const-string v3, "application/vnd.oma.drm.message"

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-direct {v11, v0, v1, v3}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7082
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .local v11, content:Landroid/drm/mobile1/DrmRawContent;
    :try_start_1
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v21

    .line 7083
    .local v21, right:Landroid/drm/mobile1/DrmRights;
    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/drm/mobile1/DrmRawContent;->getContentDecryptStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v14

    move-object v10, v11

    .line 7084
    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    goto :goto_2

    .line 7088
    .end local v21           #right:Landroid/drm/mobile1/DrmRights;
    :pswitch_1
    :try_start_2
    new-instance v11, Landroid/drm/mobile1/DrmRawContent;

    const-string v3, "application/vnd.oma.drm.message"

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-direct {v11, v0, v1, v3}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 7089
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    :try_start_3
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v22

    .line 7091
    if-eqz v22, :cond_4

    .line 7092
    invoke-static/range {p0 .. p2}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v9

    .line 7094
    .local v9, constraint:Landroid/provider/DrmStore$DrmConstraint;
    move-object/from16 v0, p1

    invoke-static {v2, v9, v0}, Landroid/provider/DrmStore;->checkExpiration(Landroid/content/ContentResolver;Landroid/provider/DrmStore$DrmConstraint;Landroid/net/Uri;)I

    move-result v3

    if-nez v3, :cond_3

    .line 7095
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/drm/mobile1/DrmRawContent;->getContentDecryptStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v14

    move-object v10, v11

    .line 7102
    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    goto :goto_2

    .line 7098
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    :cond_3
    const-string v3, "DrmStore"

    const-string v4, "getDrmContentStream constraint expired."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7100
    const/4 v3, 0x0

    move-object v10, v11

    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    goto/16 :goto_1

    .line 7104
    .end local v9           #constraint:Landroid/provider/DrmStore$DrmConstraint;
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    :cond_4
    const-string v3, "DrmStore"

    const-string v4, "getDrmContentStream no rights installed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 7106
    const/4 v3, 0x0

    move-object v10, v11

    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    goto/16 :goto_1

    .line 7111
    :pswitch_2
    :try_start_4
    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 7112
    .local v15, drmStream:Ljava/io/FileInputStream;
    new-instance v11, Landroid/drm/mobile1/DrmRawContent;

    const-string v3, "application/vnd.oma.drm.content"

    move/from16 v0, v18

    invoke-direct {v11, v15, v0, v3}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 7113
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    :try_start_5
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v22

    .line 7114
    if-nez v22, :cond_5

    .line 7116
    const-string v3, "DrmStore"

    const-string v4, "getDrmContentStream no rights installed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7118
    const/4 v3, 0x0

    move-object v10, v11

    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    goto/16 :goto_1

    .line 7120
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    :cond_5
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v14

    move-object v10, v11

    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    goto/16 :goto_2

    .line 7123
    .end local v15           #drmStream:Ljava/io/FileInputStream;
    .end local v17           #file:Ljava/io/File;
    .end local v23           #tempFin:Ljava/io/InputStream;
    :catch_0
    move-exception v16

    .line 7125
    .local v16, e:Ljava/lang/Exception;
    :goto_3
    :try_start_6
    const-string v3, "DrmStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDrmContentStream : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 7127
    .end local v16           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_4
    throw v3

    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v17       #file:Ljava/io/File;
    .restart local v23       #tempFin:Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    move-object v10, v11

    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    goto :goto_4

    .line 7123
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    :catch_1
    move-exception v16

    move-object v10, v11

    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    goto :goto_3

    .line 7078
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static final getDrmContrain(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;
    .locals 1
    .parameter "cr"
    .parameter "uri"
    .parameter "permissionType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6202
    invoke-static {p0, p1, p2}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    return-object v0
.end method

.method public static getDrmCursor(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/database/Cursor;
    .locals 8
    .parameter "cr"
    .parameter "uri"
    .parameter "nDeliveryType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 7264
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 7268
    .local v3, strWhere:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "existence=\'exist\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7270
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    .line 7273
    .local v7, nHeadLength:I
    and-int/lit8 v0, p2, 0xf

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 7274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "delivery_type=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7276
    :cond_0
    and-int/lit16 v0, p2, 0xf0

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_2

    .line 7277
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v7, :cond_1

    .line 7278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7279
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "delivery_type=2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7281
    :cond_2
    and-int/lit16 v0, p2, 0xf00

    const/16 v1, 0xf00

    if-ne v0, v1, :cond_4

    .line 7282
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v7, :cond_3

    .line 7283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7284
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "delivery_type=3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7288
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7291
    const-string v0, "DrmStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start query where "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7295
    sget-object v2, Landroid/provider/DrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7297
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 7298
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    .line 7301
    :cond_5
    return-object v6
.end method

.method private static getDrmCursor(Landroid/content/Context;Landroid/net/Uri;I)Landroid/database/Cursor;
    .locals 2
    .parameter "cx"
    .parameter "uri"
    .parameter "nDeliveryType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7248
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 7250
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {v0, p1, p2}, Landroid/provider/DrmStore;->getDrmCursor(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public static final getDrmFileStatus(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 1
    .parameter "cx"
    .parameter "uri"

    .prologue
    .line 7976
    const/4 v0, 0x0

    return v0
.end method

.method public static final getDrmFileStatus(Ljava/lang/String;)I
    .locals 1
    .parameter "fileName"

    .prologue
    .line 7983
    const/4 v0, 0x0

    return v0
.end method

.method public static getDrmImageConstraint(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7853
    sget-object v0, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    return-object v0
.end method

.method public static getDrmImageCursor(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 1
    .parameter "cx"
    .parameter "nDeliveryType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7801
    sget-object v0, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Landroid/provider/DrmStore;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmImageStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7905
    sget-object v0, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Landroid/provider/DrmStore;->getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static getDrmJarConstraint(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7892
    sget-object v0, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    return-object v0
.end method

.method public static getDrmJarCursor(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 1
    .parameter "cx"
    .parameter "nDeliveryType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7840
    sget-object v0, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Landroid/provider/DrmStore;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmJarStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7944
    sget-object v0, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Landroid/provider/DrmStore;->getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmLicenseInfo(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "cx"
    .parameter "uri"

    .prologue
    .line 7953
    const/4 v0, 0x0

    return-object v0
.end method

.method private static final getDrmRight(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/drm/mobile1/DrmRights;
    .locals 17
    .parameter "cr"
    .parameter "uri"
    .parameter "strFilePath"

    .prologue
    .line 7192
    const/4 v3, 0x0

    const-string v4, "_data=?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v5, v1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 7193
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 7195
    const-string v1, "DrmStore"

    const-string v2, "getDrmRight query DRM db failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7197
    const/16 v16, 0x0

    .line 7234
    :cond_0
    :goto_0
    return-object v16

    .line 7198
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 7200
    const-string v1, "DrmStore"

    const-string v2, "getDrmRight no record."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7202
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 7203
    const/16 v16, 0x0

    goto :goto_0

    .line 7206
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7207
    const-string/jumbo v1, "message_type"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 7208
    .local v15, messageTypeColumnId:I
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 7209
    .local v14, messageType:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 7211
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7212
    .local v10, file:Ljava/io/File;
    const/4 v11, 0x0

    .line 7213
    .local v11, fis:Ljava/io/FileInputStream;
    const/16 v16, 0x0

    .line 7215
    .local v16, rights:Landroid/drm/mobile1/DrmRights;
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7216
    .end local v11           #fis:Ljava/io/FileInputStream;
    .local v12, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v8, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {v8, v12, v1, v14}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 7217
    .local v8, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v13

    .line 7218
    .local v13, manager:Landroid/drm/mobile1/DrmRightsManager;
    invoke-virtual {v13, v8}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v16

    .line 7225
    if-eqz v12, :cond_3

    .line 7226
    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_3
    :goto_1
    move-object v11, v12

    .line 7233
    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 7219
    .end local v8           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v13           #manager:Landroid/drm/mobile1/DrmRightsManager;
    :catch_0
    move-exception v9

    .line 7221
    .local v9, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v1, "DrmStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDrmRight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7225
    if-eqz v11, :cond_0

    .line 7226
    :try_start_4
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 7228
    :catch_1
    move-exception v9

    .line 7230
    const-string v1, "DrmStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDrmRight : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7224
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 7225
    :goto_3
    if-eqz v11, :cond_4

    .line 7226
    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 7224
    :cond_4
    :goto_4
    throw v1

    .line 7228
    :catch_2
    move-exception v9

    .line 7230
    .restart local v9       #e:Ljava/lang/Exception;
    const-string v2, "DrmStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDrmRight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 7228
    .end local v9           #e:Ljava/lang/Exception;
    .end local v11           #fis:Ljava/io/FileInputStream;
    .restart local v8       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    .restart local v13       #manager:Landroid/drm/mobile1/DrmRightsManager;
    :catch_3
    move-exception v9

    .line 7230
    .restart local v9       #e:Ljava/lang/Exception;
    const-string v1, "DrmStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDrmRight : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 7224
    .end local v8           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v9           #e:Ljava/lang/Exception;
    .end local v13           #manager:Landroid/drm/mobile1/DrmRightsManager;
    :catchall_1
    move-exception v1

    move-object v11, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 7219
    .end local v11           #fis:Ljava/io/FileInputStream;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v9

    move-object v11, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method public static getDrmVideoConstraint(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7879
    sget-object v0, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    return-object v0
.end method

.method public static getDrmVideoCursor(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 1
    .parameter "cx"
    .parameter "nDeliveryType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7827
    sget-object v0, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Landroid/provider/DrmStore;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmVideoStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7931
    sget-object v0, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Landroid/provider/DrmStore;->getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalStorageDownloadPath()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 7578
    const/4 v7, 0x0

    .line 7579
    .local v7, resultDownloadPath:Ljava/lang/String;
    const/4 v3, 0x0

    .line 7581
    .local v3, findName:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "mounted"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 7582
    const-string v9, "DrmStore"

    const-string v10, " @@@@@ Environment.getExternalStorageState() is not mounted!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 7644
    .end local v7           #resultDownloadPath:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 7587
    .restart local v7       #resultDownloadPath:Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 7589
    .local v2, external_storage_file:Ljava/io/File;
    if-nez v2, :cond_1

    .line 7590
    const-string v9, "DrmStore"

    const-string v10, " @@@@@ Environment.getExternalStorageDirectory() ERROR!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 7592
    goto :goto_0

    .line 7594
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 7595
    const-string v9, "DrmStore"

    const-string v10, " @@@@@ Environment.getExternalStorageDirectory() doesn\'t exist!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 7597
    goto :goto_0

    .line 7601
    :cond_2
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v5, v0, v4

    .line 7602
    .local v5, item:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 7603
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 7604
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 7618
    .end local v5           #item:Ljava/io/File;
    :cond_3
    if-eqz v3, :cond_5

    .line 7619
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 7623
    const-string v9, "DrmStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " @@@@@ the name of download folder in sdcard is="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7624
    const-string v9, "DrmStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " @@@@@ we got download path is = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 7636
    :catch_0
    move-exception v1

    .line 7637
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "DrmStore"

    const-string v10, " @@@@@ get external storage directory ERROR!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7638
    const-string v9, "DrmStore"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7639
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v8

    .line 7641
    goto/16 :goto_0

    .line 7601
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v5       #item:Ljava/io/File;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 7609
    .end local v0           #arr$:[Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #item:Ljava/io/File;
    .end local v6           #len$:I
    :catch_1
    move-exception v1

    .line 7610
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v9, "DrmStore"

    const-string v10, " @@@@@ list files ERROR!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7611
    const-string v9, "DrmStore"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7612
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v8

    .line 7614
    goto/16 :goto_0

    .line 7628
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #arr$:[Ljava/io/File;
    .restart local v4       #i$:I
    .restart local v6       #len$:I
    :cond_5
    :try_start_2
    sget-object v9, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 7632
    const-string v9, "DrmStore"

    const-string v10, " @@@@@ No download folder in sdcard."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7633
    const-string v9, "DrmStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " @@@@@ we got download path is = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method private static final getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .parameter "cr"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 4378
    const/4 v8, 0x0

    .line 4379
    .local v8, result:Ljava/lang/String;
    sget-object v2, Landroid/provider/DrmStore;->FILEPATH_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4380
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 4381
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4382
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 4383
    .local v7, filePathColumnIndex:I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 4385
    .end local v7           #filePathColumnIndex:I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4387
    :cond_1
    return-object v8
.end method

.method public static getInternalStorageDownloadPath()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 7501
    const/4 v7, 0x0

    .line 7502
    .local v7, resultDownloadPath:Ljava/lang/String;
    const/4 v2, 0x0

    .line 7505
    .local v2, findName:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "mounted"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 7506
    const-string v9, "DrmStore"

    const-string v10, " @@@@@ Environment.getPhoneStorageDirectory() is not mounted!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 7572
    .end local v7           #resultDownloadPath:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 7512
    .restart local v7       #resultDownloadPath:Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 7514
    .local v4, internal_storage_file:Ljava/io/File;
    if-nez v4, :cond_1

    .line 7516
    const-string v9, "DrmStore"

    const-string v10, " @@@@@ Environment.getPhoneStorageDirectory() ERROR!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 7519
    goto :goto_0

    .line 7521
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 7522
    const-string v9, "DrmStore"

    const-string v10, " @@@@@ Environment.getPhoneStorageDirectory() doesn\'t exist!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 7524
    goto :goto_0

    .line 7528
    :cond_2
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v6, :cond_3

    aget-object v5, v0, v3

    .line 7529
    .local v5, item:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 7530
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 7531
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 7546
    .end local v5           #item:Ljava/io/File;
    :cond_3
    if-eqz v2, :cond_5

    .line 7547
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 7551
    const-string v9, "DrmStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " @@@@@ the name of download folder in internal storage is="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7552
    const-string v9, "DrmStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " @@@@@ we got download path is = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 7564
    :catch_0
    move-exception v1

    .line 7565
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "DrmStore"

    const-string v10, " @@@@@ get phone storage directory ERROR!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7566
    const-string v9, "DrmStore"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7567
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v8

    .line 7569
    goto/16 :goto_0

    .line 7528
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v5       #item:Ljava/io/File;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 7536
    .end local v0           #arr$:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v5           #item:Ljava/io/File;
    .end local v6           #len$:I
    :catch_1
    move-exception v1

    .line 7537
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v9, "DrmStore"

    const-string v10, " @@@@@ list files ERROR!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7538
    const-string v9, "DrmStore"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7539
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v8

    .line 7541
    goto/16 :goto_0

    .line 7556
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #arr$:[Ljava/io/File;
    .restart local v3       #i$:I
    .restart local v6       #len$:I
    :cond_5
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 7560
    const-string v9, "DrmStore"

    const-string v10, " @@@@@ No download folder in internal storage."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7561
    const-string v9, "DrmStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " @@@@@ we got download path is = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method private static getSecretKeySpecUsingKeyGenerator()Ljavax/crypto/spec/SecretKeySpec;
    .locals 9

    .prologue
    .line 7349
    const/4 v4, 0x0

    .line 7352
    .local v4, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string v6, "AES"

    invoke-static {v6}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 7354
    .local v1, kgen:Ljavax/crypto/KeyGenerator;
    const/16 v6, 0x80

    invoke-virtual {v1, v6}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 7357
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 7359
    .local v3, skey:Ljavax/crypto/SecretKey;
    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    .line 7361
    .local v2, raw:[B
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "AES"

    invoke-direct {v5, v2, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    .local v5, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    move-object v4, v5

    .line 7367
    .end local v1           #kgen:Ljavax/crypto/KeyGenerator;
    .end local v2           #raw:[B
    .end local v3           #skey:Ljavax/crypto/SecretKey;
    .end local v5           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v4       #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v4

    .line 7362
    :catch_0
    move-exception v0

    .line 7364
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const-string v6, "DrmStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NoSuchAlgorithmException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getSecretKeySpecUsingSimNumber()Ljavax/crypto/spec/SecretKeySpec;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7371
    const/4 v3, 0x0

    .line 7374
    .local v3, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 7376
    .local v1, md:Ljava/security/MessageDigest;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    .line 7378
    .local v5, telMngr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v2

    .line 7380
    .local v2, simNumber:Ljava/lang/String;
    const-string v6, "DrmStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIM number: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7383
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 7385
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    const-string v7, "AES"

    invoke-direct {v4, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    .local v4, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    move-object v3, v4

    .line 7392
    .end local v1           #md:Ljava/security/MessageDigest;
    .end local v2           #simNumber:Ljava/lang/String;
    .end local v4           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v5           #telMngr:Landroid/telephony/TelephonyManager;
    .restart local v3       #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v3

    .line 7387
    :catch_0
    move-exception v0

    .line 7389
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const-string v6, "DrmStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NoSuchAlgorithmException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final getUTC(Landroid/content/Context;)Ljava/util/Date;
    .locals 24
    .parameter "cx"

    .prologue
    .line 7139
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "_id"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 7140
    .local v14, stamp:Landroid/database/Cursor;
    if-nez v14, :cond_0

    .line 7141
    const-string v1, "DrmStore"

    const-string v2, "consumeRights query stamp failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7142
    const/4 v1, 0x0

    .line 7180
    :goto_0
    return-object v1

    .line 7143
    :cond_0
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 7144
    const-string v1, "DrmStore"

    const-string v2, "consumeRights: -5"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7145
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 7146
    const/4 v1, 0x0

    goto :goto_0

    .line 7149
    :cond_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7150
    const-string/jumbo v1, "time_stamp"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 7151
    .local v20, syncTimeColumnId:I
    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 7152
    .local v18, syncTime:J
    const-string v1, "clock_stamp"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 7153
    .local v17, syncClockColumnId:I
    move/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 7154
    .local v15, syncClock:J
    const-string/jumbo v1, "timezone_stamp"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 7155
    .local v23, syncTimeZoneColumnId:I
    move/from16 v0, v23

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 7156
    .local v21, syncTimeZone:J
    const-string/jumbo v1, "time_differential"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 7157
    .local v9, differentColumnId:I
    invoke-interface {v14, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 7158
    .local v10, differential:J
    const-string/jumbo v1, "network_sync"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 7159
    .local v13, network_sync:I
    invoke-interface {v14, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 7160
    .local v12, networkSync:Ljava/lang/String;
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 7162
    const-wide/16 v1, 0x0

    cmp-long v1, v18, v1

    if-eqz v1, :cond_2

    const-wide/16 v1, 0x0

    cmp-long v1, v15, v1

    if-nez v1, :cond_3

    .line 7163
    :cond_2
    const-string v1, "DrmStore"

    const-string v2, "consumeRights: -5"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7164
    const/4 v1, 0x0

    goto :goto_0

    .line 7167
    :cond_3
    if-nez v12, :cond_4

    .line 7168
    const-string v1, "DrmStore"

    const-string v2, "checkExpiration : -5"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7169
    const/4 v1, 0x0

    goto :goto_0

    .line 7170
    :cond_4
    const-string v1, "TRUE"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 7171
    const-string v1, "DrmStore"

    const-string v2, "checkExpiration : -5"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7172
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 7176
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v10

    sub-long v7, v1, v21

    .line 7178
    .local v7, date:J
    const-string v1, "DrmStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "syncTimeZone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    div-long v3, v21, v3

    const-wide/16 v5, 0x3c

    div-long/2addr v3, v5

    const-wide/16 v5, 0x3c

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7180
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v7, v8}, Ljava/util/Date;-><init>(J)V

    goto/16 :goto_0
.end method

.method private static final installRightsObject(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "file"
    .parameter "mediaType"

    .prologue
    const/4 v7, 0x0

    .line 5060
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 5062
    :cond_0
    const-string v8, "DrmStore"

    const-string/jumbo v9, "installRightsObject Input error."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5118
    :cond_1
    :goto_0
    return-object v7

    .line 5066
    :cond_2
    const/4 v3, 0x0

    .line 5068
    .local v3, fin:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5069
    .end local v3           #fin:Ljava/io/FileInputStream;
    .local v4, fin:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v5

    .line 5070
    .local v5, manager:Landroid/drm/mobile1/DrmRightsManager;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v8

    invoke-virtual {v5, v4, v8, p1}, Landroid/drm/mobile1/DrmRightsManager;->installRights(Ljava/io/InputStream;ILjava/lang/String;)Landroid/drm/mobile1/DrmRights;

    move-result-object v6

    .line 5071
    .local v6, rights:Landroid/drm/mobile1/DrmRights;
    if-eqz v6, :cond_3

    .line 5072
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 5073
    invoke-virtual {v6}, Landroid/drm/mobile1/DrmRights;->getUid()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    move-result-object v7

    .line 5109
    if-eqz v4, :cond_1

    .line 5110
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 5112
    :catch_0
    move-exception v0

    .line 5114
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "DrmStore"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    .end local v4           #fin:Ljava/io/FileInputStream;
    .end local v5           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v6           #rights:Landroid/drm/mobile1/DrmRights;
    :goto_1
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5075
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    .restart local v5       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v6       #rights:Landroid/drm/mobile1/DrmRights;
    :cond_3
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    .line 5109
    if-eqz v4, :cond_4

    .line 5110
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    :cond_4
    :goto_2
    move-object v3, v4

    .line 5117
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    goto :goto_0

    .line 5076
    .end local v5           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v6           #rights:Landroid/drm/mobile1/DrmRights;
    :catch_1
    move-exception v0

    move-object v4, v3

    .line 5078
    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v0       #e:Ljava/lang/Exception;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :goto_3
    :try_start_5
    const-string v8, "DrmStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Install right: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 5082
    if-eqz v4, :cond_5

    .line 5083
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 5092
    :cond_5
    :goto_4
    :try_start_7
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 5093
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    :try_start_8
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v5

    .line 5094
    .restart local v5       #manager:Landroid/drm/mobile1/DrmRightsManager;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v8

    invoke-virtual {v5, v3, v8, p1}, Landroid/drm/mobile1/DrmRightsManager;->installRights(Ljava/io/InputStream;ILjava/lang/String;)Landroid/drm/mobile1/DrmRights;

    move-result-object v6

    .line 5096
    .restart local v6       #rights:Landroid/drm/mobile1/DrmRights;
    if-eqz v6, :cond_7

    .line 5097
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 5098
    invoke-virtual {v6}, Landroid/drm/mobile1/DrmRights;->getUid()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    move-result-object v7

    .line 5109
    if-eqz v3, :cond_1

    .line 5110
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_0

    .line 5112
    :catch_2
    move-exception v0

    .line 5114
    const-string v8, "DrmStore"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 5085
    .end local v3           #fin:Ljava/io/FileInputStream;
    .end local v5           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v6           #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :catch_3
    move-exception v1

    .line 5087
    .local v1, e2:Ljava/lang/Exception;
    :try_start_a
    const-string v8, "DrmStore"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4

    .line 5108
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #e2:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    move-object v3, v4

    .line 5109
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    :goto_5
    if-eqz v3, :cond_6

    .line 5110
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 5108
    :cond_6
    :goto_6
    throw v7

    .line 5101
    .restart local v0       #e:Ljava/lang/Exception;
    .restart local v5       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v6       #rights:Landroid/drm/mobile1/DrmRights;
    :cond_7
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 5109
    .end local v5           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v6           #rights:Landroid/drm/mobile1/DrmRights;
    :goto_7
    if-eqz v3, :cond_1

    .line 5110
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_0

    .line 5112
    :catch_4
    move-exception v0

    .line 5114
    const-string v8, "DrmStore"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 5102
    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :catch_5
    move-exception v2

    move-object v3, v4

    .line 5104
    .end local v4           #fin:Ljava/io/FileInputStream;
    .local v2, e3:Ljava/lang/Exception;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    :goto_8
    :try_start_e
    const-string v8, "DrmStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Install right: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_7

    .line 5108
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #e3:Ljava/lang/Exception;
    :catchall_1
    move-exception v7

    goto :goto_5

    .line 5112
    :catch_6
    move-exception v0

    .line 5114
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v8, "DrmStore"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 5112
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    .restart local v5       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v6       #rights:Landroid/drm/mobile1/DrmRights;
    :catch_7
    move-exception v0

    .line 5114
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v8, "DrmStore"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 5102
    .end local v4           #fin:Ljava/io/FileInputStream;
    .end local v5           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v6           #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    :catch_8
    move-exception v2

    goto :goto_8

    .line 5076
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :catch_9
    move-exception v0

    goto/16 :goto_3
.end method

.method public static final isDrmContent(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 7995
    const/4 v0, 0x1

    return v0
.end method

.method public static final isDrmContent(Ljava/lang/String;)Z
    .locals 1
    .parameter "filePath"

    .prologue
    .line 7999
    const/4 v0, 0x1

    return v0
.end method

.method public static final isFLDrmFile(Ljava/io/File;)Z
    .locals 10
    .parameter "file"

    .prologue
    .line 3234
    const-string v7, "DrmStore"

    const-string v8, " @@@@@     isFLDrmFile() - BEGIN. "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3237
    const/4 v0, 0x0

    .line 3238
    .local v0, bResult:Z
    const/4 v4, 0x0

    .line 3239
    .local v4, fin:Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 3243
    .local v1, drmContent:Landroid/drm/mobile1/DrmRawContent;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3244
    .end local v4           #fin:Ljava/io/FileInputStream;
    .local v5, fin:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v7

    const-string v8, "application/vnd.oma.drm.message"

    invoke-direct {v2, v5, v7, v8}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 3248
    .end local v1           #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .local v2, drmContent:Landroid/drm/mobile1/DrmRawContent;
    :try_start_2
    invoke-virtual {v2}, Landroid/drm/mobile1/DrmRawContent;->getRawType()I

    move-result v6

    .line 3252
    .local v6, method:I
    const-string v7, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " @@@@@     method = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 3255
    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 3257
    const/4 v0, 0x1

    .line 3273
    :cond_0
    if-eqz v5, :cond_1

    .line 3275
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    :goto_0
    move-object v1, v2

    .end local v2           #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v1       #drmContent:Landroid/drm/mobile1/DrmRawContent;
    move-object v4, v5

    .line 3286
    .end local v5           #fin:Ljava/io/FileInputStream;
    .end local v6           #method:I
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    const-string v7, "DrmStore"

    const-string v8, " @@@@@     isFLDrmFile() - END. "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3289
    return v0

    .line 3260
    :catch_0
    move-exception v3

    .line 3262
    .local v3, e:Ljava/lang/Exception;
    :goto_2
    const/4 v0, 0x0

    .line 3266
    :try_start_4
    const-string v7, "DrmStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " @@@@@     "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3273
    if-eqz v4, :cond_2

    .line 3275
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 3278
    :catch_1
    move-exception v3

    .line 3280
    const-string v7, "DrmStore"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3271
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 3273
    :goto_3
    if-eqz v4, :cond_3

    .line 3275
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 3271
    :cond_3
    :goto_4
    throw v7

    .line 3278
    :catch_2
    move-exception v3

    .line 3280
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v8, "DrmStore"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3278
    .end local v1           #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v2       #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v5       #fin:Ljava/io/FileInputStream;
    .restart local v6       #method:I
    :catch_3
    move-exception v3

    .line 3280
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v7, "DrmStore"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3271
    .end local v2           #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v6           #method:I
    .restart local v1       #drmContent:Landroid/drm/mobile1/DrmRawContent;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1           #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v2       #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v5       #fin:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v7

    move-object v1, v2

    .end local v2           #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v1       #drmContent:Landroid/drm/mobile1/DrmRawContent;
    move-object v4, v5

    .end local v5           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    goto :goto_3

    .line 3260
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v5       #fin:Ljava/io/FileInputStream;
    :catch_4
    move-exception v3

    move-object v4, v5

    .end local v5           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v1           #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v2       #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v5       #fin:Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    move-object v1, v2

    .end local v2           #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v1       #drmContent:Landroid/drm/mobile1/DrmRawContent;
    move-object v4, v5

    .end local v5           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static final isRightsUnlimited(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1
    .parameter "cx"
    .parameter "uri"

    .prologue
    .line 8013
    const/4 v0, 0x1

    return v0
.end method

.method public static final isRightsValidByResultCode(I)Z
    .locals 1
    .parameter "resultCode"

    .prologue
    .line 8006
    const/4 v0, 0x1

    return v0
.end method

.method private static final parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/ContentValues;
    .locals 6
    .parameter "cx"
    .parameter "file"
    .parameter "mediaType"
    .parameter "mimeType"
    .parameter "uri"

    .prologue
    .line 5396
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/provider/DrmStore;->parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method private static final parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)Landroid/content/ContentValues;
    .locals 7
    .parameter "cx"
    .parameter "file"
    .parameter "mediaType"
    .parameter "mimeType"
    .parameter "uri"
    .parameter "destination"

    .prologue
    .line 5401
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Landroid/provider/DrmStore;->parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method private static final parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentValues;
    .locals 31
    .parameter "cx"
    .parameter "file"
    .parameter "mediaType"
    .parameter "mimeType"
    .parameter "uri"
    .parameter "destination"
    .parameter "skipMediaDbUpdate"

    .prologue
    .line 5416
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 5417
    .local v3, cr:Landroid/content/ContentResolver;
    new-instance v29, Landroid/content/ContentValues;

    const/4 v4, 0x3

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 5418
    .local v29, values:Landroid/content/ContentValues;
    new-instance v19, Landroid/media/MediaInfo;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/media/MediaInfo;-><init>(Landroid/content/Context;)V

    .line 5419
    .local v19, mediaInfo:Landroid/media/MediaInfo;
    const/16 v20, 0x0

    .line 5420
    .local v20, mediaTag:Landroid/media/MediaInfo$MediaTag;
    const/16 v23, 0x0

    .line 5422
    .local v23, parseFile:Ljava/io/File;
    :try_start_0
    const-string v4, "application/vnd.oma.drm.content"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5423
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/media/MediaInfo;->parseSingleFile(Ljava/lang/String;)Landroid/media/MediaInfo$MediaTag;

    move-result-object v20

    .line 5424
    if-eqz v20, :cond_0

    .line 5425
    const/4 v4, 0x3

    move-object/from16 v0, v20

    iput v4, v0, Landroid/media/MediaInfo$MediaTag;->mDrmType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5521
    :cond_0
    :goto_0
    if-eqz v20, :cond_14

    .line 5524
    sget-object v5, Landroid/provider/DrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p4

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 5525
    .local v13, cursor:Landroid/database/Cursor;
    if-eqz v13, :cond_b

    .line 5526
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 5527
    const-string v4, "_data"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 5528
    .local v25, pathIndex:I
    move/from16 v0, v25

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    .line 5529
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 5530
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    .line 5535
    .end local v25           #pathIndex:I
    :cond_1
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 5541
    :goto_2
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mediaTag.mPath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5542
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mediaTag.mAlbum = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5543
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mediaTag.mArtist = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5544
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mediaTag.mFilename = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mFilename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5545
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mediaTag.mTitle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5549
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    if-nez v4, :cond_e

    .line 5551
    const-string v4, "DrmStore"

    const-string v5, "No title information in content, we have to decide one"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5553
    sget-object v5, Landroid/provider/DrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p4

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 5554
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_d

    .line 5555
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 5556
    const-string/jumbo v4, "title"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 5557
    .local v28, titleIndex:I
    move/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    .line 5558
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 5559
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    .line 5564
    .end local v28           #titleIndex:I
    :cond_2
    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5569
    :goto_4
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 5570
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "We decide the tilte is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5578
    .end local v9           #c:Landroid/database/Cursor;
    :cond_3
    :goto_5
    sget-object v4, Landroid/provider/DrmStore$Albums;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->ALBUMS_PROJECTION:[Ljava/lang/String;

    const-string v6, "album=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v7, v8

    const-string v8, "album_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 5579
    .local v10, cAlbums:Landroid/database/Cursor;
    if-nez v10, :cond_f

    .line 5581
    const-string v4, "DrmStore"

    const-string/jumbo v5, "query Albums failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5588
    const/16 v29, 0x0

    .line 5704
    .end local v10           #cAlbums:Landroid/database/Cursor;
    .end local v13           #cursor:Landroid/database/Cursor;
    .end local v29           #values:Landroid/content/ContentValues;
    :cond_4
    :goto_6
    return-object v29

    .line 5429
    .restart local v29       #values:Landroid/content/ContentValues;
    :cond_5
    const/16 v16, 0x0

    .line 5431
    .local v16, extention:Ljava/lang/String;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p3 .. p3}, Landroid/media/MediaFile;->getExtensionForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 5452
    const/4 v4, 0x7

    move/from16 v0, p5

    if-ne v0, v4, :cond_8

    .line 5455
    new-instance v24, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.android.providers.drm/rights/PHONE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v23           #parseFile:Ljava/io/File;
    .local v24, parseFile:Ljava/io/File;
    move-object/from16 v23, v24

    .line 5470
    .end local v24           #parseFile:Ljava/io/File;
    .restart local v23       #parseFile:Ljava/io/File;
    :goto_7
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Create template file:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5473
    new-instance v22, Ljava/io/FileOutputStream;

    invoke-direct/range {v22 .. v23}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 5474
    .local v22, os:Ljava/io/FileOutputStream;
    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 5475
    .local v17, fin:Ljava/io/FileInputStream;
    new-instance v12, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->available()I

    move-result v4

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v12, v0, v4, v1}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 5476
    .local v12, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v18

    .line 5477
    .local v18, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v26

    .line 5478
    .local v26, rights:Landroid/drm/mobile1/DrmRights;
    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v27

    .line 5479
    .local v27, stream:Ljava/io/InputStream;
    invoke-virtual {v12}, Landroid/drm/mobile1/DrmRawContent;->getRawType()I

    move-result v21

    .line 5480
    .local v21, method:I
    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/provider/DrmStore;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I

    .line 5481
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V

    .line 5482
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V

    .line 5483
    if-eqz v27, :cond_6

    .line 5484
    invoke-virtual/range {v27 .. v27}, Ljava/io/InputStream;->close()V

    .line 5489
    :cond_6
    sget-object v4, Landroid/provider/DrmStore;->CMD_CHMOD:[Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 5490
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore;->CMD_CHMOD:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    .line 5493
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/media/MediaInfo;->parseSingleFile(Ljava/lang/String;)Landroid/media/MediaInfo$MediaTag;

    move-result-object v20

    .line 5494
    if-eqz v20, :cond_7

    .line 5495
    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/media/MediaInfo$MediaTag;->mDrmType:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5505
    :cond_7
    if-eqz v23, :cond_0

    :try_start_2
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5506
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5507
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 5513
    .end local v12           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v16           #extention:Ljava/lang/String;
    .end local v17           #fin:Ljava/io/FileInputStream;
    .end local v18           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v21           #method:I
    .end local v22           #os:Ljava/io/FileOutputStream;
    .end local v26           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v27           #stream:Ljava/io/InputStream;
    .end local v29           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v15

    .line 5515
    .local v15, e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parse DCF audio. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5517
    const/16 v29, 0x0

    goto/16 :goto_6

    .line 5460
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v16       #extention:Ljava/lang/String;
    .restart local v29       #values:Landroid/content/ContentValues;
    :cond_8
    :try_start_3
    new-instance v24, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.android.providers.drm/rights/DRM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .end local v23           #parseFile:Ljava/io/File;
    .restart local v24       #parseFile:Ljava/io/File;
    move-object/from16 v23, v24

    .end local v24           #parseFile:Ljava/io/File;
    .restart local v23       #parseFile:Ljava/io/File;
    goto/16 :goto_7

    .line 5497
    :catch_1
    move-exception v15

    .line 5499
    .local v15, e:Ljava/io/IOException;
    :try_start_4
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parse DM audio. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5501
    const/16 v29, 0x0

    .line 5505
    .end local v29           #values:Landroid/content/ContentValues;
    if-eqz v23, :cond_4

    :try_start_5
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5506
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_4

    .line 5507
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 5505
    .end local v15           #e:Ljava/io/IOException;
    .restart local v29       #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    if-eqz v23, :cond_9

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 5506
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_9

    .line 5507
    const-string v5, "DrmStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5505
    :cond_9
    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 5533
    .end local v16           #extention:Ljava/lang/String;
    .restart local v13       #cursor:Landroid/database/Cursor;
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    goto/16 :goto_1

    .line 5537
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    goto/16 :goto_2

    .line 5562
    .restart local v9       #c:Landroid/database/Cursor;
    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    goto/16 :goto_3

    .line 5566
    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    goto/16 :goto_4

    .line 5573
    .end local v9           #c:Landroid/database/Cursor;
    :cond_e
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    if-eqz v4, :cond_3

    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    const-string v5, "<unknown>"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 5574
    const-string/jumbo v4, "title"

    move-object/from16 v0, v20

    iget-object v5, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 5591
    .restart local v10       #cAlbums:Landroid/database/Cursor;
    :cond_f
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cAlbums.getCount() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5593
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_10

    .line 5594
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5596
    const-string v4, "DrmStore"

    const-string v5, "Insert a new album."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5598
    new-instance v14, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v14, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 5599
    .local v14, cv:Landroid/content/ContentValues;
    const-string v4, "album"

    move-object/from16 v0, v20

    iget-object v5, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5600
    sget-object v4, Landroid/provider/DrmStore$Albums;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 5601
    sget-object v4, Landroid/provider/DrmStore$Albums;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->ALBUMS_PROJECTION:[Ljava/lang/String;

    const-string v6, "album=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v7, v8

    const-string v8, "album_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 5602
    if-nez v10, :cond_10

    .line 5604
    const-string v4, "DrmStore"

    const-string/jumbo v5, "query Albums failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5611
    const/16 v29, 0x0

    goto/16 :goto_6

    .line 5614
    .end local v14           #cv:Landroid/content/ContentValues;
    :cond_10
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5615
    const-string v4, "album_id"

    const/4 v5, 0x0

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5617
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Insert album id is = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5619
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5622
    sget-object v4, Landroid/provider/DrmStore$Artists;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->ARTISTS_PROJECTION:[Ljava/lang/String;

    const-string v6, "artist=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v7, v8

    const-string v8, "artist_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 5623
    .local v11, cArtists:Landroid/database/Cursor;
    if-nez v11, :cond_11

    .line 5625
    const-string v4, "DrmStore"

    const-string/jumbo v5, "query Artists failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5632
    const/16 v29, 0x0

    goto/16 :goto_6

    .line 5635
    :cond_11
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cArtists.getCount() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5637
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_12

    .line 5638
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 5640
    const-string v4, "DrmStore"

    const-string v5, "Insert a new artist."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5642
    new-instance v14, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v14, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 5643
    .restart local v14       #cv:Landroid/content/ContentValues;
    const-string v4, "artist"

    move-object/from16 v0, v20

    iget-object v5, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5644
    sget-object v4, Landroid/provider/DrmStore$Artists;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 5645
    sget-object v4, Landroid/provider/DrmStore$Artists;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->ARTISTS_PROJECTION:[Ljava/lang/String;

    const-string v6, "artist=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v7, v8

    const-string v8, "artist_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 5646
    if-nez v11, :cond_12

    .line 5648
    const-string v4, "DrmStore"

    const-string/jumbo v5, "query Artists failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5652
    .end local v14           #cv:Landroid/content/ContentValues;
    :cond_12
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5653
    const-string v4, "artist_id"

    const/4 v5, 0x0

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5655
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Insert artist id is = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5657
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 5659
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mMimeType:Ljava/lang/String;

    if-nez v4, :cond_13

    .line 5660
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/media/MediaInfo$MediaTag;->mMimeType:Ljava/lang/String;

    .line 5666
    :cond_13
    if-nez p6, :cond_4

    .line 5668
    :try_start_6
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaInfo;->insertDRMAudioToMediaProvider(Landroid/media/MediaInfo$MediaTag;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_4

    .line 5670
    const-string v4, "DrmStore"

    const-string v5, "Insert DRM content to MediaProvider failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 5677
    const/16 v29, 0x0

    goto/16 :goto_6

    .line 5679
    :catch_2
    move-exception v15

    .line 5681
    .local v15, e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Insert DRM content to MediaProvider Exceptoin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5688
    const/16 v29, 0x0

    goto/16 :goto_6

    .line 5694
    .end local v10           #cAlbums:Landroid/database/Cursor;
    .end local v11           #cArtists:Landroid/database/Cursor;
    .end local v13           #cursor:Landroid/database/Cursor;
    .end local v15           #e:Ljava/lang/Exception;
    :cond_14
    const-string v4, "DrmStore"

    const-string v5, "Parse mediaTag return null."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6
.end method

.method public static final renewRights(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 1
    .parameter "cx"
    .parameter "uri"

    .prologue
    .line 7987
    const/4 v0, 0x0

    return v0
.end method

.method public static final renewRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)I
    .locals 18
    .parameter "cx"
    .parameter "contentUri"
    .parameter "strFilePath"

    .prologue
    .line 6700
    const/16 v16, 0x0

    .line 6702
    .local v16, res:I
    const-string v1, "DrmStore"

    const-string/jumbo v2, "renewRights"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6704
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 6706
    :cond_0
    const-string v1, "DrmStore"

    const-string/jumbo v2, "renewRights : -2"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6708
    const/4 v1, -0x2

    .line 6767
    :goto_0
    return v1

    .line 6711
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Landroid/provider/DrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const-string v4, "_data=?"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v5, v2

    const-string v6, "_id"

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 6712
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 6714
    const-string v1, "DrmStore"

    const-string/jumbo v2, "renewRights query failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6716
    const/4 v1, -0x6

    goto :goto_0

    .line 6717
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 6719
    const-string v1, "DrmStore"

    const-string/jumbo v2, "renewRights no record."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6721
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6722
    const/4 v1, -0x6

    goto :goto_0

    .line 6725
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6726
    const-string/jumbo v1, "message_type"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 6727
    .local v15, messageTypeColumnId:I
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 6728
    .local v14, messageType:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6730
    const-string v1, "application/vnd.oma.drm.content"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 6732
    const-string v1, "DrmStore"

    const-string/jumbo v2, "renewRights : -2"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6734
    const/4 v1, -0x2

    goto :goto_0

    .line 6737
    :cond_4
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6739
    .local v10, file:Ljava/io/File;
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6740
    .local v11, fis:Ljava/io/InputStream;
    new-instance v8, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v11}, Ljava/io/InputStream;->available()I

    move-result v1

    invoke-direct {v8, v11, v1, v14}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 6741
    .local v8, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual {v8}, Landroid/drm/mobile1/DrmRawContent;->getRightsAddress()Ljava/lang/String;

    move-result-object v13

    .line 6742
    .local v13, issuer:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 6743
    if-nez v13, :cond_5

    .line 6745
    const-string v1, "DrmStore"

    const-string/jumbo v2, "renewRights : -7"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6747
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 6748
    const/4 v1, -0x7

    goto/16 :goto_0

    .line 6750
    :cond_5
    const-string v1, "\\"

    const-string v2, "/"

    invoke-virtual {v13, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 6752
    const-string v1, "DrmStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Right Issure = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6754
    new-instance v12, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6755
    .local v12, intent:Landroid/content/Intent;
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 6756
    .local v17, righturi:Landroid/net/Uri;
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6757
    const/high16 v1, 0x1000

    invoke-virtual {v12, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6759
    const-string v1, "com.android.browser.application_id"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6760
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v11           #fis:Ljava/io/InputStream;
    .end local v12           #intent:Landroid/content/Intent;
    .end local v13           #issuer:Ljava/lang/String;
    .end local v17           #righturi:Landroid/net/Uri;
    :goto_1
    move/from16 v1, v16

    .line 6767
    goto/16 :goto_0

    .line 6761
    :catch_0
    move-exception v9

    .line 6763
    .local v9, e:Ljava/lang/Exception;
    const-string v1, "DrmStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "renewRights : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6765
    const/16 v16, -0x1

    goto :goto_1
.end method

.method public static final renewRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)I
    .locals 16
    .parameter "cx"
    .parameter "contentUri"
    .parameter "strFilePath"
    .parameter "className"

    .prologue
    .line 6907
    const-string v1, "DrmStore"

    const-string v2, "********renewRights"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6910
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 6912
    :cond_0
    const-string v1, "DrmStore"

    const-string/jumbo v2, "renewRights : -2"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6914
    const/4 v1, -0x2

    .line 7026
    :goto_0
    return v1

    .line 6917
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Landroid/provider/DrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const-string v4, "_data=?"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v5, v2

    const-string v6, "_id"

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 6918
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 6920
    const-string v1, "DrmStore"

    const-string/jumbo v2, "renewRights : -6"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6922
    const/4 v1, -0x6

    goto :goto_0

    .line 6923
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 6925
    const-string v1, "DrmStore"

    const-string/jumbo v2, "renewRights no record."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6927
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6928
    const/4 v1, -0x6

    goto :goto_0

    .line 6931
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6932
    const-string/jumbo v1, "message_type"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 6933
    .local v14, messageTypeColumnId:I
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 6934
    .local v13, messageType:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6936
    const-string v1, "application/vnd.oma.drm.content"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 6938
    const-string v1, "DrmStore"

    const-string/jumbo v2, "renewRights : -2"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6940
    const/4 v1, -0x2

    goto :goto_0

    .line 6943
    :cond_4
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6945
    .local v10, file:Ljava/io/File;
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6946
    .local v11, fis:Ljava/io/InputStream;
    new-instance v8, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v11}, Ljava/io/InputStream;->available()I

    move-result v1

    invoke-direct {v8, v11, v1, v13}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 6947
    .local v8, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual {v8}, Landroid/drm/mobile1/DrmRawContent;->getRightsAddress()Ljava/lang/String;

    move-result-object v12

    .line 6948
    .local v12, issuer:Ljava/lang/String;
    if-nez v12, :cond_5

    .line 6950
    const-string v1, "DrmStore"

    const-string v2, "Null issuer : -9"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6952
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 6953
    const/16 v1, -0x9

    goto :goto_0

    .line 6954
    :cond_5
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    .line 6956
    const-string v1, "DrmStore"

    const-string v2, "Empty issuer : -9"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6958
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 6959
    const/16 v1, -0x9

    goto/16 :goto_0

    .line 6961
    :cond_6
    const-string v1, "\\"

    const-string v2, "/"

    invoke-virtual {v12, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 6963
    const-string v1, "DrmStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Right Issure = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6967
    :try_start_1
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 6969
    .local v15, values:Landroid/content/ContentValues;
    const-string/jumbo v1, "uri"

    invoke-virtual {v15, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6970
    const-string/jumbo v1, "notificationpackage"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6972
    const-string/jumbo v1, "notificationclass"

    move-object/from16 v0, p3

    invoke-virtual {v15, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6974
    const-string/jumbo v1, "visibility"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6976
    const-string/jumbo v1, "is_visible_in_downloads_ui"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 6981
    const-string/jumbo v1, "restriction"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7011
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 7026
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 7013
    .end local v15           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v9

    .line 7015
    .local v9, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "DrmStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "renewRights : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7017
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 7018
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 7020
    .end local v8           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v9           #e:Ljava/lang/Exception;
    .end local v11           #fis:Ljava/io/InputStream;
    .end local v12           #issuer:Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 7022
    .restart local v9       #e:Ljava/lang/Exception;
    const-string v1, "DrmStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "renewRights : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7024
    const/4 v1, -0x1

    goto/16 :goto_0
.end method

.method private static final saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/io/FileOutputStream;)I
    .locals 22
    .parameter "file"
    .parameter "content"
    .parameter "os"

    .prologue
    .line 4424
    const/4 v15, 0x0

    .line 4426
    .local v15, res:I
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4427
    .local v11, fin_header:Ljava/io/FileInputStream;
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentOffset(Landroid/drm/mobile1/DrmRights;)I

    move-result v5

    .line 4429
    .local v5, contentOffset:I
    new-array v13, v5, [B

    .line 4430
    .local v13, header_buffer:[B
    invoke-virtual {v11, v13}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 4431
    .local v6, count:I
    if-ne v6, v5, :cond_1

    .line 4432
    const/16 v19, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v13, v1, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 4434
    const-string v19, "DrmStore"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Header has "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " bytes"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4443
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 4447
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v14

    .line 4448
    .local v14, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v16

    .line 4449
    .local v16, rights:Landroid/drm/mobile1/DrmRights;
    if-nez v16, :cond_0

    .line 4451
    const-string v19, "DrmStore"

    const-string/jumbo v20, "rights == null."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4454
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v17

    .line 4455
    .local v17, stream:Ljava/io/InputStream;
    move v10, v5

    .line 4456
    .local v10, endOfContent:I
    const/16 v19, 0x400

    move/from16 v0, v19

    new-array v3, v0, [B

    .line 4457
    .local v3, buffer:[B
    const/16 v19, 0x400

    move/from16 v0, v19

    new-array v8, v0, [B

    .line 4458
    .local v8, encryptBuffer:[B
    :goto_0
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v6, v0, :cond_4

    .line 4459
    add-int/2addr v10, v6

    .line 4460
    array-length v0, v8

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v6, v0, :cond_2

    const/16 v19, 0x1

    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v3, v8, v6, v1}, Landroid/drm/mobile1/DrmRawContent;->encrypt([B[BIZ)I

    move-result v9

    .line 4461
    .local v9, encryptRes:I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v9, v0, :cond_3

    .line 4462
    const/16 v19, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v8, v1, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4503
    .end local v3           #buffer:[B
    .end local v5           #contentOffset:I
    .end local v6           #count:I
    .end local v8           #encryptBuffer:[B
    .end local v9           #encryptRes:I
    .end local v10           #endOfContent:I
    .end local v11           #fin_header:Ljava/io/FileInputStream;
    .end local v13           #header_buffer:[B
    .end local v14           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v16           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v17           #stream:Ljava/io/InputStream;
    :catch_0
    move-exception v7

    .line 4505
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v19, "DrmStore"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4507
    const/4 v15, -0x1

    move v6, v15

    .line 4511
    .end local v7           #e:Ljava/lang/Exception;
    :goto_2
    return v6

    .line 4437
    .restart local v5       #contentOffset:I
    .restart local v6       #count:I
    .restart local v11       #fin_header:Ljava/io/FileInputStream;
    .restart local v13       #header_buffer:[B
    :cond_1
    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 4439
    const-string v19, "DrmStore"

    const-string v20, "Read header failed."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4441
    const/4 v6, -0x1

    goto :goto_2

    .line 4460
    .restart local v3       #buffer:[B
    .restart local v8       #encryptBuffer:[B
    .restart local v10       #endOfContent:I
    .restart local v14       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v16       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v17       #stream:Ljava/io/InputStream;
    :cond_2
    const/16 v19, 0x0

    goto :goto_1

    .line 4464
    .restart local v9       #encryptRes:I
    :cond_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    .line 4466
    const-string v19, "DrmStore"

    const-string v20, "Encrypt content failed."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4468
    const/4 v6, -0x1

    goto :goto_2

    .line 4475
    .end local v9           #encryptRes:I
    :cond_4
    sub-int v4, v10, v5

    .line 4476
    .local v4, contentCount:I
    const-string v19, "DrmStore"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Content has "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " bytes"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4479
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    .line 4483
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4484
    .local v12, fin_tailer:Ljava/io/FileInputStream;
    int-to-long v0, v10

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v12, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    .line 4485
    const/16 v19, 0x100

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 4486
    .local v18, tailerBuffer:[B
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 4487
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v6, v0, :cond_5

    .line 4488
    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 4490
    const-string v19, "DrmStore"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Tail has "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " bytes"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4499
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 4500
    invoke-virtual/range {p2 .. p2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 4508
    .end local v3           #buffer:[B
    .end local v4           #contentCount:I
    .end local v5           #contentOffset:I
    .end local v6           #count:I
    .end local v8           #encryptBuffer:[B
    .end local v10           #endOfContent:I
    .end local v11           #fin_header:Ljava/io/FileInputStream;
    .end local v12           #fin_tailer:Ljava/io/FileInputStream;
    .end local v13           #header_buffer:[B
    .end local v14           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v16           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v17           #stream:Ljava/io/InputStream;
    .end local v18           #tailerBuffer:[B
    :catchall_0
    move-exception v19

    throw v19

    .line 4493
    .restart local v3       #buffer:[B
    .restart local v4       #contentCount:I
    .restart local v5       #contentOffset:I
    .restart local v6       #count:I
    .restart local v8       #encryptBuffer:[B
    .restart local v10       #endOfContent:I
    .restart local v11       #fin_header:Ljava/io/FileInputStream;
    .restart local v12       #fin_tailer:Ljava/io/FileInputStream;
    .restart local v13       #header_buffer:[B
    .restart local v14       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v16       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v17       #stream:Ljava/io/InputStream;
    .restart local v18       #tailerBuffer:[B
    :cond_5
    :try_start_3
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 4495
    const-string v19, "DrmStore"

    const-string v20, "Output tailer failed."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 4497
    const/4 v6, -0x1

    goto/16 :goto_2
.end method

.method private static final declared-synchronized saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I
    .locals 29
    .parameter "file"
    .parameter "content"
    .parameter "outpath"

    .prologue
    .line 4523
    const-class v26, Landroid/provider/DrmStore;

    monitor-enter v26

    const/16 v21, 0x0

    .line 4526
    .local v21, res:I
    :try_start_0
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, "/"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v27, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, "/"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, "garbage"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 4529
    .local v13, garbageFilePath:Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4530
    .local v14, garbagefile:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z

    .line 4532
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 4533
    .local v15, garbageos:Ljava/io/FileOutputStream;
    new-instance v19, Ljava/io/FileOutputStream;

    const/16 v25, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 4535
    .local v19, os:Ljava/io/FileOutputStream;
    const/16 v25, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentOffset(Landroid/drm/mobile1/DrmRights;)I

    move-result v5

    .line 4538
    .local v5, contentOffset:I
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4539
    .local v11, fin_header:Ljava/io/FileInputStream;
    new-array v0, v5, [B

    move-object/from16 v17, v0

    .line 4540
    .local v17, header_buffer:[B
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 4542
    .local v6, count:I
    if-ne v6, v5, :cond_5

    .line 4543
    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 4544
    const/16 v25, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 4547
    const-string v25, "DrmStore"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Header has "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " bytes"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4570
    :try_start_1
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4592
    :goto_0
    :try_start_2
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v18

    .line 4593
    .local v18, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v22

    .line 4595
    .local v22, rights:Landroid/drm/mobile1/DrmRights;
    if-nez v22, :cond_0

    .line 4597
    const-string v25, "DrmStore"

    const-string/jumbo v27, "rights == null."

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4603
    :cond_0
    const/16 v23, 0x0

    .line 4604
    .local v23, stream:Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 4605
    .local v16, hasFailed:Z
    const/16 v20, 0x0

    .line 4606
    .local v20, repeat:I
    const/4 v3, 0x0

    .line 4607
    .local v3, buffer:[B
    const/4 v8, 0x0

    .line 4608
    .local v8, encryptBuffer:[B
    const/4 v10, 0x0

    .line 4611
    .local v10, endOfContent:I
    const-string v25, "DrmStore"

    const-string v27, " @@@@@ Retrieve content!!! (saveFile)"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 4616
    :cond_1
    const/16 v16, 0x0

    .line 4618
    :try_start_3
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v23

    .line 4631
    :goto_1
    if-nez v16, :cond_1

    .line 4634
    :try_start_4
    const-string v25, "DrmStore"

    const-string v27, " @@@@@ Encrypt content!!! (saveFile)"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4640
    move v10, v5

    .line 4641
    const/16 v25, 0x400

    move/from16 v0, v25

    new-array v3, v0, [B

    .line 4642
    const/16 v25, 0x400

    move/from16 v0, v25

    new-array v8, v0, [B

    .line 4644
    :goto_2
    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v6, v0, :cond_b

    .line 4645
    add-int/2addr v10, v6

    .line 4646
    array-length v0, v8

    move/from16 v25, v0

    move/from16 v0, v25

    if-eq v6, v0, :cond_8

    const/16 v25, 0x1

    :goto_3
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v3, v8, v6, v1}, Landroid/drm/mobile1/DrmRawContent;->encrypt([B[BIZ)I

    move-result v9

    .line 4649
    .local v9, encryptRes:I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v9, v0, :cond_9

    .line 4650
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v15, v8, v0, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 4651
    const/16 v25, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v8, v1, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 4677
    .end local v9           #encryptRes:I
    :catch_0
    move-exception v7

    .line 4679
    .local v7, e:Ljava/lang/Exception;
    :try_start_5
    const-string v25, "DrmStore"

    const-string v27, " @@@@@ ERROR: read content stream failed. (saveFile)"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4681
    const-string v25, "DrmStore"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4682
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 4684
    const/4 v3, 0x0

    .line 4685
    const/4 v8, 0x0

    .line 4688
    if-eqz v23, :cond_2

    .line 4689
    :try_start_6
    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    .line 4693
    :cond_2
    :goto_4
    const/16 v23, 0x0

    .line 4696
    :try_start_7
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/FileDescriptor;->sync()V

    .line 4698
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/FileDescriptor;->sync()V

    .line 4699
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    .line 4700
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V

    .line 4702
    if-eqz v14, :cond_3

    .line 4703
    invoke-virtual {v14}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 4706
    :cond_3
    const/4 v6, -0x1

    .line 4816
    .end local v3           #buffer:[B
    .end local v5           #contentOffset:I
    .end local v6           #count:I
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #encryptBuffer:[B
    .end local v10           #endOfContent:I
    .end local v11           #fin_header:Ljava/io/FileInputStream;
    .end local v13           #garbageFilePath:Ljava/lang/String;
    .end local v14           #garbagefile:Ljava/io/File;
    .end local v15           #garbageos:Ljava/io/FileOutputStream;
    .end local v16           #hasFailed:Z
    .end local v17           #header_buffer:[B
    .end local v18           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v19           #os:Ljava/io/FileOutputStream;
    .end local v20           #repeat:I
    .end local v22           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v23           #stream:Ljava/io/InputStream;
    :cond_4
    :goto_5
    monitor-exit v26

    return v6

    .line 4550
    .restart local v5       #contentOffset:I
    .restart local v6       #count:I
    .restart local v11       #fin_header:Ljava/io/FileInputStream;
    .restart local v13       #garbageFilePath:Ljava/lang/String;
    .restart local v14       #garbagefile:Ljava/io/File;
    .restart local v15       #garbageos:Ljava/io/FileOutputStream;
    .restart local v17       #header_buffer:[B
    .restart local v19       #os:Ljava/io/FileOutputStream;
    :cond_5
    :try_start_8
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 4553
    const-string v25, "DrmStore"

    const-string v27, "Read header failed."

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4556
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/FileDescriptor;->sync()V

    .line 4558
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/FileDescriptor;->sync()V

    .line 4559
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    .line 4560
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V

    .line 4562
    if-eqz v14, :cond_6

    .line 4563
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 4566
    :cond_6
    const/4 v6, -0x1

    goto :goto_5

    .line 4571
    :catch_1
    move-exception v7

    .line 4573
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v25, "DrmStore"

    const-string v27, " @@@@@ ERROR: close Read header failed. (saveFile)"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4575
    const-string v25, "DrmStore"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4576
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    .line 4806
    .end local v5           #contentOffset:I
    .end local v6           #count:I
    .end local v7           #e:Ljava/lang/Exception;
    .end local v11           #fin_header:Ljava/io/FileInputStream;
    .end local v13           #garbageFilePath:Ljava/lang/String;
    .end local v14           #garbagefile:Ljava/io/File;
    .end local v15           #garbageos:Ljava/io/FileOutputStream;
    .end local v17           #header_buffer:[B
    .end local v19           #os:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v7

    .line 4809
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_9
    const-string v25, "DrmStore"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 4812
    const/16 v21, -0x1

    move/from16 v6, v21

    .line 4816
    goto :goto_5

    .line 4619
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v3       #buffer:[B
    .restart local v5       #contentOffset:I
    .restart local v6       #count:I
    .restart local v8       #encryptBuffer:[B
    .restart local v10       #endOfContent:I
    .restart local v11       #fin_header:Ljava/io/FileInputStream;
    .restart local v13       #garbageFilePath:Ljava/lang/String;
    .restart local v14       #garbagefile:Ljava/io/File;
    .restart local v15       #garbageos:Ljava/io/FileOutputStream;
    .restart local v16       #hasFailed:Z
    .restart local v17       #header_buffer:[B
    .restart local v18       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v19       #os:Ljava/io/FileOutputStream;
    .restart local v20       #repeat:I
    .restart local v22       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v23       #stream:Ljava/io/InputStream;
    :catch_3
    move-exception v7

    .line 4621
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_a
    const-string v25, "DrmStore"

    const-string v27, " @@@@@ ERROR: get content input stream ERROR!!! (saveFile)"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4624
    const/16 v25, 0x3

    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_7

    .line 4625
    const/16 v16, 0x1

    .line 4628
    :cond_7
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 4646
    .end local v7           #e:Ljava/lang/Exception;
    :cond_8
    const/16 v25, 0x0

    goto/16 :goto_3

    .line 4653
    .restart local v9       #encryptRes:I
    :cond_9
    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->close()V

    .line 4656
    const-string v25, "DrmStore"

    const-string v27, "Encrypt content failed."

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4659
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/FileDescriptor;->sync()V

    .line 4661
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/FileDescriptor;->sync()V

    .line 4662
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    .line 4663
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V

    .line 4665
    if-eqz v14, :cond_a

    .line 4666
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 4669
    :cond_a
    const/4 v6, -0x1

    goto/16 :goto_5

    .line 4674
    .end local v9           #encryptRes:I
    :cond_b
    sub-int v4, v10, v5

    .line 4675
    .local v4, contentCount:I
    const-string v25, "DrmStore"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Content has "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " bytes"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 4710
    :try_start_b
    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 4732
    :goto_6
    :try_start_c
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4733
    .local v12, fin_tailer:Ljava/io/FileInputStream;
    const/16 v25, 0x100

    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v24, v0

    .line 4735
    .local v24, tailerBuffer:[B
    int-to-long v0, v10

    move-wide/from16 v27, v0

    move-wide/from16 v0, v27

    invoke-virtual {v12, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    .line 4736
    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 4738
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v6, v0, :cond_c

    .line 4739
    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 4740
    const/16 v25, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 4743
    const-string v25, "DrmStore"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Tail has "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " bytes"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 4767
    :try_start_d
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 4769
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/FileDescriptor;->sync()V

    .line 4770
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    .line 4781
    :goto_7
    :try_start_e
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/FileDescriptor;->sync()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 4791
    :goto_8
    :try_start_f
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    .line 4800
    :goto_9
    if-eqz v14, :cond_4

    .line 4801
    :try_start_10
    invoke-virtual {v14}, Ljava/io/File;->delete()Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    goto/16 :goto_5

    .line 4813
    .end local v3           #buffer:[B
    .end local v4           #contentCount:I
    .end local v5           #contentOffset:I
    .end local v6           #count:I
    .end local v8           #encryptBuffer:[B
    .end local v10           #endOfContent:I
    .end local v11           #fin_header:Ljava/io/FileInputStream;
    .end local v12           #fin_tailer:Ljava/io/FileInputStream;
    .end local v13           #garbageFilePath:Ljava/lang/String;
    .end local v14           #garbagefile:Ljava/io/File;
    .end local v15           #garbageos:Ljava/io/FileOutputStream;
    .end local v16           #hasFailed:Z
    .end local v17           #header_buffer:[B
    .end local v18           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v19           #os:Ljava/io/FileOutputStream;
    .end local v20           #repeat:I
    .end local v22           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v23           #stream:Ljava/io/InputStream;
    .end local v24           #tailerBuffer:[B
    :catchall_0
    move-exception v25

    :try_start_11
    throw v25
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 4523
    :catchall_1
    move-exception v25

    monitor-exit v26

    throw v25

    .line 4693
    .restart local v3       #buffer:[B
    .restart local v5       #contentOffset:I
    .restart local v6       #count:I
    .restart local v7       #e:Ljava/lang/Exception;
    .restart local v8       #encryptBuffer:[B
    .restart local v10       #endOfContent:I
    .restart local v11       #fin_header:Ljava/io/FileInputStream;
    .restart local v13       #garbageFilePath:Ljava/lang/String;
    .restart local v14       #garbagefile:Ljava/io/File;
    .restart local v15       #garbageos:Ljava/io/FileOutputStream;
    .restart local v16       #hasFailed:Z
    .restart local v17       #header_buffer:[B
    .restart local v18       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v19       #os:Ljava/io/FileOutputStream;
    .restart local v20       #repeat:I
    .restart local v22       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v23       #stream:Ljava/io/InputStream;
    :catchall_2
    move-exception v25

    const/16 v23, 0x0

    :try_start_12
    throw v25

    .line 4711
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v4       #contentCount:I
    :catch_4
    move-exception v7

    .line 4713
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v25, "DrmStore"

    const-string v27, " @@@@@ ERROR: close content stream failed. (saveFile)"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4715
    const-string v25, "DrmStore"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4716
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 4746
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v12       #fin_tailer:Ljava/io/FileInputStream;
    .restart local v24       #tailerBuffer:[B
    :cond_c
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 4749
    const-string v25, "DrmStore"

    const-string v27, "Output tailer failed."

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4752
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/FileDescriptor;->sync()V

    .line 4754
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/FileDescriptor;->sync()V

    .line 4755
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    .line 4756
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V

    .line 4758
    if-eqz v14, :cond_d

    .line 4759
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 4762
    :cond_d
    const/4 v6, -0x1

    goto/16 :goto_5

    .line 4771
    :catch_5
    move-exception v7

    .line 4773
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v25, "DrmStore"

    const-string v27, " @@@@@ ERROR: close Read tail failed. (saveFile)"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4775
    const-string v25, "DrmStore"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4776
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 4782
    .end local v7           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v7

    .line 4784
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v25, "DrmStore"

    const-string v27, " @@@@@ ERROR: sync Output Read tail failed. (saveFile)"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4786
    const-string v25, "DrmStore"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4787
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    .line 4792
    .end local v7           #e:Ljava/lang/Exception;
    :catch_7
    move-exception v7

    .line 4794
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v25, "DrmStore"

    const-string v27, " @@@@@ ERROR: close Output Read tail failed. (saveFile)"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4796
    const-string v25, "DrmStore"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4797
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    goto/16 :goto_9

    .line 4691
    .end local v4           #contentCount:I
    .end local v12           #fin_tailer:Ljava/io/FileInputStream;
    .end local v24           #tailerBuffer:[B
    :catch_8
    move-exception v25

    goto/16 :goto_4
.end method

.method private static final saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I
    .locals 7
    .parameter "stream"
    .parameter "os"

    .prologue
    .line 4397
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 4399
    .local v0, buffer:[B
    const/4 v3, 0x0

    .line 4401
    .local v3, res:I
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, count:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 4402
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4405
    .end local v1           #count:I
    :catch_0
    move-exception v2

    .line 4406
    .local v2, e:Ljava/lang/Exception;
    const/4 v3, -0x1

    .line 4408
    :try_start_1
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content inputstream read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4413
    .end local v2           #e:Ljava/lang/Exception;
    :goto_1
    return v3

    .line 4404
    .restart local v1       #count:I
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 4410
    .end local v1           #count:I
    :catchall_0
    move-exception v4

    throw v4
.end method

.method private static final declared-synchronized saveFileFromBase64ToBinary(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I
    .locals 27
    .parameter "file"
    .parameter "content"
    .parameter "outpath"

    .prologue
    .line 4826
    const-class v24, Landroid/provider/DrmStore;

    monitor-enter v24

    const/16 v17, 0x0

    .line 4829
    .local v17, res:I
    :try_start_0
    new-instance v14, Ljava/io/FileOutputStream;

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-direct {v14, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 4830
    .local v14, os:Ljava/io/FileOutputStream;
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentOffset(Landroid/drm/mobile1/DrmRights;)I

    move-result v4

    .line 4833
    .local v4, contentOffset:I
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4834
    .local v8, fin_header:Ljava/io/FileInputStream;
    new-array v10, v4, [B

    .line 4835
    .local v10, header_buffer:[B
    invoke-virtual {v8, v10}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .line 4837
    .local v5, count:I
    if-ne v5, v4, :cond_3

    .line 4838
    new-instance v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>([B)V

    .line 4839
    .local v22, tempHeader:Ljava/lang/String;
    const-string v23, "Content-Transfer-Encoding: base64"

    const-string v25, "Content-Transfer-Encoding: binary"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 4840
    .local v12, newTempHeader:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object/from16 v0, v23

    array-length v13, v0

    .line 4842
    .local v13, newTempHeaderCount:I
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v14, v0, v1, v13}, Ljava/io/FileOutputStream;->write([BII)V

    .line 4845
    const-string v23, "DrmStore"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Header has "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ") bytes. (saveFileFromBase64)"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4848
    move v4, v13

    .line 4864
    :try_start_1
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4885
    :goto_0
    :try_start_2
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v11

    .line 4886
    .local v11, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v18

    .line 4888
    .local v18, rights:Landroid/drm/mobile1/DrmRights;
    if-nez v18, :cond_0

    .line 4890
    const-string v23, "DrmStore"

    const-string/jumbo v25, "rights == null."

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4896
    :cond_0
    const/16 v19, 0x0

    .line 4897
    .local v19, stream:Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 4898
    .local v9, hasFailed:Z
    const/16 v16, 0x0

    .line 4899
    .local v16, repeat:I
    const/4 v3, 0x0

    .line 4900
    .local v3, buffer:[B
    const/4 v7, 0x0

    .line 4901
    .local v7, endOfContent:I
    const/4 v15, 0x0

    .line 4904
    .local v15, realContentLength:I
    const-string v23, "DrmStore"

    const-string v25, " @@@@@ Retrieve content!!! (saveFileFromBase64)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 4909
    :cond_1
    const/4 v9, 0x0

    .line 4911
    :try_start_3
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v19

    .line 4924
    :goto_1
    if-nez v9, :cond_1

    .line 4927
    :try_start_4
    const-string v23, "DrmStore"

    const-string v25, " @@@@@ Encrypt content!!! (saveFileFromBase64)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4931
    const/16 v23, 0x400

    move/from16 v0, v23

    new-array v3, v0, [B

    .line 4933
    :goto_2
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v5, v0, :cond_5

    .line 4934
    add-int/2addr v15, v5

    .line 4935
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v14, v3, v0, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 4945
    :catch_0
    move-exception v6

    .line 4947
    .local v6, e:Ljava/lang/Exception;
    :try_start_5
    const-string v23, "DrmStore"

    const-string v25, " @@@@@ ERROR: read content stream failed. (saveFileFromBase64)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4949
    const-string v23, "DrmStore"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4950
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 4952
    const/4 v3, 0x0

    .line 4955
    if-eqz v19, :cond_2

    .line 4956
    :try_start_6
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    .line 4960
    :cond_2
    :goto_3
    const/16 v19, 0x0

    .line 4963
    :try_start_7
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileDescriptor;->sync()V

    .line 4964
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 4966
    const/4 v5, -0x1

    .line 5049
    .end local v3           #buffer:[B
    .end local v4           #contentOffset:I
    .end local v5           #count:I
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #endOfContent:I
    .end local v8           #fin_header:Ljava/io/FileInputStream;
    .end local v9           #hasFailed:Z
    .end local v10           #header_buffer:[B
    .end local v11           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v12           #newTempHeader:Ljava/lang/String;
    .end local v13           #newTempHeaderCount:I
    .end local v14           #os:Ljava/io/FileOutputStream;
    .end local v15           #realContentLength:I
    .end local v16           #repeat:I
    .end local v18           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v19           #stream:Ljava/io/InputStream;
    .end local v22           #tempHeader:Ljava/lang/String;
    :goto_4
    monitor-exit v24

    return v5

    .line 4850
    .restart local v4       #contentOffset:I
    .restart local v5       #count:I
    .restart local v8       #fin_header:Ljava/io/FileInputStream;
    .restart local v10       #header_buffer:[B
    .restart local v14       #os:Ljava/io/FileOutputStream;
    :cond_3
    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 4853
    const-string v23, "DrmStore"

    const-string v25, "Read header failed."

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4857
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileDescriptor;->sync()V

    .line 4858
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 4860
    const/4 v5, -0x1

    goto :goto_4

    .line 4865
    .restart local v12       #newTempHeader:Ljava/lang/String;
    .restart local v13       #newTempHeaderCount:I
    .restart local v22       #tempHeader:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 4867
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v23, "DrmStore"

    const-string v25, " @@@@@ ERROR: close Read header failed. (saveFileFromBase64)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4869
    const-string v23, "DrmStore"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4870
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    .line 5039
    .end local v4           #contentOffset:I
    .end local v5           #count:I
    .end local v6           #e:Ljava/lang/Exception;
    .end local v8           #fin_header:Ljava/io/FileInputStream;
    .end local v10           #header_buffer:[B
    .end local v12           #newTempHeader:Ljava/lang/String;
    .end local v13           #newTempHeaderCount:I
    .end local v14           #os:Ljava/io/FileOutputStream;
    .end local v22           #tempHeader:Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 5042
    .restart local v6       #e:Ljava/lang/Exception;
    :try_start_9
    const-string v23, "DrmStore"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 5045
    const/16 v17, -0x1

    move/from16 v5, v17

    .line 5049
    goto :goto_4

    .line 4912
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v3       #buffer:[B
    .restart local v4       #contentOffset:I
    .restart local v5       #count:I
    .restart local v7       #endOfContent:I
    .restart local v8       #fin_header:Ljava/io/FileInputStream;
    .restart local v9       #hasFailed:Z
    .restart local v10       #header_buffer:[B
    .restart local v11       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v12       #newTempHeader:Ljava/lang/String;
    .restart local v13       #newTempHeaderCount:I
    .restart local v14       #os:Ljava/io/FileOutputStream;
    .restart local v15       #realContentLength:I
    .restart local v16       #repeat:I
    .restart local v18       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v19       #stream:Ljava/io/InputStream;
    .restart local v22       #tempHeader:Ljava/lang/String;
    :catch_3
    move-exception v6

    .line 4914
    .restart local v6       #e:Ljava/lang/Exception;
    :try_start_a
    const-string v23, "DrmStore"

    const-string v25, " @@@@@ ERROR: get content input stream ERROR!!! (saveFileFromBase64)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4917
    const/16 v23, 0x3

    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 4918
    const/4 v9, 0x1

    .line 4921
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 4943
    .end local v6           #e:Ljava/lang/Exception;
    :cond_5
    const-string v23, "DrmStore"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " @@@@@ Real Content has "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " bytes."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 4970
    :try_start_b
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 4992
    :goto_5
    :try_start_c
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "\r\n"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Landroid/drm/mobile1/DrmRawContent;->getBoundary()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, "--\r\n"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 4993
    .local v20, tail:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v21, v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 4996
    .local v21, tailCount:I
    :try_start_d
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v21

    invoke-virtual {v14, v0, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 4999
    const-string v23, "DrmStore"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Tail has "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " bytes"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    .line 5016
    :try_start_e
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileDescriptor;->sync()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 5026
    :goto_6
    :try_start_f
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    .line 5036
    :goto_7
    add-int v23, v4, v15

    add-int v5, v23, v21

    .line 5038
    goto/16 :goto_4

    .line 4960
    .end local v20           #tail:Ljava/lang/String;
    .end local v21           #tailCount:I
    .restart local v6       #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v23

    const/16 v19, 0x0

    :try_start_10
    throw v23
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    .line 5046
    .end local v3           #buffer:[B
    .end local v4           #contentOffset:I
    .end local v5           #count:I
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #endOfContent:I
    .end local v8           #fin_header:Ljava/io/FileInputStream;
    .end local v9           #hasFailed:Z
    .end local v10           #header_buffer:[B
    .end local v11           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v12           #newTempHeader:Ljava/lang/String;
    .end local v13           #newTempHeaderCount:I
    .end local v14           #os:Ljava/io/FileOutputStream;
    .end local v15           #realContentLength:I
    .end local v16           #repeat:I
    .end local v18           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v19           #stream:Ljava/io/InputStream;
    .end local v22           #tempHeader:Ljava/lang/String;
    :catchall_1
    move-exception v23

    :try_start_11
    throw v23
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 4826
    :catchall_2
    move-exception v23

    monitor-exit v24

    throw v23

    .line 4971
    .restart local v3       #buffer:[B
    .restart local v4       #contentOffset:I
    .restart local v5       #count:I
    .restart local v7       #endOfContent:I
    .restart local v8       #fin_header:Ljava/io/FileInputStream;
    .restart local v9       #hasFailed:Z
    .restart local v10       #header_buffer:[B
    .restart local v11       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v12       #newTempHeader:Ljava/lang/String;
    .restart local v13       #newTempHeaderCount:I
    .restart local v14       #os:Ljava/io/FileOutputStream;
    .restart local v15       #realContentLength:I
    .restart local v16       #repeat:I
    .restart local v18       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v19       #stream:Ljava/io/InputStream;
    .restart local v22       #tempHeader:Ljava/lang/String;
    :catch_4
    move-exception v6

    .line 4973
    .restart local v6       #e:Ljava/lang/Exception;
    :try_start_12
    const-string v23, "DrmStore"

    const-string v25, " @@@@@ ERROR: close content stream failed. (saveFileFromBase64)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4975
    const-string v23, "DrmStore"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4976
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 5001
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v20       #tail:Ljava/lang/String;
    .restart local v21       #tailCount:I
    :catch_5
    move-exception v6

    .line 5004
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v23, "DrmStore"

    const-string v25, "Output tailer failed."

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5008
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileDescriptor;->sync()V

    .line 5009
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 5011
    const/4 v5, -0x1

    goto/16 :goto_4

    .line 5017
    .end local v6           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v6

    .line 5019
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v23, "DrmStore"

    const-string v25, " @@@@@ ERROR: sync Output Read tail failed. (saveFileFromBase64)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5021
    const-string v23, "DrmStore"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5022
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 5027
    .end local v6           #e:Ljava/lang/Exception;
    :catch_7
    move-exception v6

    .line 5029
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v23, "DrmStore"

    const-string v25, " @@@@@ ERROR: close Output Read tail failed. (saveFileFromBase64)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5031
    const-string v23, "DrmStore"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5032
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    goto :goto_7

    .line 4958
    .end local v20           #tail:Ljava/lang/String;
    .end local v21           #tailCount:I
    :catch_8
    move-exception v23

    goto/16 :goto_3
.end method

.method public static setEnableCombinedDelivery(Z)V
    .locals 2
    .parameter "isEnabled"

    .prologue
    const/4 v1, 0x1

    .line 7487
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/provider/DrmStore;->DISABLE_COMBINED_DELIVERY:Z

    .line 7488
    sput-boolean v1, Landroid/provider/DrmStore;->SWITCH_TO_CID:Z

    .line 7489
    return-void

    :cond_0
    move v0, v1

    .line 7487
    goto :goto_0
.end method

.method public static setEnableSeparateDelivery(Z)V
    .locals 2
    .parameter "isEnabled"

    .prologue
    const/4 v1, 0x1

    .line 7494
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/provider/DrmStore;->DISABLE_SEPARATE_DELIVERY:Z

    .line 7495
    sput-boolean v1, Landroid/provider/DrmStore;->SWITCH_TO_CID:Z

    .line 7496
    return-void

    :cond_0
    move v0, v1

    .line 7494
    goto :goto_0
.end method

.method private static final updateAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/ContentValues;
    .locals 7
    .parameter "cx"
    .parameter "file"
    .parameter "mediaType"
    .parameter "mimeType"
    .parameter "uri"

    .prologue
    const/4 v5, 0x0

    .line 5123
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, v5

    invoke-static/range {v0 .. v6}, Landroid/provider/DrmStore;->updateAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public static final updateAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentValues;
    .locals 29
    .parameter "cx"
    .parameter "file"
    .parameter "mediaType"
    .parameter "mimeType"
    .parameter "uri"
    .parameter "destination"
    .parameter "skipMediaDbUpdate"

    .prologue
    .line 5141
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 5142
    .local v3, cr:Landroid/content/ContentResolver;
    new-instance v27, Landroid/content/ContentValues;

    const/4 v4, 0x3

    move-object/from16 v0, v27

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 5143
    .local v27, values:Landroid/content/ContentValues;
    new-instance v18, Landroid/media/MediaInfo;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/media/MediaInfo;-><init>(Landroid/content/Context;)V

    .line 5144
    .local v18, mediaInfo:Landroid/media/MediaInfo;
    const/16 v19, 0x0

    .line 5145
    .local v19, mediaTag:Landroid/media/MediaInfo$MediaTag;
    const/16 v22, 0x0

    .line 5148
    .local v22, parseFile:Ljava/io/File;
    const/4 v15, 0x0

    .line 5150
    .local v15, extention:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p3 .. p3}, Landroid/media/MediaFile;->getExtensionForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 5171
    const/4 v4, 0x7

    move/from16 v0, p5

    if-ne v0, v4, :cond_6

    .line 5174
    new-instance v23, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.android.providers.drm/rights/PHONE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v22           #parseFile:Ljava/io/File;
    .local v23, parseFile:Ljava/io/File;
    move-object/from16 v22, v23

    .line 5190
    .end local v23           #parseFile:Ljava/io/File;
    .restart local v22       #parseFile:Ljava/io/File;
    :goto_0
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Create template file:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5193
    new-instance v21, Ljava/io/FileOutputStream;

    invoke-direct/range {v21 .. v22}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 5194
    .local v21, os:Ljava/io/FileOutputStream;
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 5195
    .local v16, fin:Ljava/io/FileInputStream;
    new-instance v11, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->available()I

    move-result v4

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v11, v0, v4, v1}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 5196
    .local v11, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v17

    .line 5197
    .local v17, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v25

    .line 5198
    .local v25, rights:Landroid/drm/mobile1/DrmRights;
    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v26

    .line 5199
    .local v26, stream:Ljava/io/InputStream;
    invoke-virtual {v11}, Landroid/drm/mobile1/DrmRawContent;->getRawType()I

    move-result v20

    .line 5200
    .local v20, method:I
    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/provider/DrmStore;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I

    .line 5201
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V

    .line 5205
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V

    .line 5206
    if-eqz v26, :cond_0

    .line 5207
    invoke-virtual/range {v26 .. v26}, Ljava/io/InputStream;->close()V

    .line 5209
    :cond_0
    sget-object v4, Landroid/provider/DrmStore;->CMD_CHMOD:[Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 5210
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore;->CMD_CHMOD:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    .line 5213
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/media/MediaInfo;->parseSingleFile(Ljava/lang/String;)Landroid/media/MediaInfo$MediaTag;

    move-result-object v19

    .line 5214
    if-eqz v19, :cond_1

    .line 5215
    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/media/MediaInfo$MediaTag;->mDrmType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5225
    :cond_1
    if-eqz v22, :cond_2

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5226
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    .line 5227
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5233
    :cond_2
    if-eqz v19, :cond_f

    .line 5236
    sget-object v5, Landroid/provider/DrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p4

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 5237
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_9

    .line 5238
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 5239
    const-string v4, "_data"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 5240
    .local v24, pathIndex:I
    move/from16 v0, v24

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    .line 5241
    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 5242
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    .line 5247
    .end local v24           #pathIndex:I
    :cond_3
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 5254
    :goto_2
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mediaTag.mPath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5255
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mediaTag.mAlbum = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5256
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mediaTag.mArtist = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5257
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mediaTag.mFilename = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mFilename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5258
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mediaTag.mTitle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5261
    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    if-eqz v4, :cond_4

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    const-string v5, "<unknown>"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 5262
    const-string/jumbo v4, "title"

    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5266
    :cond_4
    sget-object v4, Landroid/provider/DrmStore$Albums;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->ALBUMS_PROJECTION:[Ljava/lang/String;

    const-string v6, "album=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v7, v8

    const-string v8, "album_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 5267
    .local v9, cAlbums:Landroid/database/Cursor;
    if-nez v9, :cond_a

    .line 5269
    const-string v4, "DrmStore"

    const-string/jumbo v5, "query Albums failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5276
    const/16 v27, 0x0

    .line 5392
    .end local v9           #cAlbums:Landroid/database/Cursor;
    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v16           #fin:Ljava/io/FileInputStream;
    .end local v17           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v20           #method:I
    .end local v21           #os:Ljava/io/FileOutputStream;
    .end local v25           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v26           #stream:Ljava/io/InputStream;
    .end local v27           #values:Landroid/content/ContentValues;
    :cond_5
    :goto_3
    return-object v27

    .line 5179
    .restart local v27       #values:Landroid/content/ContentValues;
    :cond_6
    :try_start_1
    new-instance v23, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.android.providers.drm/rights/DRM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v22           #parseFile:Ljava/io/File;
    .restart local v23       #parseFile:Ljava/io/File;
    move-object/from16 v22, v23

    .end local v23           #parseFile:Ljava/io/File;
    .restart local v22       #parseFile:Ljava/io/File;
    goto/16 :goto_0

    .line 5217
    :catch_0
    move-exception v14

    .line 5219
    .local v14, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parse DCF audio. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5221
    const/16 v27, 0x0

    .line 5225
    .end local v27           #values:Landroid/content/ContentValues;
    if-eqz v22, :cond_5

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5226
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_5

    .line 5227
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 5225
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v27       #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    if-eqz v22, :cond_7

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 5226
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_7

    .line 5227
    const-string v5, "DrmStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5225
    :cond_7
    throw v4

    .line 5245
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v12       #cursor:Landroid/database/Cursor;
    .restart local v16       #fin:Ljava/io/FileInputStream;
    .restart local v17       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v20       #method:I
    .restart local v21       #os:Ljava/io/FileOutputStream;
    .restart local v25       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v26       #stream:Ljava/io/InputStream;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    goto/16 :goto_1

    .line 5249
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    goto/16 :goto_2

    .line 5279
    .restart local v9       #cAlbums:Landroid/database/Cursor;
    :cond_a
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cAlbums.getCount() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5281
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_b

    .line 5282
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5284
    const-string v4, "DrmStore"

    const-string v5, "Insert a new album."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5286
    new-instance v13, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v13, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 5287
    .local v13, cv:Landroid/content/ContentValues;
    const-string v4, "album"

    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    invoke-virtual {v13, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5288
    sget-object v4, Landroid/provider/DrmStore$Albums;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 5289
    sget-object v4, Landroid/provider/DrmStore$Albums;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->ALBUMS_PROJECTION:[Ljava/lang/String;

    const-string v6, "album=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v7, v8

    const-string v8, "album_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 5290
    if-nez v9, :cond_b

    .line 5292
    const-string v4, "DrmStore"

    const-string/jumbo v5, "query Albums failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5299
    const/16 v27, 0x0

    goto/16 :goto_3

    .line 5302
    .end local v13           #cv:Landroid/content/ContentValues;
    :cond_b
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5303
    const-string v4, "album_id"

    const/4 v5, 0x0

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5305
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Insert album id is = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5307
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5310
    sget-object v4, Landroid/provider/DrmStore$Artists;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->ARTISTS_PROJECTION:[Ljava/lang/String;

    const-string v6, "artist=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v7, v8

    const-string v8, "artist_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 5311
    .local v10, cArtists:Landroid/database/Cursor;
    if-nez v10, :cond_c

    .line 5313
    const-string v4, "DrmStore"

    const-string/jumbo v5, "query Artists failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5320
    const/16 v27, 0x0

    goto/16 :goto_3

    .line 5323
    :cond_c
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cArtists.getCount() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5325
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_d

    .line 5326
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5328
    const-string v4, "DrmStore"

    const-string v5, "Insert a new artist."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5330
    new-instance v13, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v13, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 5331
    .restart local v13       #cv:Landroid/content/ContentValues;
    const-string v4, "artist"

    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    invoke-virtual {v13, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5332
    sget-object v4, Landroid/provider/DrmStore$Artists;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 5333
    sget-object v4, Landroid/provider/DrmStore$Artists;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->ARTISTS_PROJECTION:[Ljava/lang/String;

    const-string v6, "artist=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v7, v8

    const-string v8, "artist_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 5334
    if-nez v10, :cond_d

    .line 5336
    const-string v4, "DrmStore"

    const-string/jumbo v5, "query Artists failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5340
    .end local v13           #cv:Landroid/content/ContentValues;
    :cond_d
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5341
    const-string v4, "artist_id"

    const/4 v5, 0x0

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5343
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Insert artist id is = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5345
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5347
    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mMimeType:Ljava/lang/String;

    if-nez v4, :cond_e

    .line 5348
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/media/MediaInfo$MediaTag;->mMimeType:Ljava/lang/String;

    .line 5354
    :cond_e
    if-nez p6, :cond_5

    .line 5356
    :try_start_3
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaInfo;->updateDRMAudio(Landroid/media/MediaInfo$MediaTag;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_5

    .line 5358
    const-string v4, "DrmStore"

    const-string v5, "Update DRM content to MediaProvider failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 5365
    const/16 v27, 0x0

    goto/16 :goto_3

    .line 5367
    :catch_1
    move-exception v14

    .line 5369
    .restart local v14       #e:Ljava/lang/Exception;
    const-string v4, "DrmStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update DRM content to MediaProvider Exceptoin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5376
    const/16 v27, 0x0

    goto/16 :goto_3

    .line 5382
    .end local v9           #cAlbums:Landroid/database/Cursor;
    .end local v10           #cArtists:Landroid/database/Cursor;
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v14           #e:Ljava/lang/Exception;
    :cond_f
    const-string v4, "DrmStore"

    const-string v5, "Parse mediaTag return null."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method
