.class public Lcom/baidu/service/power/Policy;
.super Lcom/baidu/service/power/IPolicy$Stub;
.source "Policy.java"


# static fields
.field static final ACTION_TYPE_APPLY_PROFILE:I = 0x0

.field private static final AUTO_CLEAN_DELAY_MS:I = 0xea60

.field public static final CANCEL_AND_CHECK:I = 0x2

.field public static final CANCEL_NOT_CHECK:I = 0x3

.field public static final DO_NOT_ENTER_LOW_BATTERY:I = 0x2

.field public static final ENTER_LOW_BATTERY_AUTO:I = 0x0

.field public static final ENTER_LOW_BATTERY_PROMPT:I = 0x1

.field public static final OK_AND_CHECK:I = 0x0

.field public static final OK_NOT_CHECK:I = 0x1

.field static final TASK_ACTION:Ljava/lang/String; = "actions"

.field static final TASK_TRIGGER:Ljava/lang/String; = "trigger"


# instance fields
.field isApplied:Z

.field mActionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/service/power/Action;",
            ">;"
        }
    .end annotation
.end field

.field mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/service/power/Action;",
            ">;"
        }
    .end annotation
.end field

.field mAutoClean:Z

.field mDisableData:Z

.field private mHandler:Landroid/os/Handler;

.field mId:I

.field mIsActive:Z

.field mName:Ljava/lang/String;

.field mProfile:Lcom/baidu/service/power/Profile;

.field mRecoveryId:I

.field mRecoveryProfile:Lcom/baidu/service/power/Profile;

.field mTrigger:Lcom/baidu/service/power/Trigger;

.field mVisibility:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/baidu/service/power/IPolicy$Stub;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/service/power/Policy;->mActions:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/service/power/Policy;->mActionMap:Ljava/util/HashMap;

    .line 78
    iput-boolean v1, p0, Lcom/baidu/service/power/Policy;->isApplied:Z

    .line 79
    iput v1, p0, Lcom/baidu/service/power/Policy;->mRecoveryId:I

    .line 81
    iput-boolean v1, p0, Lcom/baidu/service/power/Policy;->mDisableData:Z

    .line 82
    iput-boolean v1, p0, Lcom/baidu/service/power/Policy;->mAutoClean:Z

    return-void
.end method

