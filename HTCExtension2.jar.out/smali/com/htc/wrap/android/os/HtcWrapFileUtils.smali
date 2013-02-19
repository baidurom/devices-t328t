.class public Lcom/htc/wrap/android/os/HtcWrapFileUtils;
.super Ljava/lang/Object;
.source "HtcWrapFileUtils.java"


# static fields
.field public static final S_IRGRP:I = 0x20

.field public static final S_IROTH:I = 0x4

.field public static final S_IRUSR:I = 0x100

.field public static final S_IRWXG:I = 0x38

.field public static final S_IRWXO:I = 0x7

.field public static final S_IRWXU:I = 0x1c0

.field public static final S_IWGRP:I = 0x10

.field public static final S_IWOTH:I = 0x2

.field public static final S_IWUSR:I = 0x80

.field public static final S_IXGRP:I = 0x8

.field public static final S_IXOTH:I = 0x1

.field public static final S_IXUSR:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .parameter "srcFile"
    .parameter "destFile"

    .prologue
    .line 49
    invoke-static {p0, p1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static getFatVolumeId(Ljava/lang/String;)I
    .locals 1
    .parameter "mountPoint"

    .prologue
    .line 33
    invoke-static {p0}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setPermissions(Ljava/lang/String;III)I
    .locals 1
    .parameter "file"
    .parameter "mode"
    .parameter "uid"
    .parameter "gid"

    .prologue
    .line 38
    invoke-static {p0, p1, p2, p3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v0

    return v0
.end method
