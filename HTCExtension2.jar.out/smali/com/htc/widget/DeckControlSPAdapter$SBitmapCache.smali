.class public Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;
.super Ljava/lang/Object;
.source "DeckControlSPAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/DeckControlSPAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SBitmapCache"
.end annotation


# instance fields
.field private capacity:I

.field private sbitmaparray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/htc/sunny/SBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

.field final synthetic this$0:Lcom/htc/widget/DeckControlSPAdapter;


# direct methods
.method public constructor <init>(Lcom/htc/widget/DeckControlSPAdapter;I)V
    .locals 2
    .parameter
    .parameter "icapacity"

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1028
    if-lez p2, :cond_0

    .line 1030
    iput p2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->capacity:I

    .line 1031
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1032
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    .line 1034
    :cond_0
    return-void
.end method

.method private remove(Ljava/lang/Integer;IZ)V
    .locals 8
    .parameter "addposition"
    .parameter "center"
    .parameter "force"

    .prologue
    .line 1071
    const/4 v3, -0x1

    .line 1072
    .local v3, tmpdistance:I
    const/4 v1, -0x1

    .line 1074
    .local v1, maxdistance:I
    const/4 v4, -0x1

    .line 1075
    .local v4, tmpposition:I
    const/4 v2, -0x1

    .line 1077
    .local v2, maxposition:I
    const/4 v5, 0x0

    .line 1079
    .local v5, tmpsbitmap:Lcom/htc/sunny/SBitmap;
    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1080
    sub-int v6, v2, p2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1082
    const/4 v0, 0x1

    .local v0, loop:I
    :goto_0
    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 1084
    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1085
    sub-int v6, v4, p2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1087
    if-ge v1, v3, :cond_0

    .line 1089
    move v2, v4

    .line 1090
    move v1, v3

    .line 1082
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1094
    :cond_1
    if-eqz p3, :cond_3

    .line 1096
    const/4 v5, 0x0

    .line 1097
    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #tmpsbitmap:Lcom/htc/sunny/SBitmap;
    check-cast v5, Lcom/htc/sunny/SBitmap;

    .line 1098
    .restart local v5       #tmpsbitmap:Lcom/htc/sunny/SBitmap;
    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1100
    if-eqz v5, :cond_2

    .line 1101
    invoke-virtual {v5}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 1119
    :cond_2
    :goto_1
    const/4 v5, 0x0

    .line 1120
    return-void

    .line 1105
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1106
    sub-int v6, v4, p2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1108
    if-ge v3, v1, :cond_2

    .line 1110
    const/4 v5, 0x0

    .line 1111
    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #tmpsbitmap:Lcom/htc/sunny/SBitmap;
    check-cast v5, Lcom/htc/sunny/SBitmap;

    .line 1112
    .restart local v5       #tmpsbitmap:Lcom/htc/sunny/SBitmap;
    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1114
    if-eqz v5, :cond_2

    .line 1115
    invoke-virtual {v5}, Lcom/htc/sunny/SBitmap;->recycle()V

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    .line 1270
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    if-nez v3, :cond_1

    .line 1299
    :cond_0
    :goto_0
    return-void

    .line 1275
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1277
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 1278
    const/4 v0, 0x0

    .local v0, loop:I
    const/4 v1, 0x0

    .local v1, position:I
    :goto_1
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1280
    const/4 v2, 0x0

    .line 1282
    .local v2, sbitmap:Lcom/htc/sunny/SBitmap;
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1283
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #sbitmap:Lcom/htc/sunny/SBitmap;
    check-cast v2, Lcom/htc/sunny/SBitmap;

    .line 1284
    .restart local v2       #sbitmap:Lcom/htc/sunny/SBitmap;
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 1286
    if-eqz v2, :cond_2

    .line 1287
    invoke-virtual {v2}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 1278
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1290
    .end local v0           #loop:I
    .end local v1           #position:I
    .end local v2           #sbitmap:Lcom/htc/sunny/SBitmap;
    :cond_3
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 1291
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1295
    :cond_4
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1298
    const/4 v2, 0x0

    .line 1299
    .restart local v2       #sbitmap:Lcom/htc/sunny/SBitmap;
    goto :goto_0

    .line 1295
    .end local v2           #sbitmap:Lcom/htc/sunny/SBitmap;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public clear(I)V
    .locals 5
    .parameter "startindex"

    .prologue
    .line 1305
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    if-nez v3, :cond_1

    .line 1331
    :cond_0
    :goto_0
    return-void

    .line 1313
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1315
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 1316
    const/4 v0, 0x0

    .local v0, loop:I
    :goto_1
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1317
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .local v1, position:I
    if-lt v1, p1, :cond_2

    .line 1319
    const/4 v2, 0x0

    .line 1320
    .local v2, sbitmap:Lcom/htc/sunny/SBitmap;
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #sbitmap:Lcom/htc/sunny/SBitmap;
    check-cast v2, Lcom/htc/sunny/SBitmap;

    .line 1321
    .restart local v2       #sbitmap:Lcom/htc/sunny/SBitmap;
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 1323
    if-eqz v2, :cond_2

    .line 1324
    invoke-virtual {v2}, Lcom/htc/sunny/SBitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1316
    .end local v2           #sbitmap:Lcom/htc/sunny/SBitmap;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1329
    .end local v0           #loop:I
    .end local v1           #position:I
    :cond_3
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 1339
    invoke-virtual {p0}, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->clear()V

    .line 1343
    return-void
.end method

