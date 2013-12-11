.class Landroid/media/MediaInfo$MyMediaScannerClient;
.super Ljava/lang/Object;
.source "MediaInfo.java"

# interfaces
.implements Landroid/media/MediaScannerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMediaScannerClient"
.end annotation


# instance fields
.field public mAlbum:Ljava/lang/String;

.field public mAlbumArtist:Ljava/lang/String;

.field public mArtist:Ljava/lang/String;

.field public mComposer:Ljava/lang/String;

.field public mDuration:I

.field public mFileSize:J

.field public mFileType:I

.field public mGenre:Ljava/lang/String;

.field public mLastModified:J

.field public mMimeType:Ljava/lang/String;

.field public mPath:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field public mTrack:I

.field public mYear:I

.field final synthetic this$0:Landroid/media/MediaInfo;


# direct methods
.method private constructor <init>(Landroid/media/MediaInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->this$0:Landroid/media/MediaInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaInfo;Landroid/media/MediaInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 349
    invoke-direct {p0, p1}, Landroid/media/MediaInfo$MyMediaScannerClient;-><init>(Landroid/media/MediaInfo;)V

    return-void
.end method

.method private doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "path"
    .parameter "filename"

    .prologue
    const/4 v2, 0x0

    .line 554
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 555
    .local v1, pathFilenameStart:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 556
    .local v0, filenameLength:I
    invoke-virtual {p1, v1, p2, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int v3, v1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private parseSubstring(Ljava/lang/String;II)I
    .locals 8
    .parameter "s"
    .parameter "start"
    .parameter "defaultValue"

    .prologue
    const/16 v7, 0x39

    const/16 v6, 0x30

    .line 473
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 474
    .local v1, length:I
    if-ne p2, v1, :cond_0

    .line 487
    .end local p3
    :goto_0
    return p3

    .line 476
    .restart local p3
    :cond_0
    add-int/lit8 v3, p2, 0x1

    .end local p2
    .local v3, start:I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 478
    .local v0, ch:C
    if-lt v0, v6, :cond_1

    if-le v0, v7, :cond_2

    :cond_1
    move p2, v3

    .end local v3           #start:I
    .restart local p2
    goto :goto_0

    .line 480
    .end local p2
    .restart local v3       #start:I
    :cond_2
    add-int/lit8 v2, v0, -0x30

    .line 481
    .local v2, result:I
    :goto_1
    if-ge v3, v1, :cond_5

    .line 482
    add-int/lit8 p2, v3, 0x1

    .end local v3           #start:I
    .restart local p2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 483
    if-lt v0, v6, :cond_3

    if-le v0, v7, :cond_4

    :cond_3
    move p3, v2

    goto :goto_0

    .line 484
    :cond_4
    mul-int/lit8 v4, v2, 0xa

    add-int/lit8 v5, v0, -0x30

    add-int v2, v4, v5

    move v3, p2

    .end local p2
    .restart local v3       #start:I
    goto :goto_1

    :cond_5
    move p2, v3

    .end local v3           #start:I
    .restart local p2
    move p3, v2

    .line 487
    goto :goto_0
.end method


# virtual methods
.method public addNoMediaFolder(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 579
    return-void
.end method

.method public beginFile(Ljava/lang/String;Ljava/lang/String;JJ)Landroid/media/MediaInfo$FileCacheEntry;
    .locals 13
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"

    .prologue
    .line 382
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 384
    if-eqz p2, :cond_0

    .line 385
    invoke-static {p2}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mFileType:I

    .line 386
    iget v3, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mFileType:I

    if-eqz v3, :cond_0

    .line 387
    iput-object p2, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 390
    :cond_0
    move-wide/from16 v0, p5

    iput-wide v0, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mFileSize:J

    .line 392
    iget-object v3, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 393
    invoke-static {p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v12

    .line 394
    .local v12, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-eqz v12, :cond_1

    .line 395
    iget v3, v12, Landroid/media/MediaFile$MediaFileType;->fileType:I

    iput v3, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mFileType:I

    .line 396
    iget-object v3, v12, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    iput-object v3, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 400
    .end local v12           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    :cond_1
    move-object v11, p1

    .line 401
    .local v11, key:Ljava/lang/String;
    iget-object v3, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->this$0:Landroid/media/MediaInfo;

    #getter for: Landroid/media/MediaInfo;->mCaseInsensitivePaths:Z
    invoke-static {v3}, Landroid/media/MediaInfo;->access$100(Landroid/media/MediaInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 402
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 405
    :cond_2
    new-instance v2, Landroid/media/MediaInfo$FileCacheEntry;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v7, 0x0

    move-object v6, p1

    invoke-direct/range {v2 .. v8}, Landroid/media/MediaInfo$FileCacheEntry;-><init>(Landroid/net/Uri;JLjava/lang/String;J)V

    .line 406
    .local v2, entry:Landroid/media/MediaInfo$FileCacheEntry;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/media/MediaInfo$FileCacheEntry;->mSeenInFileSystem:Z

    .line 409
    iget-wide v3, v2, Landroid/media/MediaInfo$FileCacheEntry;->mLastModified:J

    sub-long v9, p3, v3

    .line 410
    .local v9, delta:J
    const-wide/16 v3, 0x1

    cmp-long v3, v9, v3

    if-gtz v3, :cond_3

    const-wide/16 v3, -0x1

    cmp-long v3, v9, v3

    if-gez v3, :cond_4

    .line 411
    :cond_3
    move-wide/from16 v0, p3

    iput-wide v0, v2, Landroid/media/MediaInfo$FileCacheEntry;->mLastModified:J

    .line 412
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/media/MediaInfo$FileCacheEntry;->mLastModifiedChanged:Z

    .line 416
    :cond_4
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 417
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    .line 418
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    .line 419
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 420
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    .line 421
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    .line 422
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mTrack:I

    .line 423
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mYear:I

    .line 424
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mDuration:I

    .line 425
    iput-object p1, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mPath:Ljava/lang/String;

    .line 426
    move-wide/from16 v0, p3

    iput-wide v0, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mLastModified:J

    .line 428
    return-object v2
.end method

.method public doScanFile(Ljava/lang/String;Ljava/lang/String;JJZ)Landroid/net/Uri;
    .locals 5
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "scanAlways"

    .prologue
    .line 443
    const/4 v2, 0x0

    .line 445
    .local v2, result:Landroid/net/Uri;
    :try_start_0
    invoke-virtual/range {p0 .. p6}, Landroid/media/MediaInfo$MyMediaScannerClient;->beginFile(Ljava/lang/String;Ljava/lang/String;JJ)Landroid/media/MediaInfo$FileCacheEntry;

    move-result-object v1

    .line 447
    .local v1, entry:Landroid/media/MediaInfo$FileCacheEntry;
    if-eqz v1, :cond_1

    iget-boolean v3, v1, Landroid/media/MediaInfo$FileCacheEntry;->mLastModifiedChanged:Z

    if-nez v3, :cond_0

    if-eqz p7, :cond_1

    .line 462
    :cond_0
    iget-object v3, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->this$0:Landroid/media/MediaInfo;

    #calls: Landroid/media/MediaInfo;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    invoke-static {v3, p1, p2, p0}, Landroid/media/MediaInfo;->access$200(Landroid/media/MediaInfo;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 464
    invoke-virtual {p0, v1}, Landroid/media/MediaInfo$MyMediaScannerClient;->endFile(Landroid/media/MediaInfo$FileCacheEntry;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 469
    .end local v1           #entry:Landroid/media/MediaInfo$FileCacheEntry;
    :cond_1
    :goto_0
    return-object v2

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MediaInfo"

    const-string v4, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public endFile(Landroid/media/MediaInfo$FileCacheEntry;)Landroid/net/Uri;
    .locals 1
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 546
    iget-object v0, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 547
    :cond_0
    iget-object v0, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 550
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public handleStringTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 492
    const-string/jumbo v3, "title"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "title;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 493
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 533
    :cond_1
    :goto_0
    return-void

    .line 494
    :cond_2
    const-string v3, "artist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "artist;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 495
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    goto :goto_0

    .line 496
    :cond_4
    const-string v3, "albumartist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "albumartist;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 497
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    goto :goto_0

    .line 498
    :cond_6
    const-string v3, "album"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "album;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 499
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    goto :goto_0

    .line 500
    :cond_8
    const-string v3, "composer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "composer;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 501
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    goto :goto_0

    .line 502
    :cond_a
    const-string v3, "genre"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "genre;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 504
    :cond_b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_d

    .line 505
    const/4 v1, -0x1

    .line 506
    .local v1, genreCode:I
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 507
    .local v0, ch:C
    const/16 v3, 0x28

    if-ne v0, v3, :cond_e

    .line 508
    const/4 v3, 0x1

    invoke-direct {p0, p2, v3, v5}, Landroid/media/MediaInfo$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    .line 512
    :cond_c
    :goto_1
    if-ltz v1, :cond_d

    invoke-static {}, Landroid/media/MediaInfo;->access$300()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_d

    .line 513
    invoke-static {}, Landroid/media/MediaInfo;->access$300()[Ljava/lang/String;

    move-result-object v3

    aget-object p2, v3, v1

    .line 516
    .end local v0           #ch:C
    .end local v1           #genreCode:I
    :cond_d
    iput-object p2, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    goto/16 :goto_0

    .line 509
    .restart local v0       #ch:C
    .restart local v1       #genreCode:I
    :cond_e
    const/16 v3, 0x30

    if-lt v0, v3, :cond_c

    const/16 v3, 0x39

    if-gt v0, v3, :cond_c

    .line 510
    invoke-direct {p0, p2, v4, v5}, Landroid/media/MediaInfo$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    goto :goto_1

    .line 517
    .end local v0           #ch:C
    .end local v1           #genreCode:I
    :cond_f
    const-string/jumbo v3, "year"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string/jumbo v3, "year;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 518
    :cond_10
    invoke-direct {p0, p2, v4, v4}, Landroid/media/MediaInfo$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mYear:I

    goto/16 :goto_0

    .line 519
    :cond_11
    const-string/jumbo v3, "tracknumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string/jumbo v3, "tracknumber;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 522
    :cond_12
    invoke-direct {p0, p2, v4, v4}, Landroid/media/MediaInfo$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v2

    .line 523
    .local v2, num:I
    iget v3, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mTrack:I

    div-int/lit16 v3, v3, 0x3e8

    mul-int/lit16 v3, v3, 0x3e8

    add-int/2addr v3, v2

    iput v3, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    .line 524
    .end local v2           #num:I
    :cond_13
    const-string v3, "discnumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string/jumbo v3, "set"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string/jumbo v3, "set;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 528
    :cond_14
    invoke-direct {p0, p2, v4, v4}, Landroid/media/MediaInfo$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v2

    .line 529
    .restart local v2       #num:I
    mul-int/lit16 v3, v2, 0x3e8

    iget v4, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mTrack:I

    rem-int/lit16 v4, v4, 0x3e8

    add-int/2addr v3, v4

    iput v3, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    .line 530
    .end local v2           #num:I
    :cond_15
    const-string v3, "duration"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 531
    invoke-direct {p0, p2, v4, v4}, Landroid/media/MediaInfo$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mDuration:I

    goto/16 :goto_0
.end method

.method reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 564
    iput-object v0, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 565
    iput-object v0, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    .line 566
    iput-object v0, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    .line 567
    iput-object v0, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 568
    iput-object v0, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    .line 569
    iput-object v0, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    .line 570
    iput v1, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mTrack:I

    .line 571
    iput v1, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mYear:I

    .line 572
    iput v1, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mDuration:I

    .line 573
    iput-object v0, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 574
    iput-object v0, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mPath:Ljava/lang/String;

    .line 575
    return-void
.end method

.method public scanFile(Ljava/lang/String;JJZZ)V
    .locals 8
    .parameter "path"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "t1"
    .parameter "t2"

    .prologue
    .line 433
    const/4 v2, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v7}, Landroid/media/MediaInfo$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZ)Landroid/net/Uri;

    .line 434
    return-void
.end method

.method public scanFile(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 8
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"

    .prologue
    .line 438
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/media/MediaInfo$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZ)Landroid/net/Uri;

    .line 439
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 537
    iput-object p1, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 538
    invoke-static {p1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaInfo$MyMediaScannerClient;->mFileType:I

    .line 539
    return-void
.end method
