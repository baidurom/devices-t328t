.class public Lcom/android/internal/net/NetworkStatsFactory;
.super Ljava/lang/Object;
.source "NetworkStatsFactory.java"


# static fields
.field private static final KEY_ACTIVE:Ljava/lang/String; = "active"

.field private static final KEY_COUNTER_SET:Ljava/lang/String; = "cnt_set"

.field private static final KEY_IDX:Ljava/lang/String; = "idx"

.field private static final KEY_IFACE:Ljava/lang/String; = "iface"

.field private static final KEY_RX_BYTES:Ljava/lang/String; = "rx_bytes"

.field private static final KEY_RX_PACKETS:Ljava/lang/String; = "rx_packets"

.field private static final KEY_SNAP_RX_BYTES:Ljava/lang/String; = "snap_rx_bytes"

.field private static final KEY_SNAP_RX_PACKETS:Ljava/lang/String; = "snap_rx_packets"

.field private static final KEY_SNAP_TX_BYTES:Ljava/lang/String; = "snap_tx_bytes"

.field private static final KEY_SNAP_TX_PACKETS:Ljava/lang/String; = "snap_tx_packets"

.field private static final KEY_TAG_HEX:Ljava/lang/String; = "acct_tag_hex"

.field private static final KEY_TX_BYTES:Ljava/lang/String; = "tx_bytes"

.field private static final KEY_TX_PACKETS:Ljava/lang/String; = "tx_packets"

.field private static final KEY_UID:Ljava/lang/String; = "uid_tag_int"

.field private static final TAG:Ljava/lang/String; = "NetworkStatsFactory"

.field private static elapsedRealtime:J

.field private static mNetworkStatsLock:Ljava/lang/Object;

.field private static mNetworkStatsUid:Landroid/net/NetworkStats;


# instance fields
.field private final mStatsIface:Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mStatsXtIface:Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mStatsXtIfaceAll:Ljava/io/File;

.field private final mStatsXtUid:Ljava/io/File;

.field private useCache:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/net/NetworkStatsFactory;->mNetworkStatsLock:Ljava/lang/Object;

    .line 89
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/net/NetworkStatsFactory;->mNetworkStatsUid:Landroid/net/NetworkStats;

    .line 90
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/internal/net/NetworkStatsFactory;->elapsedRealtime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/internal/net/NetworkStatsFactory;-><init>(Ljava/io/File;)V

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->useCache:Z

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .parameter "procRoot"

    .prologue
    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "net/dev"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsIface:Ljava/io/File;

    .line 104
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "net/xt_qtaguid/stats"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtUid:Ljava/io/File;

    .line 105
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "net/xt_qtaguid/iface_stat"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIface:Ljava/io/File;

    .line 106
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "net/xt_qtaguid/iface_stat_all"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceAll:Ljava/io/File;

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->useCache:Z

    .line 110
    return-void
.end method

