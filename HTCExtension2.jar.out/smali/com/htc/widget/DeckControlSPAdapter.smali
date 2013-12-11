.class public Lcom/htc/widget/DeckControlSPAdapter;
.super Lcom/htc/sunny/SPresentationLinearAdapter;
.source "DeckControlSPAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;,
        Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;,
        Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;
    }
.end annotation


# instance fields
.field private final antialias:Z

.field private bmpconfig:Landroid/graphics/Bitmap$Config;

.field private bmpheight:I

.field private bmpwidth:I

.field private capacity:I

.field private center:I

.field private final debugflag:Z

.field private final dfbmpheight:I

.field private final dfbmpwidth:I

.field private final dfcapacity:I

.field private dfsbitmap:Lcom/htc/sunny/SBitmap;

.field private glideadater:Lcom/htc/widget/DeckControlAdapter;

.field private glidelistenerc:Lcom/htc/widget/DeckControl$DCAdapterListener;

.field private glidelistenerp:Lcom/htc/widget/DeckControl$DCAdapterListener;

.field private final maxcachesize:I

.field private requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

.field private sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

.field private final sbitmapmaxh:I

.field private final sbitmapmaxw:I

.field private final threadWait:I

.field private final threadlen:I

.field private workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

.field private xrotateang:F

.field private yrotateang:F

.field private zrotateang:F


# direct methods
.method public constructor <init>(I)V
    .locals 7
    .parameter "icapacity"

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v2, 0x80

    const/4 v3, 0x1

    .line 158
    invoke-direct {p0}, Lcom/htc/sunny/SPresentationLinearAdapter;-><init>()V

    .line 37
    iput v3, p0, Lcom/htc/widget/DeckControlSPAdapter;->threadlen:I

    .line 38
    const/16 v1, 0xf

    iput v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->dfcapacity:I

    .line 39
    iput v2, p0, Lcom/htc/widget/DeckControlSPAdapter;->dfbmpwidth:I

    .line 40
    iput v2, p0, Lcom/htc/widget/DeckControlSPAdapter;->dfbmpheight:I

    .line 41
    const/16 v1, 0x200

    iput v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapmaxw:I

    .line 42
    const/16 v1, 0x200

    iput v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapmaxh:I

    .line 44
    const/16 v1, 0xbb8

    iput v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->threadWait:I

    .line 48
    iput v6, p0, Lcom/htc/widget/DeckControlSPAdapter;->maxcachesize:I

    .line 50
    iput-boolean v3, p0, Lcom/htc/widget/DeckControlSPAdapter;->debugflag:Z

    .line 51
    iput-boolean v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->antialias:Z

    .line 59
    iput v4, p0, Lcom/htc/widget/DeckControlSPAdapter;->xrotateang:F

    .line 60
    iput v4, p0, Lcom/htc/widget/DeckControlSPAdapter;->yrotateang:F

    .line 61
    iput v4, p0, Lcom/htc/widget/DeckControlSPAdapter;->zrotateang:F

    .line 75
    new-instance v1, Lcom/htc/widget/DeckControlSPAdapter$1;

    invoke-direct {v1, p0}, Lcom/htc/widget/DeckControlSPAdapter$1;-><init>(Lcom/htc/widget/DeckControlSPAdapter;)V

    iput-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->glidelistenerc:Lcom/htc/widget/DeckControl$DCAdapterListener;

    .line 159
    iput v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->center:I

    .line 160
    iput v2, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpwidth:I

    .line 161
    iput v2, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpheight:I

    .line 162
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpconfig:Landroid/graphics/Bitmap$Config;

    .line 164
    invoke-static {v5, v6, v6}, Lcom/htc/sunny/SBitmap;->createBitmap(III)Lcom/htc/sunny/SBitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->dfsbitmap:Lcom/htc/sunny/SBitmap;

    .line 165
    if-ge p1, v3, :cond_0

    const/16 p1, 0xf

    .end local p1
    :cond_0
    iput p1, p0, Lcom/htc/widget/DeckControlSPAdapter;->capacity:I

    .line 167
    new-instance v1, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    iget v2, p0, Lcom/htc/widget/DeckControlSPAdapter;->capacity:I

    invoke-direct {v1, p0, v2}, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;-><init>(Lcom/htc/widget/DeckControlSPAdapter;I)V

    iput-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    .line 168
    new-instance v1, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    iget v2, p0, Lcom/htc/widget/DeckControlSPAdapter;->capacity:I

    invoke-direct {v1, p0, v2}, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;-><init>(Lcom/htc/widget/DeckControlSPAdapter;I)V

    iput-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    .line 169
    new-array v1, v3, [Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    iput-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    .line 171
    const/4 v0, 0x0

    .local v0, loop:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 172
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    new-instance v2, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    invoke-direct {v2, p0, v0}, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;-><init>(Lcom/htc/widget/DeckControlSPAdapter;I)V

    aput-object v2, v1, v0

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/DeckControlSPAdapter;)[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/widget/DeckControlSPAdapter;)Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/widget/DeckControlSPAdapter;)Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/widget/DeckControlSPAdapter;)Lcom/htc/widget/DeckControl$DCAdapterListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->glidelistenerp:Lcom/htc/widget/DeckControl$DCAdapterListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/widget/DeckControlSPAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->center:I

    return v0
