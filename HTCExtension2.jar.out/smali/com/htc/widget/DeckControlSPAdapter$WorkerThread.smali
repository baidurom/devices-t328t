.class public Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;
.super Ljava/lang/Thread;
.source "DeckControlSPAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/DeckControlSPAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WorkerThread"
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private canvas:Landroid/graphics/Canvas;

.field private droptime:J

.field private loadtime:J

.field private position:Ljava/lang/Integer;

.field private sbitmap:Lcom/htc/sunny/SBitmap;

.field private startflag:Z

.field final synthetic this$0:Lcom/htc/widget/DeckControlSPAdapter;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/htc/widget/DeckControlSPAdapter;I)V
    .locals 5
    .parameter
    .parameter "index"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 1367
    iput-object p1, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    .line 1368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkerThread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1370
    iput-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->view:Landroid/view/View;

    .line 1371
    iput-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->canvas:Landroid/graphics/Canvas;

    .line 1372
    iput-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->bitmap:Landroid/graphics/Bitmap;

    .line 1373
    iput-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->sbitmap:Lcom/htc/sunny/SBitmap;

    .line 1374
    iput-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->position:Ljava/lang/Integer;

    .line 1375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->startflag:Z

    .line 1377
    iput-wide v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->loadtime:J

    .line 1378
    iput-wide v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->droptime:J

    .line 1379
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 1550
    iget-boolean v0, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->startflag:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1552
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->startflag:Z

    .line 1554
    :cond_0
    return-void
.end method

