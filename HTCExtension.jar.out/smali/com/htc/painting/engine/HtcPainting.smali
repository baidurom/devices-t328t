.class Lcom/htc/painting/engine/HtcPainting;
.super Ljava/lang/Object;
.source "HtcPainting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/engine/HtcPainting$SerializeRunnable;
    }
.end annotation


# static fields
.field private static final INVALIDATE_ID:I = -0x80000000

.field private static final TAG:Ljava/lang/String; = "HtcPainting"

.field private static final sLock:Ljava/lang/Object; = null

.field private static final sReferenceKeyOffset:I = 0x81


# instance fields
.field private isRecordUndo:Z

.field private mBaseCompundEdit:Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;

.field private final mCacheGroupKey:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCacheGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/htc/painting/engine/StrokeGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mIsEnable:Z

.field private mListener:Lcom/htc/painting/engine/undo/UndoManager$onActionListener;

.field private mLoadHandler:Lcom/htc/painting/engine/RequestHandler;

.field private mLoadWorker:Landroid/os/HandlerThread;

.field mPen:Lcom/htc/painting/tool/pen/Pen;

.field private final mReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mReqGroupData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/painting/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/painting/engine/ViewPort;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRequestedGroupIds:[I

.field private mSaveHandler:Lcom/htc/painting/engine/RequestHandler;

.field private mSaveWorker:Landroid/os/HandlerThread;

.field private final mSerializeDAO:Lcom/htc/painting/engine/AbsSerializeDAO;

.field private mSerializeRunnable:Lcom/htc/painting/engine/HtcPainting$SerializeRunnable;

.field protected mStrokeListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

.field private final mUndoManager:Lcom/htc/painting/engine/undo/UndoManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/painting/engine/HtcPainting;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 211
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/painting/engine/HtcPainting;->mIsEnable:Z

    .line 47
    new-instance v0, Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct {v0}, Lcom/htc/painting/engine/StrokeProperties;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mCacheGroupKey:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mCacheGroups:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mReqGroupData:Ljava/util/HashMap;

    .line 67
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 72
    new-instance v0, Lcom/htc/painting/engine/undo/UndoManager;

    invoke-direct {v0}, Lcom/htc/painting/engine/undo/UndoManager;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mUndoManager:Lcom/htc/painting/engine/undo/UndoManager;

    .line 74
    new-instance v0, Lcom/htc/painting/engine/HtcPainting$SerializeRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/painting/engine/HtcPainting$SerializeRunnable;-><init>(Lcom/htc/painting/engine/HtcPainting;Lcom/htc/painting/engine/HtcPainting$1;)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mSerializeRunnable:Lcom/htc/painting/engine/HtcPainting$SerializeRunnable;

    .line 75
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mPen:Lcom/htc/painting/tool/pen/Pen;

    .line 80
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    .line 82
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mLoadWorker:Landroid/os/HandlerThread;

    .line 83
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mSaveWorker:Landroid/os/HandlerThread;

    .line 84
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mLoadHandler:Lcom/htc/painting/engine/RequestHandler;

    .line 85
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mSaveHandler:Lcom/htc/painting/engine/RequestHandler;

    .line 86
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mRequestedGroupIds:[I

    .line 92
    new-instance v0, Lcom/htc/painting/engine/HtcPainting$1;

    invoke-direct {v0, p0}, Lcom/htc/painting/engine/HtcPainting$1;-><init>(Lcom/htc/painting/engine/HtcPainting;)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mListener:Lcom/htc/painting/engine/undo/UndoManager$onActionListener;

    .line 829
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/painting/engine/HtcPainting;->isRecordUndo:Z

    .line 830
    new-instance v0, Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;

    invoke-direct {v0}, Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mBaseCompundEdit:Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;

    .line 212
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mSerializeDAO:Lcom/htc/painting/engine/AbsSerializeDAO;

    .line 213
    return-void
.end method

.method constructor <init>(Lcom/htc/painting/engine/AbsSerializeDAO;)V
    .locals 3
    .parameter "serializeDAO"

    .prologue
    const/4 v1, 0x0

    .line 197
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/painting/engine/HtcPainting;->mIsEnable:Z

    .line 47
    new-instance v0, Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct {v0}, Lcom/htc/painting/engine/StrokeProperties;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mCacheGroupKey:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mCacheGroups:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mReqGroupData:Ljava/util/HashMap;

    .line 67
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 72
    new-instance v0, Lcom/htc/painting/engine/undo/UndoManager;

    invoke-direct {v0}, Lcom/htc/painting/engine/undo/UndoManager;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mUndoManager:Lcom/htc/painting/engine/undo/UndoManager;

    .line 74
    new-instance v0, Lcom/htc/painting/engine/HtcPainting$SerializeRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/painting/engine/HtcPainting$SerializeRunnable;-><init>(Lcom/htc/painting/engine/HtcPainting;Lcom/htc/painting/engine/HtcPainting$1;)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mSerializeRunnable:Lcom/htc/painting/engine/HtcPainting$SerializeRunnable;

    .line 75
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mPen:Lcom/htc/painting/tool/pen/Pen;

    .line 80
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    .line 82
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mLoadWorker:Landroid/os/HandlerThread;

    .line 83
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mSaveWorker:Landroid/os/HandlerThread;

    .line 84
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mLoadHandler:Lcom/htc/painting/engine/RequestHandler;

    .line 85
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mSaveHandler:Lcom/htc/painting/engine/RequestHandler;

    .line 86
    iput-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mRequestedGroupIds:[I

    .line 92
    new-instance v0, Lcom/htc/painting/engine/HtcPainting$1;

    invoke-direct {v0, p0}, Lcom/htc/painting/engine/HtcPainting$1;-><init>(Lcom/htc/painting/engine/HtcPainting;)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mListener:Lcom/htc/painting/engine/undo/UndoManager$onActionListener;

    .line 829
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/painting/engine/HtcPainting;->isRecordUndo:Z

    .line 830
    new-instance v0, Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;

    invoke-direct {v0}, Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mBaseCompundEdit:Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;

    .line 198
    if-nez p1, :cond_0

    .line 199
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "strokeGroupIds == null || serializeDAO == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_0
    iput-object p1, p0, Lcom/htc/painting/engine/HtcPainting;->mSerializeDAO:Lcom/htc/painting/engine/AbsSerializeDAO;

    .line 203
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mSerializeRunnable:Lcom/htc/painting/engine/HtcPainting$SerializeRunnable;

    const-string v2, "SerializeThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 205
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPainting;->initCore()V

    .line 207
    return-void
.end method

.method static synthetic access$100(Lcom/htc/painting/engine/HtcPainting;)Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/painting/engine/HtcPainting;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mCacheGroups:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/painting/engine/HtcPainting;)Lcom/htc/painting/engine/AbsSerializeDAO;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mSerializeDAO:Lcom/htc/painting/engine/AbsSerializeDAO;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/htc/painting/engine/HtcPainting;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/painting/engine/HtcPainting;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mCacheGroupKey:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/painting/engine/HtcPainting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/htc/painting/engine/HtcPainting;->saveCachedGroups()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/painting/engine/HtcPainting;)Lcom/htc/painting/engine/RequestHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mSaveHandler:Lcom/htc/painting/engine/RequestHandler;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/painting/engine/HtcPainting;Lcom/htc/painting/engine/RequestHandler;)Lcom/htc/painting/engine/RequestHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/htc/painting/engine/HtcPainting;->mSaveHandler:Lcom/htc/painting/engine/RequestHandler;

    return-object p1
.end method