.end method

.method static synthetic access$500(Lcom/htc/widget/DeckControlSPAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpwidth:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/widget/DeckControlSPAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpheight:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/widget/DeckControlSPAdapter;)Landroid/graphics/Bitmap$Config;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpconfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/widget/DeckControlSPAdapter;ILandroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/DeckControlSPAdapter;->getView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getView(ILandroid/view/View;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convert"

    .prologue
    .line 663
    const/4 v0, 0x0

    .line 665
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->glideadater:Lcom/htc/widget/DeckControlAdapter;

    if-eqz v1, :cond_0

    .line 667
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->glideadater:Lcom/htc/widget/DeckControlAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lcom/htc/widget/DeckControlAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 670
    :cond_0
    return-object v0
.end method


# virtual methods
.method public createReflection(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 21
    .parameter "orgbitmap"

    .prologue
    .line 689
    if-nez p1, :cond_0

    .line 690
    const/16 v19, 0x0

    .line 718
    :goto_0
    return-object v19

    .line 692
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 693
    .local v5, orgwidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    .line 695
    .local v16, orgheight:I
    const/4 v2, 0x1

    if-lt v5, v2, :cond_1

    const/4 v2, 0x1

    move/from16 v0, v16

    if-ge v0, v2, :cond_2

    .line 696
    :cond_1
    const/16 v19, 0x0

    goto :goto_0

    .line 698
    :cond_2
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 699
    .local v7, reflectmtx:Landroid/graphics/Matrix;
    const/high16 v2, 0x3f80

    const/high16 v3, -0x4080

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 701
    const/4 v3, 0x0

    div-int/lit8 v4, v16, 0x2

    div-int/lit8 v6, v16, 0x2

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 702
    .local v20, reflectbmph:Landroid/graphics/Bitmap;
    div-int/lit8 v2, v16, 0x2

    add-int v2, v2, v16

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 704
    .local v19, reflectbmpa:Landroid/graphics/Bitmap;
    new-instance v18, Landroid/graphics/Canvas;

    invoke-direct/range {v18 .. v19}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 705
    .local v18, refcanvas:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 706
    const/4 v2, 0x0

    move/from16 v0, v16

    int-to-float v3, v0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 708
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 709
    .local v17, paint:Landroid/graphics/Paint;
    new-instance v8, Landroid/graphics/LinearGradient;

    const/4 v9, 0x0

    move/from16 v0, v16

    int-to-float v10, v0

    const/4 v11, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v12, v2

    const v13, 0x70ffffff

    const v14, 0xffffff

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 711
    .local v8, shader:Landroid/graphics/LinearGradient;
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 712
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 713
    const/4 v10, 0x0

    move/from16 v0, v16

    int-to-float v11, v0

    int-to-float v12, v5

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v13, v2

    move-object/from16 v9, v18

    move-object/from16 v14, v17

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 715
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->recycle()V

    .line 716
    const/16 v20, 0x0

    .line 718
    goto/16 :goto_0
.end method

.method public destroy()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 590
    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    if-nez v6, :cond_1

    .line 644
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    const-string v6, "SPresentationAdapter"

    const-string v7, "SPresentationAdapter.destroy()"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const/4 v3, 0x0

    .local v3, loop:I
    :goto_1
    if-ge v3, v11, :cond_2

    .line 597
    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->destroy()V

    .line 596
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 599
    :cond_2
    iget-object v7, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    monitor-enter v7

    .line 601
    :try_start_0
    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 602
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v11, :cond_3

    .line 608
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 610
    .local v4, startTime:J
    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    aget-object v6, v6, v3

    const-wide/16 v7, 0xbb8

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->join(J)V

    .line 611
    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    const/4 v7, 0x0

    aput-object v7, v6, v3

    .line 613
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 616
    .local v0, endTime:J
    const-string v6, "SPresentationAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SPresentationAdapter:Thread.join():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v0, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 606
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 602
    .end local v0           #endTime:J
    .end local v4           #startTime:J
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 626
    :cond_3
    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    invoke-virtual {v6}, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->destroy()V

    .line 627
    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    invoke-virtual {v6}, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->destroy()V

    .line 629
    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter;->dfsbitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v6, :cond_4

    .line 630
    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter;->dfsbitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v6}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 634
    :cond_4
    :goto_3
    const-string v6, "SPresentationAdapter"

    const-string v7, "SPresentationAdapter.destroy()"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iput-object v10, p0, Lcom/htc/widget/DeckControlSPAdapter;->dfsbitmap:Lcom/htc/sunny/SBitmap;

    .line 637
    iput-object v10, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    .line 638
    iput-object v10, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    .line 639
    iput-object v10, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    .line 641
    iput-object v10, p0, Lcom/htc/widget/DeckControlSPAdapter;->glideadater:Lcom/htc/widget/DeckControlAdapter;

    .line 642
    iput-object v10, p0, Lcom/htc/widget/DeckControlSPAdapter;->glidelistenerp:Lcom/htc/widget/DeckControl$DCAdapterListener;

    .line 643
    iput-object v10, p0, Lcom/htc/widget/DeckControlSPAdapter;->glidelistenerc:Lcom/htc/widget/DeckControl$DCAdapterListener;

    goto :goto_0

    .line 619
    :catch_0
    move-exception v2

    .line 621
    .local v2, exception:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v6, "SPresentationAdapter"

    const-string v7, "SPresentationAdapter:destroy"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 626
    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    invoke-virtual {v6}, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->destroy()V

    .line 627
    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    invoke-virtual {v6}, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->destroy()V

    .line 629
    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter;->dfsbitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v6, :cond_4

    .line 630
    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter;->dfsbitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v6}, Lcom/htc/sunny/SBitmap;->recycle()V

    goto :goto_3

    .line 626
    .end local v2           #exception:Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v6

    iget-object v7, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    invoke-virtual {v7}, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->destroy()V

    .line 627
    iget-object v7, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    invoke-virtual {v7}, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->destroy()V

    .line 629
    iget-object v7, p0, Lcom/htc/widget/DeckControlSPAdapter;->dfsbitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v7, :cond_5

    .line 630
    iget-object v7, p0, Lcom/htc/widget/DeckControlSPAdapter;->dfsbitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v7}, Lcom/htc/sunny/SBitmap;->recycle()V

    :cond_5
    throw v6
