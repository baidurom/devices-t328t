.class Landroid/opengl/GLSurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mWaitingForSurface:Z

.field private mWidth:I

.field final synthetic this$0:Landroid/opengl/GLSurfaceView;


# direct methods
.method constructor <init>(Landroid/opengl/GLSurfaceView;Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 3
    .parameter
    .parameter "renderer"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1207
    iput-object p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->this$0:Landroid/opengl/GLSurfaceView;

    .line 1208
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1691
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 1209
    iput v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    .line 1210
    iput v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    .line 1211
    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1212
    iput v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1213
    iput-object p2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    .line 1214
    return-void
.end method

.method static synthetic access$1302(Landroid/opengl/GLSurfaceView$GLThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1206
    iput-boolean p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v15, 0x0

    .line 1255
    new-instance v13, Landroid/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/opengl/GLSurfaceView$GLThread;->this$0:Landroid/opengl/GLSurfaceView;

    invoke-direct {v13, v14}, Landroid/opengl/GLSurfaceView$EglHelper;-><init>(Landroid/opengl/GLSurfaceView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    .line 1256
    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1257
    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1259
    const/4 v6, 0x0

    .line 1260
    .local v6, gl:Ljavax/microedition/khronos/opengles/GL10;
    const/4 v2, 0x0

    .line 1261
    .local v2, createEglContext:Z
    const/4 v3, 0x0

    .line 1262
    .local v3, createEglSurface:Z
    const/4 v8, 0x0

    .line 1263
    .local v8, lostEglContext:Z
    const/4 v9, 0x0

    .line 1264
    .local v9, sizeChanged:Z
    const/4 v12, 0x0

    .line 1265
    .local v12, wantRenderNotification:Z
    const/4 v4, 0x0

    .line 1266
    .local v4, doRenderNotification:Z
    const/4 v1, 0x0

    .line 1267
    .local v1, askedToReleaseEglContext:Z
    const/4 v11, 0x0

    .line 1268
    .local v11, w:I
    const/4 v7, 0x0

    .line 1269
    .local v7, h:I
    const/4 v5, 0x0

    .line 1272
    .local v5, event:Ljava/lang/Runnable;
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v14

    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1274
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldExit:Z

    if-eqz v13, :cond_1

    .line 1275
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1493
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v14

    monitor-enter v14

    .line 1494
    :try_start_2
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1495
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1496
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 1498
    :goto_2
    return-void

    .line 1278
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    .line 1279
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/lang/Runnable;

    move-object v5, v0

    .line 1429
    :goto_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1431
    if-eqz v5, :cond_12

    .line 1432
    :try_start_4
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1433
    const/4 v5, 0x0

    .line 1434
    goto :goto_0

    .line 1284
    :cond_2
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    if-eq v13, v15, :cond_3

    .line 1285
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    .line 1286
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 1293
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    if-eqz v13, :cond_4

    .line 1297
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1298
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1299
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1300
    const/4 v1, 0x1

    .line 1304
    :cond_4
    if-eqz v8, :cond_5

    .line 1305
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1306
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1307
    const/4 v8, 0x0

    .line 1311
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-eqz v13, :cond_8

    .line 1315
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1316
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->this$0:Landroid/opengl/GLSurfaceView;

    #getter for: Landroid/opengl/GLSurfaceView;->mPreserveEGLContextOnPause:Z
    invoke-static {v13}, Landroid/opengl/GLSurfaceView;->access$900(Landroid/opengl/GLSurfaceView;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/opengl/GLSurfaceView$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1317
    :cond_6
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1322
    :cond_7
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/opengl/GLSurfaceView$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1323
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v13}, Landroid/opengl/GLSurfaceView$EglHelper;->finish()V

    .line 1331
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-nez v13, :cond_a

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v13, :cond_a

    .line 1335
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v13, :cond_9

    .line 1336
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1338
    :cond_9
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1339
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 1343
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v13, :cond_b

    .line 1347
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1348
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 1351
    :cond_b
    if-eqz v4, :cond_c

    .line 1355
    const/4 v12, 0x0

    .line 1356
    const/4 v4, 0x0

    .line 1357
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1358
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 1362
    :cond_c
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v13

    if-eqz v13, :cond_11

    .line 1365
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-nez v13, :cond_d

    .line 1366
    if-eqz v1, :cond_f

    .line 1367
    const/4 v1, 0x0

    .line 1382
    :cond_d
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-nez v13, :cond_e

    .line 1383
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1384
    const/4 v3, 0x1

    .line 1385
    const/4 v9, 0x1

    .line 1388
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v13, :cond_11

    .line 1389
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->this$0:Landroid/opengl/GLSurfaceView;

    #getter for: Landroid/opengl/GLSurfaceView;->mSizeChanged:Z
    invoke-static {v13}, Landroid/opengl/GLSurfaceView;->access$1000(Landroid/opengl/GLSurfaceView;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 1390
    const/4 v9, 0x1

    .line 1391
    move-object/from16 v0, p0

    iget v11, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    .line 1392
    move-object/from16 v0, p0

    iget v7, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    .line 1393
    const/4 v12, 0x1

    .line 1405
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->this$0:Landroid/opengl/GLSurfaceView;

    const/4 v15, 0x0

    #setter for: Landroid/opengl/GLSurfaceView;->mSizeChanged:Z
    invoke-static {v13, v15}, Landroid/opengl/GLSurfaceView;->access$1002(Landroid/opengl/GLSurfaceView;Z)Z

    .line 1409
    :goto_5
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_3

    .line 1429
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1493
    :catchall_1
    move-exception v13

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v14

    monitor-enter v14

    .line 1494
    :try_start_7
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1495
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1496
    monitor-exit v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1493
    throw v13

    .line 1368
    :cond_f
    :try_start_8
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->tryAcquireEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v13

    if-eqz v13, :cond_d

    .line 1370
    :try_start_9
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v13}, Landroid/opengl/GLSurfaceView$EglHelper;->start()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    .line 1375
    const/4 v13, 0x1

    :try_start_a
    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1376
    const/4 v2, 0x1

    .line 1378
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    goto :goto_4

    .line 1371
    :catch_0
    move-exception v10

    .line 1372
    .local v10, t:Ljava/lang/RuntimeException;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)V

    .line 1373
    throw v10

    .line 1407
    .end local v10           #t:Ljava/lang/RuntimeException;
    :cond_10
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    goto :goto_5

    .line 1427
    :cond_11
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 1437
    :cond_12
    if-eqz v3, :cond_14

    .line 1441
    :try_start_b
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/opengl/GLSurfaceView$GLThread;->this$0:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v14}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/opengl/GLSurfaceView$EglHelper;->createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v6, v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1442
    if-nez v6, :cond_13

    .line 1493
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v14

    monitor-enter v14

    .line 1494
    :try_start_c
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1495
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1496
    monitor-exit v14

    goto/16 :goto_2

    :catchall_2
    move-exception v13

    monitor-exit v14
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v13

    .line 1446
    :cond_13
    :try_start_d
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/opengl/GLSurfaceView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1447
    const/4 v3, 0x0

    .line 1450
    :cond_14
    if-eqz v2, :cond_15

    .line 1454
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    iget-object v14, v14, Landroid/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v13, v6, v14}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1455
    const/4 v2, 0x0

    .line 1458
    :cond_15
    if-eqz v9, :cond_16

    .line 1462
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v13}, Landroid/opengl/GLSurfaceView$EglHelper;->purgeBuffers()V

    .line 1463
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-interface {v13, v6, v11, v7}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 1464
    const/4 v9, 0x0

    .line 1470
    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-interface {v13, v6}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1473
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->this$0:Landroid/opengl/GLSurfaceView;

    #getter for: Landroid/opengl/GLSurfaceView;->mMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v13}, Landroid/opengl/GLSurfaceView;->access$1100(Landroid/opengl/GLSurfaceView;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v13

    if-eqz v13, :cond_17

    .line 1474
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->this$0:Landroid/opengl/GLSurfaceView;

    #getter for: Landroid/opengl/GLSurfaceView;->mMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v13}, Landroid/opengl/GLSurfaceView;->access$1100(Landroid/opengl/GLSurfaceView;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v13

    invoke-virtual {v13}, Lcom/htc/utils/perf/FramerateMonitor;->updateFrame()V

    .line 1477
    :cond_17
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v13}, Landroid/opengl/GLSurfaceView$EglHelper;->swap()Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result v13

    if-nez v13, :cond_18

    .line 1481
    const/4 v8, 0x1

    .line 1484
    :cond_18
    if-eqz v12, :cond_0

    .line 1485
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1496
    :catchall_3
    move-exception v13

    :try_start_e
    monitor-exit v14
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    throw v13

    :catchall_4
    move-exception v13

    :try_start_f
    monitor-exit v14
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    throw v13
.end method

