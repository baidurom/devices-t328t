.class public Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000

#the value of this static final field might be set in the static constructor
.field public static final DIR_SEPARATOR:C = '\u0000'

.field public static final DIR_SEPARATOR_UNIX:C = '/'

.field public static final DIR_SEPARATOR_WINDOWS:C = '\\'

.field public static final LINE_SEPARATOR:Ljava/lang/String; = null

.field public static final LINE_SEPARATOR_UNIX:Ljava/lang/String; = "\n"

.field public static final LINE_SEPARATOR_WINDOWS:Ljava/lang/String; = "\r\n"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 109
    sget-char v2, Ljava/io/File;->separatorChar:C

    sput-char v2, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->DIR_SEPARATOR:C

    .line 136
    new-instance v0, Ljava/io/StringWriter;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 137
    .local v0, buf:Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 138
    .local v1, out:Ljava/io/PrintWriter;
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 139
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 152
    return-void
.end method

.method public static closeQuietly(Ljava/io/InputStream;)V
    .locals 1
    .parameter "input"

    .prologue
    .line 209
    if-eqz p0, :cond_0

    .line 210
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "output"

    .prologue
    .line 227
    if-eqz p0, :cond_0

    .line 228
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/Reader;)V
    .locals 1
    .parameter "input"

    .prologue
    .line 169
    if-eqz p0, :cond_0

    .line 170
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/Writer;)V
    .locals 1
    .parameter "output"

    .prologue
    .line 191
    if-eqz p0, :cond_0

    .line 192
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static contentEquals(Ljava/io/InputStream;Ljava/io/InputStream;)Z
    .locals 7
    .parameter "input1"
    .parameter "input2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 1333
    instance-of v5, p0, Ljava/io/BufferedInputStream;

    if-nez v5, :cond_0

    .line 1334
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p0
    .local v2, input1:Ljava/io/InputStream;
    move-object p0, v2

    .line 1336
    .end local v2           #input1:Ljava/io/InputStream;
    .restart local p0
    :cond_0
    instance-of v5, p1, Ljava/io/BufferedInputStream;

    if-nez v5, :cond_1

    .line 1337
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1
    .local v3, input2:Ljava/io/InputStream;
    move-object p1, v3

    .line 1340
    .end local v3           #input2:Ljava/io/InputStream;
    .restart local p1
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1341
    .local v0, ch:I
    :goto_0
    if-eq v6, v0, :cond_4

    .line 1342
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 1343
    .local v1, ch2:I
    if-eq v0, v1, :cond_3

    .line 1350
    :cond_2
    :goto_1
    return v4

    .line 1346
    :cond_3
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1347
    goto :goto_0

    .line 1349
    .end local v1           #ch2:I
    :cond_4
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 1350
    .restart local v1       #ch2:I
    if-ne v1, v6, :cond_2

    const/4 v4, 0x1

    goto :goto_1
.end method