.end method

.method public getContainerCount()I
    .locals 2

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, cntncount:I
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->glideadater:Lcom/htc/widget/DeckControlAdapter;

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->glideadater:Lcom/htc/widget/DeckControlAdapter;

    invoke-virtual {v1}, Lcom/htc/widget/DeckControlAdapter;->getContainerCount()I

    move-result v0

    .line 204
    :cond_0
    return v0
.end method

.method public getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;
    .locals 6
    .parameter "position"

    .prologue
    .line 268
    const/4 v2, 0x0

    .line 270
    .local v2, splayout:Lcom/htc/sunny/SPresentationContainerLayout;
    if-gez p1, :cond_0

    .line 271
    const/4 v3, 0x0

    .line 293
    :goto_0
    return-object v3

    .line 273
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter;->glideadater:Lcom/htc/widget/DeckControlAdapter;

    if-eqz v3, :cond_1

    .line 275
    const/4 v2, 0x0

    .line 276
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter;->glideadater:Lcom/htc/widget/DeckControlAdapter;

    invoke-virtual {v3, p1}, Lcom/htc/widget/DeckControlAdapter;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v2

    .line 278
    iget v3, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpwidth:I

    iput v3, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mWidth:I

    .line 279
    iget v3, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpheight:I

    iput v3, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mHeight:I

    .line 284
    invoke-virtual {p0}, Lcom/htc/widget/DeckControlSPAdapter;->getContainerCount()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 285
    .local v0, center:I
    sub-int v3, v0, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 288
    .local v1, offset:I
    iget-object v3, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v4, p0, Lcom/htc/widget/DeckControlSPAdapter;->xrotateang:F

    neg-float v4, v4

    int-to-float v5, v1

    mul-float/2addr v4, v5

    iput v4, v3, Lcom/htc/sunny/Vector3F;->mX:F

    .line 289
    iget-object v3, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v4, p0, Lcom/htc/widget/DeckControlSPAdapter;->yrotateang:F

    sub-int v5, p1, v0

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iput v4, v3, Lcom/htc/sunny/Vector3F;->mY:F

    .line 290
    iget-object v3, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v4, p0, Lcom/htc/widget/DeckControlSPAdapter;->zrotateang:F

    sub-int v5, v0, p1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iput v4, v3, Lcom/htc/sunny/Vector3F;->mZ:F

    .end local v0           #center:I
    .end local v1           #offset:I
    :cond_1
    move-object v3, v2

    .line 293
    goto :goto_0
