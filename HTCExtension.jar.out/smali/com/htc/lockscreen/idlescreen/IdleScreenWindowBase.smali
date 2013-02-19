.class public Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;
.super Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;
.source "IdleScreenWindowBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;,
        Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;
    }
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String; = "IdleScreenWindowBase"


# instance fields
.field final mConfiguration:Landroid/content/res/Configuration;

.field final mContentInsets:Landroid/graphics/Rect;

.field mCreated:Z

.field mCurHeight:I

.field mCurWidth:I

.field mCurWindowAnime:I

.field mCurWindowFlags:I

.field mDetached:Z

.field private mDrawingAllowed:Z

.field mFormat:I

.field mHeight:I

.field mIsCreating:Z

.field mSession:Landroid/view/IWindowSession;

.field mShowAnimation:Z

.field mSurfaceCreated:Z

.field mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

.field mType:I

.field final mVisibleInsets:Landroid/graphics/Rect;

.field mWidth:I

.field final mWinFrame:Landroid/graphics/Rect;

.field mWindiowShow:I

.field mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

.field private mWindowVisibility:I

.field mWindowVisible:Z


# direct methods
.method public constructor <init>(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V
    .locals 3
    .parameter "engine"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;-><init>()V

    .line 26
    new-instance v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;-><init>(Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;)V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    .line 28
    new-instance v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;-><init>(Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;)V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    .line 29
    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mDrawingAllowed:Z

    .line 30
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindowVisibility:I

    .line 32
    iput v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindiowShow:I

    .line 45
    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindowVisible:Z

    .line 46
    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mDetached:Z

    .line 47
    iput-boolean v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mShowAnimation:Z

    .line 48
    iget v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    iput v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurWindowFlags:I

    .line 49
    iput v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurWindowAnime:I

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mVisibleInsets:Landroid/graphics/Rect;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWinFrame:Landroid/graphics/Rect;

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mContentInsets:Landroid/graphics/Rect;

    .line 53
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mConfiguration:Landroid/content/res/Configuration;

    .line 56
    invoke-virtual {p0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->setEngine(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mDrawingAllowed:Z

    return v0
.end method

.method private getWindowFormat()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->getRequestedFormat()I

    move-result v0

    return v0
.end method

.method private isStatusBarInTop()Z
    .locals 3

    .prologue
    .line 353
    const/4 v0, 0x1

    .line 355
    .local v0, inTop:Z
    :try_start_0
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 357
    .local v1, wm:Landroid/view/IWindowManager;
    invoke-interface {v1}, Landroid/view/IWindowManager;->canStatusBarHide()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 358
    const/4 v0, 0x0

    .line 363
    .end local v1           #wm:Landroid/view/IWindowManager;
    :cond_0
    :goto_0
    return v0

    .line 360
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public attach()V
    .locals 2

    .prologue
    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mDetached:Z

    .line 66
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewRootImpl;->getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSession:Landroid/view/IWindowSession;

    .line 67
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSession:Landroid/view/IWindowSession;

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;->setSession(Landroid/view/IWindowSession;)V

    .line 68
    return-void
.end method

.method public detach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mDetached:Z

    .line 76
    invoke-virtual {p0, v1, v1, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->updateSurface(ZZZ)V

    .line 77
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->reportSurfaceDestroyed()V

    .line 78
    return-void
.end method

.method protected doDestroy()V
    .locals 3

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCreated:Z

    if-eqz v0, :cond_0

    .line 87
    :try_start_0
    const-string v0, "IdleScreenWindowBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing window and destroying surface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCreated:Z

    .line 95
    :cond_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public finishDrawing()V
    .locals 3

    .prologue
    .line 582
    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    :goto_0
    return-void

    .line 583
    :catch_0
    move-exception v0

    .line 585
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSession()Landroid/view/IWindowSession;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSession:Landroid/view/IWindowSession;

    return-object v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    return-object v0
.end method

.method public getWindow()Lcom/android/internal/view/BaseIWindow;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    return-object v0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method reportSurfaceDestroyed()V
    .locals 8

    .prologue
    .line 367
    iget-boolean v5, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceCreated:Z

    if-eqz v5, :cond_1

    .line 368
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceCreated:Z

    .line 370
    iget-object v5, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v6, v5, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v6

    .line 371
    :try_start_0
    iget-object v5, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v5, v5, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v2, v5, [Landroid/view/SurfaceHolder$Callback;

    .line 373
    .local v2, callbacks:[Landroid/view/SurfaceHolder$Callback;
    iget-object v5, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v5, v5, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 374
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    move-object v0, v2

    .local v0, arr$:[Landroid/view/SurfaceHolder$Callback;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 376
    .local v1, c:Landroid/view/SurfaceHolder$Callback;
    iget-object v5, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-interface {v1, v5}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 375
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 374
    .end local v0           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v1           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v2           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 378
    .restart local v0       #arr$:[Landroid/view/SurfaceHolder$Callback;
    .restart local v2       #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_0
    const-string v5, "IdleScreenWindowBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSurfaceDestroyed("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v5, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    iget-object v6, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v5, v6}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 382
    .end local v0           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v2           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    return-void
.end method

.method protected setFormat(I)V
    .locals 1
    .parameter "format"

    .prologue
    .line 548
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->setFormat(I)V

    .line 549
    return-void
.end method

.method protected setSurfaceSize()V
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->setSizeFromLayout()V

    .line 566
    return-void
.end method

.method public updateSurface(ZZZ)V
    .locals 40
    .parameter "forceRelayout"
    .parameter "forceReport"
    .parameter "redrawNeeded"

    .prologue
    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    const-string v2, "IdleScreenWindowBase"

    const-string v3, "updateSurface~ destroyed"

    invoke-static {v2, v3}, Lcom/htc/lockscreen/idlescreen/ISLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->getRequestedWidth()I

    move-result v30

    .line 129
    .local v30, myWidth:I
    if-gtz v30, :cond_1

    const/16 v30, -0x1

    .line 130
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->getRequestedHeight()I

    move-result v29

    .line 131
    .local v29, myHeight:I
    if-gtz v29, :cond_2

    const/16 v29, -0x1

    .line 132
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->getWindowFormat()I

    move-result v28

    .line 134
    .local v28, myFormat:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCreated:Z

    if-nez v2, :cond_a

    const/16 v21, 0x1

    .line 135
    .local v21, creating:Z
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceCreated:Z

    if-nez v2, :cond_b

    const/16 v34, 0x1

    .line 136
    .local v34, surfaceCreating:Z
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mFormat:I

    move/from16 v0, v28

    if-eq v2, v0, :cond_c

    const/16 v24, 0x1

    .line 137
    .local v24, formatChanged:Z
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWidth:I

    move/from16 v0, v30

    if-ne v2, v0, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mHeight:I

    move/from16 v0, v29

    if-eq v2, v0, :cond_d

    :cond_3
    const/16 v33, 0x1

    .line 138
    .local v33, sizeChanged:Z
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mType:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v3}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->getRequestedType()I

    move-result v3

    if-eq v2, v3, :cond_e

    const/16 v35, 0x1

    .line 140
    .local v35, typeChanged:Z
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mVisibility:I

    move/from16 v36, v0

    .line 141
    .local v36, visibility:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShow:I

    if-gtz v2, :cond_4

    .line 142
    const/16 v36, 0x8

    .line 144
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindowVisibility:I

    move/from16 v0, v36

    if-eq v0, v2, :cond_f

    const/16 v37, 0x1

    .line 146
    .local v37, visibleChanged:Z
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShowLiveWallpaper:Z

    if-eqz v2, :cond_10

    .line 147
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    const/high16 v3, 0x10

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    .line 153
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurWindowFlags:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    if-eq v2, v3, :cond_11

    const/16 v23, 0x1

    .line 154
    .local v23, flagsChanged:Z
    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindiowShow:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShow:I

    if-eq v2, v3, :cond_12

    const/16 v39, 0x1

    .line 157
    .local v39, windowShowChanged:Z
    :goto_8
    const/16 v16, 0x0

    .line 158
    .local v16, animation:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mDetached:Z

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mShowAnimation:Z

    if-eqz v2, :cond_5

    .line 159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->getWindowAnimation()I

    move-result v16

    .line 162
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurWindowAnime:I

    move/from16 v0, v16

    if-eq v2, v0, :cond_13

    const/16 v17, 0x1

    .line 163
    .local v17, animationChanged:Z
    :goto_9
    const-string v2, "IdleScreenWindowBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSurface~ creating="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " surfaceCreating="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " formatChanged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sizeChanged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " typeChanged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " flagsChanged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " visibleChanged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " windowShowChanged ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " redrawNeeded ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " animationChanged ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/idlescreen/ISLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    if-nez p1, :cond_6

    if-nez v21, :cond_6

    if-nez v34, :cond_6

    if-nez v24, :cond_6

    if-nez v33, :cond_6

    if-nez v35, :cond_6

    if-nez v23, :cond_6

    if-nez v37, :cond_6

    if-nez v39, :cond_6

    if-nez p3, :cond_6

    if-eqz v17, :cond_9

    .line 178
    :cond_6
    :try_start_0
    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindowVisibility:I

    .line 180
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWidth:I

    .line 181
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mHeight:I

    .line 183
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mFormat:I

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->getRequestedType()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mType:I

    .line 186
    const/16 v31, 0x0

    .line 187
    .local v31, padding:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->isStatusBarInTop()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v31

    .line 191
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move/from16 v0, v31

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move/from16 v0, v30

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move/from16 v0, v29

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mFormat:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 197
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurWindowFlags:I

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 200
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShow:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindiowShow:I

    .line 202
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindowVisibility:I

    if-eqz v2, :cond_8

    .line 203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v2, v3}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onSurfaceDestroyPredict(Landroid/view/SurfaceHolder;)V

    .line 213
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mType:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v3}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 217
    if-lez v16, :cond_14

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move/from16 v0, v16

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 223
    :goto_a
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurWindowAnime:I

    .line 225
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCreated:Z

    if-nez v2, :cond_17

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v3}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->getWindowType()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    iget v4, v4, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;->mSeq:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindowVisibility:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mContentInsets:Landroid/graphics/Rect;

    invoke-interface/range {v2 .. v7}, Landroid/view/IWindowSession;->addWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;)I

    move-result v2

    if-gez v2, :cond_16

    .line 232
    const-string v2, "IdleScreenWindowBase"

    const-string v3, "Failed to add window"

    invoke-static {v2, v3}, Lcom/htc/lockscreen/idlescreen/ISLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    .end local v31           #padding:I
    :cond_9
    :goto_b
    return-void

    .line 134
    .end local v16           #animation:I
    .end local v17           #animationChanged:Z
    .end local v21           #creating:Z
    .end local v23           #flagsChanged:Z
    .end local v24           #formatChanged:Z
    .end local v33           #sizeChanged:Z
    .end local v34           #surfaceCreating:Z
    .end local v35           #typeChanged:Z
    .end local v36           #visibility:I
    .end local v37           #visibleChanged:Z
    .end local v39           #windowShowChanged:Z
    :cond_a
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 135
    .restart local v21       #creating:Z
    :cond_b
    const/16 v34, 0x0

    goto/16 :goto_1

    .line 136
    .restart local v34       #surfaceCreating:Z
    :cond_c
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 137
    .restart local v24       #formatChanged:Z
    :cond_d
    const/16 v33, 0x0

    goto/16 :goto_3

    .line 138
    .restart local v33       #sizeChanged:Z
    :cond_e
    const/16 v35, 0x0

    goto/16 :goto_4

    .line 144
    .restart local v35       #typeChanged:Z
    .restart local v36       #visibility:I
    :cond_f
    const/16 v37, 0x0

    goto/16 :goto_5

    .line 150
    .restart local v37       #visibleChanged:Z
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    const v3, -0x100001

    and-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    goto/16 :goto_6

    .line 153
    :cond_11
    const/16 v23, 0x0

    goto/16 :goto_7

    .line 154
    .restart local v23       #flagsChanged:Z
    :cond_12
    const/16 v39, 0x0

    goto/16 :goto_8

    .line 162
    .restart local v16       #animation:I
    .restart local v39       #windowShowChanged:Z
    :cond_13
    const/16 v17, 0x0

    goto/16 :goto_9

    .line 221
    .restart local v17       #animationChanged:Z
    .restart local v31       #padding:I
    :cond_14
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_a

    .line 343
    .end local v31           #padding:I
    :catch_0
    move-exception v22

    .line 344
    .local v22, ex:Landroid/os/RemoteException;
    const-string v2, "IdleScreenWindowBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSurface~ RemoteException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/idlescreen/ISLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .end local v22           #ex:Landroid/os/RemoteException;
    :cond_15
    :goto_c
    const-string v2, "IdleScreenWindowBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSurface~ x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " w="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 236
    .restart local v31       #padding:I
    :cond_16
    const/4 v2, 0x1

    :try_start_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCreated:Z

    .line 239
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v2, v2, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 240
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mDrawingAllowed:Z

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    iget v4, v4, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;->mSeq:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mHeight:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindowVisibility:I

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v14, v14, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-interface/range {v2 .. v14}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    move-result v32

    .line 259
    .local v32, relayoutResult:I
    const-string v2, "IdleScreenWindowBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSurface~ New surface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v4, v4, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", frame="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/idlescreen/ISLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v38

    .line 263
    .local v38, w:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurWidth:I

    move/from16 v0, v38

    if-eq v2, v0, :cond_18

    .line 264
    const/16 v33, 0x1

    .line 265
    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurWidth:I

    .line 267
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v25

    .line 268
    .local v25, h:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurHeight:I

    move/from16 v0, v25

    if-eq v2, v0, :cond_19

    .line 269
    const/16 v33, 0x1

    .line 270
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurHeight:I

    .line 273
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v2, v2, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v2, v2, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->reportSurfaceDestroyed()V

    .line 339
    :cond_1a
    :goto_d
    if-eqz v37, :cond_15

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindowVisibility:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onSurfaceVisibilityChanged(Landroid/view/SurfaceHolder;I)V

    goto/16 :goto_c

    .line 279
    :cond_1b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindowVisibility:I

    if-eqz v2, :cond_1c

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v2, v3}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onSurfaceDestroyPredict(Landroid/view/SurfaceHolder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 283
    :cond_1c
    const/16 v20, 0x0

    .line 284
    .local v20, callbacks:[Landroid/view/SurfaceHolder$Callback;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v3, v2, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 285
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v2, v2, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 286
    .local v15, N:I
    if-lez v15, :cond_1d

    .line 287
    new-array v0, v15, [Landroid/view/SurfaceHolder$Callback;

    move-object/from16 v20, v0

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v2, v2, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 290
    :cond_1d
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 292
    if-eqz v34, :cond_1f

    .line 293
    const/4 v2, 0x1

    :try_start_5
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mIsCreating:Z

    .line 294
    const-string v2, "IdleScreenWindowBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSurfaceCreated("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v2, v3}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 297
    if-eqz v20, :cond_1f

    .line 298
    move-object/from16 v18, v20

    .local v18, arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v27, v0

    .local v27, len$:I
    const/16 v26, 0x0

    .local v26, i$:I
    :goto_e
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_1f

    aget-object v19, v18, v26

    .line 299
    .local v19, c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 298
    add-int/lit8 v26, v26, 0x1

    goto :goto_e

    .line 290
    .end local v15           #N:I
    .end local v18           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v19           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v26           #i$:I
    .end local v27           #len$:I
    :catchall_0
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 332
    :catchall_1
    move-exception v2

    const/4 v3, 0x0

    :try_start_8
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mIsCreating:Z

    .line 333
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceCreated:Z

    .line 334
    if-eqz p3, :cond_1e

    .line 335
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->finishDrawing()V

    :cond_1e
    throw v2
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    .line 304
    .restart local v15       #N:I
    :cond_1f
    if-nez v21, :cond_20

    and-int/lit8 v2, v32, 0x2

    if-eqz v2, :cond_22

    :cond_20
    const/4 v2, 0x1

    :goto_f
    or-int p3, p3, v2

    .line 306
    if-nez p2, :cond_21

    if-nez v21, :cond_21

    if-nez v34, :cond_21

    if-nez v24, :cond_21

    if-eqz v33, :cond_23

    .line 308
    :cond_21
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mFormat:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurHeight:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 310
    if-eqz v20, :cond_23

    .line 311
    move-object/from16 v18, v20

    .restart local v18       #arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v27, v0

    .restart local v27       #len$:I
    const/16 v26, 0x0

    .restart local v26       #i$:I
    :goto_10
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_23

    aget-object v19, v18, v26

    .line 312
    .restart local v19       #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mFormat:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurHeight:I

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 311
    add-int/lit8 v26, v26, 0x1

    goto :goto_10

    .line 304
    .end local v18           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v19           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v26           #i$:I
    .end local v27           #len$:I
    :cond_22
    const/4 v2, 0x0

    goto :goto_f

    .line 318
    :cond_23
    if-eqz p3, :cond_25

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v2, v3}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 320
    if-eqz v20, :cond_25

    .line 321
    move-object/from16 v18, v20

    .restart local v18       #arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v27, v0

    .restart local v27       #len$:I
    const/16 v26, 0x0

    .restart local v26       #i$:I
    :goto_11
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_25

    aget-object v19, v18, v26

    .line 322
    .restart local v19       #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v19

    instance-of v2, v0, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v2, :cond_24

    .line 323
    check-cast v19, Landroid/view/SurfaceHolder$Callback2;

    .end local v19           #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 321
    :cond_24
    add-int/lit8 v26, v26, 0x1

    goto :goto_11

    .line 332
    .end local v18           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v26           #i$:I
    .end local v27           #len$:I
    :cond_25
    const/4 v2, 0x0

    :try_start_a
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mIsCreating:Z

    .line 333
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceCreated:Z

    .line 334
    if-eqz p3, :cond_1a

    .line 335
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->finishDrawing()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_d
.end method
