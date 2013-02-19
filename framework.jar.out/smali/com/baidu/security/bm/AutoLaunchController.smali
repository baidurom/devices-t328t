.class Lcom/baidu/security/bm/AutoLaunchController;
.super Ljava/lang/Object;
.source "AutoLaunchController.java"


# static fields
.field private static final BLACKLIST_BACKUP_FILE_PATH:Ljava/lang/String; = "/data/system/bcblist_backup"

.field private static final BLACKLIST_FILE_PATH:Ljava/lang/String; = "/data/system/bcblist"

.field private static final RECORD_SPLIT:Ljava/lang/String; = "\r\n"

.field private static final SHOW_LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "AutoLaunchController"

.field private static volatile mBlackList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/security/bm/AutoLaunchController;->mBlackList:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBlackListForReading()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    sget-object v0, Lcom/baidu/security/bm/AutoLaunchController;->mBlackList:Ljava/util/HashMap;

    return-object v0
.end method

.method private static getBlackListForWriting()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    sget-object v1, Lcom/baidu/security/bm/AutoLaunchController;->mBlackList:Ljava/util/HashMap;

    .line 46
    .local v1, currentList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 47
    .local v0, copyedList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 48
    .local v2, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 50
    .local v3, pkgName:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 52
    .end local v3           #pkgName:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method static loadBlackList()Z
    .locals 15

    .prologue
    .line 105
    sget-object v12, Lcom/baidu/security/bm/AutoLaunchController;->mBlackList:Ljava/util/HashMap;

    if-nez v12, :cond_0

    .line 106
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    sput-object v12, Lcom/baidu/security/bm/AutoLaunchController;->mBlackList:Ljava/util/HashMap;

    .line 109
    :cond_0
    const/4 v10, 0x0

    .line 110
    .local v10, recordfile:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v12, "/data/system/bcblist"

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .local v4, broadcastBlackListFile:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v12, "/data/system/bcblist_backup"

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .local v3, blackListBackupFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 113
    move-object v10, v3

    .line 117
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 121
    const-string v12, "AutoLaunchController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cleaning up broadcast blacklist normal file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 126
    :cond_1
    if-nez v10, :cond_2

    .line 127
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 128
    move-object v10, v4

    .line 133
    :cond_2
    :goto_0
    if-eqz v10, :cond_6

    .line 134
    const/4 v0, 0x0

    .line 136
    .local v0, allData:Ljava/lang/String;
    const/4 v12, 0x0

    const/4 v13, 0x0

    :try_start_0
    invoke-static {v10, v12, v13}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 141
    :goto_1
    if-eqz v0, :cond_6

    .line 142
    const-string v12, "\r\n"

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, allRecords:[Ljava/lang/String;
    move-object v2, v1

    .local v2, arr$:[Ljava/lang/String;
    array-length v7, v2

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_2
    if-ge v6, v7, :cond_6

    aget-object v9, v2, v6

    .line 147
    .local v9, pkgName:Ljava/lang/String;
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_4

    .line 148
    const/4 v11, 0x0

    .line 149
    .local v11, towPartsOk:Z
    const-string/jumbo v12, "|"

    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-lez v12, :cond_3

    .line 150
    const-string v12, "\\|"

    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 151
    .local v8, parts:[Ljava/lang/String;
    array-length v12, v8

    const/4 v13, 0x2

    if-ne v12, v13, :cond_3

    .line 153
    :try_start_1
    sget-object v12, Lcom/baidu/security/bm/AutoLaunchController;->mBlackList:Ljava/util/HashMap;

    const/4 v13, 0x0

    aget-object v13, v8, v13

    const/4 v14, 0x1

    aget-object v14, v8, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 154
    const/4 v11, 0x1

    .line 159
    .end local v8           #parts:[Ljava/lang/String;
    :cond_3
    :goto_3
    if-nez v11, :cond_4

    .line 160
    sget-object v12, Lcom/baidu/security/bm/AutoLaunchController;->mBlackList:Ljava/util/HashMap;

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .end local v11           #towPartsOk:Z
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 130
    .end local v0           #allData:Ljava/lang/String;
    .end local v1           #allRecords:[Ljava/lang/String;
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v9           #pkgName:Ljava/lang/String;
    :cond_5
    const-string v12, "AutoLaunchController"

    const-string v13, "No command broadcast blacklist file found.\n"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    .restart local v0       #allData:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 138
    .local v5, e:Ljava/io/IOException;
    const/4 v0, 0x0

    .line 139
    const-string v12, "AutoLaunchController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "read file: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", catch exception: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 167
    .end local v0           #allData:Ljava/lang/String;
    .end local v5           #e:Ljava/io/IOException;
    :cond_6
    const/4 v12, 0x1

    return v12

    .line 155
    .restart local v0       #allData:Ljava/lang/String;
    .restart local v1       #allRecords:[Ljava/lang/String;
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    .restart local v8       #parts:[Ljava/lang/String;
    .restart local v9       #pkgName:Ljava/lang/String;
    .restart local v11       #towPartsOk:Z
    :catch_1
    move-exception v12

    goto :goto_3
.end method

.method static packageInBlackList(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 89
    const/4 v1, 0x0

    .line 90
    .local v1, retVal:Z
    sget-object v0, Lcom/baidu/security/bm/AutoLaunchController;->mBlackList:Ljava/util/HashMap;

    .line 92
    .local v0, blackList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    const/4 v1, 0x1

    .line 98
    :cond_0
    return v1
.end method

.method private static setBlackListSafely(Ljava/util/HashMap;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, blackList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez p0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 66
    :cond_0
    sget-object v3, Lcom/baidu/security/bm/AutoLaunchController;->mBlackList:Ljava/util/HashMap;

    if-eq p0, v3, :cond_1

    .line 67
    sput-object p0, Lcom/baidu/security/bm/AutoLaunchController;->mBlackList:Ljava/util/HashMap;

    goto :goto_0

    .line 71
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 72
    .local v1, newList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 73
    .local v0, it:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 75
    .local v2, pkgName:Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 77
    .end local v2           #pkgName:Ljava/lang/String;
    :cond_2
    sput-object v1, Lcom/baidu/security/bm/AutoLaunchController;->mBlackList:Ljava/util/HashMap;

    goto :goto_0
.end method

.method static updateBlackList(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/security/bm/AutoLaunchAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, newPart:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/bm/AutoLaunchAppInfo;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    invoke-static {}, Lcom/baidu/security/bm/AutoLaunchController;->getBlackListForWriting()Ljava/util/HashMap;

    move-result-object v2

    .line 189
    .local v2, newList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_5

    .line 190
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/security/bm/AutoLaunchAppInfo;

    .line 191
    .local v0, appInfo:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    if-eqz v0, :cond_2

    .line 194
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    iget-object v4, v0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 195
    iget-boolean v3, v0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    if-eqz v3, :cond_3

    .line 196
    iget-object v3, v0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 199
    :cond_3
    iget-object v3, v0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->packageName:Ljava/lang/String;

    iget v4, v0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->appState:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 202
    :cond_4
    iget-boolean v3, v0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    iget-object v4, v0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 203
    iget-object v3, v0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->packageName:Ljava/lang/String;

    iget v4, v0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->appState:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 208
    .end local v0           #appInfo:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_5
    invoke-static {v2}, Lcom/baidu/security/bm/AutoLaunchController;->writeBlackListFileSynced(Ljava/util/HashMap;)Z

    .line 209
    invoke-static {v2}, Lcom/baidu/security/bm/AutoLaunchController;->setBlackListSafely(Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method private static writeBlackListFileSynced(Ljava/util/HashMap;)Z
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, newBlackList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 217
    if-nez p0, :cond_0

    move v6, v8

    .line 274
    :goto_0
    return v6

    .line 221
    :cond_0
    const/4 v6, 0x0

    .line 222
    .local v6, retVal:Z
    const/4 v3, 0x0

    .line 223
    .local v3, fileContent:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 224
    .local v5, item:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 228
    if-nez v3, :cond_2

    .line 229
    new-instance v3, Ljava/lang/String;

    .end local v3           #fileContent:Ljava/lang/String;
    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 235
    .restart local v3       #fileContent:Ljava/lang/String;
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "|"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 236
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 232
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\r\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 233
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 238
    .end local v5           #item:Ljava/lang/String;
    :cond_3
    if-nez v3, :cond_4

    .line 239
    new-instance v3, Ljava/lang/String;

    .end local v3           #fileContent:Ljava/lang/String;
    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 242
    .restart local v3       #fileContent:Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/io/File;

    const-string v7, "/data/system/bcblist"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    .local v1, broadcastBlackListFile:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v7, "/data/system/bcblist_backup"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    .local v0, blackListBackupFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 249
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_5

    .line 250
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 251
    const-string v7, "AutoLaunchController"

    const-string v9, "Unable to backup broadcast blacklist, current changes will be lost"

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 252
    goto/16 :goto_0

    .line 255
    :cond_5
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 256
    const-string v7, "AutoLaunchController"

    const-string v8, "Preserving older data backup"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_6
    :try_start_0
    const-string v7, "/data/system/bcblist"

    invoke-static {v7, v3}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 263
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 265
    :cond_7
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 266
    :catch_0
    move-exception v2

    .line 267
    .local v2, e:Ljava/io/IOException;
    const/4 v6, 0x0

    .line 268
    const-string v7, "AutoLaunchController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "write file: /data/system/bcblist, catch exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 269
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 270
    .local v2, e:Ljava/lang/RuntimeException;
    const/4 v6, 0x0

    .line 271
    const-string v7, "AutoLaunchController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "write file: /data/system/bcblist, catch exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
