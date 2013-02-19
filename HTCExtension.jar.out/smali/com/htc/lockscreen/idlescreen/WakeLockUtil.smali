.class public Lcom/htc/lockscreen/idlescreen/WakeLockUtil;
.super Ljava/lang/Object;
.source "WakeLockUtil.java"


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "WakeLockUtil"

.field private static final MAX_REMINDER_WAKELOCK_TIME:I = 0x927c0

.field private static final MAX_WAKELOCK_TIME:I = 0x3a98

.field private static sCommandLock:Landroid/os/PowerManager$WakeLock;

.field private static sReminderWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static sUIWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized UIWakeLock(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "bLock"

    .prologue
    .line 90
    const-class v3, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;

    monitor-enter v3

    if-eqz p1, :cond_3

    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, old:Landroid/os/PowerManager$WakeLock;
    :try_start_0
    sget-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sUIWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    .line 93
    sget-object v0, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sUIWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 94
    const/4 v2, 0x0

    sput-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sUIWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 96
    :cond_0
    sget-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sUIWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_1

    .line 97
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 98
    .local v1, pm:Landroid/os/PowerManager;
    const/16 v2, 0x1a

    const-string v4, "IdleScreen:UI"

    invoke-virtual {v1, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sUIWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 100
    sget-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sUIWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 101
    sget-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sUIWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x3a98

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 102
    const-string v2, "WakeLockUtil"

    const-string v4, "UIWakeLock acquire"

    invoke-static {v2, v4}, Lcom/htc/lockscreen/idlescreen/ISLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_1
    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .end local v0           #old:Landroid/os/PowerManager$WakeLock;
    :cond_2
    :goto_0
    monitor-exit v3

    return-void

    .line 110
    :cond_3
    :try_start_1
    sget-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sUIWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_2

    .line 111
    sget-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sUIWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 112
    const/4 v2, 0x0

    sput-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sUIWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 113
    const-string v2, "WakeLockUtil"

    const-string v4, "UIWakeLock release"

    invoke-static {v2, v4}, Lcom/htc/lockscreen/idlescreen/ISLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized commandWakeLock(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "bLock"

    .prologue
    .line 123
    const-class v3, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;

    monitor-enter v3

    if-eqz p1, :cond_3

    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, old:Landroid/os/PowerManager$WakeLock;
    :try_start_0
    sget-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sCommandLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    .line 126
    sget-object v0, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sCommandLock:Landroid/os/PowerManager$WakeLock;

    .line 127
    const/4 v2, 0x0

    sput-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sCommandLock:Landroid/os/PowerManager$WakeLock;

    .line 129
    :cond_0
    sget-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sCommandLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_1

    .line 130
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 131
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v4, "IdleScreen:command"

    invoke-virtual {v1, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sCommandLock:Landroid/os/PowerManager$WakeLock;

    .line 133
    sget-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sCommandLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 134
    sget-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sCommandLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x3a98

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 135
    const-string v2, "WakeLockUtil"

    const-string v4, "sCommandLock acquire"

    invoke-static {v2, v4}, Lcom/htc/lockscreen/idlescreen/ISLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_1
    if-eqz v0, :cond_2

    .line 138
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .end local v0           #old:Landroid/os/PowerManager$WakeLock;
    :cond_2
    :goto_0
    monitor-exit v3

    return-void

    .line 143
    :cond_3
    :try_start_1
    sget-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sCommandLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_2

    .line 144
    sget-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sCommandLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 145
    const/4 v2, 0x0

    sput-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sCommandLock:Landroid/os/PowerManager$WakeLock;

    .line 146
    const-string v2, "WakeLockUtil"

    const-string v4, "sCommandLock release"

    invoke-static {v2, v4}, Lcom/htc/lockscreen/idlescreen/ISLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized eventWakeLock(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "bLock"

    .prologue
    .line 57
    const-class v3, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;

    monitor-enter v3

    if-eqz p1, :cond_3

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, old:Landroid/os/PowerManager$WakeLock;
    :try_start_0
    sget-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    .line 60
    sget-object v0, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 61
    const/4 v2, 0x0

    sput-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 63
    :cond_0
    sget-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_1

    .line 64
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 65
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v4, "IdleScreen:event"

    invoke-virtual {v1, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 67
    sget-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 68
    sget-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x3a98

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 69
    const-string v2, "WakeLockUtil"

    const-string v4, "eventWakeLock acquire"

    invoke-static {v2, v4}, Lcom/htc/lockscreen/idlescreen/ISLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_1
    if-eqz v0, :cond_2

    .line 72
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .end local v0           #old:Landroid/os/PowerManager$WakeLock;
    :cond_2
    :goto_0
    monitor-exit v3

    return-void

    .line 77
    :cond_3
    :try_start_1
    sget-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_2

    .line 78
    sget-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 79
    const/4 v2, 0x0

    sput-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 80
    const-string v2, "WakeLockUtil"

    const-string v4, "eventWakeLock release"

    invoke-static {v2, v4}, Lcom/htc/lockscreen/idlescreen/ISLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized reminderWakeLock(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "bLock"

    .prologue
    .line 23
    const-class v3, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;

    monitor-enter v3

    :try_start_0
    const-string v2, "WakeLockUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reminderWakeLock bLock:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/lockscreen/idlescreen/ISLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    if-eqz p1, :cond_3

    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, old:Landroid/os/PowerManager$WakeLock;
    sget-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sReminderWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    .line 27
    sget-object v0, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sReminderWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 28
    const/4 v2, 0x0

    sput-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sReminderWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 30
    :cond_0
    sget-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sReminderWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_1

    .line 31
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 32
    .local v1, pm:Landroid/os/PowerManager;
    const/16 v2, 0x1a

    const-string v4, "IdleScreen:reminder"

    invoke-virtual {v1, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sReminderWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 34
    sget-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sReminderWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 35
    sget-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sReminderWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v4, 0x927c0

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 36
    const-string v2, "WakeLockUtil"

    const-string v4, "sReminderWakeLock acquire"

    invoke-static {v2, v4}, Lcom/htc/lockscreen/idlescreen/ISLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_1
    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .end local v0           #old:Landroid/os/PowerManager$WakeLock;
    :cond_2
    :goto_0
    monitor-exit v3

    return-void

    .line 44
    :cond_3
    :try_start_1
    sget-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sReminderWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_2

    .line 45
    sget-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sReminderWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 46
    const/4 v2, 0x0

    sput-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sReminderWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 47
    const-string v2, "WakeLockUtil"

    const-string v4, "sReminderWakeLock release"

    invoke-static {v2, v4}, Lcom/htc/lockscreen/idlescreen/ISLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 23
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
