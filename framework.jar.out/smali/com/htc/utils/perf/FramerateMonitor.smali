.class public final Lcom/htc/utils/perf/FramerateMonitor;
.super Ljava/lang/Object;
.source "FramerateMonitor.java"


# static fields
.field public static final ID_ANIMATION:I = 0x5dd

.field public static final ID_LISTVIEW_FLING:I = 0x3eb

.field public static final ID_LISTVIEW_INTRO:I = 0x3ef

.field public static final ID_LISTVIEW_SCROLL:I = 0x3e9

.field private static final ID_LOG_START_TWICE:I = 0x7cf

.field public static final ID_WINDOW_TRANSITION:I = 0x3ed

.field private static final INVALID_HANDLE:I = -0x1

.field public static final MONITOR_TYPE_GLSURFACEVIEW:I = 0x3

.field public static final MONITOR_TYPE_SURFACEFLINGER:I = 0x2

.field public static final MONITOR_TYPE_VIEWROOT:I = 0x1

.field private static final PREFIX:Ljava/lang/String; = "[AutoProf]"

.field private static final STR_LOG_STARTED_TWICE:Ljava/lang/String; = "[AutoProf](1999) Stop because start called twice, handle="

.field private static final TAG:Ljava/lang/String; = "Performance"


# instance fields
.field private final mAnimationType:I

.field private final mContextName:Ljava/lang/String;

.field private final mDescription:Ljava/lang/String;

.field private final mMonitorType:I

.field private mNativeHandle:I

.field private mView:Landroid/view/View;

.field private mViewRootImpl:Landroid/view/ViewRootImpl;


