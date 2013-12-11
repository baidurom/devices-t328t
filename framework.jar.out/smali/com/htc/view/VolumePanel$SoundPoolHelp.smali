.class Lcom/htc/view/VolumePanel$SoundPoolHelp;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoundPoolHelp"
.end annotation


# instance fields
.field private mLastStreamID:I

.field mListSrcFile:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSoundPool:Landroid/media/SoundPool;

.field private mStreamType:I

.field mToneGen:Landroid/media/ToneGenerator;

.field mlistSoundId:[Lcom/htc/view/VolumePanel$SoundID;

.field final synthetic this$0:Lcom/htc/view/VolumePanel;


# direct methods
.method public constructor <init>(Lcom/htc/view/VolumePanel;Ljava/util/List;III)V
    .locals 4
    .parameter
    .parameter
    .parameter "maxStreams"
    .parameter "streamType"
    .parameter "srcQuality"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .local p2, listSrcFile:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, -0x1

    .line 388
    iput-object p1, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->this$0:Lcom/htc/view/VolumePanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 381
    iput v1, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mLastStreamID:I

    .line 382
    iput v1, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mStreamType:I

    .line 389
    iput p4, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mStreamType:I

    .line 390
    if-eqz p2, :cond_1

    .line 391
    new-instance v1, Landroid/media/SoundPool;

    invoke-direct {v1, p3, p4, p5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mSoundPool:Landroid/media/SoundPool;

    .line 392
    iget-object v1, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 393
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/htc/view/VolumePanel$SoundID;

    iput-object v1, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mlistSoundId:[Lcom/htc/view/VolumePanel$SoundID;

    .line 394
    iput-object p2, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mListSrcFile:Ljava/util/List;

    .line 395
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mlistSoundId:[Lcom/htc/view/VolumePanel$SoundID;

    new-instance v2, Lcom/htc/view/VolumePanel$SoundID;

    invoke-direct {v2, p1}, Lcom/htc/view/VolumePanel$SoundID;-><init>(Lcom/htc/view/VolumePanel;)V

    aput-object v2, v1, v0

    .line 395
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 405
    :cond_0
    const-string v1, "VolumePanel"

    const-string v2, "SoundPoolHelp construct done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    .end local v0           #i:I
    :goto_1
    return-void

    .line 408
    :cond_1
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SoundPoolHelp init ToneGenerator for streamType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v2, 0x64

    invoke-direct {v1, p4, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mToneGen:Landroid/media/ToneGenerator;

    goto :goto_1
.end method


# virtual methods
.method public fnplay(I)I
    .locals 13
    .parameter "soundIndex"

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 422
    iget-object v3, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v3, :cond_4

    .line 423
    iget-object v3, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mlistSoundId:[Lcom/htc/view/VolumePanel$SoundID;

    array-length v3, v3

    if-ge p1, v3, :cond_0

    if-gez p1, :cond_1

    .line 424
    :cond_0
    iget-object v3, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mlistSoundId:[Lcom/htc/view/VolumePanel$SoundID;

    array-length v3, v3

    add-int/lit8 p1, v3, -0x1

    .line 425
    const-string v3, "VolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SoundPoolHelp fnplay index OOB "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_1
    iget-object v3, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mlistSoundId:[Lcom/htc/view/VolumePanel$SoundID;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/htc/view/VolumePanel$SoundID;->mId:I

    if-ne v3, v0, :cond_3

    .line 428
    const/4 v10, 0x1

    .line 430
    .local v10, priorityDefault:I
    iget-object v2, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mSoundPool:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mListSrcFile:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    .line 431
    .local v1, soundID:I
    const-string v0, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SoundPoolHelp load soundid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (soundIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v0, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mlistSoundId:[Lcom/htc/view/VolumePanel$SoundID;

    aget-object v0, v0, p1

    iput v1, v0, Lcom/htc/view/VolumePanel$SoundID;->mId:I

    .line 452
    .end local v1           #soundID:I
    .end local v10           #priorityDefault:I
    :cond_2
    :goto_0
    return v1

    .line 435
    :cond_3
    const/high16 v12, 0x3f80

    .line 436
    .local v12, volume:F
    const/4 v9, 0x0

    .line 437
    .local v9, priority:I
    const/4 v8, 0x0

    .line 438
    .local v8, loop:I
    const/high16 v11, 0x3f80

    .line 440
    .local v11, rateNorame:F
    iget-object v0, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mlistSoundId:[Lcom/htc/view/VolumePanel$SoundID;

    aget-object v0, v0, p1

    iget v1, v0, Lcom/htc/view/VolumePanel$SoundID;->mId:I

    .line 441
    .restart local v1       #soundID:I
    iget-object v0, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mSoundPool:Landroid/media/SoundPool;

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mLastStreamID:I

    .line 442
    iget v1, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mLastStreamID:I

    goto :goto_0

    .line 444
    .end local v1           #soundID:I
    .end local v8           #loop:I
    .end local v9           #priority:I
    .end local v11           #rateNorame:F
    .end local v12           #volume:F
    :cond_4
    iget-object v2, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mToneGen:Landroid/media/ToneGenerator;

    if-eqz v2, :cond_5

    .line 445
    const/4 v7, 0x0

    .line 446
    .local v7, bResult:Z
    iget-object v0, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mToneGen:Landroid/media/ToneGenerator;

    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Landroid/media/ToneGenerator;->startTone(I)Z

    move-result v7

    .line 447
    if-nez v7, :cond_2

    move v1, v4

    .line 450
    goto :goto_0

    .end local v7           #bResult:Z
    :cond_5
    move v1, v0

    .line 452
    goto :goto_0
.end method

.method public fnstop()V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mLastStreamID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mToneGen:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mToneGen:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 419
    :cond_1
    return-void
.end method

.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 13
    .parameter "soundPool"
    .parameter "sampleId"
    .parameter "status"

    .prologue
    .line 470
    const-string v0, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SoundPoolHelp onLoadComplete"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const/4 v11, 0x0

    .line 472
    .local v11, status_succee:I
    iget-object v0, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mSoundPool:Landroid/media/SoundPool;

    if-ne v0, p1, :cond_0

    if-eqz p3, :cond_1

    .line 486
    :cond_0
    return-void

    .line 474
    :cond_1
    const/high16 v12, 0x3f80

    .line 475
    .local v12, volume:F
    const/4 v9, 0x0

    .line 476
    .local v9, priority:I
    const/4 v8, 0x0

    .line 477
    .local v8, loop:I
    const/high16 v10, 0x3f80

    .line 479
    .local v10, rateNorame:F
    move v1, p2

    .line 480
    .local v1, soundID:I
    iget-object v0, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mSoundPool:Landroid/media/SoundPool;

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mLastStreamID:I

    .line 482
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget-object v0, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mlistSoundId:[Lcom/htc/view/VolumePanel$SoundID;

    array-length v0, v0

    if-ge v7, v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mlistSoundId:[Lcom/htc/view/VolumePanel$SoundID;

    aget-object v0, v0, v7

    iget v0, v0, Lcom/htc/view/VolumePanel$SoundID;->mId:I

    if-ne v0, p2, :cond_2

    .line 484
    iget-object v0, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mlistSoundId:[Lcom/htc/view/VolumePanel$SoundID;

    aget-object v0, v0, v7

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/htc/view/VolumePanel$SoundID;->mLoaded:Z

    .line 482
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public final release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 456
    iget-object v0, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 458
    iput-object v1, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mSoundPool:Landroid/media/SoundPool;

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mToneGen:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mToneGen:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 462
    iput-object v1, p0, Lcom/htc/view/VolumePanel$SoundPoolHelp;->mToneGen:Landroid/media/ToneGenerator;

    .line 464
    :cond_1
    return-void
.end method