.end method

.method public getItemBitmap(I)Lcom/htc/sunny/SBitmap;
    .locals 5
    .parameter "position"

    .prologue
    .line 214
    const/4 v0, 0x0

    .line 216
    .local v0, sbitmap:Lcom/htc/sunny/SBitmap;
    if-gez p1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->dfsbitmap:Lcom/htc/sunny/SBitmap;

    .line 258
    :goto_0
    return-object v1

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    if-eqz v1, :cond_1

    .line 222
    const-string v1, "SPresentationAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SBitmapCache.pull("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->pull(Ljava/lang/Integer;)Lcom/htc/sunny/SBitmap;

    move-result-object v0

    .line 227
    const-string v1, "SPresentationAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SBitmapCache.pull("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    if-eqz v1, :cond_2

    .line 233
    const-string v1, "SPresentationAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RequestQueue.addFirst("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    iget v3, p0, Lcom/htc/widget/DeckControlSPAdapter;->center:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->addLast(Ljava/lang/Integer;IZ)V

    .line 237
    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    monitor-enter v2

    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 240
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    const-string v1, "SPresentationAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RequestQueue.addFirst("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->dfsbitmap:Lcom/htc/sunny/SBitmap;

    goto/16 :goto_0

    .line 240
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_3
    move-object v1, v0

    .line 258
    goto/16 :goto_0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, itemcount:I
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->glideadater:Lcom/htc/widget/DeckControlAdapter;

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->glideadater:Lcom/htc/widget/DeckControlAdapter;

    invoke-virtual {v1}, Lcom/htc/widget/DeckControlAdapter;->getCount()I

    move-result v0

    .line 188
    :cond_0
    return v0
.end method

