.class Lcom/android/server/am/TransferPipe;
.super Ljava/lang/Object;
.source "TransferPipe.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/TransferPipe$Caller;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEFAULT_TIMEOUT:J = 0x1388L

.field static final TAG:Ljava/lang/String; = "TransferPipe"


# instance fields
.field mBufferPrefix:Ljava/lang/String;

.field mComplete:Z

.field mEndTime:J

.field mFailure:Ljava/lang/String;

.field final mFds:[Landroid/os/ParcelFileDescriptor;

.field mOutFd:Ljava/io/FileDescriptor;

.field final mThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "TransferPipe"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/TransferPipe;->mThread:Ljava/lang/Thread;

    .line 58
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    .line 59
    return-void
.end method

.method static go(Lcom/android/server/am/TransferPipe$Caller;Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .parameter "caller"
    .parameter "iface"
    .parameter "out"
    .parameter "prefix"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    const-wide/16 v5, 0x1388

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/am/TransferPipe;->go(Lcom/android/server/am/TransferPipe$Caller;Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 76
    return-void
.end method

.method static go(Lcom/android/server/am/TransferPipe$Caller;Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;J)V
    .locals 2
    .parameter "caller"
    .parameter "iface"
    .parameter "out"
    .parameter "prefix"
    .parameter "args"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    instance-of v1, v1, Landroid/os/Binder;

    if-eqz v1, :cond_0

    .line 83
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/am/TransferPipe$Caller;->go(Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 89
    :cond_0
    new-instance v0, Lcom/android/server/am/TransferPipe;

    invoke-direct {v0}, Lcom/android/server/am/TransferPipe;-><init>()V

    .line 91
    .local v0, tp:Lcom/android/server/am/TransferPipe;
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/am/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-interface {p0, p1, v1, p3, p4}, Lcom/android/server/am/TransferPipe$Caller;->go(Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, p2, p5, p6}, Lcom/android/server/am/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    invoke-virtual {v0}, Lcom/android/server/am/TransferPipe;->kill()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/am/TransferPipe;->kill()V

    throw v1

    .line 84
    .end local v0           #tp:Lcom/android/server/am/TransferPipe;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 2
    .parameter "binder"
    .parameter "out"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 100
    const-wide/16 v0, 0x1388

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/server/am/TransferPipe;->goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;J)V

    .line 101
    return-void
.end method

.method static goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;J)V
    .locals 2
    .parameter "binder"
    .parameter "out"
    .parameter "args"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    instance-of v1, p0, Landroid/os/Binder;

    if-eqz v1, :cond_0

    .line 108
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-void

    .line 114
    :cond_0
    new-instance v0, Lcom/android/server/am/TransferPipe;

    invoke-direct {v0}, Lcom/android/server/am/TransferPipe;-><init>()V

    .line 116
    .local v0, tp:Lcom/android/server/am/TransferPipe;
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/am/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-interface {p0, v1, p2}, Landroid/os/IBinder;->dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0, p1, p3, p4}, Lcom/android/server/am/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    invoke-virtual {v0}, Lcom/android/server/am/TransferPipe;->kill()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/am/TransferPipe;->kill()V

    throw v1

    .line 109
    .end local v0           #tp:Lcom/android/server/am/TransferPipe;
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method closeFd(I)V
    .locals 2
    .parameter "num"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/server/am/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 174
    :cond_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method getReadFd()Landroid/os/ParcelFileDescriptor;
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/am/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method getWriteFd()Landroid/os/ParcelFileDescriptor;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/am/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method go(Ljava/io/FileDescriptor;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/TransferPipe;->go(Ljava/io/FileDescriptor;J)V

    .line 125
    return-void
.end method

.method go(Ljava/io/FileDescriptor;J)V
    .locals 6
    .parameter "out"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 130
    :try_start_1
    iput-object p1, p0, Lcom/android/server/am/TransferPipe;->mOutFd:Ljava/io/FileDescriptor;

    .line 131
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iput-wide v2, p0, Lcom/android/server/am/TransferPipe;->mEndTime:J

    .line 137
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/am/TransferPipe;->closeFd(I)V

    .line 139
    iget-object v2, p0, Lcom/android/server/am/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 141
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/TransferPipe;->mFailure:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/am/TransferPipe;->mComplete:Z

    if-nez v2, :cond_1

    .line 142
    iget-wide v2, p0, Lcom/android/server/am/TransferPipe;->mEndTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 143
    .local v0, waitTime:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/android/server/am/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 146
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Timeout"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 159
    .end local v0           #waitTime:J
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 161
    :catchall_1
    move-exception v2

    invoke-virtual {p0}, Lcom/android/server/am/TransferPipe;->kill()V

    throw v2

    .line 150
    .restart local v0       #waitTime:J
    :cond_0
    :try_start_3
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v2

    goto :goto_0

    .line 156
    .end local v0           #waitTime:J
    :cond_1
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/TransferPipe;->mFailure:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 157
    new-instance v2, Ljava/io/IOException;

    iget-object v3, p0, Lcom/android/server/am/TransferPipe;->mFailure:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 159
    :cond_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 161
    invoke-virtual {p0}, Lcom/android/server/am/TransferPipe;->kill()V

    .line 163
    return-void
.end method

.method kill()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/TransferPipe;->closeFd(I)V

    .line 178
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/TransferPipe;->closeFd(I)V

    .line 179
    return-void
.end method

.method public run()V
    .locals 11

    .prologue
    const/16 v10, 0xa

    .line 183
    invoke-virtual {p0}, Lcom/android/server/am/TransferPipe;->getReadFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    if-nez v9, :cond_0

    .line 184
    monitor-enter p0

    .line 185
    :try_start_0
    const-string v9, "ReadFd is null"

    iput-object v9, p0, Lcom/android/server/am/TransferPipe;->mFailure:Ljava/lang/String;

    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 187
    monitor-exit p0

    .line 248
    :goto_0
    return-void

    .line 188
    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 190
    :cond_0
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 191
    .local v0, buffer:[B
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/android/server/am/TransferPipe;->getReadFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 192
    .local v3, fis:Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v9, p0, Lcom/android/server/am/TransferPipe;->mOutFd:Ljava/io/FileDescriptor;

    invoke-direct {v4, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 195
    .local v4, fos:Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 196
    .local v1, bufferPrefix:[B
    const/4 v6, 0x1

    .line 197
    .local v6, needPrefix:Z
    iget-object v9, p0, Lcom/android/server/am/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 198
    iget-object v9, p0, Lcom/android/server/am/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 203
    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    .local v7, size:I
    if-lez v7, :cond_8

    .line 205
    if-nez v1, :cond_2

    .line 206
    const/4 v9, 0x0

    invoke-virtual {v4, v0, v9, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 236
    .end local v7           #size:I
    :catch_0
    move-exception v2

    .line 237
    .local v2, e:Ljava/io/IOException;
    monitor-enter p0

    .line 238
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/am/TransferPipe;->mFailure:Ljava/lang/String;

    .line 239
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 240
    monitor-exit p0

    goto :goto_0

    .line 241
    :catchall_1
    move-exception v9

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v9

    .line 208
    .end local v2           #e:Ljava/io/IOException;
    .restart local v7       #size:I
    :cond_2
    const/4 v8, 0x0

    .line 209
    .local v8, start:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    if-ge v5, v7, :cond_7

    .line 210
    :try_start_3
    aget-byte v9, v0, v5

    if-eq v9, v10, :cond_6

    .line 211
    if-le v5, v8, :cond_3

    .line 212
    sub-int v9, v5, v8

    invoke-virtual {v4, v0, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 214
    :cond_3
    move v8, v5

    .line 215
    if-eqz v6, :cond_4

    .line 216
    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 217
    const/4 v6, 0x0

    .line 220
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 221
    if-ge v5, v7, :cond_5

    aget-byte v9, v0, v5

    if-ne v9, v10, :cond_4

    .line 222
    :cond_5
    if-ge v5, v7, :cond_6

    .line 223
    const/4 v6, 0x1

    .line 209
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 227
    :cond_7
    if-le v7, v8, :cond_1

    .line 228
    sub-int v9, v7, v8

    invoke-virtual {v4, v0, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 233
    .end local v5           #i:I
    .end local v8           #start:I
    :cond_8
    iget-object v9, p0, Lcom/android/server/am/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-virtual {v9}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v9

    if-eqz v9, :cond_9

    .line 244
    :cond_9
    monitor-enter p0

    .line 245
    const/4 v9, 0x1

    :try_start_4
    iput-boolean v9, p0, Lcom/android/server/am/TransferPipe;->mComplete:Z

    .line 246
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 247
    monitor-exit p0

    goto/16 :goto_0

    :catchall_2
    move-exception v9

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v9
.end method

.method setBufferPrefix(Ljava/lang/String;)V
    .locals 0
    .parameter "prefix"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/server/am/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    .line 71
    return-void
.end method
