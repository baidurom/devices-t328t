.class public final Lcom/htc/utils/ulog/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final IS_UP_FORCED_ENABLED:Z = false

.field private static final TAG:Ljava/lang/String; = "ULog.util"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/htc/utils/ulog/Util;->isUserRom()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/utils/ulog/Util;->isLessThanSense40()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/utils/ulog/Util;->IS_UP_FORCED_ENABLED:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getApplicationPkgName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 26
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    .line 27
    .local v1, at:Landroid/app/ActivityThread;
    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 29
    .local v0, app:Landroid/app/Application;
    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 32
    .end local v0           #app:Landroid/app/Application;
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public static getCurrentDeviceTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 264
    new-instance v0, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    .line 265
    .local v0, devicetime:Ljava/sql/Timestamp;
    invoke-virtual {v0}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getTellHTCUI(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "htc_error_report_setting"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getUserProfiling(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "send_htc_application_log"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isDebuggingPolicyEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 106
    invoke-static {}, Lcom/htc/utils/ulog/Util;->isFactoryRom()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/htc/utils/ulog/Util;->isUserRom()Z

    move-result v4

    if-nez v4, :cond_0

    move v1, v2

    .line 107
    .local v1, isDebuggingRom:Z
    :goto_0
    invoke-static {}, Lcom/htc/utils/ulog/Util;->isDebuggingPolicyEnabledBySystemProperty()Z

    move-result v0

    .line 108
    .local v0, isDebuggingLogEnabled:Z
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v2

    .end local v0           #isDebuggingLogEnabled:Z
    .end local v1           #isDebuggingRom:Z
    :cond_0
    move v1, v3

    .line 106
    goto :goto_0

    .restart local v0       #isDebuggingLogEnabled:Z
    .restart local v1       #isDebuggingRom:Z
    :cond_1
    move v2, v3

    .line 108
    goto :goto_1
.end method

.method public static isDebuggingPolicyEnabledBySystemProperty()Z
    .locals 3

    .prologue
    .line 113
    const-string/jumbo v1, "ulog.enable_debugging_policy"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 115
    .local v0, isDebuggingLogsEnabled:Z
    return v0
.end method

.method static isDebuggingROMInSense21()Z
    .locals 2

    .prologue
    .line 80
    const-string v0, "2.1"

    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/utils/ulog/Util;->isUserRom()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/utils/ulog/Util;->isFactoryRom()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFactoryRom()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, factoryTest:I
    const-string/jumbo v4, "ro.factorytest"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, factoryTestStr:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v3

    .line 97
    :goto_0
    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 93
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method static isLessThanSense21()Z
    .locals 2

    .prologue
    .line 52
    const-string v0, "2.0"

    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1.6"

    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "none"

    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isLessThanSense30()Z
    .locals 2

    .prologue
    .line 59
    const-string v0, "2.1"

    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "2.0"

    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1.6"

    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "none"

    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLessThanSense40()Z
    .locals 2

    .prologue
    .line 70
    const-string v0, "3.5"

    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "3.0"

    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "2.1"

    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "2.0"

    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1.6"

    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "none"

    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isUPForecedEnabled()Z
    .locals 1

    .prologue
    .line 136
    sget-boolean v0, Lcom/htc/utils/ulog/Util;->IS_UP_FORCED_ENABLED:Z

    return v0
.end method

.method public static isUserProfilingSettingEnabled(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 129
    invoke-static {}, Lcom/htc/utils/ulog/Util;->isUPForecedEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/htc/utils/ulog/Util;->getTellHTCUI(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_2

    invoke-static {p0}, Lcom/htc/utils/ulog/Util;->getUserProfiling(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUserRom()Z
    .locals 3

    .prologue
    .line 86
    const-string/jumbo v0, "user"

    const-string/jumbo v1, "ro.build.type"

    const-string/jumbo v2, "user"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static putPolicy(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .parameter "bundle"
    .parameter "appid"
    .parameter "category"
    .parameter "key"
    .parameter "value"
    .parameter "dueDate"

    .prologue
    .line 151
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    const/4 v0, 0x0

    .local v0, appidBundle:Landroid/os/Bundle;
    const/4 v1, 0x0

    .local v1, categoryBundle:Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 156
    .local v2, keyBundle:Landroid/os/Bundle;
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 157
    if-nez v0, :cond_2

    .line 158
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #appidBundle:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 159
    .restart local v0       #appidBundle:Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    .end local v1           #categoryBundle:Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 160
    .restart local v1       #categoryBundle:Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    .end local v2           #keyBundle:Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 161
    .restart local v2       #keyBundle:Landroid/os/Bundle;
    invoke-virtual {v2, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v4, "due_date"

    invoke-virtual {v2, v4, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 163
    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 164
    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 198
    :goto_1
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 167
    :cond_2
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 168
    if-nez v1, :cond_3

    .line 169
    new-instance v1, Landroid/os/Bundle;

    .end local v1           #categoryBundle:Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 170
    .restart local v1       #categoryBundle:Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    .end local v2           #keyBundle:Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 171
    .restart local v2       #keyBundle:Landroid/os/Bundle;
    invoke-virtual {v2, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v4, "due_date"

    invoke-virtual {v2, v4, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 173
    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 174
    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 177
    :cond_3
    invoke-virtual {v1, p3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 178
    if-nez v2, :cond_4

    .line 179
    new-instance v2, Landroid/os/Bundle;

    .end local v2           #keyBundle:Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 180
    .restart local v2       #keyBundle:Landroid/os/Bundle;
    invoke-virtual {v2, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v4, "due_date"

    invoke-virtual {v2, v4, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 182
    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 185
    :cond_4
    invoke-virtual {v2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, oldValue:Ljava/lang/String;
    if-nez v3, :cond_5

    .line 187
    invoke-virtual {v2, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v4, "due_date"

    invoke-virtual {v2, v4, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 191
    :cond_5
    invoke-virtual {v2, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v4, "due_date"

    invoke-virtual {v2, v4, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 193
    const-string v4, "ULog.util"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[appid :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "category : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] Duplicate data key => key : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", old value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", due date: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public static putPolicy(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 7
    .parameter "bundle"
    .parameter "appid"
    .parameter "category"
    .parameter "key"
    .parameter "value"
    .parameter "dueDate"
    .parameter "default_value"

    .prologue
    .line 207
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    const/4 v0, 0x0

    .local v0, appidBundle:Landroid/os/Bundle;
    const/4 v1, 0x0

    .local v1, categoryBundle:Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 212
    .local v2, keyBundle:Landroid/os/Bundle;
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 213
    if-nez v0, :cond_2

    .line 214
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #appidBundle:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 215
    .restart local v0       #appidBundle:Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    .end local v1           #categoryBundle:Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 216
    .restart local v1       #categoryBundle:Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    .end local v2           #keyBundle:Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 217
    .restart local v2       #keyBundle:Landroid/os/Bundle;
    invoke-virtual {v2, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v4, "due_date"

    invoke-virtual {v2, v4, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 219
    const-string v4, "default_value"

    invoke-virtual {v2, v4, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 221
    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 259
    :goto_1
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 224
    :cond_2
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 225
    if-nez v1, :cond_3

    .line 226
    new-instance v1, Landroid/os/Bundle;

    .end local v1           #categoryBundle:Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 227
    .restart local v1       #categoryBundle:Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    .end local v2           #keyBundle:Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 228
    .restart local v2       #keyBundle:Landroid/os/Bundle;
    invoke-virtual {v2, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v4, "due_date"

    invoke-virtual {v2, v4, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 230
    const-string v4, "default_value"

    invoke-virtual {v2, v4, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 232
    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 235
    :cond_3
    invoke-virtual {v1, p3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 236
    if-nez v2, :cond_4

    .line 237
    new-instance v2, Landroid/os/Bundle;

    .end local v2           #keyBundle:Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 238
    .restart local v2       #keyBundle:Landroid/os/Bundle;
    invoke-virtual {v2, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v4, "due_date"

    invoke-virtual {v2, v4, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 240
    const-string v4, "default_value"

    invoke-virtual {v2, v4, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 244
    :cond_4
    invoke-virtual {v2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 245
    .local v3, oldValue:Ljava/lang/String;
    if-nez v3, :cond_5

    .line 246
    invoke-virtual {v2, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v4, "due_date"

    invoke-virtual {v2, v4, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 248
    const-string v4, "default_value"

    invoke-virtual {v2, v4, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 251
    :cond_5
    invoke-virtual {v2, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v4, "due_date"

    invoke-virtual {v2, v4, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 253
    const-string v4, "default_value"

    invoke-virtual {v2, v4, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v4, "ULog.util"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[appid :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "category : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] Duplicate data key => key : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", old value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", due date: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public static supportUserPolicy()Z
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/htc/utils/ulog/Util;->isLessThanSense21()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportUserProfiling()Z
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/htc/utils/ulog/Util;->isLessThanSense21()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/utils/ulog/Util;->isDebuggingPolicyEnabledBySystemProperty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