.method public pull(Ljava/lang/Integer;)Lcom/htc/sunny/SBitmap;
    .locals 3
    .parameter "position"

    .prologue
    .line 1207
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    if-nez v1, :cond_1

    .line 1208
    :cond_0
    const/4 v0, 0x0

    .line 1222
    :goto_0
    return-object v0

    .line 1212
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1214
    const/4 v0, 0x0

    .line 1215
    .local v0, tmpsbitmap:Lcom/htc/sunny/SBitmap;
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #tmpsbitmap:Lcom/htc/sunny/SBitmap;
    check-cast v0, Lcom/htc/sunny/SBitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1219
    .restart local v0       #tmpsbitmap:Lcom/htc/sunny/SBitmap;
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0           #tmpsbitmap:Lcom/htc/sunny/SBitmap;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public pullAsync(Ljava/lang/Integer;JLjava/util/concurrent/TimeUnit;)Lcom/htc/sunny/SBitmap;
    .locals 7
    .parameter "position"
    .parameter "timeout"
    .parameter "timeunit"

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 1234
    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-gez v4, :cond_1

    .line 1259
    :cond_0
    :goto_0
    return-object v2

    .line 1237
    :cond_1
    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    if-eqz v4, :cond_0

    .line 1240
    const/4 v2, 0x0

    .line 1241
    .local v2, tmpsbitmap:Lcom/htc/sunny/SBitmap;
    const/4 v3, 0x0

    .line 1245
    .local v3, trylockflg:Z
    :try_start_0
    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4, p2, p3, p4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-ne v3, v6, :cond_2

    .line 1246
    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/htc/sunny/SBitmap;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1255
    :cond_2
    if-ne v3, v6, :cond_0

    .line 1256
    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1248
    :catch_0
    move-exception v1

    .line 1250
    .local v1, exception:Ljava/lang/InterruptedException;
    :try_start_1
    const-string v4, "SPresentationAdapter"

    const-string v5, "SBitmapCache:pullAsync"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1255
    if-ne v3, v6, :cond_0

    .line 1256
    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1255
    .end local v1           #exception:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    if-ne v3, v6, :cond_3

    .line 1256
    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_3
    throw v4
.end method

.method public push(Ljava/lang/Integer;Lcom/htc/sunny/SBitmap;IZ)Z
    .locals 4
    .parameter "position"
    .parameter "sbitmap"
    .parameter "center"
    .parameter "force"

    .prologue
    .line 1160
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    if-nez v2, :cond_1

    .line 1161
    :cond_0
    const/4 v0, 0x0

    .line 1196
    :goto_0
    return v0

    .line 1165
    :cond_1
    const/4 v0, 0x1

    .line 1167
    .local v0, pushflag:Z
    :try_start_0
    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1168
    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_2

    .line 1172
    const/4 v1, 0x0

    .line 1173
    .local v1, tmpsbitmap:Lcom/htc/sunny/SBitmap;
    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #tmpsbitmap:Lcom/htc/sunny/SBitmap;
    check-cast v1, Lcom/htc/sunny/SBitmap;

    .line 1174
    .restart local v1       #tmpsbitmap:Lcom/htc/sunny/SBitmap;
    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 1176
    if-eqz v1, :cond_2

    .line 1177
    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 1180
    .end local v1           #tmpsbitmap:Lcom/htc/sunny/SBitmap;
    :cond_2
    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->capacity:I

    if-ge v2, v3, :cond_3

    .line 1181
    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1193
    :goto_1
    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1184
    :cond_3
    :try_start_1
    invoke-direct {p0, p1, p3, p4}, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->remove(Ljava/lang/Integer;IZ)V

    .line 1185
    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->capacity:I

    if-ge v2, v3, :cond_4

    .line 1186
    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1193
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 1188
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public remove(Ljava/lang/Integer;)V
    .locals 3
    .parameter "position"

    .prologue
    .line 1130
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    if-nez v1, :cond_1

    .line 1150
    :cond_0
    :goto_0
    return-void

    .line 1135
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1137
    const/4 v0, 0x0

    .line 1138
    .local v0, tmpsbitmap:Lcom/htc/sunny/SBitmap;
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #tmpsbitmap:Lcom/htc/sunny/SBitmap;
    check-cast v0, Lcom/htc/sunny/SBitmap;

    .line 1139
    .restart local v0       #tmpsbitmap:Lcom/htc/sunny/SBitmap;
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1141
    if-eqz v0, :cond_2

    .line 1142
    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1146
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1149
    const/4 v0, 0x0

    .line 1150
    goto :goto_0

    .line 1146
    .end local v0           #tmpsbitmap:Lcom/htc/sunny/SBitmap;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public setCapacity(I)V
    .locals 4
    .parameter "icapacity"

    .prologue
    const/4 v2, 0x1

    .line 1042
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->capacity:I

    if-eq p1, v1, :cond_0

    if-ge p1, v2, :cond_1

    .line 1066
    :cond_0
    :goto_0
    return-void

    .line 1047
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1048
    iget v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->capacity:I

    if-ge p1, v1, :cond_4

    .line 1050
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaparray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-le v1, p1, :cond_3

    .line 1052
    const/4 v0, 0x0

    .local v0, loop:I
    :goto_1
    iget v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->capacity:I

    sub-int/2addr v1, p1

    if-ge v0, v1, :cond_2

    .line 1053
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->center:I
    invoke-static {v2}, Lcom/htc/widget/DeckControlSPAdapter;->access$400(Lcom/htc/widget/DeckControlSPAdapter;)I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->remove(Ljava/lang/Integer;IZ)V

    .line 1052
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1054
    :cond_2
    iput p1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1064
    .end local v0           #loop:I
    :goto_2
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1057
    :cond_3
    :try_start_1
    iput p1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->capacity:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1064
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->sbitmaplock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 1060
    :cond_4
    :try_start_2
    iput p1, p0, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->capacity:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
