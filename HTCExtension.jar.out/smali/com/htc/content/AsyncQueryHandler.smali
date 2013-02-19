.class abstract Lcom/htc/content/AsyncQueryHandler;
.super Landroid/os/Handler;
.source "AsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/content/AsyncQueryHandler$OperationQueue;,
        Lcom/htc/content/AsyncQueryHandler$Operation;,
        Lcom/htc/content/AsyncQueryHandler$WorkerHandler;,
        Lcom/htc/content/AsyncQueryHandler$WorkerArgs;
    }
.end annotation


# static fields
.field private static final EVENT_ARG_ADD_TAB_COMPLETE:I = 0x8

.field private static final EVENT_ARG_BATCH:I = 0x7

.field private static final EVENT_ARG_CHECK_INSERT_UPDATE:I = 0x6

.field private static final EVENT_ARG_DELETE:I = 0x4

.field private static final EVENT_ARG_EXCEPTION:I = 0x5

.field private static final EVENT_ARG_INSERT:I = 0x2

.field private static final EVENT_ARG_QUERY:I = 0x1

.field private static final EVENT_ARG_UPDATE:I = 0x3

.field private static final EVENT_CHECK_INSERT:I = 0x64

.field private static final EVENT_CHECK_UPDATE:I = 0x65

.field static final LOCAL_LOGV:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "AsyncQueryHandler"

.field private static sLooper:Landroid/os/Looper;


# instance fields
.field private mIsMemoryMode:Z

.field private mIsNoEditor:Z

.field private mOperationHandlingQueue:Lcom/htc/content/AsyncQueryHandler$OperationQueue;

.field final mResolver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkerThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/content/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "cr"

    .prologue
    .line 280
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 281
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/htc/content/AsyncQueryHandler;->mResolver:Ljava/lang/ref/WeakReference;

    .line 282
    const-class v2, Lcom/htc/content/AsyncQueryHandler;

    monitor-enter v2

    .line 283
    :try_start_0
    sget-object v1, Lcom/htc/content/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 284
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AsyncQueryWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 285
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 287
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sput-object v1, Lcom/htc/content/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    .line 289
    .end local v0           #thread:Landroid/os/HandlerThread;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    sget-object v1, Lcom/htc/content/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    invoke-virtual {p0, v1}, Lcom/htc/content/AsyncQueryHandler;->createHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    .line 293
    new-instance v1, Lcom/htc/content/AsyncQueryHandler$OperationQueue;

    invoke-direct {v1, p0}, Lcom/htc/content/AsyncQueryHandler$OperationQueue;-><init>(Lcom/htc/content/AsyncQueryHandler;)V

    iput-object v1, p0, Lcom/htc/content/AsyncQueryHandler;->mOperationHandlingQueue:Lcom/htc/content/AsyncQueryHandler$OperationQueue;

    .line 297
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/content/AsyncQueryHandler;->mIsMemoryMode:Z

    .line 299
    return-void

    .line 289
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic access$000(Lcom/htc/content/AsyncQueryHandler;)Lcom/htc/content/AsyncQueryHandler$OperationQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/content/AsyncQueryHandler;->mOperationHandlingQueue:Lcom/htc/content/AsyncQueryHandler$OperationQueue;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/content/AsyncQueryHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/htc/content/AsyncQueryHandler;->mIsNoEditor:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/content/AsyncQueryHandler;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/content/AsyncQueryHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/htc/content/AsyncQueryHandler;->mIsMemoryMode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/content/AsyncQueryHandler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/htc/content/AsyncQueryHandler;->setMemoryMode(Z)V

    return-void
.end method

.method private setMemoryMode(Z)V
    .locals 0
    .parameter "isMemoryMode"

    .prologue
    .line 701
    iput-boolean p1, p0, Lcom/htc/content/AsyncQueryHandler;->mIsMemoryMode:Z

    .line 702
    return-void
.end method


# virtual methods
.method public IsProcessingRightAway()Z
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/htc/content/AsyncQueryHandler;->mOperationHandlingQueue:Lcom/htc/content/AsyncQueryHandler$OperationQueue;

    invoke-virtual {v0}, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->IsProcessingRightAway()Z

    move-result v0

    return v0
.end method

.method protected addTabMemoryMode(ILjava/lang/Object;)V
    .locals 0
    .parameter "token"
    .parameter "cookie"

    .prologue
    .line 614
    return-void
.end method

.method public final cancelOperation(I)V
    .locals 1
    .parameter "token"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/htc/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 370
    return-void
.end method

