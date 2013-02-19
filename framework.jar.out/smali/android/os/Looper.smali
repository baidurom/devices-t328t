.class public Landroid/os/Looper;
.super Ljava/lang/Object;
.source "Looper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Looper$MessageHistoryList;,
        Landroid/os/Looper$MessageHistory;,
        Landroid/os/Looper$Profiler;
    }
.end annotation


# static fields
.field private static IS_USERDEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "Looper"

.field private static mMainLooper:Landroid/os/Looper;

.field static final sThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field private static sWindowManager:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Landroid/view/IWindowManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final threadHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLogging:Landroid/util/Printer;

.field private mMessages:Landroid/os/Looper$MessageHistoryList;

.field final mQueue:Landroid/os/MessageQueue;

.field volatile mRun:Z

.field final mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    .line 72
    const/4 v0, 0x0

    sput-object v0, Landroid/os/Looper;->mMainLooper:Landroid/os/Looper;

    .line 211
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/Looper;->IS_USERDEBUG:Z

    .line 213
    new-instance v0, Landroid/os/Looper$1;

    invoke-direct {v0}, Landroid/os/Looper$1;-><init>()V

    sput-object v0, Landroid/os/Looper;->sWindowManager:Landroid/util/Singleton;

    .line 218
    new-instance v0, Landroid/os/Looper$2;

    invoke-direct {v0}, Landroid/os/Looper$2;-><init>()V

    sput-object v0, Landroid/os/Looper;->threadHandler:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 280
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object v2, p0, Landroid/os/Looper;->mLogging:Landroid/util/Printer;

    .line 369
    iput-object v2, p0, Landroid/os/Looper;->mMessages:Landroid/os/Looper$MessageHistoryList;

    .line 281
    new-instance v0, Landroid/os/MessageQueue;

    invoke-direct {v0}, Landroid/os/MessageQueue;-><init>()V

    iput-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Looper;->mRun:Z

    .line 283
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    .line 286
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 287
    new-instance v0, Landroid/os/Looper$MessageHistoryList;

    invoke-direct {v0, v2}, Landroid/os/Looper$MessageHistoryList;-><init>(Landroid/os/Looper$1;)V

    iput-object v0, p0, Landroid/os/Looper;->mMessages:Landroid/os/Looper$MessageHistoryList;

    .line 290
    :cond_0
    return-void
.end method

