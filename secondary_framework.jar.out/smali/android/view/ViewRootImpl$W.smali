.class Landroid/view/ViewRootImpl$W;
.super Landroid/view/IWindow$Stub;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "W"
.end annotation


# instance fields
.field private final mViewAncestor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 1
    .parameter "viewAncestor"

    .prologue
    .line 4457
    invoke-direct {p0}, Landroid/view/IWindow$Stub;-><init>()V

    .line 4458
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    .line 4459
    return-void
.end method

.method private static checkCallingPermission(Ljava/lang/String;)I
    .locals 4
    .parameter "permission"

    .prologue
    .line 4507
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-interface {v1, p0, v2, v3}, Landroid/app/IActivityManager;->checkPermission(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4510
    :goto_0
    return v1

    .line 4509
    :catch_0
    move-exception v0

    .line 4510
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public animationEnd()V
    .locals 4

    .prologue
    .line 4594
    iget-object v3, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 4597
    .local v2, viewAncestor:Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_1

    .line 4598
    iget-object v1, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 4601
    .local v1, view:Landroid/view/View;
    const/4 v0, 0x0

    .line 4602
    .local v0, isGhost:Z
    if-nez v1, :cond_0

    .line 4603
    iget-object v3, v2, Landroid/view/ViewRootImpl;->mGhostView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #view:Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 4605
    .restart local v1       #view:Landroid/view/View;
    if-nez v1, :cond_0

    .line 4609
    :cond_0
    instance-of v3, v1, Lcom/android/internal/view/RootViewHtcCallbackReceiver;

    if-eqz v3, :cond_1

    .line 4610
    check-cast v1, Lcom/android/internal/view/RootViewHtcCallbackReceiver;

    .end local v1           #view:Landroid/view/View;
    invoke-interface {v1}, Lcom/android/internal/view/RootViewHtcCallbackReceiver;->onAnimationEnd()V

    .line 4614
    .end local v0           #isGhost:Z
    :cond_1
    return-void
.end method

.method public closeSystemDialogs(Ljava/lang/String;)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 4550
    iget-object v1, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 4551
    .local v0, viewAncestor:Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 4552
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchCloseSystemDialogs(Ljava/lang/String;)V

    .line 4554
    :cond_0
    return-void
.end method

.method public dispatchAppVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 4485
    iget-object v1, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 4486
    .local v0, viewAncestor:Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 4487
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchAppVisibility(Z)V

    .line 4489
    :cond_0
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 4578
    iget-object v1, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 4579
    .local v0, viewAncestor:Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 4580
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 4582
    :cond_0
    return-void
.end method

.method public dispatchGetNewSurface()V
    .locals 2

    .prologue
    .line 4492
    iget-object v1, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 4493
    .local v0, viewAncestor:Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 4494
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->dispatchGetNewSurface()V

    .line 4496
    :cond_0
    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(IIII)V
    .locals 2
    .parameter "seq"
    .parameter "globalVisibility"
    .parameter "localValue"
    .parameter "localChanges"

    .prologue
    .line 4586
    iget-object v1, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 4587
    .local v0, viewAncestor:Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 4588
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/ViewRootImpl;->dispatchSystemUiVisibilityChanged(IIII)V

    .line 4591
    :cond_0
    return-void
.end method

.method public dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 3
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"
    .parameter "sync"

    .prologue
    .line 4568
    if-eqz p6, :cond_0

    .line 4570
    :try_start_0
    sget-object v0, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    invoke-virtual {p0}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowSession;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4574
    :cond_0
    :goto_0
    return-void

    .line 4571
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public dispatchWallpaperOffsets(FFFFZ)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "xStep"
    .parameter "yStep"
    .parameter "sync"

    .prologue
    .line 4558
    if-eqz p5, :cond_0

    .line 4560
    :try_start_0
    sget-object v0, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    invoke-virtual {p0}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4564
    :cond_0
    :goto_0
    return-void

    .line 4561
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 8
    .parameter "command"
    .parameter "parameters"
    .parameter "out"

    .prologue
    .line 4515
    iget-object v5, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewRootImpl;

    .line 4516
    .local v4, viewAncestor:Landroid/view/ViewRootImpl;
    if-eqz v4, :cond_2

    .line 4517
    iget-object v3, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 4518
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_2

    .line 4519
    const-string v5, "android.permission.DUMP"

    invoke-static {v5}, Landroid/view/ViewRootImpl$W;->checkCallingPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 4521
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Insufficient permissions to invoke executeCommand() from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4526
    :cond_0
    const/4 v0, 0x0

    .line 4528
    .local v0, clientStream:Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v1, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4530
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .local v1, clientStream:Ljava/io/OutputStream;
    :try_start_1
    invoke-static {}, Landroid/view/ATViewRoot;->getInstance()Landroid/view/ATViewRoot;

    move-result-object v5

    invoke-virtual {v5, v3, p1, p2, v1}, Landroid/view/ATViewRoot;->dispatchCommand(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 4531
    invoke-static {v3, p1, p2, v1}, Landroid/view/ViewDebug;->dispatchCommand(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 4537
    :cond_1
    if-eqz v1, :cond_2

    .line 4539
    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 4547
    .end local v1           #clientStream:Ljava/io/OutputStream;
    .end local v3           #view:Landroid/view/View;
    :cond_2
    :goto_0
    return-void

    .line 4534
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v3       #view:Landroid/view/View;
    :catch_0
    move-exception v2

    .line 4535
    .local v2, e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4537
    if-eqz v0, :cond_2

    .line 4539
    :try_start_4
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 4540
    :catch_1
    move-exception v2

    .line 4541
    .end local v0           #clientStream:Ljava/io/OutputStream;
    :goto_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 4537
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v0, :cond_3

    .line 4539
    :try_start_5
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 4537
    :cond_3
    :goto_4
    throw v5

    .line 4540
    :catch_2
    move-exception v2

    .line 4541
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 4540
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #clientStream:Ljava/io/OutputStream;
    :catch_3
    move-exception v2

    goto :goto_2

    .line 4537
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1           #clientStream:Ljava/io/OutputStream;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    goto :goto_3

    .line 4534
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .restart local v1       #clientStream:Ljava/io/OutputStream;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1           #clientStream:Ljava/io/OutputStream;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public resized(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    .locals 7
    .parameter "w"
    .parameter "h"
    .parameter "coveredInsets"
    .parameter "visibleInsets"
    .parameter "reportDraw"
    .parameter "newConfig"

    .prologue
    .line 4463
    iget-object v1, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 4464
    .local v0, viewAncestor:Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 4465
    invoke-virtual/range {v0 .. v6}, Landroid/view/ViewRootImpl;->dispatchResized(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V

    .line 4468
    :cond_0
    return-void
.end method

.method public resizedlocated(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;II)V
    .locals 7
    .parameter "w"
    .parameter "h"
    .parameter "coveredInsets"
    .parameter "visibleInsets"
    .parameter "reportDraw"
    .parameter "newConfig"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4474
    iget-object v1, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 4475
    .local v0, viewAncestor:Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 4476
    invoke-virtual/range {v0 .. v6}, Landroid/view/ViewRootImpl;->dispatchResized(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V

    .line 4479
    invoke-virtual {v0, p7, p8}, Landroid/view/ViewRootImpl;->dispatchRelocated(II)V

    .line 4481
    :cond_0
    return-void
.end method

.method public rotationAnimEnd()V
    .locals 4

    .prologue
    .line 4617
    iget-object v3, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 4620
    .local v2, viewAncestor:Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_1

    .line 4621
    iget-object v1, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 4624
    .local v1, view:Landroid/view/View;
    const/4 v0, 0x0

    .line 4625
    .local v0, isGhost:Z
    if-nez v1, :cond_0

    .line 4626
    iget-object v3, v2, Landroid/view/ViewRootImpl;->mGhostView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #view:Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 4628
    .restart local v1       #view:Landroid/view/View;
    if-nez v1, :cond_0

    .line 4632
    :cond_0
    instance-of v3, v1, Lcom/android/internal/view/RootViewHtcCallbackReceiver;

    if-eqz v3, :cond_1

    .line 4633
    check-cast v1, Lcom/android/internal/view/RootViewHtcCallbackReceiver;

    .end local v1           #view:Landroid/view/View;
    invoke-interface {v1}, Lcom/android/internal/view/RootViewHtcCallbackReceiver;->onRotationAnimEnd()V

    .line 4637
    .end local v0           #isGhost:Z
    :cond_1
    return-void
.end method

.method public windowFocusChanged(ZZ)V
    .locals 2
    .parameter "hasFocus"
    .parameter "inTouchMode"

    .prologue
    .line 4499
    iget-object v1, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 4500
    .local v0, viewAncestor:Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 4501
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl;->windowFocusChanged(ZZ)V

    .line 4503
    :cond_0
    return-void
.end method
