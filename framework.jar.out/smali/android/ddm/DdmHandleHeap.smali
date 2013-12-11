.class public Landroid/ddm/DdmHandleHeap;
.super Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
.source "DdmHandleHeap.java"


# static fields
.field public static final CHUNK_HPDS:I

.field public static final CHUNK_HPDU:I

.field public static final CHUNK_HPFG:I

.field public static final CHUNK_HPGC:I

.field public static final CHUNK_HPIF:I

.field public static final CHUNK_HPSG:I

.field public static final CHUNK_NHSG:I

.field public static final CHUNK_REAE:I

.field public static final CHUNK_REAL:I

.field public static final CHUNK_REAQ:I

.field private static mInstance:Landroid/ddm/DdmHandleHeap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "HPIF"

    invoke-static {v0}, Landroid/ddm/DdmHandleHeap;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPIF:I

    .line 38
    const-string v0, "HPSG"

    invoke-static {v0}, Landroid/ddm/DdmHandleHeap;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPSG:I

    .line 39
    const-string v0, "HPDU"

    invoke-static {v0}, Landroid/ddm/DdmHandleHeap;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPDU:I

    .line 40
    const-string v0, "HPDS"

    invoke-static {v0}, Landroid/ddm/DdmHandleHeap;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPDS:I

    .line 41
    const-string v0, "NHSG"

    invoke-static {v0}, Landroid/ddm/DdmHandleHeap;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleHeap;->CHUNK_NHSG:I

    .line 42
    const-string v0, "HPGC"

    invoke-static {v0}, Landroid/ddm/DdmHandleHeap;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPGC:I

    .line 44
    const-string v0, "HPFG"

    invoke-static {v0}, Landroid/ddm/DdmHandleHeap;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPFG:I

    .line 46
    const-string v0, "REAE"

    invoke-static {v0}, Landroid/ddm/DdmHandleHeap;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleHeap;->CHUNK_REAE:I

    .line 47
    const-string v0, "REAQ"

    invoke-static {v0}, Landroid/ddm/DdmHandleHeap;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleHeap;->CHUNK_REAQ:I

    .line 48
    const-string v0, "REAL"

    invoke-static {v0}, Landroid/ddm/DdmHandleHeap;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleHeap;->CHUNK_REAL:I

    .line 50
    new-instance v0, Landroid/ddm/DdmHandleHeap;

    invoke-direct {v0}, Landroid/ddm/DdmHandleHeap;-><init>()V

    sput-object v0, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;-><init>()V

    return-void
.end method

