.class Lcom/android/internal/telephony/cat/IconLoader;
.super Landroid/os/Handler;
.source "IconLoader.java"


# static fields
.field private static final CLUT_ENTRY_SIZE:I = 0x3

.field private static final CLUT_LOCATION_OFFSET:I = 0x4

.field private static final EVENT_READ_CLUT_DONE:I = 0x3

.field private static final EVENT_READ_EF_IMG_RECOED_DONE:I = 0x1

.field private static final EVENT_READ_ICON_DONE:I = 0x2

.field private static final STATE_MULTI_ICONS:I = 0x2

.field private static final STATE_SINGLE_ICON:I = 0x1

.field private static sLoader:Lcom/android/internal/telephony/cat/IconLoader;


# instance fields
.field private mCdmaSimFH:Lcom/android/internal/telephony/cdma/HtcCdmaSIMFileHandler;

.field private mCurrentIcon:Landroid/graphics/Bitmap;

.field private mCurrentRecordIndex:I

.field private mEndMsg:Landroid/os/Message;

.field private mIconData:[B

.field private mIcons:[Landroid/graphics/Bitmap;

.field private mIconsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

.field private mRecordNumber:I

.field private mRecordNumbers:[I

.field private mSimFH:Lcom/android/internal/telephony/IccFileHandler;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/cat/IconLoader;->sLoader:Lcom/android/internal/telephony/cat/IconLoader;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 2
    .parameter "looper"
    .parameter "fh"

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mState:I

    .line 45
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    .line 46
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 48
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/IccFileHandler;

    .line 50
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCdmaSimFH:Lcom/android/internal/telephony/cdma/HtcCdmaSIMFileHandler;

    .line 52
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    .line 53
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    .line 55
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumbers:[I

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    .line 57
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIcons:[Landroid/graphics/Bitmap;

    .line 58
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    .line 81
    iput-object p2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/IccFileHandler;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    .line 84
    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Lcom/android/internal/telephony/cdma/HtcCdmaSIMFileHandler;)V
    .locals 2
    .parameter "looper"
    .parameter "fh"

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mState:I

    .line 45
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    .line 46
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 48
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/IccFileHandler;

    .line 50
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCdmaSimFH:Lcom/android/internal/telephony/cdma/HtcCdmaSIMFileHandler;

    .line 52
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    .line 53
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    .line 55
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumbers:[I

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    .line 57
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIcons:[Landroid/graphics/Bitmap;

    .line 58
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    .line 133
    iput-object p2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCdmaSimFH:Lcom/android/internal/telephony/cdma/HtcCdmaSIMFileHandler;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    .line 136
    return-void
.end method

.method private static bitToBnW(I)I
    .locals 1
    .parameter "bit"

    .prologue
    .line 346
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 347
    const/4 v0, -0x1

    .line 349
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x100

    goto :goto_0
.end method

.method static getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/IccFileHandler;)Lcom/android/internal/telephony/cat/IconLoader;
    .locals 3
    .parameter "caller"
    .parameter "fh"

    .prologue
    .line 107
    sget-object v1, Lcom/android/internal/telephony/cat/IconLoader;->sLoader:Lcom/android/internal/telephony/cat/IconLoader;

    if-eqz v1, :cond_0

    .line 108
    sget-object v1, Lcom/android/internal/telephony/cat/IconLoader;->sLoader:Lcom/android/internal/telephony/cat/IconLoader;

    .line 115
    :goto_0
    return-object v1

    .line 110
    :cond_0
    if-eqz p1, :cond_1

    .line 111
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Cat Icon Loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 113
    new-instance v1, Lcom/android/internal/telephony/cat/IconLoader;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/android/internal/telephony/cat/IconLoader;-><init>(Landroid/os/Looper;Lcom/android/internal/telephony/IccFileHandler;)V

    goto :goto_0

    .line 115
    .end local v0           #thread:Landroid/os/HandlerThread;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/cdma/HtcCdmaSIMFileHandler;)Lcom/android/internal/telephony/cat/IconLoader;
    .locals 3
    .parameter "caller"
    .parameter "fh"

    .prologue
    .line 120
    sget-object v1, Lcom/android/internal/telephony/cat/IconLoader;->sLoader:Lcom/android/internal/telephony/cat/IconLoader;

    if-eqz v1, :cond_0

    .line 121
    sget-object v1, Lcom/android/internal/telephony/cat/IconLoader;->sLoader:Lcom/android/internal/telephony/cat/IconLoader;

    .line 128
    :goto_0
    return-object v1

    .line 123
    :cond_0
    if-eqz p1, :cond_1

    .line 124
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Stk Icon Loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 126
    new-instance v1, Lcom/android/internal/telephony/cat/IconLoader;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/android/internal/telephony/cat/IconLoader;-><init>(Landroid/os/Looper;Lcom/android/internal/telephony/cdma/HtcCdmaSIMFileHandler;)V

    goto :goto_0

    .line 128
    .end local v0           #thread:Landroid/os/HandlerThread;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getMask(I)I
    .locals 1
    .parameter "numOfBits"

    .prologue
    .line 410
    const/4 v0, 0x0

    .line 412
    .local v0, mask:I
    packed-switch p0, :pswitch_data_0

    .line 438
    :goto_0
    return v0

    .line 414
    :pswitch_0
    const/4 v0, 0x1

    .line 415
    goto :goto_0

    .line 417
    :pswitch_1
    const/4 v0, 0x3

    .line 418
    goto :goto_0

    .line 420
    :pswitch_2
    const/4 v0, 0x7

    .line 421
    goto :goto_0

    .line 423
    :pswitch_3
    const/16 v0, 0xf

    .line 424
    goto :goto_0

    .line 426
    :pswitch_4
    const/16 v0, 0x1f

    .line 427
    goto :goto_0

    .line 429
    :pswitch_5
    const/16 v0, 0x3f

    .line 430
    goto :goto_0

    .line 432
    :pswitch_6
    const/16 v0, 0x7f

    .line 433
    goto :goto_0

    .line 435
    :pswitch_7
    const/16 v0, 0xff

    goto :goto_0

    .line 412
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private handleImageDescriptor([B)Z
    .locals 2
    .parameter "rawData"

    .prologue
    const/4 v0, 0x1

    .line 236
    invoke-static {p1, v0}, Lcom/android/internal/telephony/cat/ImageDescriptor;->parse([BI)Lcom/android/internal/telephony/cat/ImageDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    .line 237
    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    if-nez v1, :cond_0

    .line 238
    const/4 v0, 0x0

    .line 240
    :cond_0
    return v0
.end method

.method public static parseToBnW([BI)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "data"
    .parameter "length"

    .prologue
    .line 313
    const/4 v8, 0x0

    .line 314
    .local v8, valueIndex:I
    add-int/lit8 v9, v8, 0x1

    .end local v8           #valueIndex:I
    .local v9, valueIndex:I
    aget-byte v11, p0, v8

    and-int/lit16 v10, v11, 0xff

    .line 315
    .local v10, width:I
    add-int/lit8 v8, v9, 0x1

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    aget-byte v11, p0, v9

    and-int/lit16 v3, v11, 0xff

    .line 316
    .local v3, height:I
    mul-int v4, v10, v3

    .line 318
    .local v4, numOfPixels:I
    new-array v7, v4, [I

    .line 320
    .local v7, pixels:[I
    const/4 v5, 0x0

    .line 321
    .local v5, pixelIndex:I
    const/4 v0, 0x7

    .line 322
    .local v0, bitIndex:I
    const/4 v2, 0x0

    .local v2, currentByte:B
    move v6, v5

    .end local v5           #pixelIndex:I
    .local v6, pixelIndex:I
    move v9, v8

    .line 323
    .end local v8           #valueIndex:I
    .restart local v9       #valueIndex:I
    :goto_0
    if-ge v6, v4, :cond_0

    .line 325
    rem-int/lit8 v11, v6, 0x8

    if-nez v11, :cond_2

    .line 326
    add-int/lit8 v8, v9, 0x1

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    aget-byte v2, p0, v9

    .line 327
    const/4 v0, 0x7

    .line 329
    :goto_1
    add-int/lit8 v5, v6, 0x1

    .end local v6           #pixelIndex:I
    .restart local v5       #pixelIndex:I
    add-int/lit8 v1, v0, -0x1

    .end local v0           #bitIndex:I
    .local v1, bitIndex:I
    shr-int v11, v2, v0

    and-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Lcom/android/internal/telephony/cat/IconLoader;->bitToBnW(I)I

    move-result v11

    aput v11, v7, v6

    move v0, v1

    .end local v1           #bitIndex:I
    .restart local v0       #bitIndex:I
    move v6, v5

    .end local v5           #pixelIndex:I
    .restart local v6       #pixelIndex:I
    move v9, v8

    .end local v8           #valueIndex:I
    .restart local v9       #valueIndex:I
    goto :goto_0

    .line 332
    :cond_0
    if-eq v6, v4, :cond_1

    .line 333
    const-string v11, "IconLoader"

    const-string v12, "parseToBnW; size error"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_1
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v10, v3, v11}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    return-object v11

    :cond_2
    move v8, v9

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    goto :goto_1
.end method

.method public static parseToRGB([BIZ[B)Landroid/graphics/Bitmap;
    .locals 22
    .parameter "data"
    .parameter "length"
    .parameter "transparency"
    .parameter "clut"

    .prologue
    .line 364
    const/16 v16, 0x0

    .line 365
    .local v16, valueIndex:I
    add-int/lit8 v17, v16, 0x1

    .end local v16           #valueIndex:I
    .local v17, valueIndex:I
    aget-byte v19, p0, v16

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    .line 366
    .local v18, width:I
    add-int/lit8 v16, v17, 0x1

    .end local v17           #valueIndex:I
    .restart local v16       #valueIndex:I
    aget-byte v19, p0, v17

    move/from16 v0, v19

    and-int/lit16 v9, v0, 0xff

    .line 367
    .local v9, height:I
    add-int/lit8 v17, v16, 0x1

    .end local v16           #valueIndex:I
    .restart local v17       #valueIndex:I
    aget-byte v19, p0, v16

    move/from16 v0, v19

    and-int/lit16 v4, v0, 0xff

    .line 368
    .local v4, bitsPerImg:I
    add-int/lit8 v16, v17, 0x1

    .end local v17           #valueIndex:I
    .restart local v16       #valueIndex:I
    aget-byte v19, p0, v17

    move/from16 v0, v19

    and-int/lit16 v11, v0, 0xff

    .line 370
    .local v11, numOfClutEntries:I
    const/16 v19, 0x1

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_0

    .line 371
    add-int/lit8 v19, v11, -0x1

    const/16 v20, 0x0

    aput-byte v20, p3, v19

    .line 374
    :cond_0
    mul-int v12, v18, v9

    .line 375
    .local v12, numOfPixels:I
    new-array v15, v12, [I

    .line 377
    .local v15, pixels:[I
    const/16 v16, 0x6

    .line 378
    const/4 v13, 0x0

    .line 379
    .local v13, pixelIndex:I
    rsub-int/lit8 v5, v4, 0x8

    .line 380
    .local v5, bitsStartOffset:I
    move v2, v5

    .line 381
    .local v2, bitIndex:I
    add-int/lit8 v17, v16, 0x1

    .end local v16           #valueIndex:I
    .restart local v17       #valueIndex:I
    aget-byte v8, p0, v16

    .line 382
    .local v8, currentByte:B
    invoke-static {v4}, Lcom/android/internal/telephony/cat/IconLoader;->getMask(I)I

    move-result v10

    .line 383
    .local v10, mask:I
    const/16 v19, 0x8

    rem-int v19, v19, v4

    if-nez v19, :cond_1

    const/4 v3, 0x1

    .local v3, bitsOverlaps:Z
    :goto_0
    move v14, v13

    .line 384
    .end local v13           #pixelIndex:I
    .local v14, pixelIndex:I
    :goto_1
    if-ge v14, v12, :cond_3

    .line 386
    if-gez v2, :cond_4

    .line 387
    add-int/lit8 v16, v17, 0x1

    .end local v17           #valueIndex:I
    .restart local v16       #valueIndex:I
    aget-byte v8, p0, v17

    .line 388
    if-eqz v3, :cond_2

    move v2, v5

    .line 390
    :goto_2
    shr-int v19, v8, v2

    and-int v6, v19, v10

    .line 391
    .local v6, clutEntry:I
    mul-int/lit8 v7, v6, 0x3

    .line 393
    .local v7, clutIndex:I
    add-int/lit8 v13, v14, 0x1

    .end local v14           #pixelIndex:I
    .restart local v13       #pixelIndex:I
    aget-byte v19, p3, v7

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    add-int/lit8 v20, v7, 0x1

    aget-byte v20, p3, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    add-int/lit8 v21, v7, 0x2

    aget-byte v21, p3, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/graphics/Color;->rgb(III)I

    move-result v19

    aput v19, v15, v14

    .line 396
    sub-int/2addr v2, v4

    move v14, v13

    .end local v13           #pixelIndex:I
    .restart local v14       #pixelIndex:I
    move/from16 v17, v16

    .line 397
    .end local v16           #valueIndex:I
    .restart local v17       #valueIndex:I
    goto :goto_1

    .line 383
    .end local v3           #bitsOverlaps:Z
    .end local v6           #clutEntry:I
    .end local v7           #clutIndex:I
    .end local v14           #pixelIndex:I
    .restart local v13       #pixelIndex:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 388
    .end local v13           #pixelIndex:I
    .end local v17           #valueIndex:I
    .restart local v3       #bitsOverlaps:Z
    .restart local v14       #pixelIndex:I
    .restart local v16       #valueIndex:I
    :cond_2
    mul-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 399
    .end local v16           #valueIndex:I
    .restart local v17       #valueIndex:I
    :cond_3
    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v15, v0, v9, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    return-object v19

    :cond_4
    move/from16 v16, v17

    .end local v17           #valueIndex:I
    .restart local v16       #valueIndex:I
    goto :goto_2
.end method

.method private postIcon()V
    .locals 3

    .prologue
    .line 291
    iget v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 292
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIcons:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    iget-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    .line 297
    iget v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumbers:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 298
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumbers:[I

    iget v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/IconLoader;->startLoadingIcon(I)V

    goto :goto_0

    .line 300
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIcons:[Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 301
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private readClut()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v3, 0x4

    const/4 v1, 0x3

    .line 245
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    mul-int/lit8 v4, v0, 0x3

    .line 246
    .local v4, length:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/IconLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 248
    .local v5, msg:Landroid/os/Message;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCdmaSimFH:Lcom/android/internal/telephony/cdma/HtcCdmaSIMFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v1, v1, Lcom/android/internal/telephony/cat/ImageDescriptor;->imageId:I

    iget-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMFileHandler;->loadEFImgTransparent(IIIILandroid/os/Message;)V

    .line 258
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/IccFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v1, v1, Lcom/android/internal/telephony/cat/ImageDescriptor;->imageId:I

    iget-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFImgTransparent(IIIILandroid/os/Message;)V

    goto :goto_0
.end method

.method private readIconData()V
    .locals 6

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 279
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/IconLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 281
    .local v5, msg:Landroid/os/Message;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCdmaSimFH:Lcom/android/internal/telephony/cdma/HtcCdmaSIMFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v1, v1, Lcom/android/internal/telephony/cat/ImageDescriptor;->imageId:I

    iget-object v3, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v4, v3, Lcom/android/internal/telephony/cat/ImageDescriptor;->length:I

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMFileHandler;->loadEFImgTransparent(IIIILandroid/os/Message;)V

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/IccFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v1, v1, Lcom/android/internal/telephony/cat/ImageDescriptor;->imageId:I

    iget-object v3, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v4, v3, Lcom/android/internal/telephony/cat/ImageDescriptor;->length:I

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFImgTransparent(IIIILandroid/os/Message;)V

    goto :goto_0
.end method

.method private readId()V
    .locals 3

    .prologue
    .line 262
    iget v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    if-gez v1, :cond_0

    .line 263
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 264
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    .line 275
    :goto_0
    return-void

    .line 267
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/IconLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 269
    .local v0, msg:Landroid/os/Message;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 270
    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCdmaSimFH:Lcom/android/internal/telephony/cdma/HtcCdmaSIMFileHandler;

    iget v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMFileHandler;->loadEFImgLinearFixed(ILandroid/os/Message;)V

    goto :goto_0

    .line 273
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/IccFileHandler;

    iget v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/IccFileHandler;->loadEFImgLinearFixed(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method private startLoadingIcon(I)V
    .locals 2
    .parameter "recordNumber"

    .prologue
    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    .line 164
    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    .line 165
    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 166
    iput p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    .line 169
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 171
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    .line 177
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->readId()V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    iput-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    .line 89
    iput-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    .line 90
    iput-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 91
    iput-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/IccFileHandler;

    .line 92
    iput-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCdmaSimFH:Lcom/android/internal/telephony/cdma/HtcCdmaSIMFileHandler;

    .line 93
    iput-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    .line 94
    iput-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    .line 95
    iput-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumbers:[I

    .line 96
    iput-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIcons:[Landroid/graphics/Bitmap;

    .line 97
    iput-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    .line 99
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/IconLoader;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 100
    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 102
    :cond_0
    sput-object v2, Lcom/android/internal/telephony/cat/IconLoader;->sLoader:Lcom/android/internal/telephony/cat/IconLoader;

    .line 103
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 184
    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 226
    :goto_0
    return-void

    .line 186
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 187
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    check-cast v5, [B

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/IconLoader;->handleImageDescriptor([B)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->readIconData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    .end local v1           #ar:Landroid/os/AsyncResult;
    :catch_0
    move-exception v3

    .line 222
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "Icon load failed"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    goto :goto_0

    .line 190
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #ar:Landroid/os/AsyncResult;
    :cond_0
    :try_start_1
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "Unable to parse image descriptor"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 194
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 195
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v4, v0

    .line 196
    .local v4, rawData:[B
    iget-object v5, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v5, v5, Lcom/android/internal/telephony/cat/ImageDescriptor;->codingScheme:I

    const/16 v6, 0x11

    if-ne v5, v6, :cond_1

    .line 197
    array-length v5, v4

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/IconLoader;->parseToBnW([BI)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 198
    iget-object v5, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    iget v6, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    goto :goto_0

    .line 200
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v5, v5, Lcom/android/internal/telephony/cat/ImageDescriptor;->codingScheme:I

    const/16 v6, 0x21

    if-ne v5, v6, :cond_2

    .line 201
    iput-object v4, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    .line 202
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->readClut()V

    goto :goto_0

    .line 206
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to read icon due to invalid coding scheme: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v6, v6, Lcom/android/internal/telephony/cat/ImageDescriptor;->codingScheme:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 208
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    goto/16 :goto_0

    .line 213
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v4           #rawData:[B
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 214
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v2, v0

    .line 215
    .local v2, clut:[B
    iget-object v5, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    iget-object v6, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    array-length v6, v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7, v2}, Lcom/android/internal/telephony/cat/IconLoader;->parseToRGB([BIZ[B)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 217
    iget-object v5, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    iget v6, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method loadIcon(ILandroid/os/Message;)V
    .locals 1
    .parameter "recordNumber"
    .parameter "msg"

    .prologue
    .line 153
    if-nez p2, :cond_0

    .line 159
    :goto_0
    return-void

    .line 156
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    .line 157
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mState:I

    .line 158
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/IconLoader;->startLoadingIcon(I)V

    goto :goto_0
.end method

.method loadIcons([ILandroid/os/Message;)V
    .locals 2
    .parameter "recordNumbers"
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 140
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iput-object p2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    .line 145
    array-length v0, p1

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIcons:[Landroid/graphics/Bitmap;

    .line 146
    iput-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumbers:[I

    .line 147
    iput v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    .line 148
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mState:I

    .line 149
    aget v0, p1, v1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/IconLoader;->startLoadingIcon(I)V

    goto :goto_0
.end method