# direct methods
.method private constructor <init>(Landroid/content/Context;ILandroid/view/View;ILjava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "monitorType"
    .parameter "view"
    .parameter "animationType"
    .parameter "description"

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/utils/perf/FramerateMonitor;->mNativeHandle:I

    .line 32
    iput-object v1, p0, Lcom/htc/utils/perf/FramerateMonitor;->mView:Landroid/view/View;

    .line 33
    iput-object v1, p0, Lcom/htc/utils/perf/FramerateMonitor;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 118
    iput-object p3, p0, Lcom/htc/utils/perf/FramerateMonitor;->mView:Landroid/view/View;

    .line 120
    if-eqz p1, :cond_0

    .line 121
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/utils/perf/FramerateMonitor;->mContextName:Ljava/lang/String;

    .line 126
    :goto_0
    iput p2, p0, Lcom/htc/utils/perf/FramerateMonitor;->mMonitorType:I

    .line 127
    iput-object p5, p0, Lcom/htc/utils/perf/FramerateMonitor;->mDescription:Ljava/lang/String;

    .line 128
    iput p4, p0, Lcom/htc/utils/perf/FramerateMonitor;->mAnimationType:I

    .line 129
    return-void

    .line 124
    :cond_0
    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/htc/utils/perf/FramerateMonitor;->mContextName:Ljava/lang/String;

    goto :goto_0
.end method

.method private native nativeStartLogFps(IILjava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeStopLogFps(I)V
.end method

.method private native nativeUpdateFrame(I)V
.end method

.method private static native nativeUpdateFrameByType(I)V
.end method

.method public static newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;
    .locals 1
    .parameter "monitorType"
    .parameter "view"
    .parameter "animationType"
    .parameter "description"

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public static updateFrameByType(I)V
    .locals 0
    .parameter "monitorType"

    .prologue
    .line 274
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 296
    iget v0, p0, Lcom/htc/utils/perf/FramerateMonitor;->mNativeHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 297
    const-string v0, "Performance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AutoProf](*) Stop logging by finalizer, handle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/utils/perf/FramerateMonitor;->mNativeHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {p0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 302
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 303
    return-void
.end method

.method public startLogFps()Z
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/4 v11, -0x1

    const/4 v5, 0x0

    .line 137
    iget v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mNativeHandle:I

    if-eq v7, v11, :cond_0

    .line 138
    const-string v7, "Performance"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[AutoProf](1999) Stop because start called twice, handle="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/utils/perf/FramerateMonitor;->mNativeHandle:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 142
    :cond_0
    iget v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mMonitorType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 143
    const-string v7, "SurfaceFlinger"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 145
    .local v4, surfaceFlinger:Landroid/os/IBinder;
    if-eqz v4, :cond_2

    .line 146
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 147
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 148
    .local v2, reply:Landroid/os/Parcel;
    const-string v7, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 149
    iget v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mMonitorType:I

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mAnimationType:I

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mContextName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    const/16 v7, 0x7d0

    const/4 v8, 0x0

    :try_start_0
    invoke-interface {v4, v7, v0, v2, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 156
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mNativeHandle:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 161
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 167
    .end local v0           #data:Landroid/os/Parcel;
    .end local v2           #reply:Landroid/os/Parcel;
    :goto_1
    iget v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mNativeHandle:I

    if-ne v7, v11, :cond_6

    .line 203
    .end local v4           #surfaceFlinger:Landroid/os/IBinder;
    :cond_1
    :goto_2
    return v5

    .line 157
    .restart local v0       #data:Landroid/os/Parcel;
    .restart local v2       #reply:Landroid/os/Parcel;
    .restart local v4       #surfaceFlinger:Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .line 158
    .local v1, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v7, "Performance"

    const-string v8, "Fail to transact with SurfaceFlinger"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 161
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 160
    throw v5

    .line 164
    .end local v0           #data:Landroid/os/Parcel;
    .end local v2           #reply:Landroid/os/Parcel;
    :cond_2
    const-string v7, "Performance"

    const-string v8, "Fail to get service SurfaceFlinger"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 173
    .end local v4           #surfaceFlinger:Landroid/os/IBinder;
    :cond_3
    iget-object v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mView:Landroid/view/View;

    if-eqz v7, :cond_1

    .line 177
    iget v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mMonitorType:I

    if-ne v6, v7, :cond_5

    .line 179
    iget-object v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    .line 181
    .local v3, root:Landroid/view/ViewRootImpl;
    iget-object v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mViewRootImpl:Landroid/view/ViewRootImpl;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mViewRootImpl:Landroid/view/ViewRootImpl;

    if-eq v7, v3, :cond_4

    .line 183
    iget-object v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mViewRootImpl:Landroid/view/ViewRootImpl;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewRootImpl;->setMonitor(Lcom/htc/utils/perf/FramerateMonitor;)V

    .line 186
    :cond_4
    iput-object v3, p0, Lcom/htc/utils/perf/FramerateMonitor;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 188
    if-eqz v3, :cond_1

    .line 192
    .end local v3           #root:Landroid/view/ViewRootImpl;
    :cond_5
    iget v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mMonitorType:I

    iget v8, p0, Lcom/htc/utils/perf/FramerateMonitor;->mAnimationType:I

    iget-object v9, p0, Lcom/htc/utils/perf/FramerateMonitor;->mContextName:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/utils/perf/FramerateMonitor;->mDescription:Ljava/lang/String;

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/htc/utils/perf/FramerateMonitor;->nativeStartLogFps(IILjava/lang/String;Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mNativeHandle:I

    .line 194
    iget v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mNativeHandle:I

    if-eq v7, v11, :cond_1

    .line 197
    const/4 v5, 0x3

    iget v7, p0, Lcom/htc/utils/perf/FramerateMonitor;->mMonitorType:I

    if-ne v5, v7, :cond_7

    .line 198
    iget-object v5, p0, Lcom/htc/utils/perf/FramerateMonitor;->mView:Landroid/view/View;

    check-cast v5, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v5, p0}, Landroid/opengl/GLSurfaceView;->setMonitor(Lcom/htc/utils/perf/FramerateMonitor;)V

    :cond_6
    :goto_3
    move v5, v6

    .line 203
    goto :goto_2

    .line 200
    :cond_7
    iget-object v5, p0, Lcom/htc/utils/perf/FramerateMonitor;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v5, p0}, Landroid/view/ViewRootImpl;->setMonitor(Lcom/htc/utils/perf/FramerateMonitor;)V

    goto :goto_3
.end method

.method public stopLogFps()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public updateFrame()V
    .locals 0

    .prologue
    .line 260
    return-void
.end method
