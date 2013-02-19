.class public Lcom/baidu/systemverify/Verification;
.super Ljava/lang/Object;
.source "Verification.java"


# static fields
.field private static final ADDED:I = 0x1

.field private static final CHANGED:I = 0x3

.field private static final FRAMEWORK_YI:Ljava/lang/String; = "/system/framework/framework-res-yi.apk"

.field private static final PATH_CHANGE_HASHFILE:Ljava/lang/String; = "data/data/verification/changeHashFile.dat"

.field private static final PATH_LAST_UPLOAD_HASHFILE:Ljava/lang/String; = "data/data/verification/lastUploadHashFile.dat"

.field private static final REMOVED:I = 0x2

.field private static final SHA1_FILE:Ljava/lang/String; = "res/raw/signatures.dat"

.field private static final TAG:Ljava/lang/String;

.field private static skipFiles:[Ljava/lang/String;


# instance fields
.field private mChangeHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCount:I

.field private mLastSourceHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/systemverify/Utils$FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mResults:Ljava/lang/StringBuilder;

.field private mSourceHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/systemverify/Utils$FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private verifyResult:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const-class v0, Lcom/baidu/systemverify/Verification;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    .line 31
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/system/framework/framework-res-yi.apk"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/system/etc/install-recovery.sh"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/system/recovery-from-boot.p"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/system/etc/channel"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/system/bin/test"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "/system/bin/["

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "/system/app/BaiduMap.apk"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "/system/app/BaiduVideoPlayer.apk"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "/system/app/BaiduMusicPlayer.apk"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "/system/app/BaiduReader.apk"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "/system/app/BaiduTheme.apk"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "/system/app/BaiduNotepad.apk"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "/system/app/BaiduSoundRecorder.apk"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "/system/app/BaiduWeather.apk"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "/system/app/Calculator.apk"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "/system/app/BaiduMap.odex"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "/system/app/BaiduVideoPlayer.odex"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "/system/app/BaiduMusicPlayer.odex"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "/system/app/BaiduReader.odex"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "/system/app/BaiduTheme.odex"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "/system/app/BaiduNotepad.odex"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "/system/app/BaiduSoundRecorder.odex"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "/system/app/BaiduWeather.odex"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "/system/app/Calculator.odex"

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/systemverify/Verification;->skipFiles:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/systemverify/Verification;->verifyResult:Z

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/systemverify/Verification;->mChangeHashMap:Ljava/util/HashMap;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/baidu/systemverify/Verification;->mResults:Ljava/lang/StringBuilder;

    return-void
.end method

.method private checkLinkFile(Ljava/lang/String;Ljava/io/File;)V
    .locals 11
    .parameter "fileName"
    .parameter "file"

    .prologue
    const/4 v10, 0x3

    const/4 v5, 0x1

    const-wide/16 v2, -0x1

    .line 139
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 140
    .local v8, path:Ljava/lang/String;
    iget-object v0, p0, Lcom/baidu/systemverify/Verification;->mSourceHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/systemverify/Utils$FileInfo;

    .line 141
    .local v7, fileInfo:Lcom/baidu/systemverify/Utils$FileInfo;
    const/4 v4, 0x0

    .line 143
    .local v4, objFilename:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 147
    :goto_0
    sget-object v0, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enter checkLinkFile() fileName:"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "  objFilename:"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    if-nez v7, :cond_0

    move-object v0, p0

    move-object v1, p1

    .line 151
    invoke-direct/range {v0 .. v5}, Lcom/baidu/systemverify/Verification;->resultAppend(Ljava/lang/String;JLjava/lang/String;I)V

    .line 164
    :goto_1
    return-void

    .line 144
    :catch_0
    move-exception v6

    .line 145
    .local v6, e:Ljava/io/IOException;
    sget-object v0, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/systemverify/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    .end local v6           #e:Ljava/io/IOException;
    :cond_0
    iget-wide v0, v7, Lcom/baidu/systemverify/Utils$FileInfo;->fileSize:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move-object v1, p1

    move v5, v10

    .line 157
    invoke-direct/range {v0 .. v5}, Lcom/baidu/systemverify/Verification;->resultAppend(Ljava/lang/String;JLjava/lang/String;I)V

    .line 163
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/baidu/systemverify/Verification;->mSourceHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 159
    :cond_2
    iget-object v0, v7, Lcom/baidu/systemverify/Utils$FileInfo;->fileHash:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move v5, v10

    .line 160
    invoke-direct/range {v0 .. v5}, Lcom/baidu/systemverify/Verification;->resultAppend(Ljava/lang/String;JLjava/lang/String;I)V

    goto :goto_2
.end method

.method private checkRemoved()V
    .locals 10

    .prologue
    .line 167
    sget-object v0, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    const-string v1, "enter checkRemoved()"

    invoke-static {v0, v1}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/baidu/systemverify/Verification;->mSourceHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/baidu/systemverify/Verification;->mSourceHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 171
    .local v9, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 172
    .local v6, fileName:Ljava/lang/String;
    iget-object v0, p0, Lcom/baidu/systemverify/Verification;->mSourceHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/systemverify/Utils$FileInfo;

    .line 173
    .local v8, info:Lcom/baidu/systemverify/Utils$FileInfo;
    sget-object v0, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkRemoved() : remove file is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, v8, Lcom/baidu/systemverify/Utils$FileInfo;->fileSize:J

    iget-object v4, v8, Lcom/baidu/systemverify/Utils$FileInfo;->fileHash:Ljava/lang/String;

    const/4 v5, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/systemverify/Verification;->resultAppend(Ljava/lang/String;JLjava/lang/String;I)V

    goto :goto_0

    .line 177
    .end local v6           #fileName:Ljava/lang/String;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #info:Lcom/baidu/systemverify/Utils$FileInfo;
    .end local v9           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private isLastUpload(Ljava/lang/String;JLjava/lang/String;)Z
    .locals 9
    .parameter "fileName"
    .parameter "fileSize"
    .parameter "hashValueString"

    .prologue
    const/4 v8, 0x0

    .line 242
    sget-object v0, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    const-string v1, "enter isLastUpload()"

    invoke-static {v0, v1}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 245
    .local v7, result:Ljava/lang/Boolean;
    iget-object v0, p0, Lcom/baidu/systemverify/Verification;->mLastSourceHashMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/systemverify/Verification;->mLastSourceHashMap:Ljava/util/HashMap;

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/baidu/systemverify/Verification;->mLastSourceHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/systemverify/Utils$FileInfo;

    .line 249
    .local v6, fileInfo:Lcom/baidu/systemverify/Utils$FileInfo;
    if-nez v6, :cond_2

    .line 250
    iget-object v1, p0, Lcom/baidu/systemverify/Verification;->mLastSourceHashMap:Ljava/util/HashMap;

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/systemverify/Verification;->updateHash(Ljava/util/HashMap;Ljava/lang/String;JLjava/lang/String;)V

    .line 251
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 263
    :cond_1
    :goto_0
    sget-object v0, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLastUpload result is:fileName is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " --"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 253
    :cond_2
    iget-wide v0, v6, Lcom/baidu/systemverify/Utils$FileInfo;->fileSize:J

    cmp-long v0, v0, p2

    if-eqz v0, :cond_3

    .line 254
    iget-object v1, p0, Lcom/baidu/systemverify/Verification;->mLastSourceHashMap:Ljava/util/HashMap;

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/systemverify/Verification;->updateHash(Ljava/util/HashMap;Ljava/lang/String;JLjava/lang/String;)V

    .line 255
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_0

    .line 257
    :cond_3
    if-eqz p4, :cond_1

    iget-object v0, v6, Lcom/baidu/systemverify/Utils$FileInfo;->fileHash:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    iget-object v1, p0, Lcom/baidu/systemverify/Verification;->mLastSourceHashMap:Ljava/util/HashMap;

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/systemverify/Verification;->updateHash(Ljava/util/HashMap;Ljava/lang/String;JLjava/lang/String;)V

    .line 259
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_0
.end method

.method private loadHashMap()V
    .locals 7

    .prologue
    .line 180
    sget-object v4, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    const-string v5, "enter loadHashMap()"

    invoke-static {v4, v5}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const/4 v2, 0x0

    .line 184
    .local v2, zip:Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    const-string v4, "/system/framework/framework-res-yi.apk"

    invoke-direct {v3, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 185
    .end local v2           #zip:Ljava/util/zip/ZipFile;
    .local v3, zip:Ljava/util/zip/ZipFile;
    :try_start_1
    const-string/jumbo v4, "res/raw/signatures.dat"

    invoke-virtual {v3, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 186
    .local v1, entry:Ljava/util/zip/ZipEntry;
    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {v3, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/systemverify/Utils;->getHashInfoFromFile(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/systemverify/Verification;->mSourceHashMap:Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 193
    :cond_0
    if-eqz v3, :cond_1

    .line 194
    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v2, v3

    .line 200
    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    .end local v3           #zip:Ljava/util/zip/ZipFile;
    .restart local v2       #zip:Ljava/util/zip/ZipFile;
    :cond_2
    :goto_0
    return-void

    .line 196
    .end local v2           #zip:Ljava/util/zip/ZipFile;
    .restart local v1       #entry:Ljava/util/zip/ZipEntry;
    .restart local v3       #zip:Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v0

    .line 197
    .local v0, e:Ljava/io/IOException;
    sget-object v4, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/systemverify/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 199
    .end local v3           #zip:Ljava/util/zip/ZipFile;
    .restart local v2       #zip:Ljava/util/zip/ZipFile;
    goto :goto_0

    .line 189
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v0

    .line 190
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    sget-object v4, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/systemverify/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 193
    if-eqz v2, :cond_2

    .line 194
    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 196
    :catch_2
    move-exception v0

    .line 197
    .local v0, e:Ljava/io/IOException;
    sget-object v4, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/systemverify/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 192
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 193
    :goto_2
    if-eqz v2, :cond_3

    .line 194
    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 198
    :cond_3
    :goto_3
    throw v4

    .line 196
    :catch_3
    move-exception v0

    .line 197
    .restart local v0       #e:Ljava/io/IOException;
    sget-object v5, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/systemverify/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 192
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #zip:Ljava/util/zip/ZipFile;
    .restart local v3       #zip:Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #zip:Ljava/util/zip/ZipFile;
    .restart local v2       #zip:Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 189
    .end local v2           #zip:Ljava/util/zip/ZipFile;
    .restart local v3       #zip:Ljava/util/zip/ZipFile;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #zip:Ljava/util/zip/ZipFile;
    .restart local v2       #zip:Ljava/util/zip/ZipFile;
    goto :goto_1
.end method

.method private loadLastHashMap()V
    .locals 5

    .prologue
    .line 203
    sget-object v3, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    const-string v4, "enter loadLastHashMap()"

    invoke-static {v3, v4}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v3, "data/data/verification/lastUploadHashFile.dat"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    .local v1, lastHashMapFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 208
    .local v2, parent:Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 209
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 210
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 211
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 213
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 214
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 215
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v3}, Lcom/baidu/systemverify/Utils;->getHashInfoFromFile(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/systemverify/Verification;->mLastSourceHashMap:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v1           #lastHashMapFile:Ljava/io/File;
    .end local v2           #parent:Ljava/io/File;
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resultAppend(Ljava/lang/String;JLjava/lang/String;I)V
    .locals 4
    .parameter "fileName"
    .parameter "fileSize"
    .parameter "hashValueString"
    .parameter "operation"

    .prologue
    .line 222
    sget-object v1, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter resultAppend(),fileName is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0, p1}, Lcom/baidu/systemverify/Verification;->isIgnoreFile(Ljava/lang/String;)Z

    move-result v0

    .line 225
    .local v0, checkIgnore:Z
    if-eqz v0, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/systemverify/Verification;->verifyResult:Z

    .line 229
    sget-object v1, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "verifyResult set false :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/baidu/systemverify/Verification;->verifyResult:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/baidu/systemverify/Verification;->mChangeHashMap:Ljava/util/HashMap;

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/systemverify/Verification;->isLastUpload(Ljava/lang/String;JLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    iget v1, p0, Lcom/baidu/systemverify/Verification;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/baidu/systemverify/Verification;->mCount:I

    .line 234
    iget-object v1, p0, Lcom/baidu/systemverify/Verification;->mResults:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    iget-object v1, p0, Lcom/baidu/systemverify/Verification;->mResults:Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 236
    iget-object v1, p0, Lcom/baidu/systemverify/Verification;->mResults:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    iget-object v1, p0, Lcom/baidu/systemverify/Verification;->mResults:Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private updateHash(Ljava/util/HashMap;Ljava/lang/String;JLjava/lang/String;)V
    .locals 4
    .parameter
    .parameter "fileName"
    .parameter "fileSize"
    .parameter "hashValueString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/systemverify/Utils$FileInfo;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 269
    .local p1, hashmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/baidu/systemverify/Utils$FileInfo;>;"
    sget-object v1, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter updateHash() ,fileName is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    new-instance v0, Lcom/baidu/systemverify/Utils$FileInfo;

    invoke-direct {v0}, Lcom/baidu/systemverify/Utils$FileInfo;-><init>()V

    .line 272
    .local v0, info:Lcom/baidu/systemverify/Utils$FileInfo;
    iput-wide p3, v0, Lcom/baidu/systemverify/Utils$FileInfo;->fileSize:J

    .line 273
    iput-object p5, v0, Lcom/baidu/systemverify/Utils$FileInfo;->fileHash:Ljava/lang/String;

    .line 274
    iget-object v1, p0, Lcom/baidu/systemverify/Verification;->mLastSourceHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    return-void
.end method

.method private verify(Ljava/io/File;)V
    .locals 13
    .parameter "file"

    .prologue
    const/4 v12, 0x3

    const/4 v5, 0x1

    .line 104
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, fileName:Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 106
    .local v9, path:Ljava/lang/String;
    const/4 v6, 0x0

    .line 108
    .local v6, canonicalName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 113
    :goto_0
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    invoke-direct {p0, v1, p1}, Lcom/baidu/systemverify/Verification;->checkLinkFile(Ljava/lang/String;Ljava/io/File;)V

    .line 135
    :cond_0
    :goto_1
    return-void

    .line 109
    :catch_0
    move-exception v7

    .line 110
    .local v7, e:Ljava/io/IOException;
    sget-object v0, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/systemverify/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    .end local v7           #e:Ljava/io/IOException;
    :cond_1
    iget-object v0, p0, Lcom/baidu/systemverify/Verification;->mSourceHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/systemverify/Utils$FileInfo;

    .line 119
    .local v8, fileInfo:Lcom/baidu/systemverify/Utils$FileInfo;
    if-nez v8, :cond_2

    .line 120
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v10, 0x0

    cmp-long v0, v2, v10

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {p1}, Lcom/baidu/systemverify/Utils;->sha1(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/systemverify/Verification;->resultAppend(Ljava/lang/String;JLjava/lang/String;I)V

    goto :goto_1

    .line 125
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-wide v10, v8, Lcom/baidu/systemverify/Utils$FileInfo;->fileSize:J

    cmp-long v0, v2, v10

    if-eqz v0, :cond_4

    .line 126
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {p1}, Lcom/baidu/systemverify/Utils;->sha1(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/baidu/systemverify/Verification;->resultAppend(Ljava/lang/String;JLjava/lang/String;I)V

    .line 133
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/baidu/systemverify/Verification;->mSourceHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 128
    :cond_4
    invoke-static {p1}, Lcom/baidu/systemverify/Utils;->sha1(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, sha1:Ljava/lang/String;
    if-eqz v4, :cond_3

    iget-object v0, v8, Lcom/baidu/systemverify/Utils$FileInfo;->fileHash:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 130
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    move-object v0, p0

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/baidu/systemverify/Verification;->resultAppend(Ljava/lang/String;JLjava/lang/String;I)V

    goto :goto_2
.end method

.method private verifyDirectory(Landroid/os/PowerManager;Ljava/io/File;)V
    .locals 9
    .parameter "pm"
    .parameter "dir"

    .prologue
    .line 81
    sget-object v6, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enter verifyDirectory() dir is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, files:[Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    .line 87
    .local v2, fileName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 89
    invoke-direct {p0, p1, v1}, Lcom/baidu/systemverify/Verification;->verifyDirectory(Landroid/os/PowerManager;Ljava/io/File;)V

    .line 86
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 91
    :cond_0
    :goto_2
    invoke-virtual {p1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 93
    const-wide/16 v6, 0x1388

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 94
    :catch_0
    move-exception v6

    goto :goto_2

    .line 97
    :cond_1
    invoke-direct {p0, v1}, Lcom/baidu/systemverify/Verification;->verify(Ljava/io/File;)V

    goto :goto_1

    .line 100
    .end local v1           #file:Ljava/io/File;
    .end local v2           #fileName:Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    const-string v1, "enter getResult()"

    invoke-static {v0, v1}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/baidu/systemverify/Verification;->mResults:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/systemverify/Verification;->mResults:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVerifyResult()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/baidu/systemverify/Verification;->verifyResult:Z

    return v0
.end method

.method isIgnoreFile(Ljava/lang/String;)Z
    .locals 3
    .parameter "fileName"

    .prologue
    .line 278
    const/4 v1, 0x0

    .line 279
    .local v1, result:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/baidu/systemverify/Verification;->skipFiles:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 280
    sget-object v2, Lcom/baidu/systemverify/Verification;->skipFiles:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 281
    const/4 v1, 0x1

    .line 285
    :cond_0
    return v1

    .line 279
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public verifySystem(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 55
    sget-object v2, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    const-string v3, "enter verifySystem()"

    invoke-static {v2, v3}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Lcom/baidu/systemverify/Verification;->loadHashMap()V

    .line 58
    invoke-direct {p0}, Lcom/baidu/systemverify/Verification;->loadLastHashMap()V

    .line 59
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    .line 60
    .local v1, root:Ljava/io/File;
    iget-object v2, p0, Lcom/baidu/systemverify/Verification;->mSourceHashMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/systemverify/Verification;->mSourceHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 61
    :cond_0
    const/4 v2, 0x0

    .line 72
    :goto_0
    return v2

    .line 64
    :cond_1
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 67
    .local v0, pm:Landroid/os/PowerManager;
    invoke-direct {p0, v0, v1}, Lcom/baidu/systemverify/Verification;->verifyDirectory(Landroid/os/PowerManager;Ljava/io/File;)V

    .line 68
    invoke-direct {p0}, Lcom/baidu/systemverify/Verification;->checkRemoved()V

    .line 70
    iget-object v2, p0, Lcom/baidu/systemverify/Verification;->mLastSourceHashMap:Ljava/util/HashMap;

    const-string v3, "data/data/verification/lastUploadHashFile.dat"

    invoke-static {v2, v3}, Lcom/baidu/systemverify/Utils;->WriteHashMapToFile(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 71
    iget-object v2, p0, Lcom/baidu/systemverify/Verification;->mChangeHashMap:Ljava/util/HashMap;

    const-string v3, "data/data/verification/changeHashFile.dat"

    invoke-static {v2, v3}, Lcom/baidu/systemverify/Utils;->WriteChangeHashMapToFile(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 72
    iget v2, p0, Lcom/baidu/systemverify/Verification;->mCount:I

    goto :goto_0
.end method