.method public static contentEquals(Ljava/io/Reader;Ljava/io/Reader;)Z
    .locals 7
    .parameter "input1"
    .parameter "input2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 1370
    instance-of v5, p0, Ljava/io/BufferedReader;

    if-nez v5, :cond_0

    .line 1371
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local p0
    .local v2, input1:Ljava/io/Reader;
    move-object p0, v2

    .line 1373
    .end local v2           #input1:Ljava/io/Reader;
    .restart local p0
    :cond_0
    instance-of v5, p1, Ljava/io/BufferedReader;

    if-nez v5, :cond_1

    .line 1374
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local p1
    .local v3, input2:Ljava/io/Reader;
    move-object p1, v3

    .line 1377
    .end local v3           #input2:Ljava/io/Reader;
    .restart local p1
    :cond_1
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 1378
    .local v0, ch:I
    :goto_0
    if-eq v6, v0, :cond_4

    .line 1379
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v1

    .line 1380
    .local v1, ch2:I
    if-eq v0, v1, :cond_3

    .line 1387
    :cond_2
    :goto_1
    return v4

    .line 1383
    :cond_3
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 1384
    goto :goto_0

    .line 1386
    .end local v1           #ch2:I
    :cond_4
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v1

    .line 1387
    .restart local v1       #ch2:I
    if-ne v1, v6, :cond_2

    const/4 v4, 0x1

    goto :goto_1
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 4
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1103
    invoke-static {p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    .line 1104
    .local v0, count:J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1105
    const/4 v2, -0x1

    .line 1107
    :goto_0
    return v2

    :cond_0
    long-to-int v2, v0

    goto :goto_0
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;)I
    .locals 4
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1216
    invoke-static {p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J

    move-result-wide v0

    .line 1217
    .local v0, count:J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1218
    const/4 v2, -0x1

    .line 1220
    :goto_0
    return v2

    :cond_0
    long-to-int v2, v0

    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;)V
    .locals 1
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1157
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1158
    .local v0, in:Ljava/io/InputStreamReader;
    invoke-static {v0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 1159
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .parameter "input"
    .parameter "output"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1186
    if-nez p2, :cond_0

    .line 1187
    invoke-static {p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;)V

    .line 1192
    :goto_0
    return-void

    .line 1189
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1190
    .local v0, in:Ljava/io/InputStreamReader;
    invoke-static {v0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    goto :goto_0
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/OutputStream;)V
    .locals 1
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1268
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1269
    .local v0, out:Ljava/io/OutputStreamWriter;
    invoke-static {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 1272
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 1273
    return-void
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .parameter "input"
    .parameter "output"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1300
    if-nez p2, :cond_0

    .line 1301
    invoke-static {p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/OutputStream;)V

    .line 1309
    :goto_0
    return-void

    .line 1303
    :cond_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1304
    .local v0, out:Ljava/io/OutputStreamWriter;
    invoke-static {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 1307
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    goto :goto_0
.end method

.method public static copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1130
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 1131
    .local v0, buffer:[B
    const-wide/16 v1, 0x0

    .line 1132
    .local v1, count:J
    const/4 v3, 0x0

    .line 1133
    .local v3, n:I
    :goto_0
    const/4 v4, -0x1

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v4, v3, :cond_0

    .line 1134
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 1135
    int-to-long v4, v3

    add-long/2addr v1, v4

    goto :goto_0

    .line 1137
    :cond_0
    return-wide v1
.end method

.method public static copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J
    .locals 6
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1237
    const/16 v4, 0x1000

    new-array v0, v4, [C

    .line 1238
    .local v0, buffer:[C
    const-wide/16 v1, 0x0

    .line 1239
    .local v1, count:J
    const/4 v3, 0x0

    .line 1240
    .local v3, n:I
    :goto_0
    const/4 v4, -0x1

    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v3

    if-eq v4, v3, :cond_0

    .line 1241
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/Writer;->write([CII)V

    .line 1242
    int-to-long v4, v3

    add-long/2addr v1, v4

    goto :goto_0

    .line 1244
    :cond_0
    return-wide v1
.end method

.method public static copyWithLimit(Ljava/io/InputStream;Ljava/io/OutputStream;J)J
    .locals 6
    .parameter "input"
    .parameter "output"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1407
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 1408
    .local v0, buffer:[B
    const-wide/16 v1, 0x0

    .line 1409
    .local v1, count:J
    const/4 v3, 0x0

    .line 1410
    .local v3, n:I
    :cond_0
    const/4 v4, -0x1

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v4, v3, :cond_1

    .line 1411
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 1412
    int-to-long v4, v3

    add-long/2addr v1, v4

    .line 1413
    const-wide/16 v4, -0x1

    cmp-long v4, p2, v4

    if-eqz v4, :cond_0

    cmp-long v4, v1, p2

    if-lez v4, :cond_0

    .line 1417
    :cond_1
    return-wide v1
.end method

.method public static lineIterator(Ljava/io/InputStream;Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/commons/io/LineIterator;
    .locals 2
    .parameter "input"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 651
    const/4 v0, 0x0

    .line 652
    .local v0, reader:Ljava/io/Reader;
    if-nez p1, :cond_0

    .line 653
    new-instance v0, Ljava/io/InputStreamReader;

    .end local v0           #reader:Ljava/io/Reader;
    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 657
    .restart local v0       #reader:Ljava/io/Reader;
    :goto_0
    new-instance v1, Lcom/htc/util/mail/lib/org/apache/commons/io/LineIterator;

    invoke-direct {v1, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/LineIterator;-><init>(Ljava/io/Reader;)V

    return-object v1

    .line 655
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    .end local v0           #reader:Ljava/io/Reader;
    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .restart local v0       #reader:Ljava/io/Reader;
    goto :goto_0
.end method

.method public static lineIterator(Ljava/io/Reader;)Lcom/htc/util/mail/lib/org/apache/commons/io/LineIterator;
    .locals 1
    .parameter "reader"

    .prologue
    .line 612
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/LineIterator;

    invoke-direct {v0, p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/LineIterator;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method public static readLines(Ljava/io/InputStream;)Ljava/util/List;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 520
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 521
    .local v0, reader:Ljava/io/InputStreamReader;
    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->readLines(Ljava/io/Reader;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static readLines(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "input"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 546
    if-nez p1, :cond_0

    .line 547
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->readLines(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v1

    .line 550
    :goto_0
    return-object v1

    .line 549
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 550
    .local v0, reader:Ljava/io/InputStreamReader;
    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->readLines(Ljava/io/Reader;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public static readLines(Ljava/io/Reader;)Ljava/util/List;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 568
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 569
    .local v2, reader:Ljava/io/BufferedReader;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 570
    .local v1, list:Ljava/util/List;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, line:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 572
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 575
    :cond_0
    return-object v1
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;

    invoke-direct {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;-><init>()V

    .line 254
    .local v0, output:Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 255
    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static toByteArray(Ljava/io/Reader;)[B
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;

    invoke-direct {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;-><init>()V

    .line 272
    .local v0, output:Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/OutputStream;)V

    .line 273
    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static toByteArray(Ljava/io/Reader;Ljava/lang/String;)[B
    .locals 2
    .parameter "input"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;

    invoke-direct {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;-><init>()V

    .line 300
    .local v0, output:Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;
    invoke-static {p0, v0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 301
    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static toCharArray(Ljava/io/InputStream;)[C
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 341
    .local v0, output:Ljava/io/CharArrayWriter;
    invoke-static {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;)V

    .line 342
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v1

    return-object v1
.end method

.method public static toCharArray(Ljava/io/InputStream;Ljava/lang/String;)[C
    .locals 2
    .parameter "is"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 369
    .local v0, output:Ljava/io/CharArrayWriter;
    invoke-static {p0, v0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V

    .line 370
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v1

    return-object v1
.end method

.method public static toCharArray(Ljava/io/Reader;)[C
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 391
    .local v0, sw:Ljava/io/CharArrayWriter;
    invoke-static {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 392
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v1

    return-object v1
.end method

.method public static toInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .parameter "input"

    .prologue
    .line 674
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 675
    .local v0, bytes:[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1
.end method

.method public static toInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .parameter "input"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 696
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 697
    .local v0, bytes:[B
    :goto_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1

    .line 696
    .end local v0           #bytes:[B
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method public static toString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 414
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 415
    .local v0, sw:Ljava/io/StringWriter;
    invoke-static {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;)V

    .line 416
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "input"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 441
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 442
    .local v0, sw:Ljava/io/StringWriter;
    invoke-static {p0, v0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V

    .line 443
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toString(Ljava/io/Reader;)Ljava/lang/String;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 458
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 459
    .local v0, sw:Ljava/io/StringWriter;
    invoke-static {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 460
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 474
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static toString([BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "input"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 493
    if-nez p1, :cond_0

    .line 494
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 496
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public static write(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1
    .parameter "data"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 875
    if-eqz p0, :cond_0

    .line 876
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 878
    :cond_0
    return-void
.end method

.method public static write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .parameter "data"
    .parameter "output"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 898
    if-eqz p0, :cond_0

    .line 899
    if-nez p2, :cond_1

    .line 900
    invoke-static {p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->write(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 905
    :cond_0
    :goto_0
    return-void

    .line 902
    :cond_1
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method public static write(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 0
    .parameter "data"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 855
    if-eqz p0, :cond_0

    .line 856
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 858
    :cond_0
    return-void
.end method

.method public static write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;)V
    .locals 1
    .parameter "data"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 940
    if-eqz p0, :cond_0

    .line 941
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 943
    :cond_0
    return-void
.end method

.method public static write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .parameter "data"
    .parameter "output"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 963
    if-eqz p0, :cond_0

    .line 964
    if-nez p2, :cond_1

    .line 965
    invoke-static {p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;)V

    .line 970
    :cond_0
    :goto_0
    return-void

    .line 967
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method public static write(Ljava/lang/StringBuffer;Ljava/io/Writer;)V
    .locals 1
    .parameter "data"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 920
    if-eqz p0, :cond_0

    .line 921
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 923
    :cond_0
    return-void
.end method

.method public static write([BLjava/io/OutputStream;)V
    .locals 0
    .parameter "data"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 718
    if-eqz p0, :cond_0

    .line 719
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 721
    :cond_0
    return-void
.end method

.method public static write([BLjava/io/Writer;)V
    .locals 1
    .parameter "data"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 737
    if-eqz p0, :cond_0

    .line 738
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 740
    :cond_0
    return-void
.end method

.method public static write([BLjava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .parameter "data"
    .parameter "output"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 765
    if-eqz p0, :cond_0

    .line 766
    if-nez p2, :cond_1

    .line 767
    invoke-static {p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->write([BLjava/io/Writer;)V

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 769
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static write([CLjava/io/OutputStream;)V
    .locals 1
    .parameter "data"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 809
    if-eqz p0, :cond_0

    .line 810
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 812
    :cond_0
    return-void
.end method

.method public static write([CLjava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .parameter "data"
    .parameter "output"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 834
    if-eqz p0, :cond_0

    .line 835
    if-nez p2, :cond_1

    .line 836
    invoke-static {p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->write([CLjava/io/OutputStream;)V

    .line 841
    :cond_0
    :goto_0
    return-void

    .line 838
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method public static write([CLjava/io/Writer;)V
    .locals 0
    .parameter "data"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 788
    if-eqz p0, :cond_0

    .line 789
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write([C)V

    .line 791
    :cond_0
    return-void
.end method

.method public static writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 3
    .parameter "lines"
    .parameter "lineEnding"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 992
    if-nez p0, :cond_1

    .line 1005
    :cond_0
    return-void

    .line 995
    :cond_1
    if-nez p1, :cond_2

    .line 996
    sget-object p1, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 998
    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 999
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1000
    .local v1, line:Ljava/lang/Object;
    if-eqz v1, :cond_3

    .line 1001
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1003
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method public static writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 3
    .parameter "lines"
    .parameter "lineEnding"
    .parameter "output"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1029
    if-nez p3, :cond_1

    .line 1030
    invoke-static {p0, p1, p2}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 1046
    :cond_0
    return-void

    .line 1032
    :cond_1
    if-eqz p0, :cond_0

    .line 1035
    if-nez p1, :cond_2

    .line 1036
    sget-object p1, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 1038
    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1039
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1040
    .local v1, line:Ljava/lang/Object;
    if-eqz v1, :cond_3

    .line 1041
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1043
    :cond_3
    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method public static writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/Writer;)V
    .locals 3
    .parameter "lines"
    .parameter "lineEnding"
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1065
    if-nez p0, :cond_1

    .line 1078
    :cond_0
    return-void

    .line 1068
    :cond_1
    if-nez p1, :cond_2

    .line 1069
    sget-object p1, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 1071
    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1072
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1073
    .local v1, line:Ljava/lang/Object;
    if-eqz v1, :cond_3

    .line 1074
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1076
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method
