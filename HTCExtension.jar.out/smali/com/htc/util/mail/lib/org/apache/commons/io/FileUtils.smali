.class public Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field public static final EMPTY_FILE_ARRAY:[Ljava/io/File; = null

.field public static final ONE_GB:J = 0x40000000L

.field public static final ONE_KB:J = 0x400L

.field public static final ONE_MB:J = 0x100000L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method public static byteCountToDisplaySize(J)Ljava/lang/String;
    .locals 11
    .parameter "size"

    .prologue
    const-wide/32 v9, 0x40000000

    const-wide/32 v7, 0x100000

    const-wide/16 v5, 0x400

    const-wide/16 v3, 0x0

    .line 221
    div-long v1, p0, v9

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-long v2, p0, v9

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " GB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, displaySize:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 223
    .end local v0           #displaySize:Ljava/lang/String;
    :cond_0
    div-long v1, p0, v7

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-long v2, p0, v7

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #displaySize:Ljava/lang/String;
    goto :goto_0

    .line 225
    .end local v0           #displaySize:Ljava/lang/String;
    :cond_1
    div-long v1, p0, v5

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-long v2, p0, v5

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #displaySize:Ljava/lang/String;
    goto :goto_0

    .line 228
    .end local v0           #displaySize:Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #displaySize:Ljava/lang/String;
    goto :goto_0
.end method

.method public static checksum(Ljava/io/File;Ljava/util/zip/Checksum;)Ljava/util/zip/Checksum;
    .locals 4
    .parameter "file"
    .parameter "checksum"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1920
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1921
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Checksums can\'t be computed on directories"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1923
    :cond_0
    const/4 v0, 0x0

    .line 1925
    .local v0, in:Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/util/zip/CheckedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2, p1}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1926
    .end local v0           #in:Ljava/io/InputStream;
    .local v1, in:Ljava/io/InputStream;
    :try_start_1
    new-instance v2, Lcom/htc/util/mail/lib/org/apache/commons/io/output/NullOutputStream;

    invoke-direct {v2}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/NullOutputStream;-><init>()V

    invoke-static {v1, v2}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1928
    invoke-static {v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 1930
    return-object p1

    .line 1928
    .end local v1           #in:Ljava/io/InputStream;
    .restart local v0       #in:Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    :goto_0
    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v2

    .end local v0           #in:Ljava/io/InputStream;
    .restart local v1       #in:Ljava/io/InputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/InputStream;
    .restart local v0       #in:Ljava/io/InputStream;
    goto :goto_0
.end method

.method public static checksumCRC32(Ljava/io/File;)J
    .locals 3
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1893
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 1894
    .local v0, crc:Ljava/util/zip/CRC32;
    invoke-static {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->checksum(Ljava/io/File;Ljava/util/zip/Checksum;)Ljava/util/zip/Checksum;

    .line 1895
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    return-wide v1
.end method

.method public static cleanDirectory(Ljava/io/File;)V
    .locals 9
    .parameter "directory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1137
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1138
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not exist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1139
    .local v5, message:Ljava/lang/String;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1142
    .end local v5           #message:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1143
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not a directory"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1144
    .restart local v5       #message:Ljava/lang/String;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1147
    .end local v5           #message:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1148
    .local v2, files:[Ljava/io/File;
    if-nez v2, :cond_2

    .line 1149
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to list contents of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1152
    :cond_2
    const/4 v0, 0x0

    .line 1153
    .local v0, exception:Ljava/io/IOException;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, v2

    if-ge v3, v6, :cond_3

    .line 1154
    aget-object v1, v2, v3

    .line 1156
    .local v1, file:Ljava/io/File;
    :try_start_0
    invoke-static {v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->forceDelete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1153
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1157
    :catch_0
    move-exception v4

    .line 1158
    .local v4, ioe:Ljava/io/IOException;
    move-object v0, v4

    goto :goto_1

    .line 1162
    .end local v1           #file:Ljava/io/File;
    .end local v4           #ioe:Ljava/io/IOException;
    :cond_3
    if-eqz v0, :cond_4

    .line 1163
    throw v0

    .line 1165
    :cond_4
    return-void
.end method

.method private static cleanDirectoryOnExit(Ljava/io/File;)V
    .locals 9
    .parameter "directory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1615
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1616
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not exist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1617
    .local v5, message:Ljava/lang/String;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1620
    .end local v5           #message:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1621
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not a directory"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1622
    .restart local v5       #message:Ljava/lang/String;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1625
    .end local v5           #message:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1626
    .local v2, files:[Ljava/io/File;
    if-nez v2, :cond_2

    .line 1627
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to list contents of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1630
    :cond_2
    const/4 v0, 0x0

    .line 1631
    .local v0, exception:Ljava/io/IOException;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, v2

    if-ge v3, v6, :cond_3

    .line 1632
    aget-object v1, v2, v3

    .line 1634
    .local v1, file:Ljava/io/File;
    :try_start_0
    invoke-static {v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->forceDeleteOnExit(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1631
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1635
    :catch_0
    move-exception v4

    .line 1636
    .local v4, ioe:Ljava/io/IOException;
    move-object v0, v4

    goto :goto_1

    .line 1640
    .end local v1           #file:Ljava/io/File;
    .end local v4           #ioe:Ljava/io/IOException;
    :cond_3
    if-eqz v0, :cond_4

    .line 1641
    throw v0

    .line 1643
    :cond_4
    return-void
.end method

.method public static contentEquals(Ljava/io/File;Ljava/io/File;)Z
    .locals 11
    .parameter "file1"
    .parameter "file2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 472
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 473
    .local v0, file1Exists:Z
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eq v0, v7, :cond_1

    .line 506
    :cond_0
    :goto_0
    return v5

    .line 477
    :cond_1
    if-nez v0, :cond_2

    move v5, v6

    .line 479
    goto :goto_0

    .line 482
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 484
    :cond_3
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Can\'t compare directories, only files"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 487
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    .line 492
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v6

    .line 494
    goto :goto_0

    .line 497
    :cond_5
    const/4 v1, 0x0

    .line 498
    .local v1, input1:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 500
    .local v3, input2:Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    .end local v1           #input1:Ljava/io/InputStream;
    .local v2, input1:Ljava/io/InputStream;
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 502
    .end local v3           #input2:Ljava/io/InputStream;
    .local v4, input2:Ljava/io/InputStream;
    :try_start_2
    invoke-static {v2, v4}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->contentEquals(Ljava/io/InputStream;Ljava/io/InputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v5

    .line 505
    invoke-static {v2}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 506
    invoke-static {v4}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    .line 505
    .end local v2           #input1:Ljava/io/InputStream;
    .end local v4           #input2:Ljava/io/InputStream;
    .restart local v1       #input1:Ljava/io/InputStream;
    .restart local v3       #input2:Ljava/io/InputStream;
    :catchall_0
    move-exception v5

    :goto_1
    invoke-static {v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 506
    invoke-static {v3}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v5

    .line 505
    .end local v1           #input1:Ljava/io/InputStream;
    .restart local v2       #input1:Ljava/io/InputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #input1:Ljava/io/InputStream;
    .restart local v1       #input1:Ljava/io/InputStream;
    goto :goto_1

    .end local v1           #input1:Ljava/io/InputStream;
    .end local v3           #input2:Ljava/io/InputStream;
    .restart local v2       #input1:Ljava/io/InputStream;
    .restart local v4       #input2:Ljava/io/InputStream;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4           #input2:Ljava/io/InputStream;
    .restart local v3       #input2:Ljava/io/InputStream;
    move-object v1, v2

    .end local v2           #input1:Ljava/io/InputStream;
    .restart local v1       #input1:Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static convertFileCollectionToFileArray(Ljava/util/Collection;)[Ljava/io/File;
    .locals 1
    .parameter "files"

    .prologue
    .line 275
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    check-cast v0, [Ljava/io/File;

    return-object v0
.end method

.method public static copyDirectory(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .parameter "srcDir"
    .parameter "destDir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 833
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;Z)V

    .line 834
    return-void
.end method

.method public static copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;)V
    .locals 1
    .parameter "srcDir"
    .parameter "destDir"
    .parameter "filter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 910
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;Z)V

    .line 911
    return-void
.end method

.method public static copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;Z)V
    .locals 7
    .parameter "srcDir"
    .parameter "destDir"
    .parameter "filter"
    .parameter "preserveFileDate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 959
    if-nez p0, :cond_0

    .line 960
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "Source must not be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 962
    :cond_0
    if-nez p1, :cond_1

    .line 963
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "Destination must not be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 965
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 966
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Source \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' does not exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 968
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_3

    .line 969
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Source \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' exists but is not a directory"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 971
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 972
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Source \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' and destination \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' are the same"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 976
    :cond_4
    const/4 v1, 0x0

    .line 977
    .local v1, exclusionList:Ljava/util/List;
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 978
    if-nez p2, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 979
    .local v3, srcFiles:[Ljava/io/File;
    :goto_0
    if-eqz v3, :cond_6

    array-length v4, v3

    if-lez v4, :cond_6

    .line 980
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #exclusionList:Ljava/util/List;
    array-length v4, v3

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 981
    .restart local v1       #exclusionList:Ljava/util/List;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_6

    .line 982
    new-instance v0, Ljava/io/File;

    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 983
    .local v0, copiedFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 981
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 978
    .end local v0           #copiedFile:Ljava/io/File;
    .end local v2           #i:I
    .end local v3           #srcFiles:[Ljava/io/File;
    :cond_5
    invoke-virtual {p0, p2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    goto :goto_0

    .line 987
    :cond_6
    invoke-static {p0, p1, p2, p3, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->doCopyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/List;)V

    .line 988
    return-void
.end method

.method public static copyDirectory(Ljava/io/File;Ljava/io/File;Z)V
    .locals 1
    .parameter "srcDir"
    .parameter "destDir"
    .parameter "preserveFileDate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 862
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;Z)V

    .line 863
    return-void
.end method

.method public static copyDirectoryToDirectory(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .parameter "srcDir"
    .parameter "destDir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 794
    if-nez p0, :cond_0

    .line 795
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Source must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 797
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 798
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 800
    :cond_1
    if-nez p1, :cond_2

    .line 801
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Destination must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 803
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3

    .line 804
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 806
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;Z)V

    .line 807
    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .parameter "srcFile"
    .parameter "destFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 683
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;Z)V

    .line 684
    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;Z)V
    .locals 3
    .parameter "srcFile"
    .parameter "destFile"
    .parameter "preserveFileDate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 710
    if-nez p0, :cond_0

    .line 711
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Source must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 713
    :cond_0
    if-nez p1, :cond_1

    .line 714
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Destination must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 716
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 717
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 719
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 720
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' exists but is a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 722
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 723
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and destination \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' are the same"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 725
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    .line 726
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_5

    .line 727
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' directory cannot be created"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 730
    :cond_5
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_6

    .line 731
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' exists but is read-only"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 733
    :cond_6
    invoke-static {p0, p1, p2}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->doCopyFile(Ljava/io/File;Ljava/io/File;Z)V

    .line 734
    return-void
.end method

.method public static copyFileToDirectory(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .parameter "srcFile"
    .parameter "destDir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 630
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->copyFileToDirectory(Ljava/io/File;Ljava/io/File;Z)V

    .line 631
    return-void
.end method

.method public static copyFileToDirectory(Ljava/io/File;Ljava/io/File;Z)V
    .locals 3
    .parameter "srcFile"
    .parameter "destDir"
    .parameter "preserveFileDate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 657
    if-nez p1, :cond_0

    .line 658
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Destination must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 660
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 661
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 663
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0, p2}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;Z)V

    .line 664
    return-void
.end method

.method public static copyURLToFile(Ljava/net/URL;Ljava/io/File;)V
    .locals 3
    .parameter "source"
    .parameter "destination"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1056
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 1058
    .local v0, input:Ljava/io/InputStream;
    :try_start_0
    invoke-static {p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->openOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 1060
    .local v1, output:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {v0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1062
    :try_start_2
    invoke-static {v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1065
    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 1067
    return-void

    .line 1062
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-static {v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1065
    .end local v1           #output:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v2

    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v2
.end method

.method public static deleteDirectory(Ljava/io/File;)V
    .locals 3
    .parameter "directory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1081
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1091
    :cond_0
    return-void

    .line 1085
    :cond_1
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->cleanDirectory(Ljava/io/File;)V

    .line 1086
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1087
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to delete directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1089
    .local v0, message:Ljava/lang/String;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static deleteDirectoryOnExit(Ljava/io/File;)V
    .locals 1
    .parameter "directory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1599
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1605
    :goto_0
    return-void

    .line 1603
    :cond_0
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->cleanDirectoryOnExit(Ljava/io/File;)V

    .line 1604
    invoke-virtual {p0}, Ljava/io/File;->deleteOnExit()V

    goto :goto_0
.end method

.method public static deleteQuietly(Ljava/io/File;)Z
    .locals 3
    .parameter "file"

    .prologue
    const/4 v1, 0x0

    .line 1109
    if-nez p0, :cond_0

    .line 1122
    :goto_0
    return v1

    .line 1113
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1114
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->cleanDirectory(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1120
    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_0

    .line 1121
    :catch_0
    move-exception v0

    .line 1122
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0

    .line 1116
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private static doCopyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/List;)V
    .locals 6
    .parameter "srcDir"
    .parameter "destDir"
    .parameter "filter"
    .parameter "preserveFileDate"
    .parameter "exclusionList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1003
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1004
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1005
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Destination \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' exists but is not a directory"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1008
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1009
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Destination \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' directory cannot be created"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1011
    :cond_1
    if-eqz p3, :cond_2

    .line 1012
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/io/File;->setLastModified(J)Z

    .line 1015
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1016
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Destination \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' cannot be written to"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1019
    :cond_3
    if-nez p2, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 1020
    .local v1, files:[Ljava/io/File;
    :goto_0
    if-nez v1, :cond_5

    .line 1021
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to list contents of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1019
    .end local v1           #files:[Ljava/io/File;
    :cond_4
    invoke-virtual {p0, p2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    goto :goto_0

    .line 1023
    .restart local v1       #files:[Ljava/io/File;
    :cond_5
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_9

    .line 1024
    new-instance v0, Ljava/io/File;

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1025
    .local v0, copiedFile:Ljava/io/File;
    if-eqz p4, :cond_6

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1026
    :cond_6
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1027
    aget-object v3, v1, v2

    invoke-static {v3, v0, p2, p3, p4}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->doCopyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/List;)V

    .line 1023
    :cond_7
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1029
    :cond_8
    aget-object v3, v1, v2

    invoke-static {v3, v0, p3}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->doCopyFile(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_2

    .line 1033
    .end local v0           #copiedFile:Ljava/io/File;
    :cond_9
    return-void
.end method

.method private static doCopyFile(Ljava/io/File;Ljava/io/File;Z)V
    .locals 6
    .parameter "srcFile"
    .parameter "destFile"
    .parameter "preserveFileDate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 745
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 746
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Destination \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' exists but is a directory"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 749
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 751
    .local v0, input:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 753
    .local v1, output:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {v0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 755
    :try_start_2
    invoke-static {v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 758
    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 761
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 762
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to copy full contents from \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' to \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 755
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-static {v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 758
    .end local v1           #output:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v2

    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v2

    .line 765
    .restart local v1       #output:Ljava/io/FileOutputStream;
    :cond_1
    if-eqz p2, :cond_2

    .line 766
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 768
    :cond_2
    return-void
.end method

.method public static forceDelete(Ljava/io/File;)V
    .locals 5
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1556
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1557
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V

    .line 1569
    :cond_0
    return-void

    .line 1559
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 1560
    .local v0, filePresent:Z
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1561
    if-nez v0, :cond_2

    .line 1562
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File does not exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1564
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to delete file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1566
    .local v1, message:Ljava/lang/String;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static forceDeleteOnExit(Ljava/io/File;)V
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1584
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1585
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->deleteDirectoryOnExit(Ljava/io/File;)V

    .line 1589
    :goto_0
    return-void

    .line 1587
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->deleteOnExit()V

    goto :goto_0
.end method

.method public static forceMkdir(Ljava/io/File;)V
    .locals 3
    .parameter "directory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1659
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1660
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exists and is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not a directory. Unable to create directory."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1666
    .local v0, message:Ljava/lang/String;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1669
    .end local v0           #message:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1670
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1672
    .restart local v0       #message:Ljava/lang/String;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1675
    .end local v0           #message:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static innerListFiles(Ljava/util/Collection;Ljava/io/File;Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)V
    .locals 3
    .parameter "files"
    .parameter "directory"
    .parameter "filter"

    .prologue
    .line 289
    invoke-virtual {p1, p2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 290
    .local v0, found:[Ljava/io/File;
    if-eqz v0, :cond_1

    .line 291
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 292
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    aget-object v2, v0, v1

    invoke-static {p0, v2, p2}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->innerListFiles(Ljava/util/Collection;Ljava/io/File;Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)V

    .line 291
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 295
    :cond_0
    aget-object v2, v0, v1

    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 299
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public static isFileNewer(Ljava/io/File;J)Z
    .locals 3
    .parameter "file"
    .parameter "timeMillis"

    .prologue
    const/4 v0, 0x0

    .line 1788
    if-nez p0, :cond_0

    .line 1789
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No specified file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1791
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1794
    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isFileNewer(Ljava/io/File;Ljava/io/File;)Z
    .locals 3
    .parameter "file"
    .parameter "reference"

    .prologue
    .line 1738
    if-nez p1, :cond_0

    .line 1739
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No specified reference file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1741
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1742
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The reference file \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' doesn\'t exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1745
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->isFileNewer(Ljava/io/File;J)Z

    move-result v0

    return v0
.end method

.method public static isFileNewer(Ljava/io/File;Ljava/util/Date;)Z
    .locals 2
    .parameter "file"
    .parameter "date"

    .prologue
    .line 1765
    if-nez p1, :cond_0

    .line 1766
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No specified date"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1768
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->isFileNewer(Ljava/io/File;J)Z

    move-result v0

    return v0
.end method

.method public static isFileOlder(Ljava/io/File;J)Z
    .locals 3
    .parameter "file"
    .parameter "timeMillis"

    .prologue
    const/4 v0, 0x0

    .line 1867
    if-nez p0, :cond_0

    .line 1868
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No specified file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1870
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1873
    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-gez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isFileOlder(Ljava/io/File;Ljava/io/File;)Z
    .locals 3
    .parameter "file"
    .parameter "reference"

    .prologue
    .line 1817
    if-nez p1, :cond_0

    .line 1818
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No specified reference file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1820
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1821
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The reference file \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' doesn\'t exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1824
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->isFileOlder(Ljava/io/File;J)Z

    move-result v0

    return v0
.end method

.method public static isFileOlder(Ljava/io/File;Ljava/util/Date;)Z
    .locals 2
    .parameter "file"
    .parameter "date"

    .prologue
    .line 1844
    if-nez p1, :cond_0

    .line 1845
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No specified date"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1847
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->isFileOlder(Ljava/io/File;J)Z

    move-result v0

    return v0
.end method

.method public static iterateFiles(Ljava/io/File;Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Iterator;
    .locals 1
    .parameter "directory"
    .parameter "fileFilter"
    .parameter "dirFilter"

    .prologue
    .line 383
    invoke-static {p0, p1, p2}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->listFiles(Ljava/io/File;Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static iterateFiles(Ljava/io/File;[Ljava/lang/String;Z)Ljava/util/Iterator;
    .locals 1
    .parameter "directory"
    .parameter "extensions"
    .parameter "recursive"

    .prologue
    .line 448
    invoke-static {p0, p1, p2}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->listFiles(Ljava/io/File;[Ljava/lang/String;Z)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static lineIterator(Ljava/io/File;)Lcom/htc/util/mail/lib/org/apache/commons/io/LineIterator;
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1375
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->lineIterator(Ljava/io/File;Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/commons/io/LineIterator;

    move-result-object v0

    return-object v0
.end method

.method public static lineIterator(Ljava/io/File;Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/commons/io/LineIterator;
    .locals 3
    .parameter "file"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1348
    const/4 v1, 0x0

    .line 1350
    .local v1, in:Ljava/io/InputStream;
    :try_start_0
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->openInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 1351
    invoke-static {v1, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->lineIterator(Ljava/io/InputStream;Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/commons/io/LineIterator;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    return-object v2

    .line 1352
    :catch_0
    move-exception v0

    .line 1353
    .local v0, ex:Ljava/io/IOException;
    invoke-static {v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 1354
    throw v0

    .line 1355
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1356
    .local v0, ex:Ljava/lang/RuntimeException;
    invoke-static {v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 1357
    throw v0
.end method

.method public static listFiles(Ljava/io/File;Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection;
    .locals 5
    .parameter "directory"
    .parameter "fileFilter"
    .parameter "dirFilter"

    .prologue
    .line 332
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 333
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Parameter \'directory\' is not a directory"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 336
    :cond_0
    if-nez p1, :cond_1

    .line 337
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Parameter \'fileFilter\' is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 341
    :cond_1
    sget-object v3, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/DirectoryFileFilter;->INSTANCE:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    invoke-static {v3}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FileFilterUtils;->notFileFilter(Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FileFilterUtils;->andFileFilter(Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v1

    .line 346
    .local v1, effFileFilter:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    if-nez p2, :cond_2

    .line 347
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FalseFileFilter;->INSTANCE:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    .line 354
    .local v0, effDirFilter:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    :goto_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 355
    .local v2, files:Ljava/util/Collection;
    invoke-static {v1, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FileFilterUtils;->orFileFilter(Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v3

    invoke-static {v2, p0, v3}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->innerListFiles(Ljava/util/Collection;Ljava/io/File;Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)V

    .line 357
    return-object v2

    .line 349
    .end local v0           #effDirFilter:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .end local v2           #files:Ljava/util/Collection;
    :cond_2
    sget-object v3, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/DirectoryFileFilter;->INSTANCE:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    invoke-static {p2, v3}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FileFilterUtils;->andFileFilter(Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    .restart local v0       #effDirFilter:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    goto :goto_0
.end method

.method public static listFiles(Ljava/io/File;[Ljava/lang/String;Z)Ljava/util/Collection;
    .locals 3
    .parameter "directory"
    .parameter "extensions"
    .parameter "recursive"

    .prologue
    .line 420
    if-nez p1, :cond_0

    .line 421
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/TrueFileFilter;->INSTANCE:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    .line 426
    .local v0, filter:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    :goto_0
    if-eqz p2, :cond_1

    sget-object v2, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/TrueFileFilter;->INSTANCE:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    :goto_1
    invoke-static {p0, v0, v2}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->listFiles(Ljava/io/File;Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection;

    move-result-object v2

    return-object v2

    .line 423
    .end local v0           #filter:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    :cond_0
    invoke-static {p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->toSuffixes([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, suffixes:[Ljava/lang/String;
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SuffixFileFilter;

    invoke-direct {v0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SuffixFileFilter;-><init>([Ljava/lang/String;)V

    .restart local v0       #filter:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    goto :goto_0

    .line 426
    .end local v1           #suffixes:[Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FalseFileFilter;->INSTANCE:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    goto :goto_1
.end method

.method public static moveDirectory(Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .parameter "srcDir"
    .parameter "destDir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1946
    if-nez p0, :cond_0

    .line 1947
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Source must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1949
    :cond_0
    if-nez p1, :cond_1

    .line 1950
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Destination must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1952
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1953
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Source \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1955
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1956
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Source \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not a directory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1958
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1959
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destination \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' already exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1961
    :cond_4
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 1962
    .local v0, rename:Z
    if-nez v0, :cond_5

    .line 1963
    invoke-static {p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 1964
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V

    .line 1965
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1966
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete original directory \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' after copy to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1970
    :cond_5
    return-void
.end method

.method public static moveDirectoryToDirectory(Ljava/io/File;Ljava/io/File;Z)V
    .locals 3
    .parameter "src"
    .parameter "destDir"
    .parameter "createDestDir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1989
    if-nez p0, :cond_0

    .line 1990
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Source must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1992
    :cond_0
    if-nez p1, :cond_1

    .line 1993
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Destination directory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1995
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 1996
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 1998
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1999
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination directory \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' does not exist [createDestDir="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2002
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2003
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2005
    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->moveDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 2007
    return-void
.end method

.method public static moveFile(Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .parameter "srcFile"
    .parameter "destFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2026
    if-nez p0, :cond_0

    .line 2027
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Source must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2029
    :cond_0
    if-nez p1, :cond_1

    .line 2030
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Destination must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2032
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2033
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Source \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2035
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2036
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Source \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is a directory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2038
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2039
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destination \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' already exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2041
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2042
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destination \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is a directory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2044
    :cond_5
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 2045
    .local v0, rename:Z
    if-nez v0, :cond_6

    .line 2046
    invoke-static {p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 2047
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2048
    invoke-static {p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 2049
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete original file \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' after copy to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2053
    :cond_6
    return-void
.end method

.method public static moveFileToDirectory(Ljava/io/File;Ljava/io/File;Z)V
    .locals 3
    .parameter "srcFile"
    .parameter "destDir"
    .parameter "createDestDir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2072
    if-nez p0, :cond_0

    .line 2073
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Source must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2075
    :cond_0
    if-nez p1, :cond_1

    .line 2076
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Destination directory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2078
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 2079
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 2081
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2082
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination directory \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' does not exist [createDestDir="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2085
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2086
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2088
    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V

    .line 2089
    return-void
.end method

.method public static moveToDirectory(Ljava/io/File;Ljava/io/File;Z)V
    .locals 3
    .parameter "src"
    .parameter "destDir"
    .parameter "createDestDir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2110
    if-nez p0, :cond_0

    .line 2111
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Source must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2113
    :cond_0
    if-nez p1, :cond_1

    .line 2114
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Destination must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2116
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2117
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2119
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2120
    invoke-static {p0, p1, p2}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->moveDirectoryToDirectory(Ljava/io/File;Ljava/io/File;Z)V

    .line 2124
    :goto_0
    return-void

    .line 2122
    :cond_3
    invoke-static {p0, p1, p2}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->moveFileToDirectory(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_0
.end method

.method public static openInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
    .locals 3
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' exists but is a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_2

    .line 154
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' cannot be read"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_2
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static openOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;
    .locals 4
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' exists but is a directory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_2

    .line 193
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' cannot be written to"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 196
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 197
    .local v0, parent:Ljava/io/File;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 198
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2

    .line 199
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' could not be created"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    .end local v0           #parent:Ljava/io/File;
    :cond_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v1
.end method

.method public static readFileToByteArray(Ljava/io/File;)[B
    .locals 2
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1261
    const/4 v0, 0x0

    .line 1263
    .local v0, in:Ljava/io/InputStream;
    :try_start_0
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->openInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 1264
    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1266
    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v1
.end method

.method public static readFileToString(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1244
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->readFileToString(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readFileToString(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "file"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1220
    const/4 v0, 0x0

    .line 1222
    .local v0, in:Ljava/io/InputStream;
    :try_start_0
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->openInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 1223
    invoke-static {v0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1225
    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v1
.end method

.method public static readLines(Ljava/io/File;)Ljava/util/List;
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1309
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->readLines(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static readLines(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "file"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1286
    const/4 v0, 0x0

    .line 1288
    .local v0, in:Ljava/io/InputStream;
    :try_start_0
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->openInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 1289
    invoke-static {v0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->readLines(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1291
    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v1
.end method

.method public static sizeOfDirectory(Ljava/io/File;)J
    .locals 8
    .parameter "directory"

    .prologue
    .line 1690
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1691
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not exist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1692
    .local v3, message:Ljava/lang/String;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1695
    .end local v3           #message:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1696
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not a directory"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1697
    .restart local v3       #message:Ljava/lang/String;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1700
    .end local v3           #message:Ljava/lang/String;
    :cond_1
    const-wide/16 v4, 0x0

    .line 1702
    .local v4, size:J
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 1703
    .local v1, files:[Ljava/io/File;
    if-nez v1, :cond_2

    .line 1704
    const-wide/16 v6, 0x0

    .line 1716
    :goto_0
    return-wide v6

    .line 1706
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v6, v1

    if-ge v2, v6, :cond_4

    .line 1707
    aget-object v0, v1, v2

    .line 1709
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1710
    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->sizeOfDirectory(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 1706
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1712
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v4, v6

    goto :goto_2

    .end local v0           #file:Ljava/io/File;
    :cond_4
    move-wide v6, v4

    .line 1716
    goto :goto_0
.end method

.method public static toFile(Ljava/net/URL;)Ljava/io/File;
    .locals 7
    .parameter "url"

    .prologue
    .line 528
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    const-string v5, "file"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 529
    :cond_0
    const/4 v4, 0x0

    .line 540
    :goto_0
    return-object v4

    .line 531
    :cond_1
    invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2f

    sget-char v6, Ljava/io/File;->separatorChar:C

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, filename:Ljava/lang/String;
    const/4 v3, 0x0

    .line 533
    .local v3, pos:I
    :cond_2
    :goto_1
    const/16 v4, 0x25

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ltz v3, :cond_3

    .line 534
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 535
    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v3, 0x3

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 536
    .local v2, hexStr:Ljava/lang/String;
    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-char v0, v4

    .line 537
    .local v0, ch:C
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v3, 0x3

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 538
    goto :goto_1

    .line 540
    .end local v0           #ch:C
    .end local v2           #hexStr:Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static toFiles([Ljava/net/URL;)[Ljava/io/File;
    .locals 6
    .parameter "urls"

    .prologue
    .line 568
    if-eqz p0, :cond_0

    array-length v3, p0

    if-nez v3, :cond_2

    .line 569
    :cond_0
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    .line 582
    :cond_1
    return-object v0

    .line 571
    :cond_2
    array-length v3, p0

    new-array v0, v3, [Ljava/io/File;

    .line 572
    .local v0, files:[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 573
    aget-object v2, p0, v1

    .line 574
    .local v2, url:Ljava/net/URL;
    if-eqz v2, :cond_4

    .line 575
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 576
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "URL could not be converted to a File: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 579
    :cond_3
    invoke-static {v2}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->toFile(Ljava/net/URL;)Ljava/io/File;

    move-result-object v3

    aput-object v3, v0, v1

    .line 572
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static toSuffixes([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "extensions"

    .prologue
    .line 395
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/String;

    .line 396
    .local v1, suffixes:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 396
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 399
    :cond_0
    return-object v1
.end method

.method public static toURLs([Ljava/io/File;)[Ljava/net/URL;
    .locals 3
    .parameter "files"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 599
    array-length v2, p0

    new-array v1, v2, [Ljava/net/URL;

    .line 601
    .local v1, urls:[Ljava/net/URL;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 602
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v2

    aput-object v2, v1, v0

    .line 601
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 605
    :cond_0
    return-object v1
.end method

.method public static touch(Ljava/io/File;)V
    .locals 5
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 252
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->openOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 253
    .local v0, out:Ljava/io/OutputStream;
    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 255
    .end local v0           #out:Ljava/io/OutputStream;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    move-result v1

    .line 256
    .local v1, success:Z
    if-nez v1, :cond_1

    .line 257
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to set the last modification time for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 259
    :cond_1
    return-void
.end method

.method public static waitFor(Ljava/io/File;I)Z
    .locals 7
    .parameter "file"
    .parameter "seconds"

    .prologue
    .line 1184
    const/4 v3, 0x0

    .line 1185
    .local v3, timeout:I
    const/4 v1, 0x0

    .line 1186
    .local v1, tick:I
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1187
    add-int/lit8 v2, v1, 0x1

    .end local v1           #tick:I
    .local v2, tick:I
    const/16 v5, 0xa

    if-lt v1, v5, :cond_2

    .line 1188
    const/4 v1, 0x0

    .line 1189
    .end local v2           #tick:I
    .restart local v1       #tick:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #timeout:I
    .local v4, timeout:I
    if-le v3, p1, :cond_0

    .line 1190
    const/4 v5, 0x0

    move v3, v4

    .line 1201
    .end local v4           #timeout:I
    .restart local v3       #timeout:I
    :goto_1
    return v5

    .end local v3           #timeout:I
    .restart local v4       #timeout:I
    :cond_0
    move v3, v4

    .line 1194
    .end local v4           #timeout:I
    .restart local v3       #timeout:I
    :goto_2
    const-wide/16 v5, 0x64

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1195
    :catch_0
    move-exception v5

    goto :goto_0

    .line 1197
    :catch_1
    move-exception v0

    .line 1201
    :cond_1
    const/4 v5, 0x1

    goto :goto_1

    .end local v1           #tick:I
    .restart local v2       #tick:I
    :cond_2
    move v1, v2

    .end local v2           #tick:I
    .restart local v1       #tick:I
    goto :goto_2
.end method

.method public static writeByteArrayToFile(Ljava/io/File;[B)V
    .locals 2
    .parameter "file"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1436
    const/4 v0, 0x0

    .line 1438
    .local v0, out:Ljava/io/OutputStream;
    :try_start_0
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->openOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 1439
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1441
    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 1443
    return-void

    .line 1441
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v1
.end method

.method public static writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .parameter "file"
    .parameter "encoding"
    .parameter "lines"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1465
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)V

    .line 1466
    return-void
.end method

.method public static writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 2
    .parameter "file"
    .parameter "encoding"
    .parameter "lines"
    .parameter "lineEnding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1507
    const/4 v0, 0x0

    .line 1509
    .local v0, out:Ljava/io/OutputStream;
    :try_start_0
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->openOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 1510
    invoke-static {p2, p3, v0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1512
    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 1514
    return-void

    .line 1512
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v1
.end method

.method public static writeLines(Ljava/io/File;Ljava/util/Collection;)V
    .locals 1
    .parameter "file"
    .parameter "lines"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1483
    invoke-static {p0, v0, p1, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)V

    .line 1484
    return-void
.end method

.method public static writeLines(Ljava/io/File;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 1
    .parameter "file"
    .parameter "lines"
    .parameter "lineEnding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1532
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)V

    .line 1533
    return-void
.end method

.method public static writeStringToFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .parameter "file"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1417
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    return-void
.end method

.method public static writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "file"
    .parameter "data"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1396
    const/4 v0, 0x0

    .line 1398
    .local v0, out:Ljava/io/OutputStream;
    :try_start_0
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileUtils;->openOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 1399
    invoke-static {p1, v0, p2}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1401
    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 1403
    return-void

    .line 1401
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v1
.end method
