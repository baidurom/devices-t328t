.class public Landroid/widget/ActivityChooserModel;
.super Landroid/database/DataSetObservable;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ActivityChooserModel$1;,
        Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;,
        Landroid/widget/ActivityChooserModel$HistoryPersister;,
        Landroid/widget/ActivityChooserModel$HistoryLoader;,
        Landroid/widget/ActivityChooserModel$DefaultSorter;,
        Landroid/widget/ActivityChooserModel$ActivityResolveInfo;,
        Landroid/widget/ActivityChooserModel$HistoricalRecord;,
        Landroid/widget/ActivityChooserModel$OnChooseActivityListener;,
        Landroid/widget/ActivityChooserModel$ActivitySorter;,
        Landroid/widget/ActivityChooserModel$ActivityChooserModelClient;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final ATTRIBUTE_TIME:Ljava/lang/String; = "time"

.field private static final ATTRIBUTE_WEIGHT:Ljava/lang/String; = "weight"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_ACTIVITY_INFLATION:I = 0x5

.field private static final DEFAULT_HISTORICAL_RECORD_WEIGHT:F = 1.0f

.field public static final DEFAULT_HISTORY_FILE_NAME:Ljava/lang/String; = "activity_choser_model_history.xml"

.field public static final DEFAULT_HISTORY_MAX_LENGTH:I = 0x32

.field private static final HISTORY_FILE_EXTENSION:Ljava/lang/String; = ".xml"

.field private static final INVALID_INDEX:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final TAG_HISTORICAL_RECORD:Ljava/lang/String; = "historical-record"

.field private static final TAG_HISTORICAL_RECORDS:Ljava/lang/String; = "historical-records"

.field private static final sDataModelRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/ActivityChooserModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRegistryLock:Ljava/lang/Object;


# instance fields
.field private final mActivites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityChoserModelPolicy:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

.field private mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;

.field private mCanReadHistoricalData:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHistoricalRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ActivityChooserModel$HistoricalRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mHistoricalRecordsChanged:Z

.field private final mHistoryFileName:Ljava/lang/String;

.field private mHistoryMaxSize:I

.field private final mInstanceLock:Ljava/lang/Object;

.field private mIntent:Landroid/content/Intent;

.field private mIsDefaultOrder:Z

.field private mIsHistoryReady:Z

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mReadShareHistoryCalled:Z

.field private packageNameSize:I