.method public static declared-synchronized getMainLooper()Landroid/os/Looper;
    .locals 2

    .prologue
    .line 106
    const-class v0, Landroid/os/Looper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/os/Looper;->mMainLooper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static loop()V
    .locals 33

    .prologue
    .line 114
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v21

    .line 115
    .local v21, me:Landroid/os/Looper;
    if-nez v21, :cond_0

    .line 116
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v29, "No Looper; Looper.prepare() wasn\'t called on this thread."

    move-object/from16 v0, v29

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    :cond_0
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    move-object/from16 v25, v0

    .line 122
    .local v25, queue:Landroid/os/MessageQueue;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 123
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 126
    .local v15, ident:J
    :cond_1
    :goto_0
    invoke-virtual/range {v25 .. v25}, Landroid/os/MessageQueue;->next()Landroid/os/Message;

    move-result-object v3

    .line 127
    .local v3, msg:Landroid/os/Message;
    if-eqz v3, :cond_1

    .line 128
    iget-object v2, v3, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v2, :cond_2

    .line 130
    return-void

    .line 133
    :cond_2
    const-wide/16 v4, 0x0

    .line 134
    .local v4, wallStart:J
    const-wide/16 v8, 0x0

    .line 137
    .local v8, threadStart:J
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/Looper;->mLogging:Landroid/util/Printer;

    move-object/from16 v20, v0

    .line 138
    .local v20, logging:Landroid/util/Printer;
    if-eqz v20, :cond_3

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, ">>>>> Dispatching to "

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v3, Landroid/os/Message;->target:Landroid/os/Handler;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v29, " "

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v3, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v29, ": "

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v3, Landroid/os/Message;->what:I

    move/from16 v29, v0

    move/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 141
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v4

    .line 142
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMicro()J

    move-result-wide v8

    .line 146
    :cond_3
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfilePerformance()I

    move-result v24

    .line 147
    .local v24, performanceFlag:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v27

    .line 148
    .local v27, startTime:J
    const/4 v14, 0x0

    .line 149
    .local v14, headMsg:Landroid/os/Looper$MessageHistory;
    if-lez v24, :cond_4

    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/os/Looper;->mMessages:Landroid/os/Looper$MessageHistoryList;

    if-eqz v2, :cond_4

    .line 150
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/Looper;->mMessages:Landroid/os/Looper$MessageHistoryList;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 151
    :try_start_0
    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/os/Looper;->mMessages:Landroid/os/Looper$MessageHistoryList;

    move-wide/from16 v0, v27

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Looper$MessageHistoryList;->add(Landroid/os/Message;J)Landroid/os/Looper$MessageHistory;

    move-result-object v14

    .line 152
    monitor-exit v29
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :cond_4
    iget-object v2, v3, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 159
    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/os/Looper;->mMessages:Landroid/os/Looper$MessageHistoryList;

    if-eqz v2, :cond_8

    .line 160
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 161
    .local v12, endTime:J
    sub-long v17, v12, v27

    .line 162
    .local v17, lastTime:J
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileUIMessageLimitation()I

    move-result v19

    .line 163
    .local v19, limitationTime:I
    const/16 v26, 0x0

    .line 164
    .local v26, showLog:Z
    sget-boolean v2, Landroid/os/Looper;->IS_USERDEBUG:Z

    if-eqz v2, :cond_5

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v29, v0

    cmp-long v2, v17, v29

    if-lez v2, :cond_5

    invoke-static {}, Lcom/htc/htcjavaflag/HtcUtility;->isTopApp()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 165
    invoke-static {}, Landroid/os/Looper;->showMessageHandleViolation()V

    .line 166
    const/16 v26, 0x1

    .line 168
    :cond_5
    if-lez v24, :cond_7

    .line 169
    const-wide/16 v29, 0x3e8

    cmp-long v2, v17, v29

    if-lez v2, :cond_6

    invoke-static {}, Lcom/htc/htcjavaflag/HtcUtility;->isTopApp()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 170
    const/16 v26, 0x1

    .line 172
    :cond_6
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/Looper;->mMessages:Landroid/os/Looper$MessageHistoryList;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 173
    :try_start_1
    move-wide/from16 v0, v17

    iput-wide v0, v14, Landroid/os/Looper$MessageHistory;->takenTime:J

    .line 174
    monitor-exit v29
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 176
    :cond_7
    if-eqz v26, :cond_8

    .line 177
    const-string v29, "Performance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "More than "

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-wide/16 v31, 0x3e8

    cmp-long v2, v17, v31

    if-lez v2, :cond_b

    const-string v2, "1s"

    :goto_1
    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v30, " to handle "

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v3, Landroid/os/Message;->target:Landroid/os/Handler;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v30, " "

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v3, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v30, ": "

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v3, Landroid/os/Message;->what:I

    move/from16 v30, v0

    move/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v30, ", "

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v17

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v30, "ms, start="

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v27

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .end local v12           #endTime:J
    .end local v17           #lastTime:J
    .end local v19           #limitationTime:I
    .end local v26           #showLog:Z
    :cond_8
    if-eqz v20, :cond_9

    .line 185
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v29

    sub-long v6, v29, v4

    .line 186
    .local v6, wallTime:J
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMicro()J

    move-result-wide v29

    sub-long v10, v29, v8

    .line 188
    .local v10, threadTime:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "<<<<< Finished to "

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v3, Landroid/os/Message;->target:Landroid/os/Handler;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v29, " "

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v3, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 189
    move-object/from16 v0, v20

    instance-of v2, v0, Landroid/os/Looper$Profiler;

    if-eqz v2, :cond_9

    move-object/from16 v2, v20

    .line 190
    check-cast v2, Landroid/os/Looper$Profiler;

    invoke-interface/range {v2 .. v11}, Landroid/os/Looper$Profiler;->profile(Landroid/os/Message;JJJJ)V

    .line 197
    .end local v6           #wallTime:J
    .end local v10           #threadTime:J
    :cond_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 198
    .local v22, newIdent:J
    cmp-long v2, v15, v22

    if-eqz v2, :cond_a

    .line 199
    const-string v2, "Looper"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Thread identity changed from 0x"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " to 0x"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " while dispatching to "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget-object v0, v3, Landroid/os/Message;->target:Landroid/os/Handler;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget-object v0, v3, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " what="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget v0, v3, Landroid/os/Message;->what:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_a
    invoke-virtual {v3}, Landroid/os/Message;->recycle()V

    goto/16 :goto_0

    .line 152
    .end local v22           #newIdent:J
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v29
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 174
    .restart local v12       #endTime:J
    .restart local v17       #lastTime:J
    .restart local v19       #limitationTime:I
    .restart local v26       #showLog:Z
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v29
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 177
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v31, "ms"

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1
.end method