.method public nextPowerOf2(I)I
    .locals 1
    .parameter "size"

    .prologue
    .line 728
    add-int/lit8 p1, p1, -0x1

    .line 729
    ushr-int/lit8 v0, p1, 0x10

    or-int/2addr p1, v0

    .line 730
    ushr-int/lit8 v0, p1, 0x8

    or-int/2addr p1, v0

    .line 731
    ushr-int/lit8 v0, p1, 0x4

    or-int/2addr p1, v0

    .line 732
    ushr-int/lit8 v0, p1, 0x2

    or-int/2addr p1, v0

    .line 733
    ushr-int/lit8 v0, p1, 0x1

    or-int/2addr p1, v0

    .line 734
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method public notifySelectionChange(I)V
    .locals 1
    .parameter "icenter"

    .prologue
    .line 310
    iget v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->center:I

    if-eq v0, p1, :cond_0

    .line 311
    iput p1, p0, Lcom/htc/widget/DeckControlSPAdapter;->center:I

    .line 312
    :cond_0
    return-void
.end method

.method public notifyStateChange(I)V
    .locals 0
    .parameter "istate"

    .prologue
    .line 302
    return-void
.end method

.method public setAdatper(Lcom/htc/widget/DeckControlAdapter;)V
    .locals 9
    .parameter "iglideadapter"

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x4180

    const/16 v4, 0x200

    .line 511
    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    if-nez v5, :cond_1

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    const-string v5, "SPresentationAdapter"

    const-string v6, "SPresentationAdapter.setAdatper()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    if-eqz p1, :cond_7

    .line 519
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->glideadater:Lcom/htc/widget/DeckControlAdapter;

    .line 520
    iput-object p1, p0, Lcom/htc/widget/DeckControlSPAdapter;->glideadater:Lcom/htc/widget/DeckControlAdapter;

    .line 521
    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->glideadater:Lcom/htc/widget/DeckControlAdapter;

    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter;->glidelistenerc:Lcom/htc/widget/DeckControl$DCAdapterListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/DeckControlAdapter;->setGMAdapterListener(Lcom/htc/widget/DeckControl$DCAdapterListener;)V

    .line 523
    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    if-eqz v5, :cond_2

    .line 524
    const/4 v0, 0x0

    .local v0, loop:I
    :goto_1
    if-ge v0, v8, :cond_2

    .line 525
    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->setDropTime()V

    .line 524
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 527
    .end local v0           #loop:I
    :cond_2
    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    if-eqz v5, :cond_3

    .line 528
    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    invoke-virtual {v5}, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->clear()V

    .line 530
    :cond_3
    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    if-eqz v5, :cond_4

    .line 531
    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    invoke-virtual {v5}, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->clear()V

    .line 533
    :cond_4
    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    if-eqz v5, :cond_6

    .line 534
    const/4 v0, 0x0

    .restart local v0       #loop:I
    :goto_2
    if-ge v0, v8, :cond_6

    .line 535
    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->isAlive()Z

    move-result v5

    if-nez v5, :cond_5

    .line 536
    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->start()V

    .line 534
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 544
    .end local v0           #loop:I
    :cond_6
    iget v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpwidth:I

    invoke-virtual {p0, v5}, Lcom/htc/widget/DeckControlSPAdapter;->nextPowerOf2(I)I

    move-result v5

    if-le v5, v4, :cond_8

    move v2, v4

    .line 545
    .local v2, resizebmpw:I
    :goto_3
    iget v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpheight:I

    invoke-virtual {p0, v5}, Lcom/htc/widget/DeckControlSPAdapter;->nextPowerOf2(I)I

    move-result v5

    if-le v5, v4, :cond_9

    move v1, v4

    .line 547
    .local v1, resizebmph:I
    :goto_4
    mul-int v4, v2, v1

    int-to-float v3, v4

    .line 548
    .local v3, unitsize:F
    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpconfig:Landroid/graphics/Bitmap$Config;

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v4, v5, :cond_a

    const/4 v4, 0x4

    :goto_5
    int-to-float v4, v4

    mul-float/2addr v4, v3

    const/high16 v5, 0x4980

    div-float v3, v4, v5

    .line 550
    iget v4, p0, Lcom/htc/widget/DeckControlSPAdapter;->capacity:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    cmpl-float v4, v4, v7

    if-lez v4, :cond_7

    .line 553
    const-string v4, "SPresentationAdapter"

    const-string v5, "SPresentationAdapter.resetCapacity()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    div-float v4, v7, v3

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iput v4, p0, Lcom/htc/widget/DeckControlSPAdapter;->capacity:I

    .line 556
    iget v4, p0, Lcom/htc/widget/DeckControlSPAdapter;->capacity:I

    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->glideadater:Lcom/htc/widget/DeckControlAdapter;

    invoke-virtual {v5}, Lcom/htc/widget/DeckControlAdapter;->getContainerCount()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/DeckControlSPAdapter;->capacity:I

    .line 558
    iget v4, p0, Lcom/htc/widget/DeckControlSPAdapter;->capacity:I

    invoke-virtual {p0, v4}, Lcom/htc/widget/DeckControlSPAdapter;->setCapacity(I)V

    .line 563
    .end local v1           #resizebmph:I
    .end local v2           #resizebmpw:I
    .end local v3           #unitsize:F
    :cond_7
    const-string v4, "SPresentationAdapter"

    const-string v5, "SPresentationAdapter.setAdatper()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 544
    :cond_8
    iget v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpwidth:I

    invoke-virtual {p0, v5}, Lcom/htc/widget/DeckControlSPAdapter;->nextPowerOf2(I)I

    move-result v2

    goto :goto_3

    .line 545
    .restart local v2       #resizebmpw:I
    :cond_9
    iget v4, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpheight:I

    invoke-virtual {p0, v4}, Lcom/htc/widget/DeckControlSPAdapter;->nextPowerOf2(I)I

    move-result v1

    goto :goto_4

    .line 548
    .restart local v1       #resizebmph:I
    .restart local v3       #unitsize:F
    :cond_a
    const/4 v4, 0x2

    goto :goto_5