.method private static fileListWithoutNull(Ljava/io/File;)[Ljava/lang/String;
    .locals 2
    .parameter "file"

    .prologue
    .line 427
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, list:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #list:[Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #list:[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method private static getParsedInt(Ljava/util/HashMap;Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 369
    .local p0, parsed:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 370
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getParsedLong(Ljava/util/HashMap;Ljava/lang/String;)J
    .locals 3
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 375
    .local p0, parsed:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 376
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method private static parseLine(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 399
    .local p0, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p1, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, outParsed:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 401
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 402
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 403
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 405
    :cond_0
    return-void
.end method

.method private readNetworkStatsSummaryMultipleFiles()Landroid/net/NetworkStats;
    .locals 23
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 187
    new-instance v18, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    const/16 v22, 0x6

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 188
    .local v18, stats:Landroid/net/NetworkStats;
    new-instance v9, Landroid/net/NetworkStats$Entry;

    invoke-direct {v9}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 190
    .local v9, entry:Landroid/net/NetworkStats$Entry;
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v13

    .line 191
    .local v13, knownIfaces:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v6

    .line 194
    .local v6, activeIfaces:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIface:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/internal/net/NetworkStatsFactory;->fileListWithoutNull(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v7

    .local v7, arr$:[Ljava/lang/String;
    array-length v14, v7

    .local v14, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v14, :cond_2

    aget-object v11, v7, v10

    .line 195
    .local v11, iface:Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIface:Ljava/io/File;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v12, v0, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 197
    .local v12, ifacePath:Ljava/io/File;
    new-instance v20, Ljava/io/File;

    const-string v21, "active"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v12, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static/range {v20 .. v20}, Lcom/android/internal/net/NetworkStatsFactory;->readSingleLongFromFile(Ljava/io/File;)J

    move-result-wide v4

    .line 198
    .local v4, active:J
    const-wide/16 v20, 0x1

    cmp-long v20, v4, v20

    if-nez v20, :cond_1

    .line 199
    invoke-virtual {v13, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-virtual {v6, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 207
    :goto_1
    iput-object v11, v9, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 208
    const/16 v20, -0x1

    move/from16 v0, v20

    iput v0, v9, Landroid/net/NetworkStats$Entry;->uid:I

    .line 209
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v9, Landroid/net/NetworkStats$Entry;->set:I

    .line 210
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v9, Landroid/net/NetworkStats$Entry;->tag:I

    .line 211
    new-instance v20, Ljava/io/File;

    const-string/jumbo v21, "rx_bytes"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v12, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static/range {v20 .. v20}, Lcom/android/internal/net/NetworkStatsFactory;->readSingleLongFromFile(Ljava/io/File;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v9, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 212
    new-instance v20, Ljava/io/File;

    const-string/jumbo v21, "rx_packets"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v12, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static/range {v20 .. v20}, Lcom/android/internal/net/NetworkStatsFactory;->readSingleLongFromFile(Ljava/io/File;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v9, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 213
    new-instance v20, Ljava/io/File;

    const-string/jumbo v21, "tx_bytes"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v12, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static/range {v20 .. v20}, Lcom/android/internal/net/NetworkStatsFactory;->readSingleLongFromFile(Ljava/io/File;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v9, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 214
    new-instance v20, Ljava/io/File;

    const-string/jumbo v21, "tx_packets"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v12, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static/range {v20 .. v20}, Lcom/android/internal/net/NetworkStatsFactory;->readSingleLongFromFile(Ljava/io/File;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v9, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 216
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 194
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 201
    :cond_1
    const-wide/16 v20, 0x0

    cmp-long v20, v4, v20

    if-nez v20, :cond_0

    .line 202
    invoke-virtual {v13, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 219
    .end local v4           #active:J
    .end local v11           #iface:Ljava/lang/String;
    .end local v12           #ifacePath:Ljava/io/File;
    :cond_2
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v19

    .line 221
    .local v19, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v16, 0x0

    .line 223
    .local v16, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v17, Ljava/io/BufferedReader;

    new-instance v20, Ljava/io/FileReader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsIface:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 226
    .end local v16           #reader:Ljava/io/BufferedReader;
    .local v17, reader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 227
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 231
    :cond_3
    :goto_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .local v15, line:Ljava/lang/String;
    if-eqz v15, :cond_5

    .line 232
    move-object/from16 v0, v19

    invoke-static {v15, v0}, Lcom/android/internal/net/NetworkStatsFactory;->splitLine(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 235
    const/16 v20, 0x0

    :try_start_2
    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v0, v9, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 236
    const/16 v20, -0x1

    move/from16 v0, v20

    iput v0, v9, Landroid/net/NetworkStats$Entry;->uid:I

    .line 237
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v9, Landroid/net/NetworkStats$Entry;->set:I

    .line 238
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v9, Landroid/net/NetworkStats$Entry;->tag:I

    .line 239
    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v9, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 240
    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v9, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 241
    const/16 v20, 0x9

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v9, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 242
    const/16 v20, 0xa

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v9, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 244
    iget-object v0, v9, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 246
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 251
    :catch_0
    move-exception v8

    .line 252
    .local v8, e:Ljava/lang/NumberFormatException;
    :try_start_3
    const-string v20, "NetworkStatsFactory"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "problem parsing stats row \'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\': "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    .line 255
    .end local v8           #e:Ljava/lang/NumberFormatException;
    .end local v15           #line:Ljava/lang/String;
    :catch_1
    move-exception v8

    move-object/from16 v16, v17

    .line 256
    .end local v17           #reader:Ljava/io/BufferedReader;
    .local v8, e:Ljava/lang/NullPointerException;
    .restart local v16       #reader:Ljava/io/BufferedReader;
    :goto_3
    :try_start_4
    new-instance v20, Ljava/lang/IllegalStateException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "problem parsing stats: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 262
    .end local v8           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v20

    :goto_4
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v20

    .line 247
    .end local v16           #reader:Ljava/io/BufferedReader;
    .restart local v15       #line:Ljava/lang/String;
    .restart local v17       #reader:Ljava/io/BufferedReader;
    :cond_4
    :try_start_5
    iget-object v0, v9, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 249
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 259
    .end local v15           #line:Ljava/lang/String;
    :catch_2
    move-exception v8

    move-object/from16 v16, v17

    .line 260
    .end local v17           #reader:Ljava/io/BufferedReader;
    .local v8, e:Ljava/io/IOException;
    .restart local v16       #reader:Ljava/io/BufferedReader;
    :goto_5
    :try_start_6
    new-instance v20, Ljava/lang/IllegalStateException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "problem parsing stats: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 257
    .end local v8           #e:Ljava/io/IOException;
    :catch_3
    move-exception v8

    .line 258
    .local v8, e:Ljava/lang/NumberFormatException;
    :goto_6
    new-instance v20, Ljava/lang/IllegalStateException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "problem parsing stats: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 262
    .end local v8           #e:Ljava/lang/NumberFormatException;
    .end local v16           #reader:Ljava/io/BufferedReader;
    .restart local v15       #line:Ljava/lang/String;
    .restart local v17       #reader:Ljava/io/BufferedReader;
    :cond_5
    invoke-static/range {v17 .. v17}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 265
    return-object v18

    .line 262
    .end local v15           #line:Ljava/lang/String;
    :catchall_1
    move-exception v20

    move-object/from16 v16, v17

    .end local v17           #reader:Ljava/io/BufferedReader;
    .restart local v16       #reader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 259
    :catch_4
    move-exception v8

    goto :goto_5

    .line 257
    .end local v16           #reader:Ljava/io/BufferedReader;
    .restart local v17       #reader:Ljava/io/BufferedReader;
    :catch_5
    move-exception v8

    move-object/from16 v16, v17

    .end local v17           #reader:Ljava/io/BufferedReader;
    .restart local v16       #reader:Ljava/io/BufferedReader;
    goto :goto_6

    .line 255
    :catch_6
    move-exception v8

    goto :goto_3
.end method

.method private readNetworkStatsSummarySingleFile()Landroid/net/NetworkStats;
    .locals 14

    .prologue
    .line 128
    new-instance v8, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const/4 v12, 0x6

    invoke-direct {v8, v10, v11, v12}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 129
    .local v8, stats:Landroid/net/NetworkStats;
    new-instance v2, Landroid/net/NetworkStats$Entry;

    invoke-direct {v2}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 133
    .local v2, entry:Landroid/net/NetworkStats$Entry;
    const/16 v10, 0xa

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "iface"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "active"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, "snap_rx_bytes"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string/jumbo v12, "snap_rx_packets"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string/jumbo v12, "snap_tx_bytes"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const-string/jumbo v12, "snap_tx_packets"

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string/jumbo v12, "rx_bytes"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    const-string/jumbo v12, "rx_packets"

    aput-object v12, v10, v11

    const/16 v11, 0x8

    const-string/jumbo v12, "tx_bytes"

    aput-object v12, v10, v11

    const/16 v11, 0x9

    const-string/jumbo v12, "tx_packets"

    aput-object v12, v10, v11

    invoke-static {v10}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    .line 136
    .local v3, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 137
    .local v9, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    .line 139
    .local v5, parsed:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 141
    .local v6, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    iget-object v11, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceAll:Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 144
    .end local v6           #reader:Ljava/io/BufferedReader;
    .local v7, reader:Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 145
    invoke-static {v4, v9}, Lcom/android/internal/net/NetworkStatsFactory;->splitLine(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 146
    invoke-static {v3, v9, v5}, Lcom/android/internal/net/NetworkStatsFactory;->parseLine(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 148
    const-string/jumbo v10, "iface"

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 149
    const/4 v10, -0x1

    iput v10, v2, Landroid/net/NetworkStats$Entry;->uid:I

    .line 150
    const/4 v10, 0x0

    iput v10, v2, Landroid/net/NetworkStats$Entry;->set:I

    .line 151
    const/4 v10, 0x0

    iput v10, v2, Landroid/net/NetworkStats$Entry;->tag:I

    .line 154
    const-string/jumbo v10, "snap_rx_bytes"

    invoke-static {v5, v10}, Lcom/android/internal/net/NetworkStatsFactory;->getParsedLong(Ljava/util/HashMap;Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 155
    const-string/jumbo v10, "snap_rx_packets"

    invoke-static {v5, v10}, Lcom/android/internal/net/NetworkStatsFactory;->getParsedLong(Ljava/util/HashMap;Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 156
    const-string/jumbo v10, "snap_tx_bytes"

    invoke-static {v5, v10}, Lcom/android/internal/net/NetworkStatsFactory;->getParsedLong(Ljava/util/HashMap;Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 157
    const-string/jumbo v10, "snap_tx_packets"

    invoke-static {v5, v10}, Lcom/android/internal/net/NetworkStatsFactory;->getParsedLong(Ljava/util/HashMap;Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 160
    const-string v10, "active"

    invoke-static {v5, v10}, Lcom/android/internal/net/NetworkStatsFactory;->getParsedInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_1

    const/4 v0, 0x1

    .line 161
    .local v0, active:Z
    :goto_1
    if-eqz v0, :cond_0

    .line 162
    iget-wide v10, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-string/jumbo v12, "rx_bytes"

    invoke-static {v5, v12}, Lcom/android/internal/net/NetworkStatsFactory;->getParsedLong(Ljava/util/HashMap;Ljava/lang/String;)J

    move-result-wide v12

    add-long/2addr v10, v12

    iput-wide v10, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 163
    iget-wide v10, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-string/jumbo v12, "rx_packets"

    invoke-static {v5, v12}, Lcom/android/internal/net/NetworkStatsFactory;->getParsedLong(Ljava/util/HashMap;Ljava/lang/String;)J

    move-result-wide v12

    add-long/2addr v10, v12

    iput-wide v10, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 164
    iget-wide v10, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-string/jumbo v12, "tx_bytes"

    invoke-static {v5, v12}, Lcom/android/internal/net/NetworkStatsFactory;->getParsedLong(Ljava/util/HashMap;Ljava/lang/String;)J

    move-result-wide v12

    add-long/2addr v10, v12

    iput-wide v10, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 165
    iget-wide v10, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    const-string/jumbo v12, "tx_packets"

    invoke-static {v5, v12}, Lcom/android/internal/net/NetworkStatsFactory;->getParsedLong(Ljava/util/HashMap;Ljava/lang/String;)J

    move-result-wide v12

    add-long/2addr v10, v12

    iput-wide v10, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 168
    :cond_0
    invoke-virtual {v8, v2}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    .line 170
    .end local v0           #active:Z
    .end local v4           #line:Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v6, v7

    .line 171
    .end local v7           #reader:Ljava/io/BufferedReader;
    .local v1, e:Ljava/lang/NullPointerException;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :goto_2
    :try_start_2
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "problem parsing stats: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v10

    :goto_3
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v10

    .line 160
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 172
    .end local v4           #line:Ljava/lang/String;
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 173
    .local v1, e:Ljava/lang/NumberFormatException;
    :goto_4
    :try_start_3
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "problem parsing stats: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 174
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v1

    .line 175
    .local v1, e:Ljava/io/IOException;
    :goto_5
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "problem parsing stats: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 177
    .end local v1           #e:Ljava/io/IOException;
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :cond_2
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 179
    return-object v8

    .line 177
    .end local v4           #line:Ljava/lang/String;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 174
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :catch_3
    move-exception v1

    move-object v6, v7

    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    goto :goto_5

    .line 172
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v1

    move-object v6, v7

    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 170
    :catch_5
    move-exception v1

    goto :goto_2
.end method

.method private static readSingleLongFromFile(Ljava/io/File;)J
    .locals 5
    .parameter "file"

    .prologue
    const-wide/16 v2, -0x1

    .line 413
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 414
    .local v0, buffer:[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    .line 418
    .end local v0           #buffer:[B
    :goto_0
    return-wide v2

    .line 415
    :catch_0
    move-exception v1

    .line 416
    .local v1, e:Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 417
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 418
    .local v1, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method private static splitLine(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "line"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 384
    .local p1, outSplit:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 386
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, " \t\n\r\u000c:"

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    .local v0, t:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 390
    :cond_0
    return-void
.end method


# virtual methods
.method public readNetworkStatsDetail()Landroid/net/NetworkStats;
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 275
    const/4 v2, 0x0

    .line 276
    .local v2, stats:Landroid/net/NetworkStats;
    iget-boolean v3, p0, Lcom/android/internal/net/NetworkStatsFactory;->useCache:Z

    if-nez v3, :cond_1

    .line 277
    invoke-virtual {p0, v9}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I)Landroid/net/NetworkStats;

    move-result-object v2

    .line 299
    :cond_0
    :goto_0
    return-object v2

    .line 280
    :cond_1
    sget-object v4, Lcom/android/internal/net/NetworkStatsFactory;->mNetworkStatsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 281
    :try_start_0
    sget-object v3, Lcom/android/internal/net/NetworkStatsFactory;->mNetworkStatsUid:Landroid/net/NetworkStats;

    if-eqz v3, :cond_2

    .line 282
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 283
    .local v0, current:J
    sget-wide v5, Lcom/android/internal/net/NetworkStatsFactory;->elapsedRealtime:J

    sub-long v5, v0, v5

    const-wide/16 v7, 0x7d0

    cmp-long v3, v5, v7

    if-gez v3, :cond_2

    .line 284
    const-string v3, "NetworkStatsFactory"

    const-string/jumbo v5, "readNetworkStatsDetail(-1) use global mNetworkStatsUid"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    sget-object v3, Lcom/android/internal/net/NetworkStatsFactory;->mNetworkStatsUid:Landroid/net/NetworkStats;

    invoke-virtual {v3, v0, v1}, Landroid/net/NetworkStats;->clone(J)Landroid/net/NetworkStats;

    move-result-object v2

    .line 288
    .end local v0           #current:J
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 290
    if-nez v2, :cond_0

    .line 291
    invoke-virtual {p0, v9}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I)Landroid/net/NetworkStats;

    move-result-object v2

    .line 292
    sget-object v4, Lcom/android/internal/net/NetworkStatsFactory;->mNetworkStatsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 293
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sput-wide v5, Lcom/android/internal/net/NetworkStatsFactory;->elapsedRealtime:J

    .line 294
    sget-wide v5, Lcom/android/internal/net/NetworkStatsFactory;->elapsedRealtime:J

    invoke-virtual {v2, v5, v6}, Landroid/net/NetworkStats;->clone(J)Landroid/net/NetworkStats;

    move-result-object v3

    sput-object v3, Lcom/android/internal/net/NetworkStatsFactory;->mNetworkStatsUid:Landroid/net/NetworkStats;

    .line 295
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 288
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method public readNetworkStatsDetail(I)Landroid/net/NetworkStats;
    .locals 16
    .parameter "limitUid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 310
    new-instance v11, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    const/16 v14, 0x18

    invoke-direct {v11, v12, v13, v14}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 311
    .local v11, stats:Landroid/net/NetworkStats;
    new-instance v4, Landroid/net/NetworkStats$Entry;

    invoke-direct {v4}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 313
    .local v4, entry:Landroid/net/NetworkStats$Entry;
    const/4 v5, 0x1

    .line 314
    .local v5, idx:I
    const/4 v6, 0x1

    .line 318
    .local v6, lastIdx:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 319
    .local v9, start:J
    const-string v12, "NetworkStatsFactory"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "readNetworkStatsDetail("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ") start"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v7, 0x0

    .line 324
    .local v7, reader:Lcom/android/internal/util/ProcFileReader;
    :try_start_0
    new-instance v8, Lcom/android/internal/util/ProcFileReader;

    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtUid:Ljava/io/File;

    invoke-direct {v12, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v12}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 325
    .end local v7           #reader:Lcom/android/internal/util/ProcFileReader;
    .local v8, reader:Lcom/android/internal/util/ProcFileReader;
    :try_start_1
    invoke-virtual {v8}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 327
    :goto_0
    invoke-virtual {v8}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 328
    invoke-virtual {v8}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v5

    .line 329
    add-int/lit8 v12, v6, 0x1

    if-eq v5, v12, :cond_0

    .line 330
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "inconsistent idx="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " after lastIdx="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 350
    :catch_0
    move-exception v3

    move-object v7, v8

    .line 351
    .end local v8           #reader:Lcom/android/internal/util/ProcFileReader;
    .local v3, e:Ljava/lang/NullPointerException;
    .restart local v7       #reader:Lcom/android/internal/util/ProcFileReader;
    :goto_1
    :try_start_2
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "problem parsing idx "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 358
    .end local v3           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v12

    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    sub-long v1, v13, v9

    .line 359
    .local v1, duration:J
    const-string v13, "NetworkStatsFactory"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "readNetworkStatsDetail("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") tooks "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ms"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 358
    throw v12

    .line 333
    .end local v1           #duration:J
    .end local v7           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v8       #reader:Lcom/android/internal/util/ProcFileReader;
    :cond_0
    move v6, v5

    .line 335
    :try_start_3
    invoke-virtual {v8}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v4, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 336
    invoke-virtual {v8}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/NetworkManagementSocketTagger;->kernelToTag(Ljava/lang/String;)I

    move-result v12

    iput v12, v4, Landroid/net/NetworkStats$Entry;->tag:I

    .line 337
    invoke-virtual {v8}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v12

    iput v12, v4, Landroid/net/NetworkStats$Entry;->uid:I

    .line 338
    invoke-virtual {v8}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v12

    iput v12, v4, Landroid/net/NetworkStats$Entry;->set:I

    .line 339
    invoke-virtual {v8}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v12

    iput-wide v12, v4, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 340
    invoke-virtual {v8}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v12

    iput-wide v12, v4, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 341
    invoke-virtual {v8}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v12

    iput-wide v12, v4, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 342
    invoke-virtual {v8}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v12

    iput-wide v12, v4, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 344
    const/4 v12, -0x1

    move/from16 v0, p1

    if-eq v0, v12, :cond_1

    iget v12, v4, Landroid/net/NetworkStats$Entry;->uid:I

    move/from16 v0, p1

    if-ne v0, v12, :cond_2

    .line 345
    :cond_1
    invoke-virtual {v11, v4}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 348
    :cond_2
    invoke-virtual {v8}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 352
    :catch_1
    move-exception v3

    move-object v7, v8

    .line 353
    .end local v8           #reader:Lcom/android/internal/util/ProcFileReader;
    .local v3, e:Ljava/lang/NumberFormatException;
    .restart local v7       #reader:Lcom/android/internal/util/ProcFileReader;
    :goto_3
    :try_start_4
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "problem parsing idx "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 354
    .end local v3           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v3

    .line 355
    .local v3, e:Ljava/io/IOException;
    :goto_4
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "problem parsing idx "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 358
    .end local v3           #e:Ljava/io/IOException;
    .end local v7           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v8       #reader:Lcom/android/internal/util/ProcFileReader;
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v1, v12, v9

    .line 359
    .restart local v1       #duration:J
    const-string v12, "NetworkStatsFactory"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "readNetworkStatsDetail("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ") tooks "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ms"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 364
    return-object v11

    .line 358
    .end local v1           #duration:J
    :catchall_1
    move-exception v12

    move-object v7, v8

    .end local v8           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v7       #reader:Lcom/android/internal/util/ProcFileReader;
    goto/16 :goto_2

    .line 354
    .end local v7           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v8       #reader:Lcom/android/internal/util/ProcFileReader;
    :catch_3
    move-exception v3

    move-object v7, v8

    .end local v8           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v7       #reader:Lcom/android/internal/util/ProcFileReader;
    goto :goto_4

    .line 352
    :catch_4
    move-exception v3

    goto :goto_3

    .line 350
    :catch_5
    move-exception v3

    goto/16 :goto_1
.end method

.method public readNetworkStatsSummary()Landroid/net/NetworkStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceAll:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsSummarySingleFile()Landroid/net/NetworkStats;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsSummaryMultipleFiles()Landroid/net/NetworkStats;

    move-result-object v0

    goto :goto_0
.end method
