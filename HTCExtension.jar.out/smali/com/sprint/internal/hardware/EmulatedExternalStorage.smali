.class public Lcom/sprint/internal/hardware/EmulatedExternalStorage;
.super Ljava/lang/Object;
.source "EmulatedExternalStorage.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method static getDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 11
    const/4 v0, 0x0

    .line 12
    .local v0, aFile:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->hasInternalFat()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    const-string v1, "DSAE"

    const-string v2, "has internel"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 16
    :cond_0
    return-object v0
.end method

.method static getPublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "type"

    .prologue
    .line 20
    invoke-static {p0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static getState()Ljava/lang/String;
    .locals 4

    .prologue
    .line 23
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, state:Ljava/lang/String;
    const-string v1, "DSAE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get external state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return-object v0
.end method
