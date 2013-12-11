.class Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;
.super Ljava/lang/Object;
.source "UrlDrawable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/graphics/drawable/UrlDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final STATE_FETCH_LOCAL:I = 0x1

.field private static final STATE_FETCH_REMOTE:I = 0x2

.field private static final STATE_RETRY_DUPLICATE:I = 0x4

.field private static final STATE_RETRY_GENERAL:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/htc/graphics/drawable/UrlDrawable;


# direct methods
.method private constructor <init>(Lcom/htc/graphics/drawable/UrlDrawable;)V
    .locals 0
    .parameter

    .prologue
    .line 1153
    iput-object p1, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/graphics/drawable/UrlDrawable;Lcom/htc/graphics/drawable/UrlDrawable$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1153
    invoke-direct {p0, p1}, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;-><init>(Lcom/htc/graphics/drawable/UrlDrawable;)V

    return-void
.end method


# virtual methods
.method public call()Landroid/graphics/Bitmap;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1169
    const/16 v9, 0x13

    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1171
    const/4 v3, 0x1

    .line 1172
    .local v3, msg:I
    const/4 v6, 0x0

    .line 1173
    .local v6, retry_general:I
    const/4 v4, 0x0

    .line 1174
    .local v4, retry_duplicate:I
    const/4 v0, 0x0

    .line 1176
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v9, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v9, v9, Lcom/htc/graphics/drawable/UrlDrawable;->mImageId:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .local v2, image_hash:Ljava/lang/Integer;
    move v5, v4

    .line 1178
    .end local v4           #retry_duplicate:I
    .local v5, retry_duplicate:I
    :goto_0
    packed-switch v3, :pswitch_data_0

    :goto_1
    move v4, v5

    .end local v5           #retry_duplicate:I
    .restart local v4       #retry_duplicate:I
    :goto_2
    move v5, v4

    .line 1277
    .end local v4           #retry_duplicate:I
    .restart local v5       #retry_duplicate:I
    goto :goto_0

    .line 1181
    :pswitch_0
    const/4 v9, 0x4

    if-ne v3, v9, :cond_0

    add-int/lit8 v4, v5, 0x1

    .end local v5           #retry_duplicate:I
    .restart local v4       #retry_duplicate:I
    const/16 v9, 0x64

    if-lt v5, v9, :cond_1

    .line 1183
    const-string v9, "UrlDrawable"

    const-string v10, "[%s] retry_duplicate=%d/%d exceeded"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v13, v13, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const/16 v13, 0x64

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    const/4 v0, 0x0

    move-object v9, v0

    .line 1266
    :goto_3
    return-object v9

    .end local v4           #retry_duplicate:I
    .restart local v5       #retry_duplicate:I
    :cond_0
    move v4, v5

    .line 1188
    .end local v5           #retry_duplicate:I
    .restart local v4       #retry_duplicate:I
    :cond_1
    iget-object v9, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    #calls: Lcom/htc/graphics/drawable/UrlDrawable;->getFromLocal()Landroid/graphics/Bitmap;
    invoke-static {v9}, Lcom/htc/graphics/drawable/UrlDrawable;->access$500(Lcom/htc/graphics/drawable/UrlDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v9, v0

    .line 1189
    goto :goto_3

    .line 1190
    :cond_2
    iget-object v9, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    #calls: Lcom/htc/graphics/drawable/UrlDrawable;->canLoadToRamCache()Z
    invoke-static {v9}, Lcom/htc/graphics/drawable/UrlDrawable;->access$600(Lcom/htc/graphics/drawable/UrlDrawable;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1191
    const/4 v3, 0x1

    .line 1192
    const-wide/16 v9, 0xc8

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_2

    .line 1196
    :cond_3
    iget-object v9, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v9, v9, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-boolean v9, v9, Lcom/htc/graphics/drawable/UrlDrawable$Options;->saveDefaultImageWhenDownloadFail:Z

    if-nez v9, :cond_5

    invoke-static {}, Lcom/htc/graphics/drawable/UrlDrawable;->access$700()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v9

    invoke-interface {v9, v2}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1197
    invoke-static {}, Lcom/htc/graphics/drawable/UrlDrawable;->access$700()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v9

    invoke-interface {v9, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 1198
    .local v7, time:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1199
    .local v1, currentTime:Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long/2addr v9, v7

    const-wide/32 v11, 0x927c0

    cmp-long v9, v9, v11

    if-gez v9, :cond_4

    .line 1200
    const-string v9, "UrlDrawable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "it\'s in blackList : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    const/4 v0, 0x0

    move-object v9, v0

    goto :goto_3

    .line 1204
    :cond_4
    invoke-static {}, Lcom/htc/graphics/drawable/UrlDrawable;->access$700()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v9

    invoke-interface {v9, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    .end local v1           #currentTime:Ljava/lang/Long;
    .end local v7           #time:J
    :cond_5
    invoke-static {}, Lcom/htc/graphics/drawable/UrlDrawable;->access$800()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v10, v10, Lcom/htc/graphics/drawable/UrlDrawable;->mImageId:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1209
    sget-boolean v9, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUT_LOG_ENABLED:Z

    if-eqz v9, :cond_6

    .line 1210
    const-string v9, "UrlDrawable"

    const-string v10, "[%s] retry_duplicate=%d/%d"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v13, v13, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const/16 v13, 0x64

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    :cond_6
    const/4 v3, 0x4

    .line 1215
    const-wide/16 v9, 0xc8

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_2

    .line 1217
    :cond_7
    const/4 v3, 0x2

    .line 1219
    goto/16 :goto_2

    .line 1222
    .end local v4           #retry_duplicate:I
    .restart local v5       #retry_duplicate:I
    :pswitch_1
    const/4 v9, 0x3

    if-ne v3, v9, :cond_a

    .line 1223
    add-int/lit8 v6, v6, 0x1

    const/4 v9, 0x3

    if-lt v6, v9, :cond_a

    .line 1224
    const-string v9, "UrlDrawable"

    const-string v10, "[%s] retry_general=%d/%d exceeded"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v13, v13, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const/4 v13, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    iget-object v9, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v9, v9, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-boolean v9, v9, Lcom/htc/graphics/drawable/UrlDrawable$Options;->saveDefaultImageWhenDownloadFail:Z

    if-eqz v9, :cond_9

    .line 1234
    const-string v9, "UrlDrawable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "try to store default bitmap into cache , defaultBitmap:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v11, v11, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v11, v11, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " option.writeDisk:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v11, v11, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-boolean v11, v11, Lcom/htc/graphics/drawable/UrlDrawable$Options;->writeDisk:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    iget-object v9, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v9, v9, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v0, v9, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    .line 1240
    invoke-static {v0}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1241
    iget-object v9, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    invoke-virtual {v9, v0}, Lcom/htc/graphics/drawable/UrlDrawable;->writeBitmapToDiskCache(Landroid/graphics/Bitmap;)V

    .line 1242
    iget-object v9, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    #calls: Lcom/htc/graphics/drawable/UrlDrawable;->writeBitmapToRamCache(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    invoke-static {v9, v0}, Lcom/htc/graphics/drawable/UrlDrawable;->access$900(Lcom/htc/graphics/drawable/UrlDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_8
    move v4, v5

    .end local v5           #retry_duplicate:I
    .restart local v4       #retry_duplicate:I
    move-object v9, v0

    .line 1244
    goto/16 :goto_3

    .line 1246
    .end local v4           #retry_duplicate:I
    .restart local v5       #retry_duplicate:I
    :cond_9
    const-string v9, "UrlDrawable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Insert blackList : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 1248
    .local v7, time:Ljava/lang/Long;
    invoke-static {}, Lcom/htc/graphics/drawable/UrlDrawable;->access$700()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v9

    invoke-interface {v9, v2, v7}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    const/4 v0, 0x0

    move v4, v5

    .end local v5           #retry_duplicate:I
    .restart local v4       #retry_duplicate:I
    move-object v9, v0

    goto/16 :goto_3

    .line 1253
    .end local v4           #retry_duplicate:I
    .end local v7           #time:Ljava/lang/Long;
    .restart local v5       #retry_duplicate:I
    :cond_a
    iget-object v9, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    #calls: Lcom/htc/graphics/drawable/UrlDrawable;->getFromLocal()Landroid/graphics/Bitmap;
    invoke-static {v9}, Lcom/htc/graphics/drawable/UrlDrawable;->access$500(Lcom/htc/graphics/drawable/UrlDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_b

    move v4, v5

    .end local v5           #retry_duplicate:I
    .restart local v4       #retry_duplicate:I
    move-object v9, v0

    .line 1254
    goto/16 :goto_3

    .line 1255
    .end local v4           #retry_duplicate:I
    .restart local v5       #retry_duplicate:I
    :cond_b
    iget-object v9, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    #calls: Lcom/htc/graphics/drawable/UrlDrawable;->canLoadToRamCache()Z
    invoke-static {v9}, Lcom/htc/graphics/drawable/UrlDrawable;->access$600(Lcom/htc/graphics/drawable/UrlDrawable;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 1256
    const/4 v3, 0x1

    .line 1257
    const-wide/16 v9, 0xc8

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    move v4, v5

    .line 1258
    .end local v5           #retry_duplicate:I
    .restart local v4       #retry_duplicate:I
    goto/16 :goto_2

    .line 1260
    .end local v4           #retry_duplicate:I
    .restart local v5       #retry_duplicate:I
    :cond_c
    iget-object v9, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    #calls: Lcom/htc/graphics/drawable/UrlDrawable;->getFromRemote()Landroid/graphics/Bitmap;
    invoke-static {v9}, Lcom/htc/graphics/drawable/UrlDrawable;->access$1000(Lcom/htc/graphics/drawable/UrlDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1261
    invoke-static {v0}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 1262
    iget-object v9, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    #calls: Lcom/htc/graphics/drawable/UrlDrawable;->canLoadToRamCache()Z
    invoke-static {v9}, Lcom/htc/graphics/drawable/UrlDrawable;->access$600(Lcom/htc/graphics/drawable/UrlDrawable;)Z

    move-result v9

    if-eqz v9, :cond_d

    move v4, v5

    .end local v5           #retry_duplicate:I
    .restart local v4       #retry_duplicate:I
    move-object v9, v0

    .line 1263
    goto/16 :goto_3

    .line 1265
    .end local v4           #retry_duplicate:I
    .restart local v5       #retry_duplicate:I
    :cond_d
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1266
    const/4 v9, 0x0

    move v4, v5

    .end local v5           #retry_duplicate:I
    .restart local v4       #retry_duplicate:I
    goto/16 :goto_3

    .line 1269
    .end local v4           #retry_duplicate:I
    .restart local v5       #retry_duplicate:I
    :cond_e
    sget-boolean v9, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUG_LOG_ENABLED:Z

    if-eqz v9, :cond_f

    .line 1270
    const-string v9, "UrlDrawable"

    const-string v10, "[%s] retry_general=%d/%d"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->this$0:Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v13, v13, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const/4 v13, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    :cond_f
    const/4 v3, 0x3

    .line 1275
    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_1

    .line 1178
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1153
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;->call()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