.end method

.method public setBitmapConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    if-nez v0, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpconfig:Landroid/graphics/Bitmap$Config;

    if-eq p1, v0, :cond_0

    .line 325
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq p1, v0, :cond_2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne p1, v0, :cond_0

    .line 326
    :cond_2
    iput-object p1, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpconfig:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public setCapacity(I)V
    .locals 3
    .parameter "capacity"

    .prologue
    .line 490
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 494
    :cond_1
    const-string v0, "SPresentationAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPresentationAdapter.setcapacity():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    invoke-virtual {v0, p1}, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->setCapacity(I)V

    .line 497
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    invoke-virtual {v0, p1}, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->setCapacity(I)V

    .line 500
    const-string v0, "SPresentationAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPresentationAdapter.setcapacity():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDefaultView(Landroid/view/View;)V
    .locals 10
    .parameter "defaultview"

    .prologue
    const/16 v9, 0x200

    .line 341
    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    if-nez v5, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    const-string v5, "SPresentationAdapter"

    const-string v6, "SPresentationAdapter:setDefaultView()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    if-eqz p1, :cond_0

    .line 349
    const/4 v0, 0x0

    .line 350
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpwidth:I

    iget v6, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpheight:I

    iget-object v7, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpconfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 352
    const/4 v1, 0x0

    .line 353
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Canvas;

    .end local v1           #canvas:Landroid/graphics/Canvas;
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 372
    .restart local v1       #canvas:Landroid/graphics/Canvas;
    :try_start_0
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    iget v6, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpwidth:I

    iget v7, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpheight:I

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    iget v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpwidth:I

    const/high16 v6, 0x4000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 374
    .local v4, wmeasure:I
    iget v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpheight:I

    const/high16 v6, 0x4000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 376
    .local v3, hmeasure:I
    invoke-virtual {p1, v4, v3}, Landroid/view/View;->measure(II)V

    .line 377
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 378
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    .end local v3           #hmeasure:I
    .end local v4           #wmeasure:I
    :goto_1
    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->dfsbitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v5, :cond_2

    .line 387
    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->dfsbitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v5}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 396
    :cond_2
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->dfsbitmap:Lcom/htc/sunny/SBitmap;

    .line 397
    invoke-static {v0, v9, v9}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/Bitmap;II)Lcom/htc/sunny/SBitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->dfsbitmap:Lcom/htc/sunny/SBitmap;

    .line 401
    const-string v5, "SPresentationAdapter"

    const-string v6, "SPresentationAdapter:setDefaultView"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    if-eqz v0, :cond_3

    .line 404
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 406
    :cond_3
    const/4 v1, 0x0

    .line 407
    goto :goto_0

    .line 380
    :catch_0
    move-exception v2

    .line 382
    .local v2, exception:Ljava/lang/Exception;
    const-string v5, "SPresentationAdapter"

    const-string v6, "SPresentationAdapter:setDefaultView()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setGMAdapterListener(Lcom/htc/widget/DeckControl$DCAdapterListener;)V
    .locals 1
    .parameter "iglidelistener"

    .prologue
    .line 572
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    if-nez v0, :cond_1

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    if-eqz p1, :cond_0

    .line 577
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->glidelistenerp:Lcom/htc/widget/DeckControl$DCAdapterListener;

    .line 578
    iput-object p1, p0, Lcom/htc/widget/DeckControlSPAdapter;->glidelistenerp:Lcom/htc/widget/DeckControl$DCAdapterListener;

    goto :goto_0
