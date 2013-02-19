.class public Landroid/os/MessageQueue;
.super Ljava/lang/Object;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MessageQueue$TicketAuthenticator;,
        Landroid/os/MessageQueue$IdleHandler;
    }
.end annotation


# instance fields
.field private customAuth:Landroid/os/MessageQueue$TicketAuthenticator;

.field private defaultAuth:Landroid/os/MessageQueue$TicketAuthenticator;

.field private expressNo:J

.field private mBlocked:Z

.field private final mIdleHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/MessageQueue$IdleHandler;",
            ">;"
        }
    .end annotation
.end field

.field mMessages:Landroid/os/Message;

.field private mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

.field private mPtr:I

.field mQuitAllowed:Z

.field private mQuiting:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    .line 413
    new-instance v0, Landroid/os/MessageQueue$1;

    invoke-direct {v0, p0}, Landroid/os/MessageQueue$1;-><init>(Landroid/os/MessageQueue;)V

    iput-object v0, p0, Landroid/os/MessageQueue;->defaultAuth:Landroid/os/MessageQueue$TicketAuthenticator;

    .line 102
    invoke-direct {p0}, Landroid/os/MessageQueue;->nativeInit()V

    .line 103
    return-void
.end method

.method private describeMessage(Landroid/os/Message;)Ljava/lang/String;
    .locals 3
    .parameter "msg"

    .prologue
    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", when="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Landroid/os/Message;->when:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", arg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", obj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isVIP(Landroid/os/Message;Z)Z
    .locals 7
    .parameter "msg"
    .parameter "debugEnabled"

    .prologue
    .line 440
    iget-object v3, p0, Landroid/os/MessageQueue;->defaultAuth:Landroid/os/MessageQueue$TicketAuthenticator;

    invoke-interface {v3, p1, p2}, Landroid/os/MessageQueue$TicketAuthenticator;->isVIP(Landroid/os/Message;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 441
    const/4 v0, 0x1

    .line 454
    :cond_0
    :goto_0
    return v0

    .line 443
    :cond_1
    iget-object v3, p0, Landroid/os/MessageQueue;->customAuth:Landroid/os/MessageQueue$TicketAuthenticator;

    if-eqz v3, :cond_3

    .line 444
    const-wide/16 v1, 0x0

    .line 445
    .local v1, startToCustomEval:J
    if-eqz p2, :cond_2

    .line 446
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 448
    :cond_2
    iget-object v3, p0, Landroid/os/MessageQueue;->customAuth:Landroid/os/MessageQueue$TicketAuthenticator;

    invoke-interface {v3, p1, p2}, Landroid/os/MessageQueue$TicketAuthenticator;->isVIP(Landroid/os/Message;Z)Z

    move-result v0

    .line 449
    .local v0, ret:Z
    if-eqz p2, :cond_0

    .line 450
    const-string v3, "MessageQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] CUSTOM EFFORT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/os/MessageQueue;->customAuth:Landroid/os/MessageQueue$TicketAuthenticator;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 454
    .end local v0           #ret:Z
    .end local v1           #startToCustomEval:J
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeDestroy()V
.end method

.method private native nativeInit()V
.end method

.method private native nativePollOnce(II)V
.end method

.method private native nativeWake(I)V
.end method


# virtual methods
.method public final addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 2
    .parameter "handler"

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t add a null IdleHandler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    monitor-exit p0

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final enqueueMessage(Landroid/os/Message;J)Z
    .locals 12
    .parameter "msg"
    .parameter "when"

    .prologue
    .line 190
    invoke-virtual {p1}, Landroid/os/Message;->isInUse()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 191
    new-instance v8, Landroid/util/AndroidRuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " This message is already in use."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 194
    :cond_0
    iget-object v8, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v8, :cond_1

    iget-boolean v8, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    if-nez v8, :cond_1

    .line 195
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Main thread not allowed to quit"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 198
    :cond_1
    monitor-enter p0

    .line 199
    :try_start_0
    iget-boolean v8, p0, Landroid/os/MessageQueue;->mQuiting:Z

    if-eqz v8, :cond_2

    .line 200
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " sending message to a Handler on a dead thread"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 202
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v8, "MessageQueue"

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    const/4 v8, 0x0

    monitor-exit p0

    .line 281
    .end local v1           #e:Ljava/lang/RuntimeException;
    :goto_0
    return v8

    .line 204
    :cond_2
    iget-object v8, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v8, :cond_3

    .line 205
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/os/MessageQueue;->mQuiting:Z

    .line 208
    :cond_3
    iput-wide p2, p1, Landroid/os/Message;->when:J

    .line 210
    iget-object v5, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 211
    .local v5, p:Landroid/os/Message;
    if-eqz v5, :cond_4

    const-wide/16 v8, 0x0

    cmp-long v8, p2, v8

    if-eqz v8, :cond_4

    iget-wide v8, v5, Landroid/os/Message;->when:J

    cmp-long v8, p2, v8

    if-gez v8, :cond_5

    .line 212
    :cond_4
    iput-object v5, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 213
    iput-object p1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 214
    iget-boolean v2, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 267
    .local v2, needWake:Z
    :goto_1
    const-string v8, "MessageQueue"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 268
    const-string v8, "MessageQueue"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] ----- START ----- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v7, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 270
    .local v7, x:Landroid/os/Message;
    :goto_2
    if-eqz v7, :cond_d

    .line 271
    const-string v8, "MessageQueue"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]     "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, v7}, Landroid/os/MessageQueue;->describeMessage(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v7, v7, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_2

    .line 216
    .end local v2           #needWake:Z
    .end local v7           #x:Landroid/os/Message;
    :cond_5
    const/4 v6, 0x0

    .line 218
    .local v6, prev:Landroid/os/Message;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 219
    .local v3, now:J
    iget-wide v8, p1, Landroid/os/Message;->expressNo:J

    iget-wide v10, p0, Landroid/os/MessageQueue;->expressNo:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_6

    .line 220
    iget-wide v8, p1, Landroid/os/Message;->expressNo:J

    iput-wide v8, p0, Landroid/os/MessageQueue;->expressNo:J

    .line 222
    :cond_6
    iget-wide v8, p0, Landroid/os/MessageQueue;->expressNo:J

    cmp-long v8, v3, v8

    if-gez v8, :cond_a

    .line 223
    const-string v8, "MessageQueue"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 224
    .local v0, debugEnabled:Z
    invoke-direct {p0, p1, v0}, Landroid/os/MessageQueue;->isVIP(Landroid/os/Message;Z)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 225
    iget-wide v8, p0, Landroid/os/MessageQueue;->expressNo:J

    iput-wide v8, p1, Landroid/os/Message;->expressNo:J

    .line 226
    if-eqz v0, :cond_7

    .line 227
    const-string v8, "MessageQueue"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] INSERT "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->describeMessage(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_7
    :goto_3
    if-eqz v5, :cond_9

    .line 236
    invoke-direct {p0, v5, v0}, Landroid/os/MessageQueue;->isVIP(Landroid/os/Message;Z)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 237
    move-object v6, v5

    .line 238
    iget-object v5, v5, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_3

    .line 230
    :cond_8
    const-wide/16 v8, -0x1

    iput-wide v8, p1, Landroid/os/Message;->expressNo:J

    .line 231
    if-eqz v0, :cond_7

    .line 232
    const-string v8, "MessageQueue"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] APPEND "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->describeMessage(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 277
    .end local v0           #debugEnabled:Z
    .end local v3           #now:J
    .end local v5           #p:Landroid/os/Message;
    .end local v6           #prev:Landroid/os/Message;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 243
    .restart local v0       #debugEnabled:Z
    .restart local v3       #now:J
    .restart local v5       #p:Landroid/os/Message;
    .restart local v6       #prev:Landroid/os/Message;
    :cond_9
    if-eqz v0, :cond_a

    .line 244
    :try_start_1
    const-string v8, "MessageQueue"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] EFFORT "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v3

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "ms."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .end local v0           #debugEnabled:Z
    :cond_a
    :goto_4
    if-eqz v5, :cond_b

    iget-wide v8, v5, Landroid/os/Message;->when:J

    cmp-long v8, v8, p2

    if-gtz v8, :cond_b

    .line 249
    move-object v6, v5

    .line 250
    iget-object v5, v5, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_4

    .line 253
    :cond_b
    iget-wide v8, p0, Landroid/os/MessageQueue;->expressNo:J

    cmp-long v8, v3, v8

    if-gez v8, :cond_c

    if-nez v6, :cond_c

    .line 254
    iput-object v5, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 255
    iput-object p1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 256
    iget-boolean v2, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .restart local v2       #needWake:Z
    goto/16 :goto_1

    .line 259
    .end local v2           #needWake:Z
    :cond_c
    iget-object v8, v6, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v8, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 260
    iput-object p1, v6, Landroid/os/Message;->next:Landroid/os/Message;

    .line 261
    const/4 v2, 0x0

    .restart local v2       #needWake:Z
    goto/16 :goto_1

    .line 274
    .end local v3           #now:J
    .end local v6           #prev:Landroid/os/Message;
    .restart local v7       #x:Landroid/os/Message;
    :cond_d
    const-string v8, "MessageQueue"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] ----- END ----- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .end local v7           #x:Landroid/os/Message;
    :cond_e
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    if-eqz v2, :cond_f

    .line 279
    iget v8, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-direct {p0, v8}, Landroid/os/MessageQueue;->nativeWake(I)V

    .line 281
    :cond_f
    const/4 v8, 0x1

    goto/16 :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 108
    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->nativeDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 112
    return-void

    .line 110
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method final next()Landroid/os/Message;
    .locals 15

    .prologue
    .line 115
    const/4 v7, -0x1

    .line 116
    .local v7, pendingIdleHandlerCount:I
    const/4 v4, 0x0

    .line 119
    .local v4, nextPollTimeoutMillis:I
    :goto_0
    if-eqz v4, :cond_0

    .line 120
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 122
    :cond_0
    iget v11, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-direct {p0, v11, v4}, Landroid/os/MessageQueue;->nativePollOnce(II)V

    .line 124
    monitor-enter p0

    .line 126
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 127
    .local v5, now:J
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 128
    .local v3, msg:Landroid/os/Message;
    if-eqz v3, :cond_3

    .line 129
    iget-wide v9, v3, Landroid/os/Message;->when:J

    .line 130
    .local v9, when:J
    cmp-long v11, v5, v9

    if-ltz v11, :cond_1

    .line 131
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 132
    iget-object v11, v3, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v11, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 133
    const/4 v11, 0x0

    iput-object v11, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 135
    invoke-virtual {v3}, Landroid/os/Message;->markInUse()V

    .line 136
    monitor-exit p0

    return-object v3

    .line 138
    :cond_1
    sub-long v11, v9, v5

    const-wide/32 v13, 0x7fffffff

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v4, v11

    .line 145
    .end local v9           #when:J
    :goto_1
    if-gez v7, :cond_2

    .line 146
    iget-object v11, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 148
    :cond_2
    if-nez v7, :cond_4

    .line 150
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 151
    monitor-exit p0

    goto :goto_0

    .line 158
    .end local v3           #msg:Landroid/os/Message;
    .end local v5           #now:J
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 141
    .restart local v3       #msg:Landroid/os/Message;
    .restart local v5       #now:J
    :cond_3
    const/4 v4, -0x1

    goto :goto_1

    .line 154
    :cond_4
    :try_start_1
    iget-object v11, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    if-nez v11, :cond_5

    .line 155
    const/4 v11, 0x4

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    new-array v11, v11, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v11, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 157
    :cond_5
    iget-object v11, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    iget-object v12, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v11, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 158
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v7, :cond_7

    .line 163
    iget-object v11, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    aget-object v1, v11, v0

    .line 164
    .local v1, idler:Landroid/os/MessageQueue$IdleHandler;
    iget-object v11, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    const/4 v12, 0x0

    aput-object v12, v11, v0

    .line 166
    const/4 v2, 0x0

    .line 168
    .local v2, keep:Z
    :try_start_2
    invoke-interface {v1}, Landroid/os/MessageQueue$IdleHandler;->queueIdle()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    .line 173
    :goto_3
    if-nez v2, :cond_6

    .line 174
    monitor-enter p0

    .line 175
    :try_start_3
    iget-object v11, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 176
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 162
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 169
    :catch_0
    move-exception v8

    .line 170
    .local v8, t:Ljava/lang/Throwable;
    const-string v11, "MessageQueue"

    const-string v12, "IdleHandler threw exception"

    invoke-static {v11, v12, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 176
    .end local v8           #t:Ljava/lang/Throwable;
    :catchall_1
    move-exception v11

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v11

    .line 181
    .end local v1           #idler:Landroid/os/MessageQueue$IdleHandler;
    .end local v2           #keep:Z
    :cond_7
    const/4 v7, 0x0

    .line 185
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public registerCustomAuthenticator(Landroid/os/MessageQueue$TicketAuthenticator;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 437
    iput-object p1, p0, Landroid/os/MessageQueue;->customAuth:Landroid/os/MessageQueue$TicketAuthenticator;

    .line 438
    return-void
.end method

.method final removeCallbacksAndMessages(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "object"

    .prologue
    .line 357
    monitor-enter p0

    .line 358
    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 362
    .local v2, p:Landroid/os/Message;
    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_1

    if-eqz p2, :cond_0

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_1

    .line 363
    :cond_0
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 364
    .local v0, n:Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 365
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 366
    move-object v2, v0

    .line 367
    goto :goto_0

    .line 370
    .end local v0           #n:Landroid/os/Message;
    :cond_1
    :goto_1
    if-eqz v2, :cond_4

    .line 371
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 372
    .restart local v0       #n:Landroid/os/Message;
    if-eqz v0, :cond_3

    .line 373
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_3

    if-eqz p2, :cond_2

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_3

    .line 374
    :cond_2
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 375
    .local v1, nn:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 376
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    .line 382
    .end local v0           #n:Landroid/os/Message;
    .end local v1           #nn:Landroid/os/Message;
    .end local v2           #p:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 380
    .restart local v0       #n:Landroid/os/Message;
    .restart local v2       #p:Landroid/os/Message;
    :cond_3
    move-object v2, v0

    .line 381
    goto :goto_1

    .line 382
    .end local v0           #n:Landroid/os/Message;
    :cond_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    return-void
.end method

.method public final removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 98
    monitor-exit p0

    .line 99
    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "r"
    .parameter "object"

    .prologue
    .line 323
    if-nez p2, :cond_0

    .line 354
    :goto_0
    return-void

    .line 327
    :cond_0
    monitor-enter p0

    .line 328
    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 332
    .local v2, p:Landroid/os/Message;
    :goto_1
    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_2

    iget-object v3, v2, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v3, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_2

    .line 333
    :cond_1
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 334
    .local v0, n:Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 335
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 336
    move-object v2, v0

    .line 337
    goto :goto_1

    .line 340
    .end local v0           #n:Landroid/os/Message;
    :cond_2
    :goto_2
    if-eqz v2, :cond_5

    .line 341
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 342
    .restart local v0       #n:Landroid/os/Message;
    if-eqz v0, :cond_4

    .line 343
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_4

    iget-object v3, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v3, p2, :cond_4

    if-eqz p3, :cond_3

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_4

    .line 345
    :cond_3
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 346
    .local v1, nn:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 347
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_2

    .line 353
    .end local v0           #n:Landroid/os/Message;
    .end local v1           #nn:Landroid/os/Message;
    .end local v2           #p:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 351
    .restart local v0       #n:Landroid/os/Message;
    .restart local v2       #p:Landroid/os/Message;
    :cond_4
    move-object v2, v0

    .line 352
    goto :goto_2

    .line 353
    .end local v0           #n:Landroid/os/Message;
    :cond_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method final removeMessages(Landroid/os/Handler;ILjava/lang/Object;Z)Z
    .locals 6
    .parameter "h"
    .parameter "what"
    .parameter "object"
    .parameter "doRemove"

    .prologue
    const/4 v4, 0x1

    .line 286
    monitor-enter p0

    .line 287
    :try_start_0
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 288
    .local v3, p:Landroid/os/Message;
    const/4 v0, 0x0

    .line 292
    .local v0, found:Z
    :goto_0
    if-eqz v3, :cond_3

    iget-object v5, v3, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v5, p1, :cond_3

    iget v5, v3, Landroid/os/Message;->what:I

    if-ne v5, p2, :cond_3

    if-eqz p3, :cond_0

    iget-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v5, p3, :cond_3

    .line 293
    :cond_0
    if-nez p4, :cond_1

    monitor-exit p0

    .line 318
    :goto_1
    return v4

    .line 294
    :cond_1
    const/4 v0, 0x1

    .line 295
    iget-object v1, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 296
    .local v1, n:Landroid/os/Message;
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 297
    invoke-virtual {v3}, Landroid/os/Message;->recycle()V

    .line 298
    move-object v3, v1

    .line 299
    goto :goto_0

    .line 308
    :cond_2
    const/4 v0, 0x1

    .line 309
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 310
    .local v2, nn:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 311
    iput-object v2, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 302
    .end local v1           #n:Landroid/os/Message;
    .end local v2           #nn:Landroid/os/Message;
    :cond_3
    :goto_2
    if-eqz v3, :cond_6

    .line 303
    iget-object v1, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 304
    .restart local v1       #n:Landroid/os/Message;
    if-eqz v1, :cond_5

    .line 305
    iget-object v5, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v5, p1, :cond_5

    iget v5, v1, Landroid/os/Message;->what:I

    if-ne v5, p2, :cond_5

    if-eqz p3, :cond_4

    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v5, p3, :cond_5

    .line 307
    :cond_4
    if-nez p4, :cond_2

    monitor-exit p0

    goto :goto_1

    .line 319
    .end local v0           #found:Z
    .end local v1           #n:Landroid/os/Message;
    .end local v3           #p:Landroid/os/Message;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 315
    .restart local v0       #found:Z
    .restart local v1       #n:Landroid/os/Message;
    .restart local v3       #p:Landroid/os/Message;
    :cond_5
    move-object v3, v1

    .line 316
    goto :goto_2

    .line 318
    .end local v1           #n:Landroid/os/Message;
    :cond_6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v0

    goto :goto_1
.end method
