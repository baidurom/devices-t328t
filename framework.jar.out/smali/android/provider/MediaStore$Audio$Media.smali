.class public final Landroid/provider/MediaStore$Audio$Media;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/MediaStore$Audio$AudioColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Media"
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/audio"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "title_key"

.field public static final EXTERNAL_CONTENT_URI:Landroid/net/Uri; = null

.field public static final EXTRA_MAX_BYTES:Ljava/lang/String; = "android.provider.MediaStore.extra.MAX_BYTES"

.field public static final INTERNAL_CONTENT_URI:Landroid/net/Uri; = null

.field public static final PHONE_CONTENT_URI:Landroid/net/Uri; = null

.field public static final RECORD_SOUND_ACTION:Ljava/lang/String; = "android.provider.MediaStore.RECORD_SOUND"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1339
    const-string/jumbo v0, "internal"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1346
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1354
    const-string/jumbo v0, "phoneStorage"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MediaStore$Audio$Media;->PHONE_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1306
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "volumeName"

    .prologue
    .line 1315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/audio/media"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "path"

    .prologue
    .line 1324
    const/4 v0, 0x0

    .line 1325
    .local v0, result:Landroid/net/Uri;
    if-eqz p0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1326
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1332
    :goto_0
    return-object v0

    .line 1327
    :cond_0
    if-eqz p0, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1328
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->PHONE_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1330
    :cond_1
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method