.method private handleHPDS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 6
    .parameter "request"

    .prologue
    .line 204
    invoke-static {p1}, Landroid/ddm/DdmHandleHeap;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 209
    .local v1, in:Ljava/nio/ByteBuffer;
    const-string v4, "ddm-heap"

    const-string v5, "Heap dump: [DDMS]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v0, 0x0

    .line 213
    .local v0, failMsg:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/Debug;->dumpHprofDataDdms()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 220
    :goto_0
    if-eqz v0, :cond_0

    .line 221
    const-string v4, "ddm-heap"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v4, 0x1

    invoke-static {v4, v0}, Landroid/ddm/DdmHandleHeap;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v4

    .line 224
    :goto_1
    return-object v4

    .line 214
    :catch_0
    move-exception v3

    .line 215
    .local v3, uoe:Ljava/lang/UnsupportedOperationException;
    const-string/jumbo v0, "hprof dumps not supported in this VM"

    .line 218
    goto :goto_0

    .line 216
    .end local v3           #uoe:Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v2

    .line 217
    .local v2, re:Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 224
    .end local v2           #re:Ljava/lang/RuntimeException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private handleHPDU(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 12
    .parameter "request"

    .prologue
    const/4 v11, 0x0

    .line 170
    invoke-static {p1}, Landroid/ddm/DdmHandleHeap;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 174
    .local v1, in:Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 175
    .local v3, len:I
    invoke-static {v1, v3}, Landroid/ddm/DdmHandleHeap;->getString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, fileName:Ljava/lang/String;
    const-string v8, "ddm-heap"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Heap dump: file=\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :try_start_0
    invoke-static {v0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 181
    const/4 v6, 0x0

    .line 192
    .local v6, result:B
    :goto_0
    const/4 v8, 0x1

    new-array v5, v8, [B

    aput-byte v6, v5, v11

    .line 193
    .local v5, reply:[B
    new-instance v8, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v9, Landroid/ddm/DdmHandleHeap;->CHUNK_HPDU:I

    array-length v10, v5

    invoke-direct {v8, v9, v5, v11, v10}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    return-object v8

    .line 182
    .end local v5           #reply:[B
    .end local v6           #result:B
    :catch_0
    move-exception v7

    .line 183
    .local v7, uoe:Ljava/lang/UnsupportedOperationException;
    const-string v8, "ddm-heap"

    const-string/jumbo v9, "hprof dumps not supported in this VM"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v6, -0x1

    .line 189
    .restart local v6       #result:B
    goto :goto_0

    .line 185
    .end local v6           #result:B
    .end local v7           #uoe:Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v2

    .line 186
    .local v2, ioe:Ljava/io/IOException;
    const/4 v6, -0x1

    .line 189
    .restart local v6       #result:B
    goto :goto_0

    .line 187
    .end local v2           #ioe:Ljava/io/IOException;
    .end local v6           #result:B
    :catch_2
    move-exception v4

    .line 188
    .local v4, re:Ljava/lang/RuntimeException;
    const/4 v6, -0x1

    .restart local v6       #result:B
    goto :goto_0
.end method

.method private handleHPFG(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 8
    .parameter "request"

    .prologue
    .line 247
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    .line 248
    .local v5, vmRuntime:Ldalvik/system/VMRuntime;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    .line 251
    .local v4, runtime:Ljava/lang/Runtime;
    const-string v6, "ddm-heap"

    const-string v7, "Heap FG request"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    .line 256
    .local v0, currentFreeMemory:J
    :cond_0
    move-wide v2, v0

    .line 262
    .local v2, previousFreeMemory:J
    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 263
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ldalvik/system/VMRuntime;->gcSoftReferences(Z)V

    .line 264
    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    .line 265
    cmp-long v6, v0, v2

    if-gtz v6, :cond_0

    .line 267
    const/4 v6, 0x0

    return-object v6
.end method

.method private handleHPGC(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 2
    .parameter "request"

    .prologue
    .line 235
    const-string v0, "ddm-heap"

    const-string v1, "Heap GC request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 238
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleHPIF(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 5
    .parameter "request"

    .prologue
    .line 126
    invoke-static {p1}, Landroid/ddm/DdmHandleHeap;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 128
    .local v0, in:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 132
    .local v2, when:I
    invoke-static {v2}, Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;->heapInfoNotify(I)Z

    move-result v1

    .line 133
    .local v1, ok:Z
    if-nez v1, :cond_0

    .line 134
    const/4 v3, 0x1

    const-string v4, "Unsupported HPIF what"

    invoke-static {v3, v4}, Landroid/ddm/DdmHandleHeap;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v3

    .line 136
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private handleHPSGNHSG(Lorg/apache/harmony/dalvik/ddmc/Chunk;Z)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 6
    .parameter "request"
    .parameter "isNative"

    .prologue
    .line 144
    invoke-static {p1}, Landroid/ddm/DdmHandleHeap;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 146
    .local v0, in:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 147
    .local v3, when:I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 152
    .local v2, what:I
    invoke-static {v3, v2, p2}, Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;->heapSegmentNotify(IIZ)Z

    move-result v1

    .line 153
    .local v1, ok:Z
    if-nez v1, :cond_0

    .line 154
    const/4 v4, 0x1

    const-string v5, "Unsupported HPSG what/when"

    invoke-static {v4, v5}, Landroid/ddm/DdmHandleHeap;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v4

    .line 158
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private handleREAE(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 5
    .parameter "request"

    .prologue
    .line 275
    invoke-static {p1}, Landroid/ddm/DdmHandleHeap;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 278
    .local v1, in:Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 281
    .local v0, enable:Z
    :goto_0
    const-string v2, "ddm-heap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recent allocation enable request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;->enableRecentAllocations(Z)V

    .line 285
    const/4 v2, 0x0

    return-object v2

    .line 278
    .end local v0           #enable:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleREAL(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 5
    .parameter "request"

    .prologue
    .line 306
    const-string v1, "ddm-heap"

    const-string v2, "Recent allocations request"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-static {}, Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;->getRecentAllocations()[B

    move-result-object v0

    .line 310
    .local v0, reply:[B
    new-instance v1, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v2, Landroid/ddm/DdmHandleHeap;->CHUNK_REAL:I

    const/4 v3, 0x0

    array-length v4, v0

    invoke-direct {v1, v2, v0, v3, v4}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    return-object v1
.end method

.method private handleREAQ(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 5
    .parameter "request"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 294
    new-array v0, v1, [B

    .line 295
    .local v0, reply:[B
    invoke-static {}, Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;->getRecentAllocationStatus()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    aput-byte v1, v0, v2

    .line 296
    new-instance v1, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v3, Landroid/ddm/DdmHandleHeap;->CHUNK_REAQ:I

    array-length v4, v0

    invoke-direct {v1, v3, v0, v2, v4}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    return-object v1

    :cond_0
    move v1, v2

    .line 295
    goto :goto_0
.end method

.method public static register()V
    .locals 2

    .prologue
    .line 60
    sget v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPIF:I

    sget-object v1, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 61
    sget v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPSG:I

    sget-object v1, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 62
    sget v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPDU:I

    sget-object v1, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 63
    sget v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPDS:I

    sget-object v1, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 64
    sget v0, Landroid/ddm/DdmHandleHeap;->CHUNK_NHSG:I

    sget-object v1, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 65
    sget v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPGC:I

    sget-object v1, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 67
    sget v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPFG:I

    sget-object v1, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 69
    sget v0, Landroid/ddm/DdmHandleHeap;->CHUNK_REAE:I

    sget-object v1, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 70
    sget v0, Landroid/ddm/DdmHandleHeap;->CHUNK_REAQ:I

    sget-object v1, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 71
    sget v0, Landroid/ddm/DdmHandleHeap;->CHUNK_REAL:I

    sget-object v1, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 72
    return-void
.end method


# virtual methods
.method public connected()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public disconnected()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 4
    .parameter "request"

    .prologue
    .line 92
    iget v0, p1, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    .line 94
    .local v0, type:I
    sget v1, Landroid/ddm/DdmHandleHeap;->CHUNK_HPIF:I

    if-ne v0, v1, :cond_0

    .line 95
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHeap;->handleHPIF(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    .line 115
    :goto_0
    return-object v1

    .line 96
    :cond_0
    sget v1, Landroid/ddm/DdmHandleHeap;->CHUNK_HPSG:I

    if-ne v0, v1, :cond_1

    .line 97
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/ddm/DdmHandleHeap;->handleHPSGNHSG(Lorg/apache/harmony/dalvik/ddmc/Chunk;Z)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_0

    .line 98
    :cond_1
    sget v1, Landroid/ddm/DdmHandleHeap;->CHUNK_HPDU:I

    if-ne v0, v1, :cond_2

    .line 99
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHeap;->handleHPDU(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_0

    .line 100
    :cond_2
    sget v1, Landroid/ddm/DdmHandleHeap;->CHUNK_HPDS:I

    if-ne v0, v1, :cond_3

    .line 101
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHeap;->handleHPDS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_0

    .line 102
    :cond_3
    sget v1, Landroid/ddm/DdmHandleHeap;->CHUNK_NHSG:I

    if-ne v0, v1, :cond_4

    .line 103
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/ddm/DdmHandleHeap;->handleHPSGNHSG(Lorg/apache/harmony/dalvik/ddmc/Chunk;Z)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_0

    .line 104
    :cond_4
    sget v1, Landroid/ddm/DdmHandleHeap;->CHUNK_HPGC:I

    if-ne v0, v1, :cond_5

    .line 105
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHeap;->handleHPGC(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_0

    .line 107
    :cond_5
    sget v1, Landroid/ddm/DdmHandleHeap;->CHUNK_HPFG:I

    if-ne v0, v1, :cond_6

    .line 108
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHeap;->handleHPFG(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_0

    .line 110
    :cond_6
    sget v1, Landroid/ddm/DdmHandleHeap;->CHUNK_REAE:I

    if-ne v0, v1, :cond_7

    .line 111
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHeap;->handleREAE(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_0

    .line 112
    :cond_7
    sget v1, Landroid/ddm/DdmHandleHeap;->CHUNK_REAQ:I

    if-ne v0, v1, :cond_8

    .line 113
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHeap;->handleREAQ(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_0

    .line 114
    :cond_8
    sget v1, Landroid/ddm/DdmHandleHeap;->CHUNK_REAL:I

    if-ne v0, v1, :cond_9

    .line 115
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHeap;->handleREAL(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_0

    .line 117
    :cond_9
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown packet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
