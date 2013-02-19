.class public abstract Lcom/htc/socialnetwork/account/AccountReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccountReceiver.java"


# static fields
.field public static final ACTION_REQUEST_LOGIN:Ljava/lang/String; = "com.htc.socialnetwork.account.REQUEST_LOGIN"

.field public static final ACTION_SOCIAL_GET_SYNC_INTERVAL:Ljava/lang/String; = "com.htc.social.getSyncInterval"

.field public static final ACTION_SOCIAL_SET_SYNC_INTERVAL:Ljava/lang/String; = "com.htc.social.setSyncInterval"

.field public static final ACTION_SOCIAL_SYNC_INTERVAL:Ljava/lang/String; = "com.htc.social.SyncInterval"

.field public static final EXTRA_NAME_SOCIAL_SERVICE:Ljava/lang/String; = "social_service"

.field private static final HANDLED_BY_PARENT:Ljava/lang/String; = "HANDLED_BY_PARENT"

.field private static final LOG_TAG:Ljava/lang/String; = "AccountReceiver"

.field public static final SYNC_SERVICE:Ljava/lang/String; = "com.htc.socialnetwork.account.SYNC_SERVICE"

.field protected static volatile mAlarmSender:Landroid/app/PendingIntent;


# instance fields
.field mContext:Landroid/content/Context;

.field syncThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/socialnetwork/account/AccountReceiver;->syncThread:Ljava/lang/Thread;

    return-void
.end method

.method public static doAfterLoginAccount(Landroid/content/Context;Landroid/accounts/Account;[Ljava/lang/String;J)V
    .locals 8
    .parameter "context"
    .parameter "account"
    .parameter "providers"
    .parameter "syncInterval"

    .prologue
    const/4 v7, 0x1

    .line 125
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 126
    .local v3, provider:Ljava/lang/String;
    const-string v4, "AccountReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is syncable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1, v3}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {p1, v3}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_0

    .line 129
    invoke-static {p1, v3, v7}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 131
    :cond_0
    invoke-static {p1, v3, v7}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v3           #provider:Ljava/lang/String;
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-lez v4, :cond_2

    .line 134
    invoke-static {p0, p3, p4, v7}, Lcom/htc/socialnetwork/account/AccountReceiver;->reScheduleAlarm(Landroid/content/Context;JZ)V

    .line 137
    :cond_2
    return-void
.end method

.method public static getSingleLoginAccountForType(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;
    .locals 2
    .parameter "context"
    .parameter "type"

    .prologue
    .line 145
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 147
    .local v0, accounts:[Landroid/accounts/Account;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 148
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 150
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isHandledByParent(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 166
    const-string v0, "HANDLED_BY_PARENT"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static reScheduleAlarm(Landroid/content/Context;JZ)V
    .locals 10
    .parameter "context"
    .parameter "updateInterval"
    .parameter "startNow"

    .prologue
    const/4 v2, 0x0

    .line 42
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 43
    .local v0, am:Landroid/app/AlarmManager;
    sget-object v1, Lcom/htc/socialnetwork/account/AccountReceiver;->mAlarmSender:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 44
    sget-object v1, Lcom/htc/socialnetwork/account/AccountReceiver;->mAlarmSender:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 45
    const/4 v1, 0x0

    sput-object v1, Lcom/htc/socialnetwork/account/AccountReceiver;->mAlarmSender:Landroid/app/PendingIntent;

    .line 47
    :cond_0
    if-eqz p3, :cond_1

    const-wide/16 v7, 0x0

    .line 48
    .local v7, startOffset:J
    :goto_0
    new-instance v9, Landroid/content/Intent;

    const-string v1, "com.htc.socialnetwork.account.SYNC_SERVICE"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .local v9, syncIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    invoke-static {p0, v2, v9, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    sput-object v1, Lcom/htc/socialnetwork/account/AccountReceiver;->mAlarmSender:Landroid/app/PendingIntent;

    .line 51
    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v7

    sget-object v6, Lcom/htc/socialnetwork/account/AccountReceiver;->mAlarmSender:Landroid/app/PendingIntent;

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 55
    return-void

    .end local v7           #startOffset:J
    .end local v9           #syncIntent:Landroid/content/Intent;
    :cond_1
    move-wide v7, p1

    .line 47
    goto :goto_0
.end method


# virtual methods
.method public abstract getAccountType()Ljava/lang/String;
.end method

.method public getSyncInterval(Landroid/content/Context;)J
    .locals 2
    .parameter "context"

    .prologue
    .line 140
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract getSyncableProviders()[Ljava/lang/String;
.end method

.method public onAccountLogout(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 159
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 61
    iput-object p1, p0, Lcom/htc/socialnetwork/account/AccountReceiver;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, action:Ljava/lang/String;
    const-string v4, "com.htc.socialnetwork.account.SYNC_SERVICE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 64
    const-string v4, "HANDLED_BY_PARENT"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 65
    iget-object v4, p0, Lcom/htc/socialnetwork/account/AccountReceiver;->syncThread:Ljava/lang/Thread;

    if-nez v4, :cond_0

    .line 66
    new-instance v4, Lcom/htc/socialnetwork/account/AccountReceiver$1;

    invoke-direct {v4, p0}, Lcom/htc/socialnetwork/account/AccountReceiver$1;-><init>(Lcom/htc/socialnetwork/account/AccountReceiver;)V

    iput-object v4, p0, Lcom/htc/socialnetwork/account/AccountReceiver;->syncThread:Ljava/lang/Thread;

    .line 80
    iget-object v4, p0, Lcom/htc/socialnetwork/account/AccountReceiver;->syncThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    const-string v4, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 83
    const-string v4, "HANDLED_BY_PARENT"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0}, Lcom/htc/socialnetwork/account/AccountReceiver;->getAccountType()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/htc/socialnetwork/account/AccountReceiver;->getSingleLoginAccountForType(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 86
    .local v0, account:Landroid/accounts/Account;
    if-nez v0, :cond_0

    .line 93
    const-string v4, "alarm"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 95
    .local v3, am:Landroid/app/AlarmManager;
    sget-object v4, Lcom/htc/socialnetwork/account/AccountReceiver;->mAlarmSender:Landroid/app/PendingIntent;

    if-eqz v4, :cond_2

    .line 96
    sget-object v4, Lcom/htc/socialnetwork/account/AccountReceiver;->mAlarmSender:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 97
    const/4 v4, 0x0

    sput-object v4, Lcom/htc/socialnetwork/account/AccountReceiver;->mAlarmSender:Landroid/app/PendingIntent;

    .line 99
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/socialnetwork/account/AccountReceiver;->onAccountLogout(Landroid/content/Context;)V

    goto :goto_0

    .line 101
    .end local v0           #account:Landroid/accounts/Account;
    .end local v3           #am:Landroid/app/AlarmManager;
    :cond_3
    const-string v4, "com.htc.socialnetwork.account.REQUEST_LOGIN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/htc/socialnetwork/account/AccountReceiver;->getAccountType()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, accountType:Ljava/lang/String;
    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 104
    new-instance v4, Lcom/htc/socialnetwork/account/AccountReceiver$2;

    invoke-direct {v4, p0, p2, v1, p1}, Lcom/htc/socialnetwork/account/AccountReceiver$2;-><init>(Lcom/htc/socialnetwork/account/AccountReceiver;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/htc/socialnetwork/account/AccountReceiver$2;->start()V

    goto :goto_0
.end method
