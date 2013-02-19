.class public Lcom/android/internal/util/MemInfoReader;
.super Ljava/lang/Object;
.source "MemInfoReader.java"


# instance fields
.field mBuffer:[B

.field private mBuffersSize:J

.field private mCachedSize:J

.field private mFreeSize:J

.field private mKernelStack:J

.field private mPageTables:J

.field private mShmemSize:J

.field private mSlabSize:J

.field private mTotalSize:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    return-void
.end method

.method private extractMemValue([BI)J
    .locals 6
    .parameter "buffer"
    .parameter "index"

    .prologue
    const/16 v5, 0x39

    const/16 v4, 0x30

    .line 49
    :goto_0
    array-length v2, p1

    if-ge p2, v2, :cond_2

    aget-byte v2, p1, p2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    .line 50
    aget-byte v2, p1, p2

    if-lt v2, v4, :cond_1

    aget-byte v2, p1, p2

    if-gt v2, v5, :cond_1

    .line 51
    move v0, p2

    .line 52
    .local v0, start:I
    add-int/lit8 p2, p2, 0x1

    .line 54
    :goto_1
    array-length v2, p1

    if-ge p2, v2, :cond_0

    aget-byte v2, p1, p2

    if-lt v2, v4, :cond_0

    aget-byte v2, p1, p2

    if-gt v2, v5, :cond_0

    .line 55
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 57
    :cond_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    sub-int v3, p2, v0

    invoke-direct {v1, p1, v2, v0, v3}, Ljava/lang/String;-><init>([BIII)V

    .line 58
    .local v1, str:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    .line 62
    .end local v0           #start:I
    .end local v1           #str:Ljava/lang/String;
    :goto_2
    return-wide v2

    .line 60
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 62
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_2
.end method

.method private matchText([BILjava/lang/String;)Z
    .locals 5
    .parameter "buffer"
    .parameter "index"
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 37
    .local v0, N:I
    add-int v3, p2, v0

    array-length v4, p1

    if-lt v3, v4, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v2

    .line 40
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 41
    add-int v3, p2, v1

    aget-byte v3, p1, v3

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_0

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 45
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getBufferSize()J
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/android/internal/util/MemInfoReader;->mBuffersSize:J

    return-wide v0
.end method

.method public getCachedSize()J
    .locals 2

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/android/internal/util/MemInfoReader;->mCachedSize:J

    return-wide v0
.end method

.method public getFreeSize()J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/android/internal/util/MemInfoReader;->mFreeSize:J

    return-wide v0
.end method

.method public getKernelStack()J
    .locals 2

    .prologue
    .line 154
    iget-wide v0, p0, Lcom/android/internal/util/MemInfoReader;->mKernelStack:J

    return-wide v0
.end method

.method public getPageTable()J
    .locals 2

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/android/internal/util/MemInfoReader;->mPageTables:J

    return-wide v0
.end method

.method public getShmemSize()J
    .locals 2

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/android/internal/util/MemInfoReader;->mShmemSize:J

    return-wide v0
.end method

.method public getSlabSize()J
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/android/internal/util/MemInfoReader;->mSlabSize:J

    return-wide v0
.end method

.method public getTotalSize()J
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/android/internal/util/MemInfoReader;->mTotalSize:J

    return-wide v0
.end method

.method public readMemInfo()V
    .locals 8

    .prologue
    .line 69
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    .line 71
    .local v5, savedPolicy:Landroid/os/StrictMode$ThreadPolicy;
    const-wide/16 v6, 0x0

    :try_start_0
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mTotalSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_42
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    const-wide/16 v6, 0x0

    :try_start_1
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mFreeSize:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_42
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    const-wide/16 v6, 0x0

    :try_start_2
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mCachedSize:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_42
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 74
    const-wide/16 v6, 0x0

    :try_start_3
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffersSize:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_42
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 75
    const-wide/16 v6, 0x0

    :try_start_4
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mShmemSize:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_42
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 76
    const-wide/16 v6, 0x0

    :try_start_5
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mSlabSize:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_42
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 77
    const-wide/16 v6, 0x0

    :try_start_6
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mKernelStack:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_42
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 78
    const-wide/16 v6, 0x0

    :try_start_7
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mPageTables:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_42
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 79
    :try_start_8
    new-instance v3, Ljava/io/FileInputStream;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_42
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    :try_start_9
    const-string v6, "/proc/meminfo"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_42
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    :try_start_a
    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_42
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    .line 80
    .local v3, is:Ljava/io/FileInputStream;
    :try_start_b
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_42
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    :try_start_c
    invoke-virtual {v3, v6}, Ljava/io/FileInputStream;->read([B)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_42
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c

    move-result v4

    .line 81
    .local v4, len:I
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_42
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_d

    .line 82
    :try_start_e
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_42
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_e

    :try_start_f
    array-length v0, v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_42
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_f

    .line 83
    .local v0, BUFLEN:I
    const/4 v1, 0x0

    .line 84
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_9

    const/16 v6, 0x8

    if-ge v1, v6, :cond_9

    .line 85
    :try_start_10
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_42
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_10

    :try_start_11
    const-string v7, "MemTotal"
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_42
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_11

    :try_start_12
    invoke-direct {p0, v6, v2, v7}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_42
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_12

    move-result v6

    if-eqz v6, :cond_1

    .line 86
    add-int/lit8 v2, v2, 0x8

    .line 87
    :try_start_13
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_42
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_13

    :try_start_14
    invoke-direct {p0, v6, v2}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_42
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_14

    move-result-wide v6

    :try_start_15
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mTotalSize:J
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_42
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_15

    .line 88
    add-int/lit8 v1, v1, 0x1

    .line 118
    :cond_0
    :goto_1
    if-ge v2, v0, :cond_8

    :try_start_16
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_42
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_40

    :try_start_17
    aget-byte v6, v6, v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_42
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_41

    const/16 v7, 0xa

    if-eq v6, v7, :cond_8

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 89
    :cond_1
    :try_start_18
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_18} :catch_42
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_16

    :try_start_19
    const-string v7, "MemFree"
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_19} :catch_42
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_17

    :try_start_1a
    invoke-direct {p0, v6, v2, v7}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1a} :catch_42
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_18

    move-result v6

    if-eqz v6, :cond_2

    .line 90
    add-int/lit8 v2, v2, 0x7

    .line 91
    :try_start_1b
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_1b} :catch_42
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_19

    :try_start_1c
    invoke-direct {p0, v6, v2}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1c} :catch_42
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_1a

    move-result-wide v6

    :try_start_1d
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mFreeSize:J
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_1d} :catch_42
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_1b

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 93
    :cond_2
    :try_start_1e
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_1e} :catch_42
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_1c

    :try_start_1f
    const-string v7, "Cached"
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_1f} :catch_42
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_1d

    :try_start_20
    invoke-direct {p0, v6, v2, v7}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_20} :catch_42
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_1e

    move-result v6

    if-eqz v6, :cond_3

    .line 94
    add-int/lit8 v2, v2, 0x6

    .line 95
    :try_start_21
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_21} :catch_42
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_1f

    :try_start_22
    invoke-direct {p0, v6, v2}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_22} :catch_42
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_20

    move-result-wide v6

    :try_start_23
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mCachedSize:J
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_23} :catch_42
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_21

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 97
    :cond_3
    :try_start_24
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_24} :catch_42
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_22

    :try_start_25
    const-string v7, "Buffers"
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_25} :catch_42
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_23

    :try_start_26
    invoke-direct {p0, v6, v2, v7}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_26} :catch_42
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_24

    move-result v6

    if-eqz v6, :cond_4

    .line 98
    add-int/lit8 v2, v2, 0x7

    .line 99
    :try_start_27
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_27} :catch_42
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_25

    :try_start_28
    invoke-direct {p0, v6, v2}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_28} :catch_42
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_26

    move-result-wide v6

    :try_start_29
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffersSize:J
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_29} :catch_42
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_27

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 101
    :cond_4
    :try_start_2a
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_2a} :catch_42
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_28

    :try_start_2b
    const-string v7, "Shmem"
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_2b} :catch_42
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_29

    :try_start_2c
    invoke-direct {p0, v6, v2, v7}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_2c} :catch_42
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_2a

    move-result v6

    if-eqz v6, :cond_5

    .line 102
    add-int/lit8 v2, v2, 0x5

    .line 103
    :try_start_2d
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_2d} :catch_42
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_2b

    :try_start_2e
    invoke-direct {p0, v6, v2}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_2e} :catch_42
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_2c

    move-result-wide v6

    :try_start_2f
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mShmemSize:J
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_2f} :catch_42
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_2d

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 105
    :cond_5
    :try_start_30
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_30} :catch_42
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_2e

    :try_start_31
    const-string v7, "Slab"
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_31} :catch_42
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_2f

    :try_start_32
    invoke-direct {p0, v6, v2, v7}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_32} :catch_42
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_30

    move-result v6

    if-eqz v6, :cond_6

    .line 106
    add-int/lit8 v2, v2, 0x4

    .line 107
    :try_start_33
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_33} :catch_42
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_31

    :try_start_34
    invoke-direct {p0, v6, v2}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_34} :catch_42
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_34} :catch_32

    move-result-wide v6

    :try_start_35
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mSlabSize:J
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_35} :catch_42
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_35} :catch_33

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 109
    :cond_6
    :try_start_36
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_36} :catch_42
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_36} :catch_34

    :try_start_37
    const-string v7, "KernelStack"
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_37} :catch_42
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_37} :catch_35

    :try_start_38
    invoke-direct {p0, v6, v2, v7}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_38 .. :try_end_38} :catch_42
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_38} :catch_36

    move-result v6

    if-eqz v6, :cond_7

    .line 110
    add-int/lit8 v2, v2, 0xb

    .line 111
    :try_start_39
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_39} :catch_42
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_39} :catch_37

    :try_start_3a
    invoke-direct {p0, v6, v2}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3a .. :try_end_3a} :catch_42
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3a} :catch_38

    move-result-wide v6

    :try_start_3b
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mKernelStack:J
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3b .. :try_end_3b} :catch_42
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3b} :catch_39

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 113
    :cond_7
    :try_start_3c
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3c .. :try_end_3c} :catch_42
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3c} :catch_3a

    :try_start_3d
    const-string v7, "PageTables"
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3d .. :try_end_3d} :catch_42
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_3d} :catch_3b

    :try_start_3e
    invoke-direct {p0, v6, v2, v7}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3e .. :try_end_3e} :catch_42
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_3e} :catch_3c

    move-result v6

    if-eqz v6, :cond_0

    .line 114
    add-int/lit8 v2, v2, 0xa

    .line 115
    :try_start_3f
    iget-object v6, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_3f} :catch_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_3f} :catch_3d

    :try_start_40
    invoke-direct {p0, v6, v2}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_40 .. :try_end_40} :catch_42
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_40} :catch_3e

    move-result-wide v6

    :try_start_41
    iput-wide v6, p0, Lcom/android/internal/util/MemInfoReader;->mPageTables:J
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_41 .. :try_end_41} :catch_42
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_41} :catch_3f

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 84
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 125
    .end local v0           #BUFLEN:I
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #is:Ljava/io/FileInputStream;
    .end local v4           #len:I
    :catchall_0
    move-exception v6

    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v6

    .line 123
    :catch_0
    move-exception v6

    .line 125
    :cond_9
    :goto_2
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 127
    return-void

    .line 123
    :catch_1
    move-exception v6

    goto :goto_2

    :catch_2
    move-exception v6

    goto :goto_2

    :catch_3
    move-exception v6

    goto :goto_2

    :catch_4
    move-exception v6

    goto :goto_2

    :catch_5
    move-exception v6

    goto :goto_2

    :catch_6
    move-exception v6

    goto :goto_2

    :catch_7
    move-exception v6

    goto :goto_2

    :catch_8
    move-exception v6

    goto :goto_2

    :catch_9
    move-exception v6

    goto :goto_2

    :catch_a
    move-exception v6

    goto :goto_2

    .restart local v3       #is:Ljava/io/FileInputStream;
    :catch_b
    move-exception v6

    goto :goto_2

    :catch_c
    move-exception v6

    goto :goto_2

    .restart local v4       #len:I
    :catch_d
    move-exception v6

    goto :goto_2

    :catch_e
    move-exception v6

    goto :goto_2

    :catch_f
    move-exception v6

    goto :goto_2

    .restart local v0       #BUFLEN:I
    .restart local v1       #count:I
    .restart local v2       #i:I
    :catch_10
    move-exception v6

    goto :goto_2

    :catch_11
    move-exception v6

    goto :goto_2

    :catch_12
    move-exception v6

    goto :goto_2

    :catch_13
    move-exception v6

    goto :goto_2

    :catch_14
    move-exception v6

    goto :goto_2

    :catch_15
    move-exception v6

    goto :goto_2

    :catch_16
    move-exception v6

    goto :goto_2

    :catch_17
    move-exception v6

    goto :goto_2

    :catch_18
    move-exception v6

    goto :goto_2

    :catch_19
    move-exception v6

    goto :goto_2

    :catch_1a
    move-exception v6

    goto :goto_2

    :catch_1b
    move-exception v6

    goto :goto_2

    :catch_1c
    move-exception v6

    goto :goto_2

    :catch_1d
    move-exception v6

    goto :goto_2

    :catch_1e
    move-exception v6

    goto :goto_2

    :catch_1f
    move-exception v6

    goto :goto_2

    :catch_20
    move-exception v6

    goto :goto_2

    :catch_21
    move-exception v6

    goto :goto_2

    :catch_22
    move-exception v6

    goto :goto_2

    :catch_23
    move-exception v6

    goto :goto_2

    :catch_24
    move-exception v6

    goto :goto_2

    :catch_25
    move-exception v6

    goto :goto_2

    :catch_26
    move-exception v6

    goto :goto_2

    :catch_27
    move-exception v6

    goto :goto_2

    :catch_28
    move-exception v6

    goto :goto_2

    :catch_29
    move-exception v6

    goto :goto_2

    :catch_2a
    move-exception v6

    goto :goto_2

    :catch_2b
    move-exception v6

    goto :goto_2

    :catch_2c
    move-exception v6

    goto :goto_2

    :catch_2d
    move-exception v6

    goto :goto_2

    :catch_2e
    move-exception v6

    goto :goto_2

    :catch_2f
    move-exception v6

    goto :goto_2

    :catch_30
    move-exception v6

    goto :goto_2

    :catch_31
    move-exception v6

    goto :goto_2

    :catch_32
    move-exception v6

    goto :goto_2

    :catch_33
    move-exception v6

    goto :goto_2

    :catch_34
    move-exception v6

    goto :goto_2

    :catch_35
    move-exception v6

    goto :goto_2

    :catch_36
    move-exception v6

    goto :goto_2

    :catch_37
    move-exception v6

    goto :goto_2

    :catch_38
    move-exception v6

    goto :goto_2

    :catch_39
    move-exception v6

    goto :goto_2

    :catch_3a
    move-exception v6

    goto :goto_2

    :catch_3b
    move-exception v6

    goto :goto_2

    :catch_3c
    move-exception v6

    goto :goto_2

    :catch_3d
    move-exception v6

    goto :goto_2

    :catch_3e
    move-exception v6

    goto :goto_2

    :catch_3f
    move-exception v6

    goto/16 :goto_2

    :catch_40
    move-exception v6

    goto/16 :goto_2

    :catch_41
    move-exception v6

    goto/16 :goto_2

    .line 122
    .end local v0           #BUFLEN:I
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #is:Ljava/io/FileInputStream;
    .end local v4           #len:I
    :catch_42
    move-exception v6

    goto/16 :goto_2
.end method