.method public run()V
    .locals 11

    .prologue
    const/16 v10, 0x200

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1399
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1403
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;
    invoke-static {v3}, Lcom/htc/widget/DeckControlSPAdapter;->access$100(Lcom/htc/widget/DeckControlSPAdapter;)Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;
    invoke-static {v3}, Lcom/htc/widget/DeckControlSPAdapter;->access$200(Lcom/htc/widget/DeckControlSPAdapter;)Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1532
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 1534
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1537
    :cond_2
    iput-object v8, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->view:Landroid/view/View;

    .line 1538
    iput-object v8, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->canvas:Landroid/graphics/Canvas;

    .line 1539
    iput-object v8, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->bitmap:Landroid/graphics/Bitmap;

    .line 1540
    iput-object v8, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->sbitmap:Lcom/htc/sunny/SBitmap;

    .line 1541
    iput-object v8, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->position:Ljava/lang/Integer;

    .line 1542
    return-void

    .line 1406
    :cond_3
    iput-object v8, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->position:Ljava/lang/Integer;

    .line 1407
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;
    invoke-static {v3}, Lcom/htc/widget/DeckControlSPAdapter;->access$100(Lcom/htc/widget/DeckControlSPAdapter;)Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->removeFirst()Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->position:Ljava/lang/Integer;

    .line 1409
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->position:Ljava/lang/Integer;

    if-eqz v3, :cond_b

    .line 1411
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->bitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_7

    .line 1413
    iput-object v8, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->bitmap:Landroid/graphics/Bitmap;

    .line 1414
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->bmpwidth:I
    invoke-static {v3}, Lcom/htc/widget/DeckControlSPAdapter;->access$500(Lcom/htc/widget/DeckControlSPAdapter;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->bmpheight:I
    invoke-static {v4}, Lcom/htc/widget/DeckControlSPAdapter;->access$600(Lcom/htc/widget/DeckControlSPAdapter;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->bmpconfig:Landroid/graphics/Bitmap$Config;
    invoke-static {v5}, Lcom/htc/widget/DeckControlSPAdapter;->access$700(Lcom/htc/widget/DeckControlSPAdapter;)Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->bitmap:Landroid/graphics/Bitmap;

    .line 1416
    iput-object v8, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->canvas:Landroid/graphics/Canvas;

    .line 1417
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->canvas:Landroid/graphics/Canvas;

    .line 1434
    :cond_4
    :goto_2
    iget-boolean v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->startflag:Z

    if-eqz v3, :cond_1

    .line 1437
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->loadtime:J

    .line 1438
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->position:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->view:Landroid/view/View;

    #calls: Lcom/htc/widget/DeckControlSPAdapter;->getView(ILandroid/view/View;)Landroid/view/View;
    invoke-static {v3, v4, v5}, Lcom/htc/widget/DeckControlSPAdapter;->access$800(Lcom/htc/widget/DeckControlSPAdapter;ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->view:Landroid/view/View;

    .line 1440
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->view:Landroid/view/View;

    if-eqz v3, :cond_6

    iget-wide v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->droptime:J

    iget-wide v5, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->loadtime:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_6

    .line 1454
    iget-boolean v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->startflag:Z

    if-eqz v3, :cond_1

    .line 1457
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->bmpconfig:Landroid/graphics/Bitmap$Config;
    invoke-static {v3}, Lcom/htc/widget/DeckControlSPAdapter;->access$700(Lcom/htc/widget/DeckControlSPAdapter;)Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v3, v4, :cond_5

    .line 1458
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v9}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1465
    :cond_5
    :try_start_0
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->view:Landroid/view/View;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->bmpwidth:I
    invoke-static {v5}, Lcom/htc/widget/DeckControlSPAdapter;->access$500(Lcom/htc/widget/DeckControlSPAdapter;)I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->bmpheight:I
    invoke-static {v6}, Lcom/htc/widget/DeckControlSPAdapter;->access$600(Lcom/htc/widget/DeckControlSPAdapter;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1466
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->bmpwidth:I
    invoke-static {v3}, Lcom/htc/widget/DeckControlSPAdapter;->access$500(Lcom/htc/widget/DeckControlSPAdapter;)I

    move-result v3

    const/high16 v4, 0x4000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1467
    .local v2, wmeasure:I
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->bmpheight:I
    invoke-static {v3}, Lcom/htc/widget/DeckControlSPAdapter;->access$600(Lcom/htc/widget/DeckControlSPAdapter;)I

    move-result v3

    const/high16 v4, 0x4000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1469
    .local v1, hmeasure:I
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->view:Landroid/view/View;

    invoke-virtual {v3, v2, v1}, Landroid/view/View;->measure(II)V

    .line 1470
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->view:Landroid/view/View;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget-object v7, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 1471
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->view:Landroid/view/View;

    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1480
    iget-boolean v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->startflag:Z

    if-eqz v3, :cond_1

    .line 1490
    iput-object v8, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->sbitmap:Lcom/htc/sunny/SBitmap;

    .line 1491
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v3, v10, v10}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/Bitmap;II)Lcom/htc/sunny/SBitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->sbitmap:Lcom/htc/sunny/SBitmap;

    .line 1494
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->sbitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v3, :cond_6

    .line 1496
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;
    invoke-static {v3}, Lcom/htc/widget/DeckControlSPAdapter;->access$200(Lcom/htc/widget/DeckControlSPAdapter;)Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->position:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->sbitmap:Lcom/htc/sunny/SBitmap;

    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->center:I
    invoke-static {v6}, Lcom/htc/widget/DeckControlSPAdapter;->access$400(Lcom/htc/widget/DeckControlSPAdapter;)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v9}, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->push(Ljava/lang/Integer;Lcom/htc/sunny/SBitmap;IZ)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1498
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->glidelistenerp:Lcom/htc/widget/DeckControl$DCAdapterListener;
    invoke-static {v3}, Lcom/htc/widget/DeckControlSPAdapter;->access$300(Lcom/htc/widget/DeckControlSPAdapter;)Lcom/htc/widget/DeckControl$DCAdapterListener;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1499
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->glidelistenerp:Lcom/htc/widget/DeckControl$DCAdapterListener;
    invoke-static {v3}, Lcom/htc/widget/DeckControlSPAdapter;->access$300(Lcom/htc/widget/DeckControlSPAdapter;)Lcom/htc/widget/DeckControl$DCAdapterListener;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->position:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/htc/widget/DeckControl$DCAdapterListener;->notifyUpdateItem(I)V

    .line 1528
    .end local v1           #hmeasure:I
    .end local v2           #wmeasure:I
    :cond_6
    :goto_3
    iget-boolean v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->startflag:Z

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 1421
    :cond_7
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->bmpwidth:I
    invoke-static {v4}, Lcom/htc/widget/DeckControlSPAdapter;->access$500(Lcom/htc/widget/DeckControlSPAdapter;)I

    move-result v4

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->bmpheight:I
    invoke-static {v4}, Lcom/htc/widget/DeckControlSPAdapter;->access$600(Lcom/htc/widget/DeckControlSPAdapter;)I

    move-result v4

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->bmpconfig:Landroid/graphics/Bitmap$Config;
    invoke-static {v4}, Lcom/htc/widget/DeckControlSPAdapter;->access$700(Lcom/htc/widget/DeckControlSPAdapter;)Landroid/graphics/Bitmap$Config;

    move-result-object v4

    if-eq v3, v4, :cond_4

    .line 1423
    :cond_8
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_9

    .line 1424
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1426
    :cond_9
    iput-object v8, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->bitmap:Landroid/graphics/Bitmap;

    .line 1427
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->bmpwidth:I
    invoke-static {v3}, Lcom/htc/widget/DeckControlSPAdapter;->access$500(Lcom/htc/widget/DeckControlSPAdapter;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->bmpheight:I
    invoke-static {v4}, Lcom/htc/widget/DeckControlSPAdapter;->access$600(Lcom/htc/widget/DeckControlSPAdapter;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->bmpconfig:Landroid/graphics/Bitmap$Config;
    invoke-static {v5}, Lcom/htc/widget/DeckControlSPAdapter;->access$700(Lcom/htc/widget/DeckControlSPAdapter;)Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->bitmap:Landroid/graphics/Bitmap;

    .line 1429
    iput-object v8, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->canvas:Landroid/graphics/Canvas;

    .line 1430
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->canvas:Landroid/graphics/Canvas;

    goto/16 :goto_2

    .line 1473
    :catch_0
    move-exception v0

    .line 1475
    .local v0, exception:Ljava/lang/Exception;
    const-string v3, "SPresentationAdapter"

    const-string v4, "WorkerThread:drawView"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1503
    .end local v0           #exception:Ljava/lang/Exception;
    .restart local v1       #hmeasure:I
    .restart local v2       #wmeasure:I
    :cond_a
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->sbitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v3}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 1504
    iput-object v8, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->sbitmap:Lcom/htc/sunny/SBitmap;

    goto :goto_3

    .line 1511
    .end local v1           #hmeasure:I
    .end local v2           #wmeasure:I
    :cond_b
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;
    invoke-static {v3}, Lcom/htc/widget/DeckControlSPAdapter;->access$100(Lcom/htc/widget/DeckControlSPAdapter;)Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1516
    :try_start_1
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;
    invoke-static {v3}, Lcom/htc/widget/DeckControlSPAdapter;->access$100(Lcom/htc/widget/DeckControlSPAdapter;)Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    move-result-object v4

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1518
    :try_start_2
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;
    invoke-static {v3}, Lcom/htc/widget/DeckControlSPAdapter;->access$100(Lcom/htc/widget/DeckControlSPAdapter;)Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 1519
    monitor-exit v4

    goto/16 :goto_3

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1521
    :catch_1
    move-exception v0

    .line 1523
    .local v0, exception:Ljava/lang/InterruptedException;
    const-string v3, "SPresentationAdapter"

    const-string v4, "WorkerThread:threadWait"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_3
.end method

.method public setDropTime()V
    .locals 2

    .prologue
    .line 1387
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->droptime:J

    .line 1388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->droptime:J

    .line 1389
    return-void
.end method
