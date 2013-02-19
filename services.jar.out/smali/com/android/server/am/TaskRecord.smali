.class Lcom/android/server/am/TaskRecord;
.super Lcom/android/server/am/ThumbnailHolder;
.source "TaskRecord.java"


# static fields
.field static final HTC_RECENT_APP_FUSION:Z


# instance fields
.field final affinity:Ljava/lang/String;

.field affinityIntent:Landroid/content/Intent;

.field askedCompatMode:Z

.field hidden:Z

.field intent:Landroid/content/Intent;

.field lastActiveTime:J

.field numActivities:I

.field origActivity:Landroid/content/ComponentName;

.field realActivity:Landroid/content/ComponentName;

.field rootWasReset:Z

.field stringName:Ljava/lang/String;

.field final taskId:I

.field visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->HTC_RECENT_APP_FUSION:Z

    sput-boolean v0, Lcom/android/server/am/TaskRecord;->HTC_RECENT_APP_FUSION:Z

    return-void
.end method

.method constructor <init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;)V
    .locals 1
    .parameter "_taskId"
    .parameter "info"
    .parameter "_intent"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/server/am/ThumbnailHolder;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->hidden:Z

    .line 55
    iput p1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 56
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    .line 57
    invoke-virtual {p0, p3, p2}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateVisibility()V

    .line 60
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6
    .parameter "pw"
    .parameter "prefix"

    .prologue
    const/16 v5, 0x80

    const/16 v4, 0x7d

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 112
    iget v1, p0, Lcom/android/server/am/TaskRecord;->numActivities:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-eqz v1, :cond_1

    .line 113
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "numActivities="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/TaskRecord;->numActivities:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 114
    const-string v1, " rootWasReset="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 117
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "affinity="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 121
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "intent={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v0, v2, v3, v2}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZ)V

    .line 123
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v1, :cond_4

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 128
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "affinityIntent={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0, v2, v3, v2}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZ)V

    .line 130
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_5

    .line 134
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "origActivity="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_6

    .line 138
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "realActivity="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    if-nez v1, :cond_7

    .line 142
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "askedCompatMode="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 144
    :cond_7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "visible="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->visible:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 145
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "hidden="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->hidden:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 146
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "lastThumbnail="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ThumbnailHolder;->lastThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 147
    const-string v1, " lastDescription="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ThumbnailHolder;->lastDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 148
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "lastActiveTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 149
    const-string v1, " (inactive for "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getInactiveDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string v1, "s)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method getInactiveDuration()J
    .locals 4

    .prologue
    .line 67
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method hide()V
    .locals 2

    .prologue
    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->hidden:Z

    .line 249
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/TaskRecord;->setVisibility(ZLjava/lang/String;)V

    .line 250
    return-void
.end method

.method setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .locals 6
    .parameter "_intent"
    .parameter "info"

    .prologue
    const/4 v4, 0x0

    .line 71
    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    .line 73
    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 74
    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 80
    .end local p1
    .local v0, _intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    move-object p1, v0

    .line 83
    .end local v0           #_intent:Landroid/content/Intent;
    .restart local p1
    :cond_0
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 84
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 85
    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    .line 103
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x20

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 107
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    .line 109
    :cond_1
    return-void

    :cond_2
    move-object v3, v4

    .line 84
    goto :goto_0

    .line 87
    :cond_3
    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, p2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v1, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .local v1, targetComponent:Landroid/content/ComponentName;
    if-eqz p1, :cond_4

    .line 90
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 91
    .local v2, targetIntent:Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 92
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 93
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 94
    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 95
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    goto :goto_1

    .line 97
    .end local v2           #targetIntent:Landroid/content/Intent;
    :cond_4
    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 98
    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 99
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    goto :goto_1
.end method

.method setVisibility(ZLjava/lang/String;)V
    .locals 3
    .parameter "visible"
    .parameter "reason"

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->hidden:Z

    if-eqz v0, :cond_0

    .line 226
    const/4 p1, 0x0

    .line 227
    const-string p2, "hidden"

    .line 230
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/am/TaskRecord;->visible:Z

    .line 231
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_RECENT_TASKS:Z

    if-eqz v0, :cond_1

    .line 232
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", visible:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->visible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_1
    sget-boolean v0, Lcom/android/server/am/TaskRecord;->HTC_RECENT_APP_FUSION:Z

    if-eqz v0, :cond_2

    .line 241
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->visible:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ThumbnailHolder;->lastThumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ThumbnailHolder;->lastThumbnail:Landroid/graphics/Bitmap;

    .line 245
    :cond_2
    return-void
.end method

.method show()V
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->hidden:Z

    .line 254
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    .line 175
    :goto_0
    return-object v1

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 158
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "TaskRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 163
    const-string v1, " A "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :goto_1
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    goto :goto_0

    .line 165
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_2

    .line 166
    const-string v1, " I "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 168
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    .line 169
    const-string v1, " aI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 172
    :cond_3
    const-string v1, " ??"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method touchActiveTime()V
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    .line 64
    return-void
.end method

.method updateVisibility()V
    .locals 8

    .prologue
    .line 179
    const/4 v4, 0x1

    .line 180
    .local v4, visible:Z
    const-string v3, "default"

    .line 183
    .local v3, reason:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x80

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    .line 185
    const/4 v4, 0x0

    .line 186
    const-string v3, "exclude from recents"

    .line 191
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 192
    .local v2, pm:Landroid/content/pm/IPackageManager;
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_3

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 193
    .local v0, baseIntent:Landroid/content/Intent;
    :goto_0
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_4

    .line 194
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    if-nez v5, :cond_1

    .line 195
    const/4 v4, 0x0

    .line 196
    const-string v3, "no activity info"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .end local v0           #baseIntent:Landroid/content/Intent;
    .end local v2           #pm:Landroid/content/pm/IPackageManager;
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    const-string v6, "android.intent.category.HOME"

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 216
    const/4 v4, 0x0

    .line 217
    const-string v3, "category home"

    .line 220
    :cond_2
    invoke-virtual {p0, v4, v3}, Lcom/android/server/am/TaskRecord;->setVisibility(ZLjava/lang/String;)V

    .line 221
    return-void

    .line 192
    .restart local v2       #pm:Landroid/content/pm/IPackageManager;
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    goto :goto_0

    .line 198
    .restart local v0       #baseIntent:Landroid/content/Intent;
    :cond_4
    if-eqz v0, :cond_5

    .line 199
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v2, v5, v6, v7}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 200
    const/4 v4, 0x0

    .line 201
    const-string v3, "no intent activities"

    goto :goto_1

    .line 204
    :cond_5
    const/4 v4, 0x0

    .line 205
    const-string v3, "no activity / intent"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 207
    .end local v0           #baseIntent:Landroid/content/Intent;
    .end local v2           #pm:Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v1

    .line 208
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "ActivityManager"

    const-string v6, "Unknown error in updateVisibility()"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    const/4 v4, 0x0

    .line 210
    const-string v3, "unknown error"

    goto :goto_1
.end method