.method private cancelAlarm(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 398
    const-string v3, "SmartPowerService"

    const-string v4, "cancelAlarm"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-static {}, Lcom/baidu/service/power/PowerModeManager;->getInstance()Lcom/baidu/service/power/PowerModeManager;

    move-result-object v2

    .line 400
    .local v2, pm:Lcom/baidu/service/power/PowerModeManager;
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 401
    .local v0, manager:Landroid/app/AlarmManager;
    invoke-virtual {v2}, Lcom/baidu/service/power/PowerModeManager;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    .line 402
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    if-eqz v1, :cond_0

    .line 403
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 404
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/baidu/service/power/PowerModeManager;->setPendingIntent(Landroid/app/PendingIntent;)V

    .line 406
    :cond_0
    return-void
.end method

.method private generateIftttTask()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 119
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 121
    .local v2, json:Lorg/json/JSONObject;
    :try_start_0
    iget-object v4, p0, Lcom/baidu/service/power/Policy;->mTrigger:Lcom/baidu/service/power/Trigger;

    invoke-virtual {v4}, Lcom/baidu/service/power/Trigger;->generateJson()Lorg/json/JSONObject;

    move-result-object v3

    .line 122
    .local v3, triggerJson:Lorg/json/JSONObject;
    const-string/jumbo v4, "trigger"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 124
    .local v0, actionJson:Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/baidu/service/power/Policy;->mActions:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/service/power/Action;

    invoke-virtual {v4}, Lcom/baidu/service/power/Action;->generateJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 125
    iget-object v4, p0, Lcom/baidu/service/power/Policy;->mActions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v6, :cond_0

    .line 126
    iget-object v4, p0, Lcom/baidu/service/power/Policy;->mActions:Ljava/util/List;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/service/power/Action;

    invoke-virtual {v4}, Lcom/baidu/service/power/Action;->generateJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 128
    :cond_0
    const-string v4, "actions"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v0           #actionJson:Lorg/json/JSONArray;
    .end local v3           #triggerJson:Lorg/json/JSONObject;
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 129
    :catch_0
    move-exception v1

    .line 130
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private getForegroundPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 409
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 410
    .local v0, activityManager:Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 411
    .local v1, taskInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 412
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 414
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private playLowBatterySound(Landroid/content/Context;)V
    .locals 7
    .parameter "ctx"

    .prologue
    const/4 v6, 0x1

    .line 362
    const-string v4, "SmartPowerService"

    const-string/jumbo v5, "playing low battery sound"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 365
    .local v0, cr:Landroid/content/ContentResolver;
    const-string/jumbo v4, "power_sounds_enabled"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 366
    const-string v4, "low_battery_sound"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 368
    .local v2, soundPath:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 369
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 370
    .local v3, soundUri:Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 371
    invoke-static {p1, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 372
    .local v1, sfx:Landroid/media/Ringtone;
    if-eqz v1, :cond_0

    .line 373
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 374
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 379
    .end local v1           #sfx:Landroid/media/Ringtone;
    .end local v2           #soundPath:Ljava/lang/String;
    .end local v3           #soundUri:Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private registerIftttTask(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "task"

    .prologue
    .line 136
    const-string v3, "SmartPowerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "register ifttt task: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v3, "Ifttt"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 138
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/baidu/ifttt/IIftttService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/baidu/ifttt/IIftttService;

    move-result-object v2

    .line 140
    .local v2, service:Lcom/baidu/ifttt/IIftttService;
    :try_start_0
    invoke-interface {v2, p2}, Lcom/baidu/ifttt/IIftttService;->registerTask4Str(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v1

    .line 142
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "text"

    .prologue
    .line 382
    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 383
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 384
    return-void
.end method

.method private startAlarm(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 387
    const-string v4, "SmartPowerService"

    const-string/jumbo v5, "startAlarm"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-static {}, Lcom/baidu/service/power/PowerModeManager;->getInstance()Lcom/baidu/service/power/PowerModeManager;

    move-result-object v3

    .line 389
    .local v3, pm:Lcom/baidu/service/power/PowerModeManager;
    const-string v4, "alarm"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 390
    .local v1, manager:Landroid/app/AlarmManager;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.baidu.smartpm.ACTION_AUTO_CLEAN"

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 391
    .local v0, alarmIntent:Landroid/content/Intent;
    invoke-static {p1, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 392
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0xea60

    add-long/2addr v5, v7

    invoke-virtual {v1, v4, v5, v6, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 394
    invoke-virtual {v3, v2}, Lcom/baidu/service/power/PowerModeManager;->setPendingIntent(Landroid/app/PendingIntent;)V

    .line 395
    return-void
.end method

.method private unregisterIftttTask(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "task"

    .prologue
    .line 147
    const-string v3, "Ifttt"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 148
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/baidu/ifttt/IIftttService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/baidu/ifttt/IIftttService;

    move-result-object v2

    .line 150
    .local v2, service:Lcom/baidu/ifttt/IIftttService;
    :try_start_0
    invoke-interface {v2, p2}, Lcom/baidu/ifttt/IIftttService;->unregisterTask4Str(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method addAction(Lcom/baidu/service/power/Action;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/baidu/service/power/Policy;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, Lcom/baidu/service/power/Policy;->mActionMap:Ljava/util/HashMap;

    iget v1, p1, Lcom/baidu/service/power/Action;->mType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget v0, p1, Lcom/baidu/service/power/Action;->mRecoveryId:I

    if-lez v0, :cond_0

    .line 165
    iget v0, p1, Lcom/baidu/service/power/Action;->mRecoveryId:I

    iput v0, p0, Lcom/baidu/service/power/Policy;->mRecoveryId:I

    .line 167
    :cond_0
    return-void
.end method

.method public applyPolicy(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 86
    const-string v3, "SmartPowerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyPolicy.mTrigger = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/service/power/Policy;->mTrigger:Lcom/baidu/service/power/Trigger;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mAction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/service/power/Policy;->mActions:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", applied = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/baidu/service/power/Policy;->isApplied:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-boolean v3, p0, Lcom/baidu/service/power/Policy;->isApplied:Z

    if-nez v3, :cond_1

    .line 88
    invoke-direct {p0}, Lcom/baidu/service/power/Policy;->generateIftttTask()Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, task:Ljava/lang/String;
    invoke-direct {p0, p1, v2}, Lcom/baidu/service/power/Policy;->registerIftttTask(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    iget-object v3, p0, Lcom/baidu/service/power/Policy;->mActions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/service/power/Action;

    .line 91
    .local v0, a:Lcom/baidu/service/power/Action;
    invoke-virtual {v0, p1, p0}, Lcom/baidu/service/power/Action;->prepare(Landroid/content/Context;Lcom/baidu/service/power/Policy;)V

    goto :goto_0

    .line 93
    .end local v0           #a:Lcom/baidu/service/power/Action;
    :cond_0
    iget-object v3, p0, Lcom/baidu/service/power/Policy;->mTrigger:Lcom/baidu/service/power/Trigger;

    invoke-virtual {v3, p1}, Lcom/baidu/service/power/Trigger;->prepare(Landroid/content/Context;)V

    .line 94
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/baidu/service/power/Policy;->isApplied:Z

    .line 96
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #task:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method doAction(Landroid/content/Context;I)V
    .locals 13
    .parameter "context"
    .parameter "type"

    .prologue
    .line 182
    const-string v10, "SmartPowerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "doAction! policy id "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/baidu/service/power/Policy;->mId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " doAction(). type = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-static {}, Lcom/baidu/service/power/PowerModeManager;->getInstance()Lcom/baidu/service/power/PowerModeManager;

    move-result-object v4

    .line 185
    .local v4, pm:Lcom/baidu/service/power/PowerModeManager;
    invoke-virtual {v4}, Lcom/baidu/service/power/PowerModeManager;->getPowerModeList()Ljava/util/ArrayList;

    move-result-object v2

    .line 186
    .local v2, modes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/service/power/PowerMode;>;"
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/service/power/PowerMode;

    .line 187
    .local v3, normalMode:Lcom/baidu/service/power/PowerMode;
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/service/power/PowerMode;

    .line 189
    .local v7, superMode:Lcom/baidu/service/power/PowerMode;
    packed-switch p2, :pswitch_data_0

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 191
    :pswitch_0
    iget v10, p0, Lcom/baidu/service/power/Policy;->mRecoveryId:I

    if-lez v10, :cond_4

    .line 192
    iget v10, p0, Lcom/baidu/service/power/Policy;->mId:I

    if-nez v10, :cond_2

    .line 193
    iget v10, p0, Lcom/baidu/service/power/Policy;->mRecoveryId:I

    invoke-virtual {v4, p1, v10}, Lcom/baidu/service/power/PowerModeManager;->applyRecoveryPolicy(Landroid/content/Context;I)V

    .line 194
    iget-boolean v10, p0, Lcom/baidu/service/power/Policy;->mDisableData:Z

    if-eqz v10, :cond_1

    .line 195
    invoke-static {p1}, Lcom/baidu/service/power/ProfileUtil;->getMobileData(Landroid/content/Context;)Z

    move-result v1

    .line 196
    .local v1, isMobileDataEnabled:Z
    const-string v10, "SmartPowerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "shutdown mobile data: isMobileDataEnabled="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {v4, v1}, Lcom/baidu/service/power/PowerModeManager;->setPreDataStatus(Z)V

    .line 198
    if-eqz v1, :cond_1

    .line 199
    const/4 v10, 0x0

    invoke-static {p1, v10}, Lcom/baidu/service/power/ProfileUtil;->setMobileData(Landroid/content/Context;Z)V

    .line 202
    .end local v1           #isMobileDataEnabled:Z
    :cond_1
    iget-boolean v10, p0, Lcom/baidu/service/power/Policy;->mAutoClean:Z

    if-eqz v10, :cond_0

    .line 203
    invoke-direct {p0, p1}, Lcom/baidu/service/power/Policy;->getForegroundPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, foregroundPackage:Ljava/lang/String;
    invoke-virtual {v4, v0}, Lcom/baidu/service/power/PowerModeManager;->setForegroundPackage(Ljava/lang/String;)V

    .line 205
    invoke-direct {p0, p1}, Lcom/baidu/service/power/Policy;->startAlarm(Landroid/content/Context;)V

    goto :goto_0

    .line 210
    .end local v0           #foregroundPackage:Ljava/lang/String;
    :cond_2
    iget v10, p0, Lcom/baidu/service/power/Policy;->mId:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 211
    const-string v10, "SmartPowerService"

    const-string v11, "low battery policy trigger!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "battery_low_prompt"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 214
    .local v6, prompt:I
    if-nez v6, :cond_3

    .line 215
    invoke-virtual {p0, p1}, Lcom/baidu/service/power/Policy;->enterBatteryLow(Landroid/content/Context;)V

    goto :goto_0

    .line 216
    :cond_3
    const/4 v10, 0x1

    if-ne v6, v10, :cond_0

    iget-boolean v10, v7, Lcom/baidu/service/power/PowerMode;->mIsActive:Z

    if-nez v10, :cond_0

    .line 217
    iget-object v10, p0, Lcom/baidu/service/power/Policy;->mTrigger:Lcom/baidu/service/power/Trigger;

    iget-object v8, v10, Lcom/baidu/service/power/Trigger;->mCondition:Lcom/baidu/service/power/TriggerCondition;

    .line 218
    .local v8, tc:Lcom/baidu/service/power/TriggerCondition;
    iget v9, v8, Lcom/baidu/service/power/TriggerCondition;->mData1:I

    .line 219
    .local v9, value:I
    invoke-virtual {p0, p1, v9}, Lcom/baidu/service/power/Policy;->showAlertDialog(Landroid/content/Context;I)V

    .line 220
    invoke-direct {p0, p1}, Lcom/baidu/service/power/Policy;->playLowBatterySound(Landroid/content/Context;)V

    goto :goto_0

    .line 224
    .end local v6           #prompt:I
    .end local v8           #tc:Lcom/baidu/service/power/TriggerCondition;
    .end local v9           #value:I
    :cond_4
    iget v10, p0, Lcom/baidu/service/power/Policy;->mId:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    .line 225
    iget-boolean v10, p0, Lcom/baidu/service/power/Policy;->mDisableData:Z

    if-eqz v10, :cond_6

    .line 226
    invoke-virtual {v4}, Lcom/baidu/service/power/PowerModeManager;->getPreDataStatus()Z

    move-result v5

    .line 227
    .local v5, preDataStatus:Z
    const-string v10, "SmartPowerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "open mobile data: preDataStatus="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    if-eqz v5, :cond_5

    iget-boolean v10, v7, Lcom/baidu/service/power/PowerMode;->mIsActive:Z

    if-nez v10, :cond_5

    .line 229
    const/4 v10, 0x1

    invoke-static {p1, v10}, Lcom/baidu/service/power/ProfileUtil;->setMobileData(Landroid/content/Context;Z)V

    .line 231
    :cond_5
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/baidu/service/power/PowerModeManager;->setPreDataStatus(Z)V

    .line 236
    .end local v5           #preDataStatus:Z
    :cond_6
    iget-boolean v10, p0, Lcom/baidu/service/power/Policy;->mAutoClean:Z

    if-eqz v10, :cond_0

    .line 237
    invoke-direct {p0, p1}, Lcom/baidu/service/power/Policy;->cancelAlarm(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 239
    :cond_7
    iget v10, p0, Lcom/baidu/service/power/Policy;->mId:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_0

    .line 240
    invoke-virtual {v7, p1}, Lcom/baidu/service/power/PowerMode;->unapplyMode(Landroid/content/Context;)V

    .line 241
    invoke-virtual {v3, p1}, Lcom/baidu/service/power/PowerMode;->applyMode(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method enterBatteryLow(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 265
    invoke-static {}, Lcom/baidu/service/power/PowerModeManager;->getInstance()Lcom/baidu/service/power/PowerModeManager;

    move-result-object v2

    .line 266
    .local v2, pm:Lcom/baidu/service/power/PowerModeManager;
    invoke-virtual {v2}, Lcom/baidu/service/power/PowerModeManager;->getPowerModeList()Ljava/util/ArrayList;

    move-result-object v0

    .line 267
    .local v0, modes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/service/power/PowerMode;>;"
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/service/power/PowerMode;

    .line 268
    .local v1, normalMode:Lcom/baidu/service/power/PowerMode;
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/service/power/PowerMode;

    .line 270
    .local v4, superMode:Lcom/baidu/service/power/PowerMode;
    invoke-virtual {v1}, Lcom/baidu/service/power/PowerMode;->isActive()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 271
    iget v6, p0, Lcom/baidu/service/power/Policy;->mRecoveryId:I

    invoke-virtual {v2, p1, v6}, Lcom/baidu/service/power/PowerModeManager;->applyRecoveryPolicy(Landroid/content/Context;I)V

    .line 272
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "battery_in_recovery"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 274
    invoke-virtual {v1, p1}, Lcom/baidu/service/power/PowerMode;->unapplyMode(Landroid/content/Context;)V

    .line 275
    invoke-virtual {v4, p1}, Lcom/baidu/service/power/PowerMode;->applyMode(Landroid/content/Context;)V

    .line 276
    const v6, 0x104063d

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 277
    .local v3, string:Ljava/lang/String;
    invoke-direct {p0, p1, v3}, Lcom/baidu/service/power/Policy;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 278
    invoke-virtual {v2, v9}, Lcom/baidu/service/power/PowerModeManager;->setSuperReason(I)V

    .line 287
    .end local v3           #string:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    invoke-virtual {v2}, Lcom/baidu/service/power/PowerModeManager;->getSuperReason()I

    move-result v5

    .line 281
    .local v5, superReason:I
    if-nez v5, :cond_0

    .line 282
    iget v6, p0, Lcom/baidu/service/power/Policy;->mRecoveryId:I

    invoke-virtual {v2, p1, v6}, Lcom/baidu/service/power/PowerModeManager;->applyRecoveryPolicy(Landroid/content/Context;I)V

    .line 283
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "battery_in_recovery"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public getId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 444
    iget v0, p0, Lcom/baidu/service/power/Policy;->mId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Lcom/baidu/service/power/Policy;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfile()Landroid/os/IBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 462
    iget-object v0, p0, Lcom/baidu/service/power/Policy;->mProfile:Lcom/baidu/service/power/Profile;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/baidu/service/power/Policy;->mProfile:Lcom/baidu/service/power/Profile;

    invoke-virtual {v0}, Lcom/baidu/service/power/Profile;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 465
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTrigger()Landroid/os/IBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 470
    iget-object v0, p0, Lcom/baidu/service/power/Policy;->mTrigger:Lcom/baidu/service/power/Trigger;

    invoke-virtual {v0}, Lcom/baidu/service/power/Trigger;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public isActive()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/baidu/service/power/Policy;->mIsActive:Z

    return v0
.end method

.method public isAutoClean()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/baidu/service/power/Policy;->mAutoClean:Z

    return v0
.end method

.method public isDisableData()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 424
    iget-boolean v0, p0, Lcom/baidu/service/power/Policy;->mDisableData:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 439
    iget-boolean v0, p0, Lcom/baidu/service/power/Policy;->mVisibility:Z

    return v0
.end method

.method onPolicyChanged(Lcom/baidu/service/power/Trigger;)V
    .locals 3
    .parameter "trigger"

    .prologue
    .line 258
    const-string v0, "SmartPowerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPolicyChanged policy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/service/power/Policy;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",trigger = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/baidu/service/power/Policy;->mTrigger:Lcom/baidu/service/power/Trigger;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/baidu/service/power/Policy;->mTrigger:Lcom/baidu/service/power/Trigger;

    invoke-virtual {v0, p1}, Lcom/baidu/service/power/Trigger;->notifyChanged(Lcom/baidu/service/power/Trigger;)V

    .line 262
    :cond_0
    return-void
.end method

.method onTriggerChanged()V
    .locals 4

    .prologue
    .line 248
    const-string v2, "SmartPowerService"

    const-string/jumbo v3, "onTriggerChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-static {}, Lcom/baidu/service/power/PowerModeManager;->getInstance()Lcom/baidu/service/power/PowerModeManager;

    move-result-object v0

    .line 250
    .local v0, pm:Lcom/baidu/service/power/PowerModeManager;
    iget v2, p0, Lcom/baidu/service/power/Policy;->mRecoveryId:I

    if-lez v2, :cond_0

    .line 251
    iget v2, p0, Lcom/baidu/service/power/Policy;->mRecoveryId:I

    invoke-virtual {v0, v2}, Lcom/baidu/service/power/PowerModeManager;->getPolicy(I)Lcom/baidu/service/power/Policy;

    move-result-object v1

    .line 252
    .local v1, recoveryPolicy:Lcom/baidu/service/power/Policy;
    if-eqz v1, :cond_0

    .line 253
    iget-object v2, p0, Lcom/baidu/service/power/Policy;->mTrigger:Lcom/baidu/service/power/Trigger;

    invoke-virtual {v1, v2}, Lcom/baidu/service/power/Policy;->onPolicyChanged(Lcom/baidu/service/power/Trigger;)V

    .line 255
    .end local v1           #recoveryPolicy:Lcom/baidu/service/power/Policy;
    :cond_0
    return-void
.end method

.method public setActive(Z)V
    .locals 1
    .parameter "active"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 454
    iput-boolean p1, p0, Lcom/baidu/service/power/Policy;->mIsActive:Z

    .line 455
    invoke-static {}, Lcom/baidu/service/power/PowerModeManager;->getInstance()Lcom/baidu/service/power/PowerModeManager;

    move-result-object v0

    .line 456
    .local v0, pm:Lcom/baidu/service/power/PowerModeManager;
    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {v0}, Lcom/baidu/service/power/PowerModeManager;->storePolicys()V

    .line 458
    :cond_0
    return-void
.end method

.method public setAutoClean(Z)V
    .locals 1
    .parameter "active"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 483
    iput-boolean p1, p0, Lcom/baidu/service/power/Policy;->mAutoClean:Z

    .line 484
    invoke-static {}, Lcom/baidu/service/power/PowerModeManager;->getInstance()Lcom/baidu/service/power/PowerModeManager;

    move-result-object v0

    .line 485
    .local v0, pm:Lcom/baidu/service/power/PowerModeManager;
    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {v0}, Lcom/baidu/service/power/PowerModeManager;->storePolicys()V

    .line 487
    :cond_0
    return-void
.end method

.method public setDisableData(Z)V
    .locals 1
    .parameter "active"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 475
    iput-boolean p1, p0, Lcom/baidu/service/power/Policy;->mDisableData:Z

    .line 476
    invoke-static {}, Lcom/baidu/service/power/PowerModeManager;->getInstance()Lcom/baidu/service/power/PowerModeManager;

    move-result-object v0

    .line 477
    .local v0, pm:Lcom/baidu/service/power/PowerModeManager;
    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {v0}, Lcom/baidu/service/power/PowerModeManager;->storePolicys()V

    .line 479
    :cond_0
    return-void
.end method

.method setHandler(Landroid/os/Handler;)V
    .locals 3
    .parameter "handler"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/baidu/service/power/Policy;->mHandler:Landroid/os/Handler;

    .line 175
    iget-object v2, p0, Lcom/baidu/service/power/Policy;->mActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/service/power/Action;

    .line 176
    .local v0, a:Lcom/baidu/service/power/Action;
    invoke-virtual {v0, p1}, Lcom/baidu/service/power/Action;->setHandler(Landroid/os/Handler;)V

    goto :goto_0

    .line 178
    .end local v0           #a:Lcom/baidu/service/power/Action;
    :cond_0
    iget-object v2, p0, Lcom/baidu/service/power/Policy;->mTrigger:Lcom/baidu/service/power/Trigger;

    invoke-virtual {v2, p1}, Lcom/baidu/service/power/Trigger;->setHandler(Landroid/os/Handler;)V

    .line 179
    return-void
.end method

.method setProfile(Lcom/baidu/service/power/Profile;)V
    .locals 0
    .parameter "profile"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/baidu/service/power/Policy;->mProfile:Lcom/baidu/service/power/Profile;

    .line 171
    return-void
.end method

.method setTrigger(Lcom/baidu/service/power/Trigger;)V
    .locals 1
    .parameter "trigger"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/baidu/service/power/Policy;->mTrigger:Lcom/baidu/service/power/Trigger;

    .line 158
    iget-object v0, p0, Lcom/baidu/service/power/Policy;->mTrigger:Lcom/baidu/service/power/Trigger;

    invoke-virtual {v0, p0}, Lcom/baidu/service/power/Trigger;->setPolicy(Lcom/baidu/service/power/Policy;)V

    .line 159
    return-void
.end method

.method showAlertDialog(Landroid/content/Context;I)V
    .locals 14
    .parameter "ctx"
    .parameter "value"

    .prologue
    .line 290
    const-string v0, "SmartPowerService"

    const-string/jumbo v1, "show low battery alert dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    move-object v3, p1

    .line 292
    .local v3, context:Landroid/content/Context;
    invoke-static {}, Lcom/baidu/service/power/PowerModeManager;->getInstance()Lcom/baidu/service/power/PowerModeManager;

    move-result-object v4

    .line 293
    .local v4, pm:Lcom/baidu/service/power/PowerModeManager;
    const/4 v0, 0x3

    invoke-virtual {v4, v0}, Lcom/baidu/service/power/PowerModeManager;->getPolicy(I)Lcom/baidu/service/power/Policy;

    move-result-object v5

    .line 294
    .local v5, policyOk:Lcom/baidu/service/power/Policy;
    const v0, 0x10900f7

    const/4 v1, 0x0

    invoke-static {v3, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 295
    .local v12, v:Landroid/view/View;
    const v0, 0x102000b

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 296
    .local v9, descView:Landroid/widget/TextView;
    const v0, 0x10203a6

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 297
    .local v11, tipsView:Landroid/widget/TextView;
    const v0, 0x10203a5

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 298
    .local v2, box:Landroid/widget/CheckBox;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 299
    .local v6, b:Landroid/app/AlertDialog$Builder;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 300
    const v0, 0x1040641

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 301
    invoke-virtual {v6, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 302
    const v0, 0x1010355

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 303
    const/high16 v13, 0x104

    new-instance v0, Lcom/baidu/service/power/Policy$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/service/power/Policy$1;-><init>(Lcom/baidu/service/power/Policy;Landroid/widget/CheckBox;Landroid/content/Context;Lcom/baidu/service/power/PowerModeManager;Lcom/baidu/service/power/Policy;)V

    invoke-virtual {v6, v13, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 322
    const v0, 0x104000a

    new-instance v1, Lcom/baidu/service/power/Policy$2;

    invoke-direct {v1, p0, v2, v3}, Lcom/baidu/service/power/Policy$2;-><init>(Lcom/baidu/service/power/Policy;Landroid/widget/CheckBox;Landroid/content/Context;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 337
    new-instance v0, Lcom/baidu/service/power/Policy$3;

    invoke-direct {v0, p0, v11}, Lcom/baidu/service/power/Policy$3;-><init>(Lcom/baidu/service/power/Policy;Landroid/widget/TextView;)V

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 347
    .local v10, string:Ljava/lang/String;
    const v0, 0x1040642

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v10, v1, v13

    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 348
    .local v8, desc:Ljava/lang/String;
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 351
    .local v7, d:Landroid/app/AlertDialog;
    new-instance v0, Lcom/baidu/service/power/Policy$4;

    invoke-direct {v0, p0, v4}, Lcom/baidu/service/power/Policy$4;-><init>(Lcom/baidu/service/power/Policy;Lcom/baidu/service/power/PowerModeManager;)V

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 356
    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 357
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 358
    invoke-virtual {v4, v7}, Lcom/baidu/service/power/PowerModeManager;->setDialog(Landroid/app/AlertDialog;)V

    .line 359
    return-void
.end method

.method public unapplyPolicy(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 99
    const-string v3, "SmartPowerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unapplyPolicy.mTrigger = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/service/power/Policy;->mTrigger:Lcom/baidu/service/power/Trigger;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mAction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/service/power/Policy;->mActions:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", applied = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/baidu/service/power/Policy;->isApplied:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0}, Lcom/baidu/service/power/Policy;->generateIftttTask()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, task:Ljava/lang/String;
    invoke-direct {p0, p1, v2}, Lcom/baidu/service/power/Policy;->unregisterIftttTask(Landroid/content/Context;Ljava/lang/String;)V

    .line 102
    iget-object v3, p0, Lcom/baidu/service/power/Policy;->mActions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/service/power/Action;

    .line 103
    .local v0, a:Lcom/baidu/service/power/Action;
    invoke-virtual {v0, p1}, Lcom/baidu/service/power/Action;->stop(Landroid/content/Context;)V

    goto :goto_0

    .line 105
    .end local v0           #a:Lcom/baidu/service/power/Action;
    :cond_0
    iget-object v3, p0, Lcom/baidu/service/power/Policy;->mTrigger:Lcom/baidu/service/power/Trigger;

    invoke-virtual {v3, p1}, Lcom/baidu/service/power/Trigger;->stop(Landroid/content/Context;)V

    .line 106
    iput-boolean v6, p0, Lcom/baidu/service/power/Policy;->isApplied:Z

    .line 108
    iget v3, p0, Lcom/baidu/service/power/Policy;->mId:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "battery_in_recovery"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 112
    :cond_1
    return-void
.end method