.field private final setPackageName:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 171
    const-class v0, Landroid/widget/ActivityChooserModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    .line 232
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/widget/ActivityChooserModel;->sRegistryLock:Ljava/lang/Object;

    .line 237
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "historyFileName"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 386
    invoke-direct {p0}, Landroid/database/DataSetObservable;-><init>()V

    .line 243
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    .line 258
    new-instance v0, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;

    invoke-direct {v0, p0, v3}, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;-><init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$1;)V

    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 264
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->setPackageName:Ljava/util/HashSet;

    .line 269
    iput v1, p0, Landroid/widget/ActivityChooserModel;->packageNameSize:I

    .line 288
    new-instance v0, Landroid/widget/ActivityChooserModel$DefaultSorter;

    invoke-direct {v0, p0, v3}, Landroid/widget/ActivityChooserModel$DefaultSorter;-><init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$1;)V

    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;

    .line 293
    const/16 v0, 0x32

    iput v0, p0, Landroid/widget/ActivityChooserModel;->mHistoryMaxSize:I

    .line 303
    iput-boolean v2, p0, Landroid/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    .line 314
    iput-boolean v1, p0, Landroid/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z

    .line 322
    iput-boolean v2, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 327
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mHandler:Landroid/os/Handler;

    .line 337
    iput-boolean v1, p0, Landroid/widget/ActivityChooserModel;->mIsDefaultOrder:Z

    .line 342
    iput-boolean v1, p0, Landroid/widget/ActivityChooserModel;->mIsHistoryReady:Z

    .line 387
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    .line 388
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".xml"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    .line 394
    :goto_0
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Z)V

    .line 395
    return-void

    .line 392
    :cond_0
    iput-object p2, p0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$1000(Landroid/widget/ActivityChooserModel;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/ActivityChooserModel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/ActivityChooserModel;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1302(Landroid/widget/ActivityChooserModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-boolean p1, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    return p1
.end method

.method static synthetic access$1400(Landroid/widget/ActivityChooserModel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsLocked()V

    return-void
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/widget/ActivityChooserModel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->loadActivitiesLocked()V

    return-void
.end method

.method static synthetic access$1700(Landroid/widget/ActivityChooserModel;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Landroid/widget/ActivityChooserModel;->pruneHistoricalRecordsForPackageLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/ActivityChooserModel;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/ActivityChooserModel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-boolean v0, p0, Landroid/widget/ActivityChooserModel;->mIsDefaultOrder:Z

    return v0
.end method

.method static synthetic access$502(Landroid/widget/ActivityChooserModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-boolean p1, p0, Landroid/widget/ActivityChooserModel;->mIsDefaultOrder:Z

    return p1
.end method

.method static synthetic access$600(Landroid/widget/ActivityChooserModel;ILjava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Landroid/widget/ActivityChooserModel;->setDefaultWeight(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$700(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Landroid/widget/ActivityChooserModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-boolean p1, p0, Landroid/widget/ActivityChooserModel;->mIsHistoryReady:Z

    return p1
.end method

.method static synthetic access$900(Landroid/widget/ActivityChooserModel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->sortActivities()V

    return-void
.end method

.method private addHisoricalRecord(Landroid/widget/ActivityChooserModel$HistoricalRecord;)Z
    .locals 3
    .parameter "historicalRecord"

    .prologue
    .line 749
    iget-object v2, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 750
    :try_start_0
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 751
    .local v0, added:Z
    if-eqz v0, :cond_0

    .line 752
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 753
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsLocked()V

    .line 754
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->persistHistoricalData()V

    .line 755
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->sortActivities()V

    .line 757
    :cond_0
    monitor-exit v2

    return v0

    .line 758
    .end local v0           #added:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ActivityChooserModel;
    .locals 3
    .parameter "context"
    .parameter "historyFileName"

    .prologue
    .line 369
    sget-object v2, Landroid/widget/ActivityChooserModel;->sRegistryLock:Ljava/lang/Object;

    monitor-enter v2

    .line 370
    :try_start_0
    sget-object v1, Landroid/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ActivityChooserModel;

    .line 371
    .local v0, dataModel:Landroid/widget/ActivityChooserModel;
    if-nez v0, :cond_0

    .line 372
    new-instance v0, Landroid/widget/ActivityChooserModel;

    .end local v0           #dataModel:Landroid/widget/ActivityChooserModel;
    invoke-direct {v0, p0, p1}, Landroid/widget/ActivityChooserModel;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 373
    .restart local v0       #dataModel:Landroid/widget/ActivityChooserModel;
    sget-object v1, Landroid/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :cond_0
    invoke-direct {v0}, Landroid/widget/ActivityChooserModel;->readHistoricalData()V

    .line 376
    monitor-exit v2

    return-object v0

    .line 377
    .end local v0           #dataModel:Landroid/widget/ActivityChooserModel;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getCustomizationData(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 13
    .parameter "context"
    .parameter "uriString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, -0x1

    const/4 v2, 0x0

    .line 1101
    const/4 v1, 0x0

    .line 1102
    .local v1, uri:Landroid/net/Uri;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1103
    .local v7, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1142
    :cond_0
    :goto_0
    return-object v7

    .line 1106
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1108
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1110
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_2

    .line 1111
    sget-object v0, Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Failed to get cursor"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1114
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 1115
    sget-object v0, Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    const-string v2, "cursor size is 0"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1117
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1119
    :cond_3
    const/4 v6, 0x0

    .line 1120
    goto :goto_0

    .line 1123
    :cond_4
    const-string/jumbo v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 1124
    .local v9, nValueIdx:I
    const-string/jumbo v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1126
    .local v8, nNameIdx:I
    if-eq v12, v9, :cond_5

    if-ne v12, v8, :cond_7

    .line 1127
    :cond_5
    sget-object v0, Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "no customized data support"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1129
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1131
    :cond_6
    const/4 v6, 0x0

    .line 1132
    goto :goto_0

    .line 1134
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1136
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1137
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1138
    .local v10, name:Ljava/lang/String;
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1139
    .local v11, value:I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1
.end method

.method private loadActivitiesLocked()V
    .locals 7

    .prologue
    .line 783
    iget-object v4, p0, Landroid/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 784
    iget-object v4, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    if-eqz v4, :cond_1

    .line 785
    iget-object v4, p0, Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 787
    .local v3, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 788
    .local v2, resolveInfoCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 789
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 790
    .local v1, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v4, p0, Landroid/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    new-instance v5, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    invoke-direct {v5, p0, v1}, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;-><init>(Landroid/widget/ActivityChooserModel;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 788
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 792
    .end local v1           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_0
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->sortActivities()V

    .line 796
    .end local v0           #i:I
    .end local v2           #resolveInfoCount:I
    .end local v3           #resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_1
    return-void

    .line 794
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ActivityChooserModel;->notifyChanged()V

    goto :goto_1
.end method

.method private loadMultiActivitiesLocked()V
    .locals 8

    .prologue
    .line 803
    const/4 v1, 0x0

    .line 804
    .local v1, packageName:Ljava/lang/String;
    iget-object v5, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    if-eqz v5, :cond_1

    .line 805
    iget-object v5, p0, Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 807
    .local v4, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 808
    .local v3, resolveInfoCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 809
    const/4 v1, 0x0

    .line 810
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 811
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 812
    iget-object v5, p0, Landroid/widget/ActivityChooserModel;->setPackageName:Ljava/util/HashSet;

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 813
    iget v5, p0, Landroid/widget/ActivityChooserModel;->packageNameSize:I

    iget-object v6, p0, Landroid/widget/ActivityChooserModel;->setPackageName:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 814
    iget-object v5, p0, Landroid/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    new-instance v6, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    invoke-direct {v6, p0, v2}, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;-><init>(Landroid/widget/ActivityChooserModel;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 815
    iget-object v5, p0, Landroid/widget/ActivityChooserModel;->setPackageName:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    iput v5, p0, Landroid/widget/ActivityChooserModel;->packageNameSize:I

    .line 808
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 819
    .end local v0           #i:I
    .end local v2           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v3           #resolveInfoCount:I
    .end local v4           #resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ActivityChooserModel;->notifyChanged()V

    .line 821
    :cond_2
    return-void
.end method

.method private persistHistoricalData()V
    .locals 4

    .prologue
    .line 642
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 643
    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z

    if-nez v0, :cond_0

    .line 644
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "No preceding call to #readHistoricalData"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 654
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 646
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    if-nez v0, :cond_1

    .line 647
    monitor-exit v1

    .line 655
    :goto_0
    return-void

    .line 649
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 650
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    .line 651
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 652
    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/widget/ActivityChooserModel$HistoryPersister;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/ActivityChooserModel$HistoryPersister;-><init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$1;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 654
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private pruneExcessiveHistoricalRecordsLocked()V
    .locals 5

    .prologue
    .line 765
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    .line 766
    .local v0, choiceRecords:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Landroid/widget/ActivityChooserModel;->mHistoryMaxSize:I

    sub-int v2, v3, v4

    .line 767
    .local v2, pruneCount:I
    if-gtz v2, :cond_1

    .line 777
    :cond_0
    return-void

    .line 770
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 771
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 772
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    .line 771
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private pruneHistoricalRecordsForPackageLocked(Ljava/lang/String;)V
    .locals 6
    .parameter "packageName"

    .prologue
    .line 828
    const/4 v4, 0x0

    .line 830
    .local v4, recordsRemoved:Z
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    .line 831
    .local v1, historicalRecords:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 832
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    .line 833
    .local v0, historicalRecord:Landroid/widget/ActivityChooserModel$HistoricalRecord;
    iget-object v5, v0, Landroid/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 834
    .local v3, recordPackageName:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 835
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 836
    const/4 v4, 0x1

    .line 831
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 840
    .end local v0           #historicalRecord:Landroid/widget/ActivityChooserModel$HistoricalRecord;
    .end local v3           #recordPackageName:Ljava/lang/String;
    :cond_1
    if-eqz v4, :cond_2

    .line 841
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 842
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->sortActivities()V

    .line 844
    :cond_2
    return-void
.end method

.method private readHistoricalData()V
    .locals 4

    .prologue
    .line 620
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 621
    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    if-nez v0, :cond_1

    .line 622
    :cond_0
    monitor-exit v1

    .line 630
    :goto_0
    return-void

    .line 624
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    .line 625
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z

    .line 626
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 627
    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/widget/ActivityChooserModel$HistoryLoader;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/ActivityChooserModel$HistoryLoader;-><init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$1;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 629
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setDefaultWeight(ILjava/util/List;)V
    .locals 4
    .parameter "count"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1075
    .local p2, actInfo:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    const-string v0, "content://customization_settings/SettingTable/framework_ShareVia"

    .line 1076
    .local v0, customize_uri:Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1077
    .local v1, defaultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1082
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1083
    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.htc.socialnetwork.facebook"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.htc.htctwitter"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.android.mms"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.htc.android.mail"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.dropbox.android"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.htc.cloudstorage.skydrive"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.htc.notes"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    :cond_0
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1093
    invoke-direct {p0, v1, p2, p1}, Landroid/widget/ActivityChooserModel;->setWeight(Ljava/util/HashMap;Ljava/util/List;I)V

    .line 1095
    :cond_1
    return-void
.end method

.method private setWeight(Ljava/util/HashMap;Ljava/util/List;I)V
    .locals 20
    .parameter
    .parameter
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1152
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p2, actInfo:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v13, v0, :cond_4

    .line 1153
    add-int/lit8 v17, v13, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1155
    .local v16, packageName:Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, j:I
    :goto_1
    move/from16 v0, p3

    if-ge v15, v0, :cond_3

    .line 1156
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v14, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1157
    .local v14, infoPackageName:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 1160
    .local v9, currentTime:J
    const/4 v8, 0x0

    .local v8, cnt:I
    :goto_2
    if-gt v8, v13, :cond_3

    .line 1161
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 1163
    .local v6, chosenActivity:Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    new-instance v7, Landroid/content/ComponentName;

    iget-object v0, v6, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v6, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v7, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    .local v7, chosenName:Landroid/content/ComponentName;
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1168
    .local v4, choiceIntent:Landroid/content/Intent;
    invoke-virtual {v4, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1172
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1173
    .local v5, choiceIntentCopy:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v5}, Landroid/widget/ActivityChooserModel$OnChooseActivityListener;->onChooseActivity(Landroid/widget/ActivityChooserModel;Landroid/content/Intent;)Z

    move-result v11

    .line 1175
    .local v11, handled:Z
    if-eqz v11, :cond_0

    .line 1198
    .end local v4           #choiceIntent:Landroid/content/Intent;
    .end local v5           #choiceIntentCopy:Landroid/content/Intent;
    .end local v6           #chosenActivity:Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v7           #chosenName:Landroid/content/ComponentName;
    .end local v8           #cnt:I
    .end local v9           #currentTime:J
    .end local v11           #handled:Z
    .end local v14           #infoPackageName:Ljava/lang/String;
    .end local v15           #j:I
    .end local v16           #packageName:Ljava/lang/String;
    :goto_3
    return-void

    .line 1180
    .restart local v4       #choiceIntent:Landroid/content/Intent;
    .restart local v6       #chosenActivity:Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .restart local v7       #chosenName:Landroid/content/ComponentName;
    .restart local v8       #cnt:I
    .restart local v9       #currentTime:J
    .restart local v14       #infoPackageName:Ljava/lang/String;
    .restart local v15       #j:I
    .restart local v16       #packageName:Ljava/lang/String;
    :cond_0
    new-instance v12, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    int-to-long v0, v8

    move-wide/from16 v17, v0

    add-long v17, v17, v9

    const/high16 v19, 0x3f80

    move-wide/from16 v0, v17

    move/from16 v2, v19

    invoke-direct {v12, v7, v0, v1, v2}, Landroid/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 1183
    .local v12, historicalRecord:Landroid/widget/ActivityChooserModel$HistoricalRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 1184
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 1186
    .local v3, added:Z
    if-eqz v3, :cond_1

    .line 1187
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 1188
    invoke-direct/range {p0 .. p0}, Landroid/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsLocked()V

    .line 1189
    invoke-direct/range {p0 .. p0}, Landroid/widget/ActivityChooserModel;->persistHistoricalData()V

    .line 1191
    :cond_1
    monitor-exit v18

    .line 1160
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 1191
    .end local v3           #added:Z
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .line 1155
    .end local v4           #choiceIntent:Landroid/content/Intent;
    .end local v6           #chosenActivity:Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v7           #chosenName:Landroid/content/ComponentName;
    .end local v8           #cnt:I
    .end local v9           #currentTime:J
    .end local v12           #historicalRecord:Landroid/widget/ActivityChooserModel$HistoricalRecord;
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 1152
    .end local v14           #infoPackageName:Ljava/lang/String;
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 1197
    .end local v15           #j:I
    .end local v16           #packageName:Ljava/lang/String;
    :cond_4
    invoke-direct/range {p0 .. p0}, Landroid/widget/ActivityChooserModel;->sortActivities()V

    goto :goto_3
.end method

.method private sortActivities()V
    .locals 5

    .prologue
    .line 681
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 682
    :try_start_0
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 683
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;

    iget-object v2, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Landroid/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    iget-object v4, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Landroid/widget/ActivityChooserModel$ActivitySorter;->sort(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V

    .line 685
    invoke-virtual {p0}, Landroid/widget/ActivityChooserModel;->notifyChanged()V

    .line 687
    :cond_0
    monitor-exit v1

    .line 688
    return-void

    .line 687
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public MultiSortting()V
    .locals 5

    .prologue
    .line 1228
    const/4 v1, 0x0

    .line 1229
    .local v1, i:I
    :goto_0
    iget-boolean v3, p0, Landroid/widget/ActivityChooserModel;->mIsHistoryReady:Z

    if-nez v3, :cond_1

    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    const/16 v3, 0xa

    if-ge v1, v3, :cond_0

    .line 1231
    const-wide/16 v3, 0x32

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 1234
    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 1232
    .end local v1           #i:I
    .restart local v2       #i:I
    :catch_0
    move-exception v0

    .line 1233
    .local v0, e:Ljava/lang/InterruptedException;
    sget-object v3, Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    const-string v4, "MultiSortting InterruptedException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1234
    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #i:I
    .restart local v2       #i:I
    :cond_0
    move v1, v2

    .line 1236
    .end local v2           #i:I
    .restart local v1       #i:I
    :cond_1
    iget-object v3, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_2

    .line 1237
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->sortActivities()V

    .line 1239
    :cond_2
    return-void
.end method

.method public addIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 426
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 427
    :try_start_0
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    if-ne v0, p1, :cond_0

    .line 428
    monitor-exit v1

    .line 433
    :goto_0
    return-void

    .line 430
    :cond_0
    iput-object p1, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    .line 431
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->loadMultiActivitiesLocked()V

    .line 432
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public chooseActivity(I)Landroid/content/Intent;
    .locals 9
    .parameter "index"

    .prologue
    .line 509
    iget-object v6, p0, Landroid/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 511
    .local v2, chosenActivity:Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v6, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v7, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    .local v3, chosenName:Landroid/content/ComponentName;
    new-instance v0, Landroid/content/Intent;

    iget-object v6, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 516
    .local v0, choiceIntent:Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 518
    iget-object v6, p0, Landroid/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

    if-eqz v6, :cond_0

    .line 520
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 521
    .local v1, choiceIntentCopy:Landroid/content/Intent;
    iget-object v6, p0, Landroid/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

    invoke-interface {v6, p0, v1}, Landroid/widget/ActivityChooserModel$OnChooseActivityListener;->onChooseActivity(Landroid/widget/ActivityChooserModel;Landroid/content/Intent;)Z

    move-result v4

    .line 523
    .local v4, handled:Z
    if-eqz v4, :cond_0

    .line 524
    const/4 v0, 0x0

    .line 532
    .end local v0           #choiceIntent:Landroid/content/Intent;
    .end local v1           #choiceIntentCopy:Landroid/content/Intent;
    .end local v4           #handled:Z
    :goto_0
    return-object v0

    .line 528
    .restart local v0       #choiceIntent:Landroid/content/Intent;
    :cond_0
    new-instance v5, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/high16 v8, 0x3f80

    invoke-direct {v5, v3, v6, v7, v8}, Landroid/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 530
    .local v5, historicalRecord:Landroid/widget/ActivityChooserModel$HistoricalRecord;
    invoke-direct {p0, v5}, Landroid/widget/ActivityChooserModel;->addHisoricalRecord(Landroid/widget/ActivityChooserModel$HistoricalRecord;)Z

    goto :goto_0
.end method

.method public clearActivity()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1246
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1247
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->setPackageName:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1248
    iput v1, p0, Landroid/widget/ActivityChooserModel;->packageNameSize:I

    .line 1249
    iput-boolean v1, p0, Landroid/widget/ActivityChooserModel;->mIsDefaultOrder:Z

    .line 1250
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 738
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 739
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 740
    return-void
.end method

.method public getActivity(I)Landroid/content/pm/ResolveInfo;
    .locals 2
    .parameter "index"

    .prologue
    .line 467
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 468
    :try_start_0
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    monitor-exit v1

    return-object v0

    .line 469
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getActivityCount()I
    .locals 2

    .prologue
    .line 453
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 454
    :try_start_0
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 455
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getActivityIndex(Landroid/content/pm/ResolveInfo;)I
    .locals 5
    .parameter "activity"

    .prologue
    .line 480
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    .line 481
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 482
    .local v1, activityCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 483
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 484
    .local v2, currentActivity:Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    iget-object v4, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-ne v4, p1, :cond_0

    .line 488
    .end local v2           #currentActivity:Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v3           #i:I
    :goto_1
    return v3

    .line 482
    .restart local v2       #currentActivity:Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .restart local v3       #i:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 488
    .end local v2           #currentActivity:Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public getDefaultActivity()Landroid/content/pm/ResolveInfo;
    .locals 3

    .prologue
    .line 569
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 570
    :try_start_0
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 571
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    monitor-exit v1

    .line 574
    :goto_0
    return-object v0

    .line 573
    :cond_0
    monitor-exit v1

    .line 574
    const/4 v0, 0x0

    goto :goto_0

    .line 573
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHistoryMaxSize()I
    .locals 2

    .prologue
    .line 720
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 721
    :try_start_0
    iget v0, p0, Landroid/widget/ActivityChooserModel;->mHistoryMaxSize:I

    monitor-exit v1

    return v0

    .line 722
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHistorySize()I
    .locals 2

    .prologue
    .line 731
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 732
    :try_start_0
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 733
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 440
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 441
    :try_start_0
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    monitor-exit v1

    return-object v0

    .line 442
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setActivitySorter(Landroid/widget/ActivityChooserModel$ActivitySorter;)V
    .locals 2
    .parameter "activitySorter"

    .prologue
    .line 665
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 666
    :try_start_0
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;

    if-ne v0, p1, :cond_0

    .line 667
    monitor-exit v1

    .line 672
    :goto_0
    return-void

    .line 669
    :cond_0
    iput-object p1, p0, Landroid/widget/ActivityChooserModel;->mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;

    .line 670
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->sortActivities()V

    .line 671
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDefaultActivity(I)V
    .locals 7
    .parameter "index"

    .prologue
    .line 588
    iget-object v5, p0, Landroid/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 589
    .local v2, newDefaultActivity:Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    iget-object v5, p0, Landroid/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 592
    .local v3, oldDefaultActivity:Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    if-eqz v3, :cond_0

    .line 594
    iget v5, v3, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    iget v6, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x40a0

    add-float v4, v5, v6

    .line 600
    .local v4, weight:F
    :goto_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    .local v0, defaultName:Landroid/content/ComponentName;
    new-instance v1, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v1, v0, v5, v6, v4}, Landroid/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 605
    .local v1, historicalRecord:Landroid/widget/ActivityChooserModel$HistoricalRecord;
    invoke-direct {p0, v1}, Landroid/widget/ActivityChooserModel;->addHisoricalRecord(Landroid/widget/ActivityChooserModel$HistoricalRecord;)Z

    .line 606
    return-void

    .line 597
    .end local v0           #defaultName:Landroid/content/ComponentName;
    .end local v1           #historicalRecord:Landroid/widget/ActivityChooserModel$HistoricalRecord;
    .end local v4           #weight:F
    :cond_0
    const/high16 v4, 0x3f80

    .restart local v4       #weight:F
    goto :goto_0
.end method

.method public setHistoryMaxSize(I)V
    .locals 2
    .parameter "historyMaxSize"

    .prologue
    .line 704
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 705
    :try_start_0
    iget v0, p0, Landroid/widget/ActivityChooserModel;->mHistoryMaxSize:I

    if-ne v0, p1, :cond_0

    .line 706
    monitor-exit v1

    .line 712
    :goto_0
    return-void

    .line 708
    :cond_0
    iput p1, p0, Landroid/widget/ActivityChooserModel;->mHistoryMaxSize:I

    .line 709
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsLocked()V

    .line 710
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->sortActivities()V

    .line 711
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 407
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 408
    :try_start_0
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    if-ne v0, p1, :cond_0

    .line 409
    monitor-exit v1

    .line 414
    :goto_0
    return-void

    .line 411
    :cond_0
    iput-object p1, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    .line 412
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->loadActivitiesLocked()V

    .line 413
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOnChooseActivityListener(Landroid/widget/ActivityChooserModel$OnChooseActivityListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 541
    iput-object p1, p0, Landroid/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

    .line 542
    return-void
.end method

.method public upDateHisoryRecord(Landroid/content/pm/ActivityInfo;)Z
    .locals 7
    .parameter "activityInfo"

    .prologue
    const/4 v3, 0x1

    .line 1206
    new-instance v1, Landroid/content/ComponentName;

    iget-object v4, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    .local v1, chosenName:Landroid/content/ComponentName;
    new-instance v2, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/high16 v6, 0x3f80

    invoke-direct {v2, v1, v4, v5, v6}, Landroid/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 1211
    .local v2, historicalRecord:Landroid/widget/ActivityChooserModel$HistoricalRecord;
    iget-object v4, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1212
    :try_start_0
    iget-object v5, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 1213
    .local v0, added:Z
    if-eqz v0, :cond_0

    .line 1214
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 1215
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsLocked()V

    .line 1216
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->persistHistoricalData()V

    .line 1217
    monitor-exit v4

    .line 1220
    :goto_0
    return v3

    .line 1219
    :cond_0
    monitor-exit v4

    .line 1220
    const/4 v3, 0x0

    goto :goto_0

    .line 1219
    .end local v0           #added:Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
