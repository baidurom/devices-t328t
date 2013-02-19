.class public Lcom/sprint/internal/hardware/RemovableExternalStorage;
.super Ljava/lang/Object;
.source "RemovableExternalStorage.java"


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

    if-eqz v1, :cond_1

    .line 13
    const-string v1, "DSAR"

    const-string v2, "has internel"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15
    const-string v1, "DSAR"

    const-string v2, "get removable"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 23
    .end local v0           #aFile:Ljava/io/File;
    :cond_0
    :goto_0
    return-object v0

    .line 20
    .restart local v0       #aFile:Ljava/io/File;
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method static getPublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "type"

    .prologue
    .line 27
    invoke-static {p0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static getState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    invoke-static {}, Landroid/os/Environment;->hasInternalFat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const-string v0, "DSAR"

    const-string v1, "get removablestate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    .line 36
    :goto_0
    return-object v0

    .line 35
    :cond_0
    const-string v0, "DSAR"

    const-string v1, "get emulatedstate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