.method static synthetic access$802(Lcom/htc/painting/engine/HtcPainting;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/htc/painting/engine/HtcPainting;->mSaveWorker:Landroid/os/HandlerThread;

    return-object p1
.end method

.method private addStrokeGroup(ILcom/htc/painting/engine/StrokeGroup;)Z
    .locals 3
    .parameter "strokeGroupId"
    .parameter "group"

    .prologue
    .line 571
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mCacheGroupKey:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 573
    .local v0, wkSerial:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/Integer;>;"
    sget-object v2, Lcom/htc/painting/engine/HtcPainting;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 574
    :try_start_0
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mCacheGroups:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    monitor-exit v2

    .line 576
    const/4 v1, 0x1

    return v1

    .line 575
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private convertIdToReferenceKey(I)Ljava/lang/Integer;
    .locals 2
    .parameter "groupId"

    .prologue
    .line 1143
    new-instance v0, Ljava/lang/Integer;

    add-int/lit16 v1, p1, 0x81

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method private initCore()V
    .locals 2

    .prologue
    .line 289
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Load group worker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mLoadWorker:Landroid/os/HandlerThread;

    .line 290
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Save group worker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mSaveWorker:Landroid/os/HandlerThread;

    .line 291
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mLoadWorker:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 292
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mSaveWorker:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 293
    new-instance v0, Lcom/htc/painting/engine/RequestHandler;

    iget-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mLoadWorker:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/painting/engine/RequestHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mLoadHandler:Lcom/htc/painting/engine/RequestHandler;

    .line 294
    new-instance v0, Lcom/htc/painting/engine/RequestHandler;

    iget-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mSaveWorker:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/painting/engine/RequestHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mSaveHandler:Lcom/htc/painting/engine/RequestHandler;

    .line 296
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 300
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mUndoManager:Lcom/htc/painting/engine/undo/UndoManager;

    iget-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mListener:Lcom/htc/painting/engine/undo/UndoManager$onActionListener;

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/undo/UndoManager;->setActionListener(Lcom/htc/painting/engine/undo/UndoManager$onActionListener;)V

    .line 301
    return-void
.end method

.method private loadStrokeGroupFromSerialDAO(ILcom/htc/painting/engine/ViewPort;)Lcom/htc/painting/engine/StrokeGroup;
    .locals 5
    .parameter "groupId"
    .parameter "viewport"

    .prologue
    .line 662
    if-gez p1, :cond_0

    .line 663
    const-string v2, "HtcPainting"

    const-string v3, "requestStrokeGroupFromSerialDAO(null)"

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const/4 v0, 0x0

    .line 674
    :goto_0
    return-object v0

    .line 666
    :cond_0
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPainting;->mSerializeDAO:Lcom/htc/painting/engine/AbsSerializeDAO;

    invoke-virtual {v2, p1}, Lcom/htc/painting/engine/AbsSerializeDAO;->load(I)[B

    move-result-object v1

    .line 667
    .local v1, serializedByteArray:[B
    new-instance v0, Lcom/htc/painting/engine/StrokeGroup;

    invoke-direct {v0, p1, p2}, Lcom/htc/painting/engine/StrokeGroup;-><init>(ILcom/htc/painting/engine/ViewPort;)V

    .line 668
    .local v0, result:Lcom/htc/painting/engine/StrokeGroup;
    if-eqz v1, :cond_1

    .line 669
    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/StrokeGroup;->deserialize([B)Lcom/htc/painting/engine/StrokeGroup;

    goto :goto_0

    .line 671
    :cond_1
    const-string v2, "HtcPainting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestStrokeGroupFromSerialDAO() cannot load group "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from serializeDAO"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private raiseStrokeBeginEvent(ILcom/htc/painting/engine/stroke/Stroke;Landroid/graphics/PointF;)V
    .locals 3
    .parameter "groupId"
    .parameter "s"
    .parameter "pos"

    .prologue
    .line 1097
    if-nez p2, :cond_1

    .line 1104
    :cond_0
    return-void

    .line 1099
    :cond_1
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 1100
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;

    .line 1101
    .local v1, lis:Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;
    new-instance v2, Lcom/htc/painting/engine/StrokeEventArg$StrokeMoveEventArg;

    invoke-direct {v2, p2, p1, p3}, Lcom/htc/painting/engine/StrokeEventArg$StrokeMoveEventArg;-><init>(Lcom/htc/painting/engine/stroke/Stroke;ILandroid/graphics/PointF;)V

    invoke-interface {v1, v2}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;->onStrokeBegin(Lcom/htc/painting/engine/StrokeEventArg$StrokeMoveEventArg;)V

    goto :goto_0
.end method

.method private raiseStrokeEndEvent(ILcom/htc/painting/engine/stroke/Stroke;Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;)V
    .locals 9
    .parameter "groupId"
    .parameter "s"
    .parameter "state"

    .prologue
    .line 1107
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {p2}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_1

    .line 1120
    :cond_0
    return-void

    .line 1109
    :cond_1
    const/4 v1, 0x0

    .line 1110
    .local v1, endPos:Lcom/htc/painting/engine/MotionPoint;
    const/4 v5, 0x0

    .line 1112
    .local v5, pos:Landroid/graphics/PointF;
    :try_start_0
    invoke-virtual {p2}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p2}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/htc/painting/engine/MotionPoint;

    move-object v1, v0

    .line 1113
    new-instance v6, Landroid/graphics/PointF;

    invoke-virtual {v1}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5           #pos:Landroid/graphics/PointF;
    .local v6, pos:Landroid/graphics/PointF;
    move-object v5, v6

    .line 1115
    .end local v6           #pos:Landroid/graphics/PointF;
    .restart local v5       #pos:Landroid/graphics/PointF;
    :goto_0
    iget-object v7, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    if-eqz v7, :cond_0

    .line 1116
    iget-object v7, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;

    .line 1117
    .local v4, lis:Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;
    new-instance v7, Lcom/htc/painting/engine/StrokeEventArg$StrokeMoveEventArg;

    invoke-direct {v7, p2, p1, v5, p3}, Lcom/htc/painting/engine/StrokeEventArg$StrokeMoveEventArg;-><init>(Lcom/htc/painting/engine/stroke/Stroke;ILandroid/graphics/PointF;Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;)V

    invoke-interface {v4, v7}, Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;->onStrokeEnd(Lcom/htc/painting/engine/StrokeEventArg$StrokeMoveEventArg;)V

    goto :goto_1

    .line 1114
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #lis:Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;
    :catch_0
    move-exception v2

    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private saveCachedGroups()V
    .locals 7

    .prologue
    .line 251
    sget-object v3, Lcom/htc/painting/engine/HtcPainting;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 252
    :try_start_0
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPainting;->mCacheGroups:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/engine/StrokeGroup;

    .line 253
    .local v0, group:Lcom/htc/painting/engine/StrokeGroup;
    if-eqz v0, :cond_1

    .line 254
    invoke-virtual {v0}, Lcom/htc/painting/engine/StrokeGroup;->isModified()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPainting;->mSerializeDAO:Lcom/htc/painting/engine/AbsSerializeDAO;

    invoke-virtual {v0}, Lcom/htc/painting/engine/StrokeGroup;->getId()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lcom/htc/painting/engine/StrokeGroup;->serialize(ZZ)[B

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/htc/painting/engine/AbsSerializeDAO;->save(I[B)V

    goto :goto_0

    .line 262
    .end local v0           #group:Lcom/htc/painting/engine/StrokeGroup;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 259
    .restart local v0       #group:Lcom/htc/painting/engine/StrokeGroup;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    const-string v2, "HtcPainting"

    const-string v4, "In destroy(), strokeGroup == null"

    invoke-static {v2, v4}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 262
    .end local v0           #group:Lcom/htc/painting/engine/StrokeGroup;
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    return-void
.end method

.method private setStrokeGroupRotation(Lcom/htc/painting/engine/StrokeGroup;I)Z
    .locals 2
    .parameter "group"
    .parameter "degree"

    .prologue
    .line 559
    if-nez p1, :cond_0

    .line 560
    const-string v0, "HtcPainting"

    const-string v1, "setStrokeGroupTransformMatrix(null,degree)"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const/4 v0, 0x0

    .line 564
    :goto_0
    return v0

    .line 563
    :cond_0
    invoke-virtual {p1, p2}, Lcom/htc/painting/engine/StrokeGroup;->setRotation(I)V

    .line 564
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateReqSGData([I[Lcom/htc/painting/engine/ViewPort;)V
    .locals 6
    .parameter "groupIds"
    .parameter "viewports"

    .prologue
    .line 1157
    iget-object v5, p0, Lcom/htc/painting/engine/HtcPainting;->mReqGroupData:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 1159
    iput-object p1, p0, Lcom/htc/painting/engine/HtcPainting;->mRequestedGroupIds:[I

    .line 1162
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_3

    .line 1163
    aget v5, p1, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1164
    .local v2, groupId:Ljava/lang/Integer;
    const/4 v4, 0x0

    .line 1165
    .local v4, referenceKey:Ljava/lang/Integer;
    const/4 v0, 0x0

    .line 1168
    .local v0, cacheKey:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/htc/painting/engine/HtcPainting;->mCacheGroupKey:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1169
    iget-object v5, p0, Lcom/htc/painting/engine/HtcPainting;->mCacheGroupKey:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cacheKey:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1170
    .restart local v0       #cacheKey:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #referenceKey:Ljava/lang/Integer;
    check-cast v4, Ljava/lang/Integer;

    .line 1174
    .restart local v4       #referenceKey:Ljava/lang/Integer;
    :cond_0
    if-eqz v0, :cond_1

    if-nez v4, :cond_2

    .line 1175
    :cond_1
    aget v5, p1, v3

    invoke-direct {p0, v5}, Lcom/htc/painting/engine/HtcPainting;->convertIdToReferenceKey(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1176
    invoke-direct {p0, v4}, Lcom/htc/painting/engine/HtcPainting;->wrapByWeakRef(Ljava/lang/Integer;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 1178
    :cond_2
    iget-object v5, p0, Lcom/htc/painting/engine/HtcPainting;->mCacheGroupKey:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    new-instance v1, Lcom/htc/painting/util/Pair;

    aget-object v5, p2, v3

    invoke-direct {v1, v4, v5}, Lcom/htc/painting/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1182
    .local v1, entry:Lcom/htc/painting/util/Pair;,"Lcom/htc/painting/util/Pair<Ljava/lang/Integer;Lcom/htc/painting/engine/ViewPort;>;"
    iget-object v5, p0, Lcom/htc/painting/engine/HtcPainting;->mReqGroupData:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1186
    .end local v0           #cacheKey:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/Integer;>;"
    .end local v1           #entry:Lcom/htc/painting/util/Pair;,"Lcom/htc/painting/util/Pair<Ljava/lang/Integer;Lcom/htc/painting/engine/ViewPort;>;"
    .end local v2           #groupId:Ljava/lang/Integer;
    .end local v4           #referenceKey:Ljava/lang/Integer;
    :cond_3
    return-void
.end method

.method private updateStrokeProperties(Lcom/htc/painting/engine/StrokeGroup;)V
    .locals 1
    .parameter "group"

    .prologue
    .line 920
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mPen:Lcom/htc/painting/tool/pen/Pen;

    invoke-virtual {p1, v0}, Lcom/htc/painting/engine/StrokeGroup;->setPen(Lcom/htc/painting/tool/pen/Pen;)V

    .line 921
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {p1, v0}, Lcom/htc/painting/engine/StrokeGroup;->setStrokeProperties(Lcom/htc/painting/engine/StrokeProperties;)V

    .line 922
    return-void
.end method

.method private wrapByWeakRef(Ljava/lang/Integer;)Ljava/lang/ref/WeakReference;
    .locals 2
    .parameter "intVal"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 608
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-object v0
.end method


# virtual methods
.method PaintingEnd(Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeGroup;Landroid/graphics/RectF;Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;)Lcom/htc/painting/engine/stroke/Stroke;
    .locals 2
    .parameter "canvas"
    .parameter "group"
    .parameter "dirtyRect"
    .parameter "state"

    .prologue
    .line 909
    invoke-virtual {p2}, Lcom/htc/painting/engine/StrokeGroup;->getPaintingStroke()Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v0

    .line 910
    .local v0, s:Lcom/htc/painting/engine/stroke/Stroke;
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 911
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 912
    invoke-virtual {p2, p1, p3}, Lcom/htc/painting/engine/StrokeGroup;->strokeEnd(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 913
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 914
    invoke-virtual {p2}, Lcom/htc/painting/engine/StrokeGroup;->getId()I

    move-result v1

    invoke-direct {p0, v1, v0, p4}, Lcom/htc/painting/engine/HtcPainting;->raiseStrokeEndEvent(ILcom/htc/painting/engine/stroke/Stroke;Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;)V

    .line 917
    .end local v0           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :goto_0
    return-object v0

    .restart local v0       #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method PaintingMove(Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeGroup;FFFFLandroid/graphics/RectF;)Lcom/htc/painting/engine/stroke/Stroke;
    .locals 10
    .parameter "canvas"
    .parameter "group"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "size"
    .parameter "dirtyRect"

    .prologue
    .line 890
    invoke-virtual {p2}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v9

    .line 891
    .local v9, viewport:Lcom/htc/painting/engine/ViewPort;
    const/4 v0, 0x2

    new-array v8, v0, [F

    const/4 v0, 0x0

    aput p3, v8, v0

    const/4 v0, 0x1

    aput p4, v8, v0

    .line 892
    .local v8, temp:[F
    invoke-virtual {v9}, Lcom/htc/painting/engine/ViewPort;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/htc/painting/engine/HtcPaintingUtil;->getInvertedPoint([FLandroid/graphics/Matrix;)[F

    move-result-object v8

    .line 894
    const/4 v0, 0x0

    aget p3, v8, v0

    .line 895
    const/4 v0, 0x1

    aget p4, v8, v0

    .line 898
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 899
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-object v0, p2

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    .line 900
    invoke-virtual/range {v0 .. v6}, Lcom/htc/painting/engine/StrokeGroup;->strokeMove(Landroid/graphics/Canvas;FFFFLandroid/graphics/RectF;)Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v7

    .line 902
    .local v7, s:Lcom/htc/painting/engine/stroke/Stroke;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 905
    .end local v7           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :goto_0
    return-object v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method PaintingStart(Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeGroup;FFFFLandroid/graphics/RectF;)Lcom/htc/painting/engine/stroke/Stroke;
    .locals 10
    .parameter "canvas"
    .parameter "group"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "size"
    .parameter "dirtyRect"

    .prologue
    .line 851
    if-eqz p2, :cond_1

    .line 861
    invoke-direct {p0, p2}, Lcom/htc/painting/engine/HtcPainting;->updateStrokeProperties(Lcom/htc/painting/engine/StrokeGroup;)V

    .line 864
    invoke-virtual {p2}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v9

    .line 865
    .local v9, viewport:Lcom/htc/painting/engine/ViewPort;
    const/4 v0, 0x2

    new-array v8, v0, [F

    const/4 v0, 0x0

    aput p3, v8, v0

    const/4 v0, 0x1

    aput p4, v8, v0

    .line 866
    .local v8, temp:[F
    invoke-virtual {v9}, Lcom/htc/painting/engine/ViewPort;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/htc/painting/engine/HtcPaintingUtil;->getInvertedPoint([FLandroid/graphics/Matrix;)[F

    move-result-object v8

    .line 868
    const/4 v0, 0x0

    aget p3, v8, v0

    .line 869
    const/4 v0, 0x1

    aget p4, v8, v0

    .line 871
    if-eqz p1, :cond_1

    .line 872
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-object v0, p2

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    .line 873
    invoke-virtual/range {v0 .. v6}, Lcom/htc/painting/engine/StrokeGroup;->strokeStart(Landroid/graphics/Canvas;FFFFLandroid/graphics/RectF;)Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v7

    .line 875
    .local v7, s:Lcom/htc/painting/engine/stroke/Stroke;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 876
    iget-boolean v0, p0, Lcom/htc/painting/engine/HtcPainting;->isRecordUndo:Z

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mBaseCompundEdit:Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;

    new-instance v1, Lcom/htc/painting/engine/undo/StrokeAddAction;

    invoke-direct {v1, p2, v7}, Lcom/htc/painting/engine/undo/StrokeAddAction;-><init>(Lcom/htc/painting/engine/StrokeGroup;Lcom/htc/painting/engine/stroke/Stroke;)V

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;->addEdit(Lcom/htc/painting/engine/undo/UndoableEdit;)Z

    .line 879
    :cond_0
    invoke-virtual {p2}, Lcom/htc/painting/engine/StrokeGroup;->getId()I

    move-result v0

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p3, p4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v0, v7, v1}, Lcom/htc/painting/engine/HtcPainting;->raiseStrokeBeginEvent(ILcom/htc/painting/engine/stroke/Stroke;Landroid/graphics/PointF;)V

    .line 884
    .end local v7           #s:Lcom/htc/painting/engine/stroke/Stroke;
    .end local v8           #temp:[F
    .end local v9           #viewport:Lcom/htc/painting/engine/ViewPort;
    :goto_0
    return-object v7

    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public SaveGroups([IZ)V
    .locals 7
    .parameter "ids"
    .parameter "saveIneffectiveStrokes"

    .prologue
    .line 1060
    move-object v0, p1

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget v3, v0, v2

    .line 1061
    .local v3, index:I
    invoke-virtual {p0, v3}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(I)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v1

    .line 1062
    .local v1, group:Lcom/htc/painting/engine/StrokeGroup;
    if-eqz v1, :cond_0

    .line 1063
    iget-object v5, p0, Lcom/htc/painting/engine/HtcPainting;->mSerializeDAO:Lcom/htc/painting/engine/AbsSerializeDAO;

    const/4 v6, 0x0

    invoke-virtual {v1, v6, p2}, Lcom/htc/painting/engine/StrokeGroup;->serialize(ZZ)[B

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/htc/painting/engine/AbsSerializeDAO;->save(I[B)V

    .line 1060
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1066
    .end local v1           #group:Lcom/htc/painting/engine/StrokeGroup;
    .end local v3           #index:I
    :cond_1
    return-void
.end method

.method public SaveGroupsAsync([IILcom/htc/painting/engine/IPaintingCallBack$IActionCallback;Z)V
    .locals 7
    .parameter "ids"
    .parameter "key"
    .parameter "callback"
    .parameter "saveIneffectiveStrokes"

    .prologue
    .line 1074
    iget-object v6, p0, Lcom/htc/painting/engine/HtcPainting;->mSaveHandler:Lcom/htc/painting/engine/RequestHandler;

    new-instance v0, Lcom/htc/painting/engine/Request$SaveStrokeGroupRequest;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/painting/engine/Request$SaveStrokeGroupRequest;-><init>(Lcom/htc/painting/engine/HtcPainting;[IILcom/htc/painting/engine/IPaintingCallBack$IActionCallback;Z)V

    invoke-virtual {v6, v0}, Lcom/htc/painting/engine/RequestHandler;->putRequest(Lcom/htc/painting/engine/Request;)V

    .line 1076
    return-void
.end method

.method canRedo()Z
    .locals 1

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mUndoManager:Lcom/htc/painting/engine/undo/UndoManager;

    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/UndoManager;->canRedo()Z

    move-result v0

    return v0
.end method

.method canUndo()Z
    .locals 1

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mUndoManager:Lcom/htc/painting/engine/undo/UndoManager;

    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/UndoManager;->canUndo()Z

    move-result v0

    return v0
.end method

.method clearAllStrokeGroups()V
    .locals 5

    .prologue
    .line 751
    sget-object v3, Lcom/htc/painting/engine/HtcPainting;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 753
    :try_start_0
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPainting;->mCacheGroups:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/engine/StrokeGroup;

    .line 763
    .local v0, group:Lcom/htc/painting/engine/StrokeGroup;
    invoke-virtual {v0}, Lcom/htc/painting/engine/StrokeGroup;->clearStrokes()V

    .line 765
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPainting;->mSerializeDAO:Lcom/htc/painting/engine/AbsSerializeDAO;

    invoke-virtual {v0}, Lcom/htc/painting/engine/StrokeGroup;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/htc/painting/engine/AbsSerializeDAO;->delete(I)V

    goto :goto_0

    .line 769
    .end local v0           #group:Lcom/htc/painting/engine/StrokeGroup;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 771
    invoke-virtual {p0}, Lcom/htc/painting/engine/HtcPainting;->clearUndoManager()V

    .line 772
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPainting;->mSerializeDAO:Lcom/htc/painting/engine/AbsSerializeDAO;

    invoke-virtual {v2}, Lcom/htc/painting/engine/AbsSerializeDAO;->deleteAll()V

    .line 773
    return-void
.end method

.method clearStrokeGroup(I)V
    .locals 7
    .parameter "groupId"

    .prologue
    .line 776
    iget-object v4, p0, Lcom/htc/painting/engine/HtcPainting;->mReqGroupData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 777
    invoke-virtual {p0, p1}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(I)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v1

    .line 778
    .local v1, group:Lcom/htc/painting/engine/StrokeGroup;
    if-eqz v1, :cond_2

    .line 779
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 780
    .local v0, effectiveStrokes:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/stroke/Stroke;>;"
    invoke-virtual {v1}, Lcom/htc/painting/engine/StrokeGroup;->getStrokes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/engine/stroke/Stroke;

    .line 781
    .local v3, s:Lcom/htc/painting/engine/stroke/Stroke;
    invoke-virtual {v3}, Lcom/htc/painting/engine/stroke/Stroke;->isEffective()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 782
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 785
    .end local v3           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_1
    iget-object v4, p0, Lcom/htc/painting/engine/HtcPainting;->mUndoManager:Lcom/htc/painting/engine/undo/UndoManager;

    new-instance v5, Lcom/htc/painting/engine/undo/StrokesClearAction;

    invoke-direct {v5, v1, v0}, Lcom/htc/painting/engine/undo/StrokesClearAction;-><init>(Lcom/htc/painting/engine/StrokeGroup;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Lcom/htc/painting/engine/undo/UndoManager;->addEdit(Lcom/htc/painting/engine/undo/UndoableEdit;)Z

    .line 786
    invoke-virtual {v1}, Lcom/htc/painting/engine/StrokeGroup;->clearStrokes()V

    .line 787
    iget-object v4, p0, Lcom/htc/painting/engine/HtcPainting;->mSerializeDAO:Lcom/htc/painting/engine/AbsSerializeDAO;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lcom/htc/painting/engine/StrokeGroup;->serialize(ZZ)[B

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/htc/painting/engine/AbsSerializeDAO;->save(I[B)V

    .line 790
    .end local v0           #effectiveStrokes:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/stroke/Stroke;>;"
    .end local v1           #group:Lcom/htc/painting/engine/StrokeGroup;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method clearUndoManager()V
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mUndoManager:Lcom/htc/painting/engine/undo/UndoManager;

    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/UndoManager;->clearUndoHistory()V

    .line 794
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mUndoManager:Lcom/htc/painting/engine/undo/UndoManager;

    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/UndoManager;->clearRedoHistory()V

    .line 795
    return-void
.end method

.method destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 217
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mSaveHandler:Lcom/htc/painting/engine/RequestHandler;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mSaveHandler:Lcom/htc/painting/engine/RequestHandler;

    new-instance v1, Lcom/htc/painting/engine/HtcPainting$2;

    invoke-direct {v1, p0}, Lcom/htc/painting/engine/HtcPainting$2;-><init>(Lcom/htc/painting/engine/HtcPainting;)V

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/RequestHandler;->putRequest(Lcom/htc/painting/engine/Request;)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mLoadHandler:Lcom/htc/painting/engine/RequestHandler;

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mLoadHandler:Lcom/htc/painting/engine/RequestHandler;

    invoke-virtual {v0}, Lcom/htc/painting/engine/RequestHandler;->clearRequest()V

    .line 231
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mLoadHandler:Lcom/htc/painting/engine/RequestHandler;

    invoke-virtual {v0}, Lcom/htc/painting/engine/RequestHandler;->postQuit()V

    .line 232
    iput-object v2, p0, Lcom/htc/painting/engine/HtcPainting;->mLoadWorker:Landroid/os/HandlerThread;

    .line 233
    iput-object v2, p0, Lcom/htc/painting/engine/HtcPainting;->mLoadHandler:Lcom/htc/painting/engine/RequestHandler;

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mSerializeRunnable:Lcom/htc/painting/engine/HtcPainting$SerializeRunnable;

    invoke-virtual {v0}, Lcom/htc/painting/engine/HtcPainting$SerializeRunnable;->stop()V

    .line 239
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 241
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 243
    iput-object v2, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mUndoManager:Lcom/htc/painting/engine/undo/UndoManager;

    if-eqz v0, :cond_3

    .line 246
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mUndoManager:Lcom/htc/painting/engine/undo/UndoManager;

    invoke-virtual {v0, v2}, Lcom/htc/painting/engine/undo/UndoManager;->setActionListener(Lcom/htc/painting/engine/undo/UndoManager$onActionListener;)V

    .line 248
    :cond_3
    return-void
.end method

.method draw(Landroid/graphics/Canvas;IIIILcom/htc/painting/engine/ViewPort;)V
    .locals 6
    .parameter "canvas"
    .parameter "groupId"
    .parameter "strokeId"
    .parameter "startPoint"
    .parameter "endPoint"
    .parameter "viewport"

    .prologue
    .line 491
    invoke-virtual {p0, p2}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(I)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v0

    .line 492
    .local v0, group:Lcom/htc/painting/engine/StrokeGroup;
    if-eqz v0, :cond_1

    .line 493
    const/4 v5, 0x0

    .line 494
    .local v5, m:Landroid/graphics/Matrix;
    if-eqz p6, :cond_2

    .line 495
    invoke-virtual {p6}, Lcom/htc/painting/engine/ViewPort;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 499
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 500
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    .line 501
    invoke-virtual/range {v0 .. v5}, Lcom/htc/painting/engine/StrokeGroup;->draw(Landroid/graphics/Canvas;IIILandroid/graphics/Matrix;)V

    .line 502
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 505
    .end local v5           #m:Landroid/graphics/Matrix;
    :cond_1
    return-void

    .line 496
    .restart local v5       #m:Landroid/graphics/Matrix;
    :cond_2
    invoke-virtual {v0}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 497
    invoke-virtual {v0}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/painting/engine/ViewPort;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    goto :goto_0
.end method

.method drawOnCacheBitmap(Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;[ILcom/htc/painting/engine/InterruptRef;)V
    .locals 2
    .parameter "data"
    .parameter "groupIds"
    .parameter "interruptRef"

    .prologue
    .line 310
    array-length v1, p2

    new-array v0, v1, [Lcom/htc/painting/engine/ViewPort;

    .line 311
    .local v0, emptyPorts:[Lcom/htc/painting/engine/ViewPort;
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/htc/painting/engine/HtcPainting;->drawOnCacheBitmap(Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;[I[Lcom/htc/painting/engine/ViewPort;Lcom/htc/painting/engine/InterruptRef;)V

    .line 312
    return-void
.end method

.method drawOnCacheBitmap(Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;[I[Lcom/htc/painting/engine/ViewPort;Lcom/htc/painting/engine/InterruptRef;)V
    .locals 6
    .parameter "data"
    .parameter "groupIds"
    .parameter "viewports"
    .parameter "interruptRef"

    .prologue
    .line 322
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/painting/engine/HtcPainting;->drawOnCacheBitmap(Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;[I[Lcom/htc/painting/engine/ViewPort;[Landroid/graphics/Matrix;Lcom/htc/painting/engine/InterruptRef;)V

    .line 323
    return-void
.end method

.method drawOnCacheBitmap(Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;[I[Lcom/htc/painting/engine/ViewPort;[Landroid/graphics/Matrix;Lcom/htc/painting/engine/InterruptRef;)V
    .locals 25
    .parameter "data"
    .parameter "groupIds"
    .parameter "viewports"
    .parameter "refMatrices"
    .parameter "interruptRef"

    .prologue
    .line 333
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    move-object/from16 v0, p2

    array-length v5, v0

    move-object/from16 v0, p3

    array-length v6, v0

    if-eq v5, v6, :cond_1

    .line 335
    :cond_0
    const-string v5, "HtcPainting"

    const-string v6, "draw Error: invalid groupIds or viewports"

    invoke-static {v5, v6}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    :goto_0
    return-void

    .line 340
    :cond_1
    move-object/from16 v0, p3

    array-length v5, v0

    new-array v10, v5, [Lcom/htc/painting/engine/StrokeGroup;

    .line 341
    .local v10, groups:[Lcom/htc/painting/engine/StrokeGroup;
    move-object/from16 v0, p3

    array-length v5, v0

    new-array v13, v5, [Landroid/graphics/Matrix;

    .line 342
    .local v13, matrices:[Landroid/graphics/Matrix;
    const-string v5, "drawOnCacheBitmap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "drawOnCacheBitmap start "

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/painting/util/PaintingLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    move-object/from16 v0, p3

    array-length v5, v0

    if-ge v11, v5, :cond_8

    .line 348
    aget-object v5, p3, v11

    if-eqz v5, :cond_5

    .line 349
    aget-object v5, p3, v11

    invoke-virtual {v5}, Lcom/htc/painting/engine/ViewPort;->getRectF()Landroid/graphics/RectF;

    move-result-object v5

    if-eqz v5, :cond_2

    aget-object v5, p3, v11

    invoke-virtual {v5}, Lcom/htc/painting/engine/ViewPort;->getRectF()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 350
    const-string v5, "drawOnCacheBitmap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "given viewport\'s rect is empty, ignore strokegroup, id: "

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v23, p2, v11

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 355
    :cond_2
    if-eqz p4, :cond_4

    aget-object v5, p4, v11

    if-eqz v5, :cond_4

    .line 356
    new-instance v5, Landroid/graphics/Matrix;

    aget-object v6, p4, v11

    invoke-direct {v5, v6}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    aput-object v5, v13, v11

    .line 379
    :cond_3
    :goto_3
    aget v5, p2, v11

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(IZ)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v5

    aput-object v5, v10, v11

    .line 393
    aget-object v5, v10, v11

    aget-object v6, p3, v11

    aget-object v23, v13, v11

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v5, v6, v1}, Lcom/htc/painting/engine/HtcPaintingUtil;->recordReference(Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;Lcom/htc/painting/engine/StrokeGroup;Lcom/htc/painting/engine/ViewPort;Landroid/graphics/Matrix;)V

    goto :goto_2

    .line 358
    :cond_4
    new-instance v5, Landroid/graphics/Matrix;

    aget-object v6, p3, v11

    invoke-virtual {v6}, Lcom/htc/painting/engine/ViewPort;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    aput-object v5, v13, v11

    goto :goto_3

    .line 360
    :cond_5
    aget v5, p2, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/painting/engine/HtcPainting;->getViewPort(I)Lcom/htc/painting/engine/ViewPort;

    move-result-object v21

    .line 361
    .local v21, vp:Lcom/htc/painting/engine/ViewPort;
    if-eqz v21, :cond_6

    invoke-virtual/range {v21 .. v21}, Lcom/htc/painting/engine/ViewPort;->getRectF()Landroid/graphics/RectF;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual/range {v21 .. v21}, Lcom/htc/painting/engine/ViewPort;->getRectF()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 362
    const-string v5, "drawOnCacheBitmap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "group viewport\'s rect is empty, ignore strokegroup, id: "

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v23, p2, v11

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 367
    :cond_6
    aget-object v5, v10, v11

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;->findRecord(Lcom/htc/painting/engine/StrokeGroup;)Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;

    move-result-object v14

    .line 368
    .local v14, record:Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;
    if-eqz v14, :cond_7

    .line 369
    new-instance v5, Landroid/graphics/Matrix;

    invoke-virtual {v14}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;->getSnapShot()Lcom/htc/painting/engine/ViewPortSnapShot;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/painting/engine/ViewPortSnapShot;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    aput-object v5, v13, v11

    .line 370
    const-string v5, "drawOnCacheBitmap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "id: "

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v23, p2, v11

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v23, " matrix: "

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v23, v13, v11

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/painting/util/PaintingLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 372
    :cond_7
    const-string v5, "drawOnCacheBitmap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "CRAP: CANNOT FIND RECORD "

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v23, p2, v11

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v23, " all records: "

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    if-eqz v21, :cond_3

    .line 375
    new-instance v5, Landroid/graphics/Matrix;

    invoke-virtual/range {v21 .. v21}, Lcom/htc/painting/engine/ViewPort;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    aput-object v5, v13, v11

    goto/16 :goto_3

    .line 401
    .end local v14           #record:Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;
    .end local v21           #vp:Lcom/htc/painting/engine/ViewPort;
    :cond_8
    const/16 v20, 0x0

    .line 402
    .local v20, totalStrokeCount:I
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v17, sortingGroups:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/StrokeGroup;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .local v18, sortingStrokes:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Lcom/htc/painting/engine/stroke/Stroke;>;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .local v9, groupMatrices:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Matrix;>;"
    const/4 v11, 0x0

    :goto_4
    array-length v5, v10

    if-ge v11, v5, :cond_a

    .line 406
    aget-object v8, v10, v11

    .line 407
    .local v8, group:Lcom/htc/painting/engine/StrokeGroup;
    if-eqz v8, :cond_9

    .line 408
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v8}, Lcom/htc/painting/engine/StrokeGroup;->getStrokes()Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v5}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v19

    .line 409
    .local v19, strokes:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/stroke/Stroke;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v5

    add-int v20, v20, v5

    .line 410
    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    aget-object v5, v13, v11

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    .end local v19           #strokes:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/engine/stroke/Stroke;>;"
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 425
    .end local v8           #group:Lcom/htc/painting/engine/StrokeGroup;
    :cond_a
    monitor-enter v18

    .line 426
    const/4 v11, 0x0

    :goto_5
    move/from16 v0, v20

    if-ge v11, v0, :cond_10

    .line 428
    if-eqz p5, :cond_b

    :try_start_0
    invoke-virtual/range {p5 .. p5}, Lcom/htc/painting/engine/InterruptRef;->isInterrupted()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 429
    new-instance v5, Lcom/htc/painting/engine/exception/PaintingException;

    const-string v6, " Painting interrupted!"

    invoke-direct {v5, v6}, Lcom/htc/painting/engine/exception/PaintingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 462
    :catchall_0
    move-exception v5

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 432
    :cond_b
    const/4 v15, 0x0

    .line 433
    .local v15, s:Lcom/htc/painting/engine/stroke/Stroke;
    const/16 v22, -0x1

    .line 434
    .local v22, zOrderIndex:I
    const/4 v12, 0x0

    .local v12, j:I
    :goto_6
    :try_start_1
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v5

    if-ge v12, v5, :cond_e

    .line 435
    if-nez v15, :cond_d

    const/4 v5, -0x1

    move/from16 v0, v22

    if-ne v0, v5, :cond_d

    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_d

    .line 437
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #s:Lcom/htc/painting/engine/stroke/Stroke;
    check-cast v15, Lcom/htc/painting/engine/stroke/Stroke;

    .line 438
    .restart local v15       #s:Lcom/htc/painting/engine/stroke/Stroke;
    move/from16 v22, v12

    .line 434
    :cond_c
    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 440
    :cond_d
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_c

    .line 441
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/painting/engine/stroke/Stroke;

    .line 442
    .local v16, s2:Lcom/htc/painting/engine/stroke/Stroke;
    invoke-virtual/range {v16 .. v16}, Lcom/htc/painting/engine/stroke/Stroke;->getCreationTime()J

    move-result-wide v5

    invoke-virtual {v15}, Lcom/htc/painting/engine/stroke/Stroke;->getCreationTime()J

    move-result-wide v23

    cmp-long v5, v5, v23

    if-gez v5, :cond_c

    .line 443
    move-object/from16 v15, v16

    .line 444
    move/from16 v22, v12

    goto :goto_7

    .line 451
    .end local v16           #s2:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_e
    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/StrokeGroup;

    .line 452
    .local v2, strokeGroup:Lcom/htc/painting/engine/StrokeGroup;
    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/engine/stroke/Stroke;

    .line 453
    .local v4, stroke:Lcom/htc/painting/engine/stroke/Stroke;
    move/from16 v0, v22

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Matrix;

    .line 454
    .local v7, m:Landroid/graphics/Matrix;
    if-eqz v2, :cond_f

    if-eqz v4, :cond_f

    if-eqz v7, :cond_f

    .line 455
    invoke-interface/range {p1 .. p1}, Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v3

    .line 456
    .local v3, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 457
    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual/range {v2 .. v7}, Lcom/htc/painting/engine/StrokeGroup;->draw(Landroid/graphics/Canvas;Lcom/htc/painting/engine/stroke/Stroke;IILandroid/graphics/Matrix;)V

    .line 459
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 426
    .end local v3           #canvas:Landroid/graphics/Canvas;
    :cond_f
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    .line 462
    .end local v2           #strokeGroup:Lcom/htc/painting/engine/StrokeGroup;
    .end local v4           #stroke:Lcom/htc/painting/engine/stroke/Stroke;
    .end local v7           #m:Landroid/graphics/Matrix;
    .end local v12           #j:I
    .end local v15           #s:Lcom/htc/painting/engine/stroke/Stroke;
    .end local v22           #zOrderIndex:I
    :cond_10
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public enableEraseMode(Z)V
    .locals 2
    .parameter "isEraser"

    .prologue
    .line 977
    new-instance v0, Lcom/htc/painting/engine/StrokeProperties;

    iget-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct {v0, v1}, Lcom/htc/painting/engine/StrokeProperties;-><init>(Lcom/htc/painting/engine/StrokeProperties;)V

    .line 978
    .local v0, p:Lcom/htc/painting/engine/StrokeProperties;
    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/StrokeProperties;->setEraser(Z)V

    .line 979
    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    .line 980
    return-void
.end method

.method public endRecordUndo()V
    .locals 1

    .prologue
    .line 846
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mBaseCompundEdit:Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;

    .line 847
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/painting/engine/HtcPainting;->isRecordUndo:Z

    .line 848
    return-void
.end method

.method public getActionCount()I
    .locals 1

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mUndoManager:Lcom/htc/painting/engine/undo/UndoManager;

    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/UndoManager;->getActionCount()I

    move-result v0

    return v0
.end method

.method getBoundingRectF(I)Landroid/graphics/RectF;
    .locals 2
    .parameter "groupId"

    .prologue
    .line 798
    invoke-virtual {p0, p1}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(I)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v0

    .line 799
    .local v0, group:Lcom/htc/painting/engine/StrokeGroup;
    if-eqz v0, :cond_0

    .line 800
    invoke-virtual {v0}, Lcom/htc/painting/engine/StrokeGroup;->getBoundingRectF()Landroid/graphics/RectF;

    move-result-object v1

    .line 802
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLastRedoAction()Lcom/htc/painting/engine/undo/UndoableEdit;
    .locals 1

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mUndoManager:Lcom/htc/painting/engine/undo/UndoManager;

    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/UndoManager;->getLastRedoAction()Lcom/htc/painting/engine/undo/UndoableEdit;

    move-result-object v0

    return-object v0
.end method

.method public getLastUndoAction()Lcom/htc/painting/engine/undo/UndoableEdit;
    .locals 1

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mUndoManager:Lcom/htc/painting/engine/undo/UndoManager;

    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/UndoManager;->getLastUndoAction()Lcom/htc/painting/engine/undo/UndoableEdit;

    move-result-object v0

    return-object v0
.end method

.method getRequestedStrokeGroupIds()[I
    .locals 1

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mRequestedGroupIds:[I

    return-object v0
.end method

.method public getStrokeColor()I
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v0}, Lcom/htc/painting/engine/StrokeProperties;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeGroup(I)Ljava/lang/ref/WeakReference;
    .locals 2
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/painting/engine/StrokeGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 744
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p1}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(I)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method getStrokeGroupCore(I)Lcom/htc/painting/engine/StrokeGroup;
    .locals 1
    .parameter "groupId"

    .prologue
    .line 711
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(IZ)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v0

    return-object v0
.end method

.method getStrokeGroupCore(IZ)Lcom/htc/painting/engine/StrokeGroup;
    .locals 6
    .parameter "groupId"
    .parameter "forceInflate"

    .prologue
    const/4 v2, 0x0

    .line 717
    if-gez p1, :cond_1

    .line 718
    const-string v3, "HtcPainting"

    const-string v4, "getStrokeGroupCore(null)"

    invoke-static {v3, v4}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    :cond_0
    :goto_0
    return-object v2

    .line 723
    :cond_1
    iget-object v3, p0, Lcom/htc/painting/engine/HtcPainting;->mReqGroupData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/util/Pair;

    .line 724
    .local v1, entry:Lcom/htc/painting/util/Pair;,"Lcom/htc/painting/util/Pair<Ljava/lang/Integer;Lcom/htc/painting/engine/ViewPort;>;"
    if-nez v1, :cond_2

    .line 725
    const-string v3, "HtcPainting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getStrokeGroupCore: trying to get a StrokeGroup that is no longer requested, skip operation : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 729
    :cond_2
    iget-object v3, p0, Lcom/htc/painting/engine/HtcPainting;->mCacheGroupKey:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 730
    .local v0, cacheKey:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/htc/painting/engine/HtcPainting;->mCacheGroups:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/StrokeGroup;

    .line 731
    .local v2, group:Lcom/htc/painting/engine/StrokeGroup;
    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    .line 732
    invoke-virtual {v1}, Lcom/htc/painting/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/engine/ViewPort;

    invoke-direct {p0, p1, v3}, Lcom/htc/painting/engine/HtcPainting;->loadStrokeGroupFromSerialDAO(ILcom/htc/painting/engine/ViewPort;)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v2

    goto :goto_0
.end method

.method getStrokeGroupCount()I
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mCacheGroupKey:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getStrokeGroupMemorySize(I)J
    .locals 3
    .parameter "groupId"

    .prologue
    .line 1128
    invoke-virtual {p0, p1}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(I)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v0

    .line 1129
    .local v0, group:Lcom/htc/painting/engine/StrokeGroup;
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Lcom/htc/painting/engine/StrokeGroup;->getStrokesMemorySize()J

    move-result-wide v1

    goto :goto_0
.end method

.method public getStrokeProperties()Lcom/htc/painting/engine/StrokeProperties;
    .locals 1

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    return-object v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v0}, Lcom/htc/painting/engine/StrokeProperties;->getWidth()F

    move-result v0

    return v0
.end method

.method public getUndoStepLimitation()I
    .locals 1

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mUndoManager:Lcom/htc/painting/engine/undo/UndoManager;

    invoke-static {}, Lcom/htc/painting/engine/undo/UndoManager;->getLimit()I

    move-result v0

    return v0
.end method

.method getViewPort(I)Lcom/htc/painting/engine/ViewPort;
    .locals 4
    .parameter "groupId"

    .prologue
    .line 822
    const/4 v1, 0x0

    .line 823
    .local v1, result:Lcom/htc/painting/engine/ViewPort;
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPainting;->mReqGroupData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/util/Pair;

    .line 824
    .local v0, entry:Lcom/htc/painting/util/Pair;,"Lcom/htc/painting/util/Pair<Ljava/lang/Integer;Lcom/htc/painting/engine/ViewPort;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/painting/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #result:Lcom/htc/painting/engine/ViewPort;
    check-cast v1, Lcom/htc/painting/engine/ViewPort;

    .line 826
    .restart local v1       #result:Lcom/htc/painting/engine/ViewPort;
    :cond_0
    return-object v1
.end method

.method isEnable()Z
    .locals 1

    .prologue
    .line 525
    iget-boolean v0, p0, Lcom/htc/painting/engine/HtcPainting;->mIsEnable:Z

    return v0
.end method

.method public isEraseMode()Z
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v0}, Lcom/htc/painting/engine/StrokeProperties;->isEraser()Z

    move-result v0

    return v0
.end method

.method isStrokeGroupClean(I)Z
    .locals 4
    .parameter "groupId"

    .prologue
    const/4 v1, 0x0

    .line 697
    if-gez p1, :cond_1

    .line 698
    const-string v2, "HtcPainting"

    const-string v3, "isStrokeGroupClean(null)"

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    :cond_0
    :goto_0
    return v1

    .line 701
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(I)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v0

    .line 702
    .local v0, group:Lcom/htc/painting/engine/StrokeGroup;
    if-eqz v0, :cond_0

    .line 703
    invoke-virtual {v0}, Lcom/htc/painting/engine/StrokeGroup;->isClean()Z

    move-result v1

    goto :goto_0
.end method

.method public isStrokeGroupModified(I)Z
    .locals 2
    .parameter "groupId"

    .prologue
    .line 1137
    invoke-virtual {p0, p1}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(I)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v0

    .line 1138
    .local v0, group:Lcom/htc/painting/engine/StrokeGroup;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/htc/painting/engine/StrokeGroup;->isModified()Z

    move-result v1

    goto :goto_0
.end method

.method loadStrokeGroup(ILcom/htc/painting/engine/ViewPort;)Lcom/htc/painting/engine/StrokeGroup;
    .locals 4
    .parameter "groupId"
    .parameter "viewport"

    .prologue
    .line 644
    if-gez p1, :cond_1

    .line 645
    const-string v2, "HtcPainting"

    const-string v3, "requestStrokeGroup(null)"

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const/4 v1, 0x0

    .line 657
    :cond_0
    :goto_0
    return-object v1

    .line 650
    :cond_1
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPainting;->mCacheGroupKey:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 652
    .local v0, cacheKey:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/htc/painting/engine/HtcPainting;->mCacheGroups:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/engine/StrokeGroup;

    .line 653
    .local v1, result:Lcom/htc/painting/engine/StrokeGroup;
    if-nez v1, :cond_0

    .line 656
    invoke-virtual {p0, p1}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(I)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v1

    .line 657
    goto :goto_0
.end method

.method redo()V
    .locals 1

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mUndoManager:Lcom/htc/painting/engine/undo/UndoManager;

    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/UndoManager;->canRedo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mUndoManager:Lcom/htc/painting/engine/undo/UndoManager;

    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/UndoManager;->redo()Z

    .line 1031
    :cond_0
    return-void
.end method

.method removeOnStrokeListener(Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1095
    :cond_0
    return-void
.end method

.method removeStrokeGroup(I)V
    .locals 4
    .parameter "groupId"

    .prologue
    .line 590
    if-gez p1, :cond_1

    .line 591
    const-string v0, "HtcPainting"

    const-string v1, "removeStrokeGroup(null)"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    sget-object v1, Lcom/htc/painting/engine/HtcPainting;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 595
    :try_start_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mCacheGroups:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/htc/painting/engine/HtcPainting;->mCacheGroupKey:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mSerializeDAO:Lcom/htc/painting/engine/AbsSerializeDAO;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/AbsSerializeDAO;->delete(I)V

    .line 598
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mReqGroupData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mReqGroupData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 596
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method removeStrokeGroups([I)V
    .locals 6
    .parameter "groupIds"

    .prologue
    .line 580
    if-nez p1, :cond_1

    .line 581
    const-string v4, "HtcPainting"

    const-string v5, "removeStrokeGroups(null)"

    invoke-static {v4, v5}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    :cond_0
    return-void

    .line 584
    :cond_1
    move-object v0, p1

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 585
    .local v1, groupId:I
    invoke-virtual {p0, v1}, Lcom/htc/painting/engine/HtcPainting;->removeStrokeGroup(I)V

    .line 584
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method requestStrokeGroups([I[Lcom/htc/painting/engine/ViewPort;)[Z
    .locals 7
    .parameter "groupIds"
    .parameter "viewports"

    .prologue
    .line 612
    const/4 v2, 0x0

    .line 613
    .local v2, result:[Z
    if-nez p1, :cond_0

    .line 614
    const-string v4, "HtcPainting"

    const-string v5, "requestStrokeGroups(null)"

    invoke-static {v4, v5}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    .line 635
    .end local v2           #result:[Z
    .local v3, result:[Z
    :goto_0
    return-object v3

    .line 617
    .end local v3           #result:[Z
    .restart local v2       #result:[Z
    :cond_0
    array-length v4, p1

    new-array v2, v4, [Z

    .line 619
    invoke-direct {p0, p1, p2}, Lcom/htc/painting/engine/HtcPainting;->updateReqSGData([I[Lcom/htc/painting/engine/ViewPort;)V

    .line 620
    invoke-virtual {p0, p1, p2}, Lcom/htc/painting/engine/HtcPainting;->setViewPorts([I[Lcom/htc/painting/engine/ViewPort;)Z

    .line 622
    const/4 v0, 0x0

    .line 623
    .local v0, group:Lcom/htc/painting/engine/StrokeGroup;
    const-string v4, "HtcPainting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "group count :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, p1

    if-ge v1, v4, :cond_2

    .line 626
    aget v4, p1, v1

    aget-object v5, p2, v1

    invoke-virtual {p0, v4, v5}, Lcom/htc/painting/engine/HtcPainting;->loadStrokeGroup(ILcom/htc/painting/engine/ViewPort;)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v0

    .line 627
    const-string v4, "HtcPainting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "group id :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, p1, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    if-eqz v0, :cond_1

    .line 629
    aget v4, p1, v1

    invoke-direct {p0, v4, v0}, Lcom/htc/painting/engine/HtcPainting;->addStrokeGroup(ILcom/htc/painting/engine/StrokeGroup;)Z

    move-result v4

    aput-boolean v4, v2, v1

    .line 624
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 631
    :cond_1
    const/4 v4, 0x0

    aput-boolean v4, v2, v1

    goto :goto_2

    :cond_2
    move-object v3, v2

    .line 635
    .end local v2           #result:[Z
    .restart local v3       #result:[Z
    goto :goto_0
.end method

.method requestStrokeGroupsAsync([I[Lcom/htc/painting/engine/ViewPort;ILcom/htc/painting/engine/IPaintingCallBack$IActionCallback;)V
    .locals 7
    .parameter "groupIds"
    .parameter "viewports"
    .parameter "key"
    .parameter "callback"

    .prologue
    .line 639
    iget-object v6, p0, Lcom/htc/painting/engine/HtcPainting;->mLoadHandler:Lcom/htc/painting/engine/RequestHandler;

    new-instance v0, Lcom/htc/painting/engine/Request$LoadStrokeGroupRequest;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/painting/engine/Request$LoadStrokeGroupRequest;-><init>(Lcom/htc/painting/engine/HtcPainting;[I[Lcom/htc/painting/engine/ViewPort;ILcom/htc/painting/engine/IPaintingCallBack$IActionCallback;)V

    invoke-virtual {v6, v0}, Lcom/htc/painting/engine/RequestHandler;->putRequest(Lcom/htc/painting/engine/Request;)V

    .line 641
    return-void
.end method

.method public saveGroup(IZ)V
    .locals 3
    .parameter "id"
    .parameter "saveIneffectiveStrokes"

    .prologue
    .line 1048
    invoke-virtual {p0, p1}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(I)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v0

    .line 1049
    .local v0, group:Lcom/htc/painting/engine/StrokeGroup;
    if-eqz v0, :cond_0

    .line 1050
    iget-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mSerializeDAO:Lcom/htc/painting/engine/AbsSerializeDAO;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p2}, Lcom/htc/painting/engine/StrokeGroup;->serialize(ZZ)[B

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/htc/painting/engine/AbsSerializeDAO;->save(I[B)V

    .line 1053
    :cond_0
    return-void
.end method

.method serialize(I)[B
    .locals 4
    .parameter "groupId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 273
    if-gez p1, :cond_1

    .line 275
    const-string v2, "HtcPainting"

    const-string v3, "serialize(null)"

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_0
    :goto_0
    return-object v1

    .line 279
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(I)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v0

    .line 280
    .local v0, group:Lcom/htc/painting/engine/StrokeGroup;
    if-eqz v0, :cond_0

    .line 281
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/engine/StrokeGroup;->serialize(ZZ)[B

    move-result-object v1

    goto :goto_0
.end method

.method public set(Lcom/htc/painting/tool/pen/Pen;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 933
    iput-object p1, p0, Lcom/htc/painting/engine/HtcPainting;->mPen:Lcom/htc/painting/tool/pen/Pen;

    .line 934
    return-void
.end method

.method setEnable(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 516
    iput-boolean p1, p0, Lcom/htc/painting/engine/HtcPainting;->mIsEnable:Z

    .line 517
    return-void
.end method

.method setOnStrokeListener(Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1086
    :cond_0
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 949
    new-instance v0, Lcom/htc/painting/engine/StrokeProperties;

    iget-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct {v0, v1}, Lcom/htc/painting/engine/StrokeProperties;-><init>(Lcom/htc/painting/engine/StrokeProperties;)V

    .line 950
    .local v0, p:Lcom/htc/painting/engine/StrokeProperties;
    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/StrokeProperties;->setColor(I)V

    .line 951
    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    .line 952
    return-void
.end method

.method setStrokeGroupEffective(IZ)Z
    .locals 4
    .parameter "groupId"
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 529
    if-gez p1, :cond_1

    .line 531
    const-string v2, "HtcPainting"

    const-string v3, "setDrawerGroupEnable(null)"

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    :cond_0
    :goto_0
    return v1

    .line 534
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(I)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v0

    .line 535
    .local v0, group:Lcom/htc/painting/engine/StrokeGroup;
    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {v0, p2}, Lcom/htc/painting/engine/StrokeGroup;->setEffective(Z)V

    .line 537
    const/4 v1, 0x1

    goto :goto_0
.end method

.method setStrokeGroupRotation(II)Z
    .locals 4
    .parameter "groupId"
    .parameter "degree"

    .prologue
    const/4 v1, 0x0

    .line 543
    if-gez p1, :cond_1

    .line 544
    const-string v2, "HtcPainting"

    const-string v3, "setStrokeGroupRotation(null)"

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :cond_0
    :goto_0
    return v1

    .line 547
    :cond_1
    if-ltz p2, :cond_2

    const/16 v2, 0x168

    if-lt p2, v2, :cond_3

    .line 548
    :cond_2
    const-string v2, "HtcPainting"

    const-string v3, " degree must >= 0 or < 360"

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 551
    :cond_3
    invoke-virtual {p0, p1}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(I)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v0

    .line 552
    .local v0, group:Lcom/htc/painting/engine/StrokeGroup;
    if-eqz v0, :cond_0

    .line 553
    invoke-direct {p0, v0, p2}, Lcom/htc/painting/engine/HtcPainting;->setStrokeGroupRotation(Lcom/htc/painting/engine/StrokeGroup;I)Z

    move-result v1

    goto :goto_0
.end method

.method public setStrokeProperties(Lcom/htc/painting/engine/StrokeProperties;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 995
    new-instance v0, Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct {v0, p1}, Lcom/htc/painting/engine/StrokeProperties;-><init>(Lcom/htc/painting/engine/StrokeProperties;)V

    .line 996
    .local v0, newP:Lcom/htc/painting/engine/StrokeProperties;
    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    .line 998
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 2
    .parameter "width"

    .prologue
    .line 967
    new-instance v0, Lcom/htc/painting/engine/StrokeProperties;

    iget-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct {v0, v1}, Lcom/htc/painting/engine/StrokeProperties;-><init>(Lcom/htc/painting/engine/StrokeProperties;)V

    .line 968
    .local v0, p:Lcom/htc/painting/engine/StrokeProperties;
    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/StrokeProperties;->setWidth(F)V

    .line 969
    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    .line 970
    return-void
.end method

.method setViewPorts([I[Lcom/htc/painting/engine/ViewPort;)Z
    .locals 4
    .parameter "groupIds"
    .parameter "viewPorts"

    .prologue
    .line 810
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_1

    .line 811
    :cond_0
    const/4 v2, 0x0

    .line 818
    :goto_0
    return v2

    .line 812
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 813
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(I)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v1

    .line 814
    .local v1, s:Lcom/htc/painting/engine/StrokeGroup;
    if-eqz v1, :cond_2

    .line 815
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Lcom/htc/painting/engine/StrokeGroup;->setViewPort(Lcom/htc/painting/engine/ViewPort;)V

    .line 812
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 818
    .end local v1           #s:Lcom/htc/painting/engine/StrokeGroup;
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public startRecordUndo()V
    .locals 2

    .prologue
    .line 836
    new-instance v0, Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;

    invoke-direct {v0}, Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mBaseCompundEdit:Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;

    .line 837
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/painting/engine/HtcPainting;->isRecordUndo:Z

    .line 838
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mUndoManager:Lcom/htc/painting/engine/undo/UndoManager;

    iget-object v1, p0, Lcom/htc/painting/engine/HtcPainting;->mBaseCompundEdit:Lcom/htc/painting/engine/undo/CompoundEdit$BaseCompoundEdit;

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/undo/UndoManager;->addEdit(Lcom/htc/painting/engine/undo/UndoableEdit;)Z

    .line 839
    return-void
.end method

.method public transformStroke(ILandroid/graphics/RectF;Landroid/graphics/Matrix;Lcom/htc/painting/engine/StrokeGroup$SelectMode;)Z
    .locals 2
    .parameter "groupId"
    .parameter "region"
    .parameter "transformMatrix"
    .parameter "mode"

    .prologue
    .line 1231
    invoke-virtual {p0, p1}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(I)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v0

    .line 1250
    .local v0, group:Lcom/htc/painting/engine/StrokeGroup;
    if-eqz v0, :cond_0

    .line 1251
    invoke-virtual {v0, p2, p3, p4}, Lcom/htc/painting/engine/StrokeGroup;->transformStroke(Landroid/graphics/RectF;Landroid/graphics/Matrix;Lcom/htc/painting/engine/StrokeGroup$SelectMode;)Z

    move-result v1

    .line 1253
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method undo()V
    .locals 1

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mUndoManager:Lcom/htc/painting/engine/undo/UndoManager;

    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/UndoManager;->canUndo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting;->mUndoManager:Lcom/htc/painting/engine/undo/UndoManager;

    invoke-virtual {v0}, Lcom/htc/painting/engine/undo/UndoManager;->undo()Z

    .line 1021
    :cond_0
    return-void
.end method