.end method

.method public setItemSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    if-nez v0, :cond_1

    .line 481
    .end local p1
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 479
    .restart local p1
    .restart local p2
    :cond_1
    if-lez p1, :cond_2

    .end local p1
    :goto_1
    iput p1, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpwidth:I

    .line 480
    if-lez p2, :cond_3

    .end local p2
    :goto_2
    iput p2, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpheight:I

    goto :goto_0

    .line 479
    .restart local p1
    .restart local p2
    :cond_2
    iget p1, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpwidth:I

    goto :goto_1

    .line 480
    .end local p1
    :cond_3
    iget p2, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpheight:I

    goto :goto_2
.end method

.method public setSpacing(F)V
    .locals 5
    .parameter "space"

    .prologue
    const/4 v0, 0x0

    .line 448
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    if-nez v1, :cond_1

    .line 453
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 451
    .restart local p1
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->glideadater:Lcom/htc/widget/DeckControlAdapter;

    if-eqz v1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->glideadater:Lcom/htc/widget/DeckControlAdapter;

    iget v2, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpwidth:I

    iget v3, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpheight:I

    cmpl-float v4, p1, v0

    if-lez v4, :cond_2

    .end local p1
    :goto_1
    invoke-virtual {v1, v2, v3, p1}, Lcom/htc/widget/DeckControlAdapter;->adjustLayout(IIF)V

    goto :goto_0

    .restart local p1
    :cond_2
    move p1, v0

    goto :goto_1
.end method

.method public setXRotateAngle(F)V
    .locals 0
    .parameter "angle"

    .prologue
    .line 418
    iput p1, p0, Lcom/htc/widget/DeckControlSPAdapter;->xrotateang:F

    .line 419
    return-void
.end method

.method public setYOffset(F)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    if-nez v0, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->glideadater:Lcom/htc/widget/DeckControlAdapter;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->glideadater:Lcom/htc/widget/DeckControlAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/widget/DeckControlAdapter;->setYOffset(F)V

    goto :goto_0
.end method

.method public setYRotateAngle(F)V
    .locals 0
    .parameter "angle"

    .prologue
    .line 428
    iput p1, p0, Lcom/htc/widget/DeckControlSPAdapter;->yrotateang:F

    .line 429
    return-void
.end method

.method public setZRotateAngle(F)V
    .locals 0
    .parameter "angle"

    .prologue
    .line 438
    iput p1, p0, Lcom/htc/widget/DeckControlSPAdapter;->zrotateang:F

    .line 439
    return-void
.end method