.method private readyToDraw()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1505
    const/4 v0, 0x0

    .line 1507
    .local v0, isSurfaceValid:Z
    iget-boolean v3, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v3, :cond_0

    .line 1508
    iget-object v3, p0, Landroid/opengl/GLSurfaceView$GLThread;->this$0:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    .line 1509
    .local v1, sur:Landroid/view/Surface;
    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    .line 1512
    .end local v1           #sur:Landroid/view/Surface;
    :cond_0
    iget-boolean v3, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    iget v3, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    if-lez v3, :cond_2

    iget v3, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    if-lez v3, :cond_2

    iget-boolean v3, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    if-nez v3, :cond_1

    iget v3, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    if-ne v3, v2, :cond_2

    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private stopEglContextLocked()V
    .locals 1

    .prologue
    .line 1248
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    .line 1249
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->finish()V

    .line 1250
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1251
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)V

    .line 1253
    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    .prologue
    .line 1237
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    .line 1238
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1239
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->destroySurface()V

    .line 1241
    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    .prologue
    .line 1501
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRenderMode()I
    .locals 2

    .prologue
    .line 1528
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1529
    :try_start_0
    iget v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    monitor-exit v1

    return v0

    .line 1530
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1575
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1579
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1580
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1581
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1586
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1587
    :catch_0
    move-exception v0

    .line 1588
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1591
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1592
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 1595
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1599
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1600
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1601
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1602
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1603
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1608
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1609
    :catch_0
    move-exception v0

    .line 1610
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1613
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1614
    return-void