.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .parameter "looper"

    .prologue
    .line 306
    new-instance v0, Lcom/htc/content/AsyncQueryHandler$WorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/htc/content/AsyncQueryHandler$WorkerHandler;-><init>(Lcom/htc/content/AsyncQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    .line 633
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;

    .line 640
    .local v8, args:Lcom/htc/content/AsyncQueryHandler$WorkerArgs;
    iget v1, p1, Landroid/os/Message;->what:I

    .line 641
    .local v1, token:I
    iget v9, p1, Landroid/os/Message;->arg1:I

    .line 644
    .local v9, event:I
    packed-switch v9, :pswitch_data_0

    .line 673
    :goto_0
    :pswitch_0
    return-void

    .line 646
    :pswitch_1
    iget-object v2, v8, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v0, v8, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    invoke-virtual {p0, v1, v2, v0}, Lcom/htc/content/AsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    goto :goto_0

    .line 650
    :pswitch_2
    iget-object v2, v8, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v0, v8, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0, v1, v2, v0}, Lcom/htc/content/AsyncQueryHandler;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    goto :goto_0

    .line 654
    :pswitch_3
    iget-object v2, v8, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v0, v8, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/htc/content/AsyncQueryHandler;->onUpdateComplete(ILjava/lang/Object;I)V

    goto :goto_0

    .line 658
    :pswitch_4
    iget-object v2, v8, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v0, v8, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/htc/content/AsyncQueryHandler;->onDeleteComplete(ILjava/lang/Object;I)V

    goto :goto_0

    .line 662
    :pswitch_5
    iget-object v2, v8, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, v8, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v5, v8, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    iget-object v6, v8, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v7, v8, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/content/AsyncQueryHandler;->onExceptionHandle(ILjava/lang/Object;ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 667
    :pswitch_6
    iget-object v0, v8, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v2, v8, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0, v2}, Lcom/htc/content/AsyncQueryHandler;->onCheckInsertOrUpdateComplete(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 670
    :pswitch_7
    invoke-virtual {p0}, Lcom/htc/content/AsyncQueryHandler;->onAddTabComplete()V

    goto :goto_0

    .line 644
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method protected isUpdateRequired(Ljava/lang/Object;Landroid/database/Cursor;Landroid/content/ContentValues;[I[Ljava/lang/String;)V
    .locals 0
    .parameter "cookie"
    .parameter "cursor"
    .parameter "values"
    .parameter "token"
    .parameter "tag"

    .prologue
    .line 603
    return-void
.end method

.method protected onAddTabComplete()V
    .locals 0

    .prologue
    .line 624
    return-void
.end method

.method protected onCheckInsertOrUpdateComplete(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 597
    return-void
.end method

.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 571
    return-void
.end method

.method protected onExceptionHandle(ILjava/lang/Object;ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "type"
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 589
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    .line 537
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 520
    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 554
    return-void
.end method

.method protected prepareForInsertion(Ljava/lang/Object;Landroid/content/ContentValues;[I)V
    .locals 0
    .parameter "cookie"
    .parameter "values"
    .parameter "token"

    .prologue
    .line 608
    return-void
.end method

.method public setNoEditorMode(Z)V
    .locals 0
    .parameter "isNoEditor"

    .prologue
    .line 709
    iput-boolean p1, p0, Lcom/htc/content/AsyncQueryHandler;->mIsNoEditor:Z

    .line 710
    invoke-direct {p0, p1}, Lcom/htc/content/AsyncQueryHandler;->setMemoryMode(Z)V

    .line 711
    return-void
.end method

.method public setToQueueMode(Z)V
    .locals 1
    .parameter "queueMode"

    .prologue
    .line 689
    iget-object v0, p0, Lcom/htc/content/AsyncQueryHandler;->mOperationHandlingQueue:Lcom/htc/content/AsyncQueryHandler$OperationQueue;

    invoke-virtual {v0, p1}, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->setToQueueMode(Z)V

    .line 690
    return-void
.end method

.method public final startCheckInsertOrUpdate(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"

    .prologue
    .line 481
    iget-object v2, p0, Lcom/htc/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 482
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x6

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 484
    new-instance v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;

    invoke-direct {v0}, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;-><init>()V

    .line 485
    .local v0, args:Lcom/htc/content/AsyncQueryHandler$WorkerArgs;
    iput-object p0, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 486
    iput-object p3, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 487
    iput-object p4, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->projection:[Ljava/lang/String;

    .line 488
    iput-object p5, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 489
    iput-object p6, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 490
    iput-object p7, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    .line 491
    iput-object p2, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 492
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 494
    iget-object v2, p0, Lcom/htc/content/AsyncQueryHandler;->mOperationHandlingQueue:Lcom/htc/content/AsyncQueryHandler$OperationQueue;

    invoke-virtual {v2}, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->IsProcessingRightAway()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 495
    iget-boolean v2, p0, Lcom/htc/content/AsyncQueryHandler;->mIsNoEditor:Z

    if-nez v2, :cond_0

    .line 496
    iget-object v2, p0, Lcom/htc/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 504
    :goto_0
    return-void

    .line 498
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/htc/content/AsyncQueryHandler;->addTabMemoryMode(ILjava/lang/Object;)V

    .line 499
    invoke-virtual {p0}, Lcom/htc/content/AsyncQueryHandler;->onAddTabComplete()V

    goto :goto_0

    .line 502
    :cond_1
    iget-object v2, p0, Lcom/htc/content/AsyncQueryHandler;->mOperationHandlingQueue:Lcom/htc/content/AsyncQueryHandler$OperationQueue;

    invoke-virtual {v2, v1}, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->add(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public final startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 460
    iget-object v2, p0, Lcom/htc/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 461
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 463
    new-instance v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;

    invoke-direct {v0}, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;-><init>()V

    .line 464
    .local v0, args:Lcom/htc/content/AsyncQueryHandler$WorkerArgs;
    iput-object p0, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 465
    iput-object p3, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 466
    iput-object p2, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 467
    iput-object p4, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 468
    iput-object p5, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 469
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 471
    iget-object v2, p0, Lcom/htc/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 472
    return-void
.end method

.method public final startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 389
    iget-object v2, p0, Lcom/htc/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 390
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 392
    new-instance v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;

    invoke-direct {v0}, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;-><init>()V

    .line 393
    .local v0, args:Lcom/htc/content/AsyncQueryHandler$WorkerArgs;
    iput-object p0, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 394
    iput-object p3, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 395
    iput-object p2, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 396
    iput-object p4, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    .line 397
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 399
    iget-object v2, p0, Lcom/htc/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 400
    return-void
.end method

.method public startProcessingOperations()V
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/htc/content/AsyncQueryHandler;->mOperationHandlingQueue:Lcom/htc/content/AsyncQueryHandler$OperationQueue;

    invoke-virtual {v0}, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->startProcessingOperations()V

    .line 682
    return-void
.end method

.method public startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"

    .prologue
    .line 339
    iget-object v2, p0, Lcom/htc/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 340
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 342
    new-instance v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;

    invoke-direct {v0}, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;-><init>()V

    .line 343
    .local v0, args:Lcom/htc/content/AsyncQueryHandler$WorkerArgs;
    iput-object p0, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 344
    iput-object p3, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 345
    iput-object p4, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->projection:[Ljava/lang/String;

    .line 346
    iput-object p5, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 347
    iput-object p6, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 348
    iput-object p7, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    .line 349
    iput-object p2, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 350
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 352
    iget-object v2, p0, Lcom/htc/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 353
    return-void
.end method

.method public final startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 419
    iget-object v2, p0, Lcom/htc/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 420
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 422
    new-instance v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;

    invoke-direct {v0}, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;-><init>()V

    .line 423
    .local v0, args:Lcom/htc/content/AsyncQueryHandler$WorkerArgs;
    iput-object p0, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 424
    iput-object p3, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 425
    iput-object p2, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 426
    iput-object p4, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    .line 427
    iput-object p5, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 428
    iput-object p6, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 429
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 431
    iget-object v2, p0, Lcom/htc/content/AsyncQueryHandler;->mOperationHandlingQueue:Lcom/htc/content/AsyncQueryHandler$OperationQueue;

    invoke-virtual {v2}, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->IsProcessingRightAway()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 432
    iget-boolean v2, p0, Lcom/htc/content/AsyncQueryHandler;->mIsNoEditor:Z

    if-nez v2, :cond_0

    .line 433
    iget-object v2, p0, Lcom/htc/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 441
    :goto_0
    return-void

    .line 435
    :cond_0
    iget-object v2, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-virtual {p0, p1, v2}, Lcom/htc/content/AsyncQueryHandler;->updateTabMemoryMode(ILjava/lang/Object;)V

    .line 436
    invoke-virtual {p0}, Lcom/htc/content/AsyncQueryHandler;->onAddTabComplete()V

    goto :goto_0

    .line 439
    :cond_1
    iget-object v2, p0, Lcom/htc/content/AsyncQueryHandler;->mOperationHandlingQueue:Lcom/htc/content/AsyncQueryHandler$OperationQueue;

    invoke-virtual {v2, v1}, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->add(Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected updateTabMemoryMode(ILjava/lang/Object;)V
    .locals 0
    .parameter "token"
    .parameter "cookie"

    .prologue
    .line 619
    return-void
.end method