.method public static myLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 255
    sget-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    return-object v0
.end method

.method public static myQueue()Landroid/os/MessageQueue;
    .locals 1

    .prologue
    .line 277
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v0, v0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    return-object v0
.end method

.method public static prepare()V
    .locals 2

    .prologue
    .line 81
    sget-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Only one Looper may be created per thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    sget-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    new-instance v1, Landroid/os/Looper;

    invoke-direct {v1}, Landroid/os/Looper;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public static prepareMainLooper()V
    .locals 2

    .prologue
    .line 94
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 95
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Looper;->setMainLooper(Landroid/os/Looper;)V

    .line 96
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v0, v0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    .line 97
    return-void
.end method

.method private static declared-synchronized setMainLooper(Landroid/os/Looper;)V
    .locals 2
    .parameter "looper"

    .prologue
    .line 100
    const-class v0, Landroid/os/Looper;

    monitor-enter v0

    :try_start_0
    sput-object p0, Landroid/os/Looper;->mMainLooper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit v0

    return-void

    .line 100
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static showMessageHandleViolation()V
    .locals 6

    .prologue
    .line 225
    sget-boolean v2, Landroid/os/Looper;->IS_USERDEBUG:Z

    if-nez v2, :cond_1

    .line 248
    .local v0, doFlashes:Z
    :cond_0
    :goto_0
    return-void

    .line 228
    .end local v0           #doFlashes:Z
    :cond_1
    const-string/jumbo v2, "persist.sys.strictmode.visual"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 229
    .restart local v0       #doFlashes:Z
    if-eqz v0, :cond_0

    .line 230
    sget-object v2, Landroid/os/Looper;->sWindowManager:Landroid/util/Singleton;

    invoke-virtual {v2}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/IWindowManager;

    .line 231
    .local v1, windowManager:Landroid/view/IWindowManager;
    if-eqz v1, :cond_2

    .line 233
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->showMessageHandleViolation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :cond_2
    :goto_1
    sget-object v2, Landroid/os/Looper;->threadHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v3, Landroid/os/Looper$3;

    invoke-direct {v3, v1}, Landroid/os/Looper$3;-><init>(Landroid/view/IWindowManager;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 234
    :catch_0
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 15
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 314
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfilePerformance()I

    move-result v9

    if-lez v9, :cond_2

    iget-object v9, p0, Landroid/os/Looper;->mMessages:Landroid/os/Looper$MessageHistoryList;

    if-eqz v9, :cond_2

    .line 315
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "===== Message History (Most recent to least recent) ====="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 316
    iget-object v10, p0, Landroid/os/Looper;->mMessages:Landroid/os/Looper$MessageHistoryList;

    monitor-enter v10

    .line 317
    :try_start_0
    iget-object v9, p0, Landroid/os/Looper;->mMessages:Landroid/os/Looper$MessageHistoryList;

    invoke-virtual {v9}, Landroid/os/Looper$MessageHistoryList;->size()I

    move-result v8

    .line 318
    .local v8, numOfSize:I
    :goto_0
    if-lez v8, :cond_1

    .line 319
    add-int/lit8 v8, v8, -0x1

    .line 320
    iget-object v9, p0, Landroid/os/Looper;->mMessages:Landroid/os/Looper$MessageHistoryList;

    invoke-virtual {v9, v8}, Landroid/os/Looper$MessageHistoryList;->get(I)Landroid/os/Looper$MessageHistory;

    move-result-object v1

    .line 322
    .local v1, history:Landroid/os/Looper$MessageHistory;
    iget-wide v11, v1, Landroid/os/Looper$MessageHistory;->takenTime:J

    const-wide/16 v13, -0x1

    cmp-long v9, v11, v13

    if-nez v9, :cond_0

    .line 323
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iget-wide v13, v1, Landroid/os/Looper$MessageHistory;->startTime:J

    sub-long v2, v11, v13

    .line 324
    .local v2, lastTime:J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v1, Landroid/os/Looper$MessageHistory;->msg_target:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v1, Landroid/os/Looper$MessageHistory;->msg_callback:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ": "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v1, Landroid/os/Looper$MessageHistory;->msg_what:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "Unfinished("

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, "ms), start="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v11, v1, Landroid/os/Looper$MessageHistory;->startTime:J

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 333
    .end local v1           #history:Landroid/os/Looper$MessageHistory;
    .end local v2           #lastTime:J
    .end local v8           #numOfSize:I
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 328
    .restart local v1       #history:Landroid/os/Looper$MessageHistory;
    .restart local v8       #numOfSize:I
    :cond_0
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v1, Landroid/os/Looper$MessageHistory;->msg_target:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v1, Landroid/os/Looper$MessageHistory;->msg_callback:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ": "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v1, Landroid/os/Looper$MessageHistory;->msg_what:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v11, v1, Landroid/os/Looper$MessageHistory;->takenTime:J

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, "ms, start="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v11, v1, Landroid/os/Looper$MessageHistory;->startTime:J

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 333
    .end local v1           #history:Landroid/os/Looper$MessageHistory;
    :cond_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    .end local v8           #numOfSize:I
    :cond_2
    invoke-static/range {p1 .. p2}, Landroid/util/PrefixPrinter;->create(Landroid/util/Printer;Ljava/lang/String;)Landroid/util/Printer;

    move-result-object p1

    .line 337
    invoke-virtual {p0}, Landroid/os/Looper;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 338
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mRun="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Landroid/os/Looper;->mRun:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 339
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mThread="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 340
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mQueue="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    if-eqz v9, :cond_3

    iget-object v9, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    :goto_1
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 341
    iget-object v9, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    if-eqz v9, :cond_5

    .line 342
    iget-object v10, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    monitor-enter v10

    .line 343
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 344
    .local v6, now:J
    iget-object v9, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    iget-object v4, v9, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 345
    .local v4, msg:Landroid/os/Message;
    const/4 v5, 0x0

    .line 346
    .local v5, n:I
    :goto_2
    if-eqz v4, :cond_4

    .line 347
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Message "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ": "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4, v6, v7}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 348
    add-int/lit8 v5, v5, 0x1

    .line 349
    iget-object v4, v4, Landroid/os/Message;->next:Landroid/os/Message;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 340
    .end local v4           #msg:Landroid/os/Message;
    .end local v5           #n:I
    .end local v6           #now:J
    :cond_3
    const-string v9, "(null"

    goto :goto_1

    .line 351
    .restart local v4       #msg:Landroid/os/Message;
    .restart local v5       #n:I
    .restart local v6       #now:J
    :cond_4
    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "(Total messages: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ")"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 352
    monitor-exit v10

    .line 354
    .end local v4           #msg:Landroid/os/Message;
    .end local v5           #n:I
    .end local v6           #now:J
    :cond_5
    return-void

    .line 352
    :catchall_1
    move-exception v9

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v9
.end method

.method public getQueue()Landroid/os/MessageQueue;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    return-object v0
.end method

.method public getThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public quit()V
    .locals 4

    .prologue
    .line 293
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 297
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/MessageQueue;->enqueueMessage(Landroid/os/Message;J)Z

    .line 298
    return-void
.end method

.method public setMessageLogging(Landroid/util/Printer;)V
    .locals 0
    .parameter "printer"

    .prologue
    .line 268
    iput-object p1, p0, Landroid/os/Looper;->mLogging:Landroid/util/Printer;

    .line 269
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Looper{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