.end method

.method public onWindowResize(II)V
    .locals 4
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1617
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1618
    :try_start_0
    iput p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    .line 1619
    iput p2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    .line 1620
    iget-object v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->this$0:Landroid/opengl/GLSurfaceView;

    const/4 v3, 0x1

    #setter for: Landroid/opengl/GLSurfaceView;->mSizeChanged:Z
    invoke-static {v1, v3}, Landroid/opengl/GLSurfaceView;->access$1002(Landroid/opengl/GLSurfaceView;Z)Z

    .line 1621
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1622
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1623
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1627
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->this$0:Landroid/opengl/GLSurfaceView;

    #getter for: Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;
    invoke-static {v1}, Landroid/opengl/GLSurfaceView;->access$1200(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$GLThread;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->this$0:Landroid/opengl/GLSurfaceView;

    #getter for: Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;
    invoke-static {v1}, Landroid/opengl/GLSurfaceView;->access$1200(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$GLThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThread;->ableToDraw()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 1632
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1633
    :catch_0
    move-exception v0

    .line 1634
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1637
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1638
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 1666
    if-nez p1, :cond_0

    .line 1667
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1669
    :cond_0
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1670
    :try_start_0
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1671
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1672
    monitor-exit v1

    .line 1673
    return-void

    .line 1672
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestExitAndWait()V
    .locals 3

    .prologue
    .line 1643
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1644
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldExit:Z

    .line 1645
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1646
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1648
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1649
    :catch_0
    move-exception v0

    .line 1650
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1653
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1654
    return-void
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    .prologue
    .line 1657
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1658
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1659
    return-void
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 1534
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1535
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1536
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1537
    monitor-exit v1

    .line 1538
    return-void

    .line 1537
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 1218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView$GLThread;->setName(Ljava/lang/String;)V

    .line 1224
    :try_start_0
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThread;->guardedRun()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1228
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V

    .line 1230
    return-void

    .line 1228
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V

    throw v0

    .line 1225
    :catch_0
    move-exception v0

    .line 1228
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    goto :goto_0
.end method

.method public setRenderMode(I)V
    .locals 2
    .parameter "renderMode"

    .prologue
    .line 1518
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1519
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1521
    :cond_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1522
    :try_start_0
    iput p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1523
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1524
    monitor-exit v1

    .line 1525
    return-void

    .line 1524
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceCreated()V
    .locals 3

    .prologue
    .line 1541
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1545
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1546
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1547
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1549
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1550
    :catch_0
    move-exception v0

    .line 1551
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1554
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1555
    return-void
.end method

.method public surfaceDestroyed()V
    .locals 3

    .prologue
    .line 1558
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1562
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1563
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1564
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1566
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1567
    :catch_0
    move-exception v0

    .line 1568
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1571
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1572
    return-void
.end method
