.class Lcom/htc/app/FileScanner;
.super Ljava/lang/Object;
.source "FileScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/FileScanner$UpdateUiRunnable;
    }
.end annotation


# static fields
.field private static final MESSAGE_UPDATE_LIST_ITEM:I = 0xa5

.field private static final REFRESH_LIST_ITEM_DURATION:J = 0x7d0L

.field private static final ShowStorageType_PHONESTORAGE:I = 0x2

.field private static final ShowStorageType_SDCARD:I = 0x3

.field private static deleteEntries:Ljava/util/LinkedList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final recentLimitItems:I = 0x1f4


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private final debugLOG:Z

.field private duration:J

.field private favoriteAdapter:Lcom/htc/app/FilePickerListAdapter;

.field private isAddedRecentLists:Z

.field private isRecursive:Z

.field private isScanStop:Z

.field private isStop:Z

.field private final localLOGV:Z

.field private mAdapter:Lcom/htc/app/FilePickerListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDbHelper:Lcom/htc/app/FilePickerDBHelper;

.field private mDirs:[Ljava/lang/String;

.field private mFileCount:I

.field private mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

.field private mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

.field private mFileSorter:Lcom/htc/app/FileSorter;

.field private mFilter:[Ljava/lang/String;

.field private mFolderSorter:Lcom/htc/app/FileSorter;

.field private mGcPerCount:I

.field private mHandler:Landroid/os/Handler;

.field private mIsFirstToAdd:Z

.field private mRecentFiles:[Ljava/lang/String;

.field private mRecentFilesTime:[J

.field private final mScanToken:Ljava/lang/Object;

.field private mSearchFileCount:I

.field private final mSortToken:Ljava/lang/Object;

.field private recentAdapter:Lcom/htc/app/FilePickerListAdapter;

.field private updateUiRunnable:Lcom/htc/app/FileScanner$UpdateUiRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/htc/app/FileScanner;->deleteEntries:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/app/FilePickerListAdapter;[Ljava/lang/String;Lcom/htc/app/FilePickerDBHelper;)V
    .locals 4
    .parameter "context"
    .parameter "adapter"
    .parameter "filter"
    .parameter "dbhelper"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 167
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v1, p0, Lcom/htc/app/FileScanner;->DEBUG:Z

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FileScanner;->TAG:Ljava/lang/String;

    .line 33
    iput-boolean v1, p0, Lcom/htc/app/FileScanner;->localLOGV:Z

    .line 34
    iput-boolean v1, p0, Lcom/htc/app/FileScanner;->debugLOG:Z

    .line 65
    iput-object v2, p0, Lcom/htc/app/FileScanner;->mRecentFiles:[Ljava/lang/String;

    .line 66
    iput-object v2, p0, Lcom/htc/app/FileScanner;->mRecentFilesTime:[J

    .line 119
    iput-object v2, p0, Lcom/htc/app/FileScanner;->mDirs:[Ljava/lang/String;

    .line 139
    iput v1, p0, Lcom/htc/app/FileScanner;->mSearchFileCount:I

    .line 141
    iput-boolean v1, p0, Lcom/htc/app/FileScanner;->isStop:Z

    .line 143
    iput-boolean v1, p0, Lcom/htc/app/FileScanner;->isScanStop:Z

    .line 144
    iput-boolean v3, p0, Lcom/htc/app/FileScanner;->isRecursive:Z

    .line 145
    iput-boolean v3, p0, Lcom/htc/app/FileScanner;->mIsFirstToAdd:Z

    .line 184
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/htc/app/FileScanner;->mGcPerCount:I

    .line 186
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FileScanner;->mSortToken:Ljava/lang/Object;

    .line 193
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FileScanner;->mScanToken:Ljava/lang/Object;

    .line 390
    iput-boolean v1, p0, Lcom/htc/app/FileScanner;->isAddedRecentLists:Z

    .line 977
    new-instance v0, Lcom/htc/app/FileScanner$2;

    invoke-direct {v0, p0}, Lcom/htc/app/FileScanner$2;-><init>(Lcom/htc/app/FileScanner;)V

    iput-object v0, p0, Lcom/htc/app/FileScanner;->mHandler:Landroid/os/Handler;

    .line 168
    iput-object p2, p0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    .line 169
    iput-object p3, p0, Lcom/htc/app/FileScanner;->mFilter:[Ljava/lang/String;

    .line 170
    iput-object p1, p0, Lcom/htc/app/FileScanner;->mContext:Landroid/content/Context;

    .line 171
    new-instance v0, Lcom/htc/app/FileSorter;

    invoke-direct {v0}, Lcom/htc/app/FileSorter;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FileScanner;->mFolderSorter:Lcom/htc/app/FileSorter;

    .line 172
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mFolderSorter:Lcom/htc/app/FileSorter;

    invoke-virtual {v0, v1}, Lcom/htc/app/FileSorter;->setSortBy(I)V

    .line 173
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mFolderSorter:Lcom/htc/app/FileSorter;

    invoke-virtual {v0, v1}, Lcom/htc/app/FileSorter;->setSortOrder(I)V

    .line 180
    iput-object p4, p0, Lcom/htc/app/FileScanner;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    .line 182
    return-void
.end method

.method static synthetic access$100(Lcom/htc/app/FileScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/htc/app/FileScanner;->isStop:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/app/FileScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/htc/app/FileScanner;->isScanStop:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/app/FileScanner;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/app/FileScanner;)Lcom/htc/app/FileScanner$UpdateUiRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/app/FileScanner;->updateUiRunnable:Lcom/htc/app/FileScanner$UpdateUiRunnable;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/app/FileScanner;Lcom/htc/app/FileScanner$UpdateUiRunnable;)Lcom/htc/app/FileScanner$UpdateUiRunnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/htc/app/FileScanner;->updateUiRunnable:Lcom/htc/app/FileScanner$UpdateUiRunnable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/app/FileScanner;)Lcom/htc/app/FilePickerListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    return-object v0
.end method

.method private deleteUnavailableEntries()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 732
    sget-object v7, Lcom/htc/app/FileScanner;->deleteEntries:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    .line 733
    .local v5, listIt:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    const-string v4, ""

    .line 734
    .local v4, idListRecent:Ljava/lang/String;
    const-string v3, ""

    .line 735
    .local v3, idListFav:Ljava/lang/String;
    :goto_0
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 736
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 737
    .local v0, deleteEntry:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 738
    .local v6, table:I
    iget-object v7, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 739
    .local v2, id:I
    if-ne v6, v9, :cond_0

    .line 740
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 742
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 746
    .end local v0           #deleteEntry:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v2           #id:I
    .end local v6           #table:I
    :cond_1
    :try_start_0
    const-string v7, ""

    if-eq v4, v7, :cond_2

    .line 747
    const/4 v7, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 748
    iget-object v7, p0, Lcom/htc/app/FileScanner;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    const/4 v8, 0x1

    invoke-virtual {v7, v4, v8}, Lcom/htc/app/FilePickerDBHelper;->deleteMoreEntries(Ljava/lang/String;I)V

    .line 750
    :cond_2
    const-string v7, ""

    if-eq v3, v7, :cond_3

    .line 751
    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 752
    iget-object v7, p0, Lcom/htc/app/FileScanner;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    const/4 v8, 0x2

    invoke-virtual {v7, v3, v8}, Lcom/htc/app/FilePickerDBHelper;->deleteMoreEntries(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    :cond_3
    :goto_1
    return-void

    .line 754
    :catch_0
    move-exception v1

    .line 755
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "FilePickerWithDB"

    const-string v8, "#### mDbHelper.deleteMoreEntries() fail"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 885
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 898
    :cond_0
    invoke-virtual {p0}, Lcom/htc/app/FileScanner;->stopScan()V

    .line 899
    iput v2, p0, Lcom/htc/app/FileScanner;->mFileCount:I

    .line 900
    iput-boolean v2, p0, Lcom/htc/app/FileScanner;->isScanStop:Z

    .line 901
    iput v2, p0, Lcom/htc/app/FileScanner;->mSearchFileCount:I

    .line 902
    iput-boolean v2, p0, Lcom/htc/app/FileScanner;->isStop:Z

    .line 903
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/FileScanner;->mIsFirstToAdd:Z

    .line 904
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/htc/app/FileScanner;->mGcPerCount:I

    .line 905
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerListAdapter;->clear()V

    .line 906
    iput-boolean v2, p0, Lcom/htc/app/FileScanner;->isAddedRecentLists:Z

    .line 907
    new-instance v0, Lcom/htc/app/FileScanner$UpdateUiRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/app/FileScanner$UpdateUiRunnable;-><init>(Lcom/htc/app/FileScanner;Lcom/htc/app/FileScanner$1;)V

    iput-object v0, p0, Lcom/htc/app/FileScanner;->updateUiRunnable:Lcom/htc/app/FileScanner$UpdateUiRunnable;

    .line 908
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 909
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FileScanner;->updateUiRunnable:Lcom/htc/app/FileScanner$UpdateUiRunnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 910
    :cond_1
    return-void
.end method

.method private matchFilter(Ljava/lang/String;)Z
    .locals 7
    .parameter "fileName"

    .prologue
    const/4 v5, 0x1

    .line 717
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 719
    .local v2, filename:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/app/FileScanner;->mFilter:[Ljava/lang/String;

    if-nez v6, :cond_1

    .line 728
    :cond_0
    :goto_0
    return v5

    .line 723
    :cond_1
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mFilter:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 724
    .local v1, extension:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 723
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 728
    .end local v1           #extension:Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private scanFilesByFolder(Ljava/io/File;)V
    .locals 20
    .parameter "directory"

    .prologue
    .line 393
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/app/FileScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 394
    .local v5, filePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/app/FileScanner;->duration:J

    .line 395
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FileScanner;->isStop:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/htc/app/FilePickerUtil;->isAllowForder(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x2e

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 402
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/htc/app/FilePickerUtil;->checkFileCanScan(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 408
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v16

    .line 410
    .local v16, subList:[Ljava/lang/String;
    if-eqz v16, :cond_0

    .line 413
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FileScanner;->isStop:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 415
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/FileScanner;->mSearchFileCount:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/app/FileScanner;->mSearchFileCount:I

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 422
    :cond_3
    new-instance v15, Ljava/util/LinkedList;

    invoke-direct {v15}, Ljava/util/LinkedList;-><init>()V

    .line 423
    .local v15, subFolderList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/ItemInfo;>;"
    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    .line 425
    .local v14, subFileItemInfoList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/ItemInfo;>;"
    move-object/from16 v4, v16

    .local v4, arr$:[Ljava/lang/String;
    array-length v10, v4

    .local v10, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_1
    if-ge v8, v10, :cond_a

    aget-object v17, v4, v8

    .line 426
    .local v17, subStrFile:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FileScanner;->isStop:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 428
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-direct {v13, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 429
    .local v13, subFile:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 430
    invoke-static {v13}, Lcom/htc/app/ItemInfo;->getLocalFileInstance(Ljava/io/File;)Lcom/htc/app/ItemInfo;

    move-result-object v9

    .line 431
    .local v9, itemInfo:Lcom/htc/app/ItemInfo;
    invoke-virtual {v15, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 432
    invoke-virtual {v5}, Lcom/htc/app/FilePickerUtil;->isFolderPickerModeEnabled()Z

    move-result v18

    if-nez v18, :cond_5

    .line 425
    .end local v9           #itemInfo:Lcom/htc/app/ItemInfo;
    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 436
    :cond_5
    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-virtual {v5}, Lcom/htc/app/FilePickerUtil;->isFolderPickerModeEnabled()Z

    move-result v18

    if-eqz v18, :cond_8

    const/4 v3, 0x1

    .line 438
    .local v3, addFolderAsItem:Z
    :goto_3
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/htc/app/FilePickerUtil;->containExtension(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_6

    if-eqz v3, :cond_4

    .line 439
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FileScanner;->isStop:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 441
    invoke-static {v13}, Lcom/htc/app/ItemInfo;->getLocalFileInstance(Ljava/io/File;)Lcom/htc/app/ItemInfo;

    move-result-object v9

    .line 442
    .restart local v9       #itemInfo:Lcom/htc/app/ItemInfo;
    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 443
    invoke-virtual {v5}, Lcom/htc/app/FilePickerUtil;->isFolderPickerModeEnabled()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 444
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/htc/app/ItemInfo;->setIsFolder(Z)V

    .line 453
    :cond_7
    invoke-virtual {v14, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 436
    .end local v3           #addFolderAsItem:Z
    .end local v9           #itemInfo:Lcom/htc/app/ItemInfo;
    :cond_8
    const/4 v3, 0x0

    goto :goto_3

    .line 448
    .restart local v3       #addFolderAsItem:Z
    .restart local v9       #itemInfo:Lcom/htc/app/ItemInfo;
    :cond_9
    invoke-virtual {v5}, Lcom/htc/app/FilePickerUtil;->isFilePickerModeEnabled()Z

    move-result v18

    if-nez v18, :cond_7

    goto :goto_2

    .line 456
    .end local v3           #addFolderAsItem:Z
    .end local v9           #itemInfo:Lcom/htc/app/ItemInfo;
    .end local v13           #subFile:Ljava/io/File;
    .end local v17           #subStrFile:Ljava/lang/String;
    :cond_a
    const/16 v16, 0x0

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/app/FilePickerListAdapter;->IsEnabledGroupByPath()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 460
    invoke-static/range {p1 .. p1}, Lcom/htc/app/ItemInfo;->getLocalFileInstance(Ljava/io/File;)Lcom/htc/app/ItemInfo;

    move-result-object v6

    .line 461
    .local v6, folder:Lcom/htc/app/ItemInfo;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FileScanner;->mIsFirstToAdd:Z

    move/from16 v18, v0

    if-eqz v18, :cond_f

    .line 462
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FileScanner;->isAddedRecentLists:Z

    move/from16 v18, v0

    if-nez v18, :cond_e

    .line 463
    invoke-virtual {v5}, Lcom/htc/app/FilePickerUtil;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/htc/app/ItemInfo;->getItemTextPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 464
    .local v7, headerText:Ljava/lang/String;
    sget-object v18, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 465
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 476
    .end local v7           #headerText:Ljava/lang/String;
    :cond_b
    :goto_4
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/app/FileScanner;->mIsFirstToAdd:Z

    .line 486
    .end local v6           #folder:Lcom/htc/app/ItemInfo;
    :cond_c
    :goto_5
    if-eqz v14, :cond_10

    invoke-virtual {v14}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_10

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mFolderSorter:Lcom/htc/app/FileSorter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 488
    invoke-virtual {v14}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/app/ItemInfo;

    .line 489
    .restart local v9       #itemInfo:Lcom/htc/app/ItemInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/htc/app/FilePickerListAdapter;->add(Lcom/htc/app/ItemInfo;)V

    .line 491
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/FileScanner;->mFileCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/app/FileScanner;->mFileCount:I

    goto :goto_6

    .line 471
    .end local v9           #itemInfo:Lcom/htc/app/ItemInfo;
    .restart local v6       #folder:Lcom/htc/app/ItemInfo;
    .local v8, i$:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/htc/app/FilePickerListAdapter;->add(Lcom/htc/app/ItemInfo;)V

    .line 473
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/FileScanner;->mFileCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/app/FileScanner;->mFileCount:I

    goto :goto_4

    .line 478
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/htc/app/FilePickerListAdapter;->add(Lcom/htc/app/ItemInfo;)V

    .line 480
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/FileScanner;->mFileCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/app/FileScanner;->mFileCount:I

    goto/16 :goto_5

    .line 495
    .end local v6           #folder:Lcom/htc/app/ItemInfo;
    .end local v8           #i$:I
    :cond_10
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v11

    .line 504
    .local v11, scanEnd:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FileScanner;->isRecursive:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 505
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_0

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mFolderSorter:Lcom/htc/app/FileSorter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 508
    invoke-virtual {v15}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/app/ItemInfo;

    .line 509
    .restart local v9       #itemInfo:Lcom/htc/app/ItemInfo;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FileScanner;->isStop:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 511
    new-instance v18, Ljava/io/File;

    invoke-virtual {v9}, Lcom/htc/app/ItemInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/htc/app/FileScanner;->scanFilesByFolder(Ljava/io/File;)V

    goto :goto_7

    .line 513
    .end local v9           #itemInfo:Lcom/htc/app/ItemInfo;
    :cond_11
    invoke-virtual {v15}, Ljava/util/LinkedList;->clear()V

    goto/16 :goto_0
.end method

.method private scanFilesByType(Ljava/io/File;)V
    .locals 21
    .parameter "directory"

    .prologue
    .line 763
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/app/FileScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 764
    .local v6, filePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/app/FileScanner;->duration:J

    .line 765
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FileScanner;->isStop:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 879
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    if-eqz v6, :cond_0

    .line 770
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/htc/app/FilePickerUtil;->isAllowForder(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x2e

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 774
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/htc/app/FilePickerUtil;->checkFileCanScan(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 777
    invoke-virtual {v6}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v5

    .line 778
    .local v5, dataSourceType:I
    const/16 v19, -0x9

    move/from16 v0, v19

    if-eq v5, v0, :cond_4

    .line 779
    const/16 v19, -0x3

    move/from16 v0, v19

    if-ne v5, v0, :cond_3

    .line 780
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/htc/app/FilePickerUtil;->getLocalItemType(Ljava/lang/String;)I

    move-result v11

    .line 781
    .local v11, localItemType:I
    const/16 v19, -0x3

    move/from16 v0, v19

    if-ne v11, v0, :cond_0

    .line 785
    .end local v11           #localItemType:I
    :cond_3
    const/16 v19, -0x2

    move/from16 v0, v19

    if-ne v5, v0, :cond_4

    .line 786
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/htc/app/FilePickerUtil;->getLocalItemType(Ljava/lang/String;)I

    move-result v11

    .line 787
    .restart local v11       #localItemType:I
    const/16 v19, -0x2

    move/from16 v0, v19

    if-ne v11, v0, :cond_0

    .line 794
    .end local v11           #localItemType:I
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v17

    .line 796
    .local v17, subList:[Ljava/lang/String;
    if-eqz v17, :cond_0

    .line 799
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FileScanner;->isStop:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 801
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/FileScanner;->mSearchFileCount:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/app/FileScanner;->mSearchFileCount:I

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 808
    :cond_5
    new-instance v16, Ljava/util/LinkedList;

    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedList;-><init>()V

    .line 809
    .local v16, subFolderList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/ItemInfo;>;"
    new-instance v15, Ljava/util/LinkedList;

    invoke-direct {v15}, Ljava/util/LinkedList;-><init>()V

    .line 810
    .local v15, subFileItemInfoList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/ItemInfo;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/htc/app/FilePickerUtil;->getLocalItemType(Ljava/lang/String;)I

    move-result v9

    .line 811
    .local v9, itemType:I
    move-object/from16 v4, v17

    .local v4, arr$:[Ljava/lang/String;
    array-length v10, v4

    .local v10, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_1
    if-ge v7, v10, :cond_c

    aget-object v18, v4, v7

    .line 812
    .local v18, subStrFile:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FileScanner;->isStop:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 814
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 815
    .local v14, subFile:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 816
    invoke-static {v14}, Lcom/htc/app/ItemInfo;->getLocalFileInstance(Ljava/io/File;)Lcom/htc/app/ItemInfo;

    move-result-object v8

    .line 817
    .local v8, itemInfo:Lcom/htc/app/ItemInfo;
    invoke-virtual {v8, v9}, Lcom/htc/app/ItemInfo;->setItemDataSourceType(I)V

    .line 818
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 819
    invoke-virtual {v6}, Lcom/htc/app/FilePickerUtil;->isFolderPickerModeEnabled()Z

    move-result v19

    if-nez v19, :cond_7

    .line 811
    .end local v8           #itemInfo:Lcom/htc/app/ItemInfo;
    :cond_6
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 823
    :cond_7
    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-virtual {v6}, Lcom/htc/app/FilePickerUtil;->isFolderPickerModeEnabled()Z

    move-result v19

    if-eqz v19, :cond_a

    const/4 v3, 0x1

    .line 825
    .local v3, addFolderAsItem:Z
    :goto_3
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/htc/app/FilePickerUtil;->containExtension(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_8

    if-eqz v3, :cond_6

    .line 826
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FileScanner;->isStop:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 828
    invoke-static {v14}, Lcom/htc/app/ItemInfo;->getLocalFileInstance(Ljava/io/File;)Lcom/htc/app/ItemInfo;

    move-result-object v8

    .line 829
    .restart local v8       #itemInfo:Lcom/htc/app/ItemInfo;
    invoke-virtual {v8, v9}, Lcom/htc/app/ItemInfo;->setItemDataSourceType(I)V

    .line 830
    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v19

    if-eqz v19, :cond_b

    .line 831
    invoke-virtual {v6}, Lcom/htc/app/FilePickerUtil;->isFolderPickerModeEnabled()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 832
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/htc/app/ItemInfo;->setIsFolder(Z)V

    .line 841
    :cond_9
    invoke-virtual {v15, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 823
    .end local v3           #addFolderAsItem:Z
    .end local v8           #itemInfo:Lcom/htc/app/ItemInfo;
    :cond_a
    const/4 v3, 0x0

    goto :goto_3

    .line 836
    .restart local v3       #addFolderAsItem:Z
    .restart local v8       #itemInfo:Lcom/htc/app/ItemInfo;
    :cond_b
    invoke-virtual {v6}, Lcom/htc/app/FilePickerUtil;->isFilePickerModeEnabled()Z

    move-result v19

    if-nez v19, :cond_9

    goto :goto_2

    .line 844
    .end local v3           #addFolderAsItem:Z
    .end local v8           #itemInfo:Lcom/htc/app/ItemInfo;
    .end local v14           #subFile:Ljava/io/File;
    .end local v18           #subStrFile:Ljava/lang/String;
    :cond_c
    const/16 v17, 0x0

    .line 847
    if-eqz v15, :cond_e

    invoke-virtual {v15}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_e

    .line 849
    invoke-virtual {v15}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/app/ItemInfo;

    .line 850
    .restart local v8       #itemInfo:Lcom/htc/app/ItemInfo;
    invoke-virtual {v8, v9}, Lcom/htc/app/ItemInfo;->setItemDataSourceType(I)V

    .line 851
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FileScanner;->isStop:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    .line 854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/htc/app/FilePickerListAdapter;->putItemToMapByType(Lcom/htc/app/ItemInfo;)V

    .line 855
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/FileScanner;->mFileCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/app/FileScanner;->mFileCount:I

    goto :goto_4

    .line 859
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #itemInfo:Lcom/htc/app/ItemInfo;
    :cond_e
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v12

    .line 868
    .local v12, scanEnd:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FileScanner;->isRecursive:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 869
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_0

    .line 872
    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/app/ItemInfo;

    .line 873
    .restart local v8       #itemInfo:Lcom/htc/app/ItemInfo;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/FileScanner;->isStop:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 875
    new-instance v19, Ljava/io/File;

    invoke-virtual {v8}, Lcom/htc/app/ItemInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/app/FileScanner;->scanFilesByType(Ljava/io/File;)V

    goto :goto_5

    .line 877
    .end local v8           #itemInfo:Lcom/htc/app/ItemInfo;
    :cond_f
    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->clear()V

    goto/16 :goto_0
.end method

.method private sortByComparator(Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .parameter "unsortMap"

    .prologue
    .line 695
    new-instance v3, Ljava/util/LinkedList;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 698
    .local v3, list:Ljava/util/List;
    new-instance v0, Lcom/htc/app/FileScanner$1;

    invoke-direct {v0, p0}, Lcom/htc/app/FileScanner$1;-><init>(Lcom/htc/app/FileScanner;)V

    .line 705
    .local v0, cp1:Ljava/util/Comparator;
    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 708
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 709
    .local v4, sortedMap:Ljava/util/Map;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 710
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 711
    .local v1, entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 713
    .end local v1           #entry:Ljava/util/Map$Entry;
    :cond_0
    return-object v4
.end method


# virtual methods
.method close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 948
    invoke-virtual {p0}, Lcom/htc/app/FileScanner;->stopScan()V

    .line 949
    iput-object v0, p0, Lcom/htc/app/FileScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 950
    iput-object v0, p0, Lcom/htc/app/FileScanner;->mHandler:Landroid/os/Handler;

    .line 951
    iput-object v0, p0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    .line 952
    iput-object v0, p0, Lcom/htc/app/FileScanner;->mContext:Landroid/content/Context;

    .line 953
    return-void
.end method

.method public getFileCount()I
    .locals 1

    .prologue
    .line 918
    iget v0, p0, Lcom/htc/app/FileScanner;->mFileCount:I

    return v0
.end method

.method public getFilePickerCloudHelper()Lcom/htc/app/FilePickerCloudHelper;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    return-object v0
.end method

.method public getRecentFiles()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mRecentFiles:[Ljava/lang/String;

    return-object v0
.end method

.method public getRecentFilesTime()[J
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mRecentFilesTime:[J

    return-object v0
.end method

.method public getSerachFileCount()I
    .locals 1

    .prologue
    .line 927
    iget v0, p0, Lcom/htc/app/FileScanner;->mSearchFileCount:I

    return v0
.end method

.method isStopScan()Z
    .locals 1

    .prologue
    .line 931
    iget-boolean v0, p0, Lcom/htc/app/FileScanner;->isStop:Z

    return v0
.end method

.method public run()V
    .locals 17

    .prologue
    .line 201
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/app/FileScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 202
    .local v4, filePickerUtil:Lcom/htc/app/FilePickerUtil;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/app/FileScanner;->mScanToken:Ljava/lang/Object;

    monitor-enter v14

    .line 204
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/htc/app/FileScanner;->init()V

    .line 205
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/htc/app/FileScanner;->duration:J

    .line 207
    invoke-virtual {v4}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v2

    .line 210
    .local v2, dataSourceType:I
    invoke-static {v2}, Lcom/htc/app/FilePickerUtil;->isLocalDataSourceType(I)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 211
    const/4 v7, 0x1

    .line 213
    .local v7, isScanningByType:Z
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/app/FileScanner;->isStop:Z

    if-eqz v13, :cond_0

    .line 214
    monitor-exit v14

    .line 269
    .end local v7           #isScanningByType:Z
    :goto_0
    return-void

    .line 222
    .restart local v7       #isScanningByType:Z
    :cond_0
    sparse-switch v2, :sswitch_data_0

    .line 245
    .end local v7           #isScanningByType:Z
    :cond_1
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/app/FileScanner;->isScanStop:Z

    .line 248
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v11

    .line 258
    .local v11, scanEnd:J
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/app/FileScanner;->isStop:Z

    if-nez v13, :cond_3

    .line 259
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v13, :cond_2

    .line 260
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 261
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v13}, Lcom/htc/app/FilePickerListAdapter;->NotifyFileScanEnd()V

    .line 262
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v13}, Lcom/htc/app/FilePickerListAdapter;->IsEnabledGroupByPath()Z

    move-result v13

    if-nez v13, :cond_2

    .line 263
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v13}, Lcom/htc/app/FilePickerListAdapter;->sort()V

    .line 265
    :cond_2
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/app/FileScanner;->isStop:Z

    .line 267
    :cond_3
    monitor-exit v14

    goto :goto_0

    .end local v2           #dataSourceType:I
    .end local v11           #scanEnd:J
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 226
    .restart local v2       #dataSourceType:I
    .restart local v7       #isScanningByType:Z
    :sswitch_0
    :try_start_1
    invoke-static {v2}, Lcom/htc/app/FilePickerUtil;->getScanningPathByDataType(I)[Ljava/lang/String;

    move-result-object v10

    .line 227
    .local v10, rootPath:[Ljava/lang/String;
    move-object v1, v10

    .local v1, arr$:[Ljava/lang/String;
    array-length v8, v1

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v8, :cond_1

    aget-object v9, v1, v6

    .line 228
    .local v9, path:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    .local v5, folder:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v13

    if-eqz v13, :cond_4

    .line 231
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/htc/app/FileScanner;->scanFilesByType(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    .line 227
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 232
    :catch_0
    move-exception v3

    .line 233
    .local v3, e:Ljava/lang/OutOfMemoryError;
    :try_start_3
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 234
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/app/FileScanner;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "OutOfMemoryError:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/htc/app/FileScanner;->stopScan()V

    .line 236
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 222
    nop

    :sswitch_data_0
    .sparse-switch
        -0x9 -> :sswitch_0
        -0x3 -> :sswitch_0
        -0x2 -> :sswitch_0
    .end sparse-switch
.end method

.method scanFilesByFavorite()V
    .locals 24

    .prologue
    .line 610
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/app/FileScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 611
    .local v10, filePickerUtil:Lcom/htc/app/FilePickerUtil;
    const-string v21, "FilePickerWithDB"

    const-string v22, "#### loadFavoriteFiles"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v21, v0

    const/16 v22, 0x5

    invoke-virtual/range {v21 .. v22}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 614
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    move-object/from16 v21, v0

    if-nez v21, :cond_2

    .line 692
    :cond_1
    :goto_0
    return-void

    .line 617
    :cond_2
    const/4 v4, 0x0

    .line 618
    .local v4, cursor:Landroid/database/Cursor;
    const/16 v19, 0x2

    .line 619
    .local v19, table:I
    invoke-virtual {v10}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v3

    .line 622
    .local v3, ShowStorageType:I
    sparse-switch v3, :sswitch_data_0

    .line 634
    :goto_1
    if-eqz v4, :cond_3

    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v21

    if-eqz v21, :cond_5

    .line 683
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/app/FilePickerListAdapter;->NotifyFileScanEnd()V

    .line 689
    :cond_4
    if-eqz v4, :cond_1

    .line 690
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 624
    :sswitch_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerDBHelper;->getAll(I)Landroid/database/Cursor;

    move-result-object v4

    .line 625
    goto :goto_1

    .line 627
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/htc/app/FilePickerDBHelper;->getAllByStorageType(II)Landroid/database/Cursor;

    move-result-object v4

    .line 628
    goto :goto_1

    .line 630
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/htc/app/FilePickerDBHelper;->getAllByStorageType(II)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_1

    .line 638
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/app/FilePickerListAdapter;->clearmItemsTimeMap()V

    .line 639
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .line 646
    .local v16, rows_num:I
    if-lez v16, :cond_b

    .line 652
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 654
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    move/from16 v0, v16

    if-ge v11, v0, :cond_a

    .line 655
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 656
    .local v12, id:I
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 657
    .local v9, fileName:Ljava/lang/String;
    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 658
    .local v15, path:Ljava/lang/String;
    const/16 v21, 0x5

    move/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 659
    .local v18, storageType:Ljava/lang/String;
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 660
    .local v17, selFile:Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->lastModified()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Lcom/htc/app/FilePickerRecentUtil;->getRecentGroup(J)I

    move-result v20

    .line 661
    .local v20, timeGroup:I
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v7

    .line 662
    .local v7, fileIsExist:Z
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/htc/app/FileScanner;->matchFilter(Ljava/lang/String;)Z

    move-result v8

    .line 663
    .local v8, fileIsMatchFilter:Z
    const-string v21, "FilePickerWithDB"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "####  fileIsExist: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    if-eqz v7, :cond_7

    if-eqz v8, :cond_7

    .line 665
    invoke-static/range {v17 .. v17}, Lcom/htc/app/ItemInfo;->getLocalFileInstance(Ljava/io/File;)Lcom/htc/app/ItemInfo;

    move-result-object v13

    .line 666
    .local v13, item:Lcom/htc/app/ItemInfo;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/htc/app/ItemInfo;->setFavorite(Z)V

    .line 667
    invoke-static {v15}, Lcom/htc/app/FilePickerUtil;->getLocalItemType(Ljava/lang/String;)I

    move-result v14

    .line 668
    .local v14, itemType:I
    invoke-virtual {v13, v14}, Lcom/htc/app/ItemInfo;->setItemDataSourceType(I)V

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Lcom/htc/app/FilePickerListAdapter;->putItemToMapByTime(Lcom/htc/app/ItemInfo;I)V

    .line 676
    .end local v13           #item:Lcom/htc/app/ItemInfo;
    .end local v14           #itemType:I
    :cond_6
    :goto_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 654
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 670
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    move-object/from16 v21, v0

    const-string v21, "STORAGE_TYPE_INTERNAL"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    move-object/from16 v21, v0

    sget-object v21, Lcom/htc/app/FilePickerDBHelper;->sdCardID:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 673
    :cond_8
    new-instance v5, Landroid/util/Pair;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v5, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 674
    .local v5, deleteEntry:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    sget-object v21, Lcom/htc/app/FileScanner;->deleteEntries:Ljava/util/LinkedList;

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 680
    .end local v5           #deleteEntry:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v7           #fileIsExist:Z
    .end local v8           #fileIsMatchFilter:Z
    .end local v9           #fileName:Ljava/lang/String;
    .end local v11           #i:I
    .end local v12           #id:I
    .end local v15           #path:Ljava/lang/String;
    .end local v16           #rows_num:I
    .end local v17           #selFile:Ljava/io/File;
    .end local v18           #storageType:Ljava/lang/String;
    .end local v20           #timeGroup:I
    :catch_0
    move-exception v6

    .line 681
    .local v6, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v21, v0

    if-eqz v21, :cond_9

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/app/FilePickerListAdapter;->NotifyFileScanEnd()V

    .line 689
    :cond_9
    if-eqz v4, :cond_1

    .line 690
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 678
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v11       #i:I
    .restart local v16       #rows_num:I
    :cond_a
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/htc/app/FileScanner;->deleteUnavailableEntries()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 683
    .end local v11           #i:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v21, v0

    if-eqz v21, :cond_c

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/app/FilePickerListAdapter;->NotifyFileScanEnd()V

    .line 689
    :cond_c
    if-eqz v4, :cond_1

    .line 690
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 683
    .end local v16           #rows_num:I
    :catchall_0
    move-exception v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v22, v0

    if-eqz v22, :cond_d

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/app/FilePickerListAdapter;->NotifyFileScanEnd()V

    .line 689
    :cond_d
    if-eqz v4, :cond_e

    .line 690
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v21

    .line 622
    :sswitch_data_0
    .sparse-switch
        -0x9 -> :sswitch_0
        -0x3 -> :sswitch_2
        -0x2 -> :sswitch_1
    .end sparse-switch
.end method

.method scanFilesByRecent()V
    .locals 26

    .prologue
    .line 519
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/app/FileScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 520
    .local v10, filePickerUtil:Lcom/htc/app/FilePickerUtil;
    const-string v23, "FilePickerWithDB"

    const-string v24, "#### loadRecentFiles"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v23, v0

    const/16 v24, 0x5

    invoke-virtual/range {v23 .. v24}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 523
    :cond_0
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 529
    .local v18, mapRecent:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v3, 0x0

    .line 530
    .local v3, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mRecentFiles:[Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mRecentFiles:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v3, v0

    .line 532
    :cond_1
    const/4 v4, 0x0

    .line 533
    .local v4, countTime:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mRecentFilesTime:[J

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mRecentFilesTime:[J

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v4, v0

    .line 536
    :cond_2
    if-lez v3, :cond_c

    if-ne v3, v4, :cond_c

    .line 537
    const-string v23, "FilePickerWithDB"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "####  mRecentFiles.length: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mRecentFiles:[Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const-string v23, "FilePickerWithDB"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "####  mRecentFilesTime.length: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mRecentFilesTime:[J

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/app/FilePickerListAdapter;->clearmItemsTimeMap()V

    .line 541
    invoke-virtual {v10}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v5

    .line 543
    .local v5, dataSourceType:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mRecentFiles:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v11, v0, :cond_7

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mRecentFiles:[Ljava/lang/String;

    move-object/from16 v23, v0

    aget-object v23, v23, v11

    if-eqz v23, :cond_3

    const-string v23, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mRecentFiles:[Ljava/lang/String;

    move-object/from16 v24, v0

    aget-object v24, v24, v11

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mRecentFiles:[Ljava/lang/String;

    move-object/from16 v24, v0

    aget-object v24, v24, v11

    invoke-static/range {v23 .. v24}, Lcom/htc/app/FilePickerCloudHelper;->isCloudFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 543
    :cond_3
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 548
    :cond_4
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mRecentFiles:[Ljava/lang/String;

    move-object/from16 v23, v0

    aget-object v23, v23, v11

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 549
    .local v20, selFile:Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v9

    .line 550
    .local v9, fileIsExist:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mRecentFiles:[Ljava/lang/String;

    move-object/from16 v23, v0

    aget-object v23, v23, v11

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    .line 551
    .local v8, fileIsDuplicate:Z
    const-string v23, "FilePickerWithDB"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "####  fileIsExist: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    if-eqz v9, :cond_3

    if-nez v8, :cond_3

    .line 553
    const/16 v23, -0x9

    move/from16 v0, v23

    if-eq v5, v0, :cond_6

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mRecentFiles:[Ljava/lang/String;

    move-object/from16 v23, v0

    aget-object v23, v23, v11

    invoke-static/range {v23 .. v23}, Lcom/htc/app/FilePickerUtil;->getLocalItemType(Ljava/lang/String;)I

    move-result v17

    .line 555
    .local v17, localItemType:I
    const-string v23, "FilePickerWithDB"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "####  recent mRecentFiles["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "]: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mRecentFiles:[Ljava/lang/String;

    move-object/from16 v25, v0

    aget-object v25, v25, v11

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const-string v23, "FilePickerWithDB"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "####  recent localItemType: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const-string v23, "FilePickerWithDB"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "####  recent dataSourceType: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/16 v23, -0x3

    move/from16 v0, v23

    if-ne v5, v0, :cond_5

    move/from16 v0, v17

    if-eq v0, v5, :cond_5

    .line 561
    const-string v23, "FilePickerWithDB"

    const-string v24, "#### case 1"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 563
    :cond_5
    const/16 v23, -0x2

    move/from16 v0, v23

    if-ne v5, v0, :cond_6

    move/from16 v0, v17

    if-eq v0, v5, :cond_6

    .line 565
    const-string v23, "FilePickerWithDB"

    const-string v24, "#### case 2"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 569
    .end local v17           #localItemType:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mRecentFiles:[Ljava/lang/String;

    move-object/from16 v23, v0

    aget-object v23, v23, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mRecentFilesTime:[J

    move-object/from16 v24, v0

    aget-wide v24, v24, v11

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 572
    .end local v8           #fileIsDuplicate:Z
    .end local v9           #fileIsExist:Z
    .end local v20           #selFile:Ljava/io/File;
    :cond_7
    const-string v23, "FilePickerWithDB"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "####  mapRecent: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->size()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/htc/app/FileScanner;->sortByComparator(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v18

    .line 575
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->size()I

    move-result v23

    const/16 v24, 0x1f4

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_9

    const/16 v21, 0x1f4

    .line 577
    .local v21, show_num:I
    :goto_2
    new-instance v16, Ljava/util/LinkedList;

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 578
    .local v16, list:Ljava/util/List;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 580
    .local v13, it:Ljava/util/Iterator;
    const/4 v11, 0x0

    :goto_3
    move/from16 v0, v21

    if-ge v11, v0, :cond_a

    .line 581
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 582
    .local v7, entry:Ljava/util/Map$Entry;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 583
    .local v19, path:Ljava/lang/String;
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 584
    .restart local v20       #selFile:Ljava/io/File;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Lcom/htc/app/FilePickerRecentUtil;->getRecentGroup(J)I

    move-result v22

    .line 586
    .local v22, timeGroup:I
    invoke-static/range {v20 .. v20}, Lcom/htc/app/ItemInfo;->getLocalFileInstance(Ljava/io/File;)Lcom/htc/app/ItemInfo;

    move-result-object v14

    .line 587
    .local v14, item:Lcom/htc/app/ItemInfo;
    invoke-static/range {v19 .. v19}, Lcom/htc/app/FilePickerUtil;->getLocalItemType(Ljava/lang/String;)I

    move-result v15

    .line 588
    .local v15, itemType:I
    invoke-virtual {v14, v15}, Lcom/htc/app/ItemInfo;->setItemDataSourceType(I)V

    .line 589
    const/4 v12, 0x0

    .line 590
    .local v12, isFavoriteItem:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    move-object/from16 v23, v0

    if-eqz v23, :cond_8

    .line 592
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mDbHelper:Lcom/htc/app/FilePickerDBHelper;

    move-object/from16 v24, v0

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerDBHelper;->IsFavFilePath(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 598
    :cond_8
    :goto_4
    invoke-virtual {v14, v12}, Lcom/htc/app/ItemInfo;->setFavorite(Z)V

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v14, v1}, Lcom/htc/app/FilePickerListAdapter;->putItemToMapByTime(Lcom/htc/app/ItemInfo;I)V

    .line 580
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 575
    .end local v7           #entry:Ljava/util/Map$Entry;
    .end local v12           #isFavoriteItem:Z
    .end local v13           #it:Ljava/util/Iterator;
    .end local v14           #item:Lcom/htc/app/ItemInfo;
    .end local v15           #itemType:I
    .end local v16           #list:Ljava/util/List;
    .end local v19           #path:Ljava/lang/String;
    .end local v20           #selFile:Ljava/io/File;
    .end local v21           #show_num:I
    .end local v22           #timeGroup:I
    :cond_9
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->size()I

    move-result v21

    goto :goto_2

    .line 593
    .restart local v7       #entry:Ljava/util/Map$Entry;
    .restart local v12       #isFavoriteItem:Z
    .restart local v13       #it:Ljava/util/Iterator;
    .restart local v14       #item:Lcom/htc/app/ItemInfo;
    .restart local v15       #itemType:I
    .restart local v16       #list:Ljava/util/List;
    .restart local v19       #path:Ljava/lang/String;
    .restart local v20       #selFile:Ljava/io/File;
    .restart local v21       #show_num:I
    .restart local v22       #timeGroup:I
    :catch_0
    move-exception v6

    .line 594
    .local v6, e:Ljava/lang/Exception;
    const-string v23, "FilePickerWithDB"

    const-string v24, "#### mDbHelper.isFavChanged() fail"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 601
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #entry:Ljava/util/Map$Entry;
    .end local v12           #isFavoriteItem:Z
    .end local v14           #item:Lcom/htc/app/ItemInfo;
    .end local v15           #itemType:I
    .end local v19           #path:Ljava/lang/String;
    .end local v20           #selFile:Ljava/io/File;
    .end local v22           #timeGroup:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/app/FilePickerListAdapter;->NotifyFileScanEnd()V

    .line 607
    .end local v5           #dataSourceType:I
    .end local v11           #i:I
    .end local v13           #it:Ljava/util/Iterator;
    .end local v16           #list:Ljava/util/List;
    .end local v21           #show_num:I
    :cond_b
    :goto_5
    return-void

    .line 602
    :cond_c
    if-nez v3, :cond_d

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FileScanner;->mAdapter:Lcom/htc/app/FilePickerListAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/app/FilePickerListAdapter;->NotifyFileScanEnd()V

    goto :goto_5

    .line 604
    :cond_d
    if-eq v3, v4, :cond_b

    if-eqz v3, :cond_b

    .line 605
    new-instance v23, Ljava/lang/RuntimeException;

    const-string v24, "The number of recent files & time don\'t match."

    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23
.end method

.method setFavoriteAdapter(Lcom/htc/app/FilePickerListAdapter;)V
    .locals 0
    .parameter "favoriteAdapter"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/htc/app/FileScanner;->favoriteAdapter:Lcom/htc/app/FilePickerListAdapter;

    .line 51
    return-void
.end method

.method public setFilePickerCloudHelper(Lcom/htc/app/FilePickerCloudHelper;)V
    .locals 0
    .parameter "filePickerCloudHelper"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/htc/app/FileScanner;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;

    .line 116
    return-void
.end method

.method setFilePickerUtil(Lcom/htc/app/FilePickerUtil;)V
    .locals 0
    .parameter "filePickerUtil"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/htc/app/FileScanner;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 125
    return-void
.end method

.method setFileSorter(Lcom/htc/app/FileSorter;)V
    .locals 0
    .parameter "fileSorter"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/htc/app/FileScanner;->mFileSorter:Lcom/htc/app/FileSorter;

    .line 131
    return-void
.end method

.method setRecentAdapter(Lcom/htc/app/FilePickerListAdapter;)V
    .locals 0
    .parameter "recentAdapter"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/htc/app/FileScanner;->recentAdapter:Lcom/htc/app/FilePickerListAdapter;

    .line 47
    return-void
.end method

.method public setRecentFiles([Ljava/lang/String;[J)V
    .locals 0
    .parameter "recentFiles"
    .parameter "recentFilesTime"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/htc/app/FileScanner;->mRecentFiles:[Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lcom/htc/app/FileScanner;->mRecentFilesTime:[J

    .line 94
    return-void
.end method

.method public stopScan()V
    .locals 2

    .prologue
    .line 940
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/FileScanner;->isStop:Z

    .line 941
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 943
    iget-object v0, p0, Lcom/htc/app/FileScanner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/FileScanner;->updateUiRunnable:Lcom/htc/app/FileScanner$UpdateUiRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 945
    :cond_0
    return-void
.end method
