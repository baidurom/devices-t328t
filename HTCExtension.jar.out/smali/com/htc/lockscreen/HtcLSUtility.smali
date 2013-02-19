.class public Lcom/htc/lockscreen/HtcLSUtility;
.super Ljava/lang/Object;
.source "HtcLSUtility.java"


# static fields
.field public static final BASE_PACKAG_NAME:Ljava/lang/String; = "com.htc.idlescreen.base"

.field public static final COL_IDLESCREEN_STYLE:Ljava/lang/String; = "idlescreen_style"

.field public static final DB_AUTHORITY:Ljava/lang/String; = "com.htc.idlescreen.setting.provider"

.field public static final DB_IDLESCREEN_STYLE:Ljava/lang/String; = "idlescreen_style"

.field public static final LOG_PREFIX:Ljava/lang/String; = "HtcLSUtility"

.field public static final URI_IDLESCREEN_STYLE:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "content://com.htc.idlescreen.setting.provider/idlescreen_style"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/lockscreen/HtcLSUtility;->URI_IDLESCREEN_STYLE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doKeyguard(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 254
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.LOCKSCREEN_DO_KEYGUARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 256
    return-void
.end method

.method public static doKeyguard(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 367
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.LOCKSCREEN_DO_KEYGUARD_WITH_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 368
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ui_mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 369
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 370
    return-void
.end method

.method private static getDBString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 315
    const/4 v1, -0x1

    .line 316
    .local v1, index:I
    const/4 v2, 0x0

    .line 317
    .local v2, value:Ljava/lang/String;
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 318
    const-string v3, "HtcLSUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDBString columnName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/lockscreen/LSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    if-ltz v1, :cond_0

    .line 321
    :try_start_0
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 330
    :goto_0
    return-object v2

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HtcLSUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDBString getString e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 328
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v3, "HtcLSUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDBString getString("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") index < 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/lockscreen/LSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getIdleScreen(Landroid/content/Context;I)Landroid/content/ComponentName;
    .locals 1
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 191
    invoke-static {p0, p1}, Lcom/htc/lockscreen/HtcLSUtility;->loadSettings(Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static getIdleScreenInfo(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    .locals 12
    .parameter "context"
    .parameter "componentName"

    .prologue
    const/4 v9, 0x0

    .line 210
    const/4 v2, 0x0

    .line 212
    .local v2, info:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    if-nez p1, :cond_0

    .line 214
    :try_start_0
    const-string v8, "HtcLSUtility"

    const-string v10, "getIdleScreenConnLocked~ componentName is null"

    invoke-static {v8, v10}, Lcom/htc/lockscreen/LSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v9

    .line 250
    :goto_0
    return-object v8

    .line 218
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v10, 0x1080

    invoke-virtual {v8, p1, v10}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v7

    .line 221
    .local v7, si:Landroid/content/pm/ServiceInfo;
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.htc.lockscreen.idlescreen.IdleScreenService"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v10, 0x80

    invoke-virtual {v8, v4, v10}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 225
    .local v5, ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 226
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v6, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 227
    .local v6, rsi:Landroid/content/pm/ServiceInfo;
    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v10, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v10, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-eqz v8, :cond_2

    .line 230
    :try_start_1
    new-instance v3, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3, p0, v8}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2           #info:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    .local v3, info:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    move-object v2, v3

    .line 240
    .end local v3           #info:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    .end local v6           #rsi:Landroid/content/pm/ServiceInfo;
    .restart local v2       #info:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    :cond_1
    if-nez v2, :cond_3

    .line 241
    :try_start_2
    const-string v8, "HtcLSUtility"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getIdleScreenConnLocked~ selected service is not a idlescreen:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/htc/lockscreen/LSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v9

    .line 242
    goto :goto_0

    .line 232
    .restart local v6       #rsi:Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v0

    .line 233
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "HtcLSUtility"

    const-string v10, "getIdleScreenConnLocked~ IdleScreenInfo create error"

    invoke-static {v8, v10, v0}, Lcom/htc/lockscreen/LSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v8, v9

    .line 234
    goto :goto_0

    .line 225
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 246
    .end local v1           #i:I
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6           #rsi:Landroid/content/pm/ServiceInfo;
    .end local v7           #si:Landroid/content/pm/ServiceInfo;
    :catch_1
    move-exception v0

    .line 247
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "HtcLSUtility"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getIdleScreenConnLocked~ Unknown component:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/htc/lockscreen/LSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v9

    .line 248
    goto/16 :goto_0

    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #i:I
    .restart local v4       #intent:Landroid/content/Intent;
    .restart local v5       #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v7       #si:Landroid/content/pm/ServiceInfo;
    :cond_3
    move-object v8, v2

    .line 250
    goto/16 :goto_0
.end method

.method public static getIdleScreenLabel(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "comp"

    .prologue
    .line 195
    const/4 v1, 0x0

    .line 197
    .local v1, label:Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/htc/lockscreen/HtcLSUtility;->getIdleScreenInfo(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;

    move-result-object v0

    .line 198
    .local v0, info:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 200
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v0, v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1           #label:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 202
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    .restart local v1       #label:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public static getSenseVersion()F
    .locals 2

    .prologue
    .line 117
    const/high16 v0, 0x4000

    .line 119
    .local v0, version:F
    :try_start_0
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 123
    :goto_0
    return v0

    .line 120
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getStyleSettingKey(I)Ljava/lang/String;
    .locals 1
    .parameter "mode"

    .prologue
    .line 262
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 263
    const-string v0, "com.htc.idlescreen.style.dock"

    .line 266
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.htc.idlescreen.style.normal"

    goto :goto_0
.end method

.method public static isWithIdleScreenBase(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 154
    const/4 v1, 0x0

    .line 155
    .local v1, ret:Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 157
    .local v0, manager:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v2, "com.htc.idlescreen.base"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    const/4 v1, 0x1

    .line 164
    :goto_0
    return v1

    .line 161
    :catch_0
    move-exception v2

    goto :goto_0

    .line 159
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public static loadSettings(Landroid/content/Context;I)Landroid/content/ComponentName;
    .locals 11
    .parameter "context"
    .parameter "mode"

    .prologue
    const/4 v10, 0x0

    .line 288
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 290
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 291
    .local v7, comp:Landroid/content/ComponentName;
    const/4 v6, 0x0

    .line 293
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/htc/lockscreen/HtcLSUtility;->URI_IDLESCREEN_STYLE:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 294
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    const-string v1, "idlescreen_style"

    invoke-static {v6, v1}, Lcom/htc/lockscreen/HtcLSUtility;->getDBString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 296
    .local v8, compStr:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 305
    .end local v8           #compStr:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 306
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 307
    const/4 v6, 0x0

    .line 310
    :cond_1
    :goto_1
    const-string v1, "HtcLSUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadSettings comp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lockscreen/LSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    return-object v7

    .restart local v8       #compStr:Ljava/lang/String;
    :cond_2
    move-object v7, v10

    .line 296
    goto :goto_0

    .line 301
    .end local v8           #compStr:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 302
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "HtcLSUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadSettings failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lockscreen/LSLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    if-eqz v6, :cond_1

    .line 306
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 307
    const/4 v6, 0x0

    goto :goto_1

    .line 305
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 306
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 307
    const/4 v6, 0x0

    :cond_3
    throw v1
.end method

.method public static removeNotification(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "id"

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, pkg:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "packageName is null or empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "HtcLockScreenRemoveNotfiication"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "PackageName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v2, "id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 113
    return-void
.end method

.method static removeView(Landroid/content/Context;Lcom/htc/lockscreen/HtcLSViewGroup;)V
    .locals 3
    .parameter "context"
    .parameter "lsView"

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    const-string v1, "HtcLockScreenRemoveView"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "PackageName"

    invoke-virtual {p1}, Lcom/htc/lockscreen/HtcLSViewGroup;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v1, "id"

    invoke-virtual {p1}, Lcom/htc/lockscreen/HtcLSViewGroup;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 77
    return-void
.end method

.method public static removeView(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .parameter "context"
    .parameter "packageName"
    .parameter "id"

    .prologue
    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v1, "HtcLockScreenRemoveView"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "PackageName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v1, "id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 84
    return-void
.end method

.method public static saveSettings(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 5
    .parameter "context"
    .parameter "componentName"
    .parameter "mode"

    .prologue
    .line 276
    const-string v2, "HtcLSUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveSettings comp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/LSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 278
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 279
    .local v1, value:Landroid/content/ContentValues;
    const-string v2, "idlescreen_style"

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    sget-object v2, Lcom/htc/lockscreen/HtcLSUtility;->URI_IDLESCREEN_STYLE:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 282
    return-void
.end method

.method public static setIdleScreen(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 2
    .parameter "context"
    .parameter "comp"
    .parameter "mode"

    .prologue
    .line 183
    invoke-static {p0, p1, p2}, Lcom/htc/lockscreen/HtcLSUtility;->saveSettings(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 184
    new-instance v0, Landroid/content/Intent;

    const-string v1, "lockscreen_set_idlescreen"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "key_lockscreen_mode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    const-string v1, "key_lockscreen_comp"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 188
    return-void
.end method

.method public static setLockScreenShortcut(Landroid/content/Context;Lcom/htc/lockscreen/widget/ShortcutInfo;)V
    .locals 2
    .parameter "context"
    .parameter "info"

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 178
    :goto_0
    return-void

    .line 175
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.lockscreen.set_shortcut_info"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "EXTRA_SHORTCUT_INFO"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 177
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static setLockScreenWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;)Z
    .locals 14
    .parameter "context"
    .parameter "bitmap"

    .prologue
    .line 334
    const/4 v9, 0x0

    .line 335
    .local v9, result:Z
    const-string v0, "com.htc.idlescreen.wallpaper.provider"

    .line 336
    .local v0, AUTHORITY:Ljava/lang/String;
    const-string v2, "wallpaper"

    .line 337
    .local v2, WALLPAPER:Ljava/lang/String;
    const-string v10, "content://com.htc.idlescreen.wallpaper.provider/wallpaper"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 338
    .local v1, URI_WALLPAPER:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 339
    .local v8, resolver:Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 340
    .local v4, fd:Landroid/os/ParcelFileDescriptor;
    const/4 v5, 0x0

    .line 342
    .local v5, fos:Ljava/io/FileOutputStream;
    :try_start_0
    const-string v10, ""

    invoke-virtual {v8, v1, v10}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 343
    new-instance v6, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v6, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 344
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .local v6, fos:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x5a

    invoke-virtual {p1, v10, v11, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 345
    const/4 v9, 0x1

    .line 351
    if-eqz v6, :cond_2

    .line 353
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v6

    .line 361
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    new-instance v7, Landroid/content/Intent;

    const-string v10, "com.htc.launcher.lockscreen.WallpaperChanged"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 362
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {p0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 363
    return v9

    .line 354
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v7           #intent:Landroid/content/Intent;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 356
    .local v3, e:Ljava/io/IOException;
    const/4 v9, 0x0

    .line 357
    const-string v10, "HtcLSUtility"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setLockScreenWallpaper failed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/lockscreen/LSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 358
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 346
    .end local v3           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 348
    .local v3, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v10, "HtcLSUtility"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setLockScreenWallpaper failed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/lockscreen/LSLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 351
    if-eqz v5, :cond_0

    .line 353
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 354
    :catch_2
    move-exception v3

    .line 356
    .local v3, e:Ljava/io/IOException;
    const/4 v9, 0x0

    .line 357
    const-string v10, "HtcLSUtility"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setLockScreenWallpaper failed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/lockscreen/LSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 351
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_2
    if-eqz v5, :cond_1

    .line 353
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 358
    :cond_1
    :goto_3
    throw v10

    .line 354
    :catch_3
    move-exception v3

    .line 356
    .restart local v3       #e:Ljava/io/IOException;
    const/4 v9, 0x0

    .line 357
    const-string v11, "HtcLSUtility"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setLockScreenWallpaper failed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/lockscreen/LSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 351
    .end local v3           #e:Ljava/io/IOException;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 346
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v3

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :cond_2
    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_0
.end method

.method public static setNotification(Landroid/content/Context;ILcom/htc/lockscreen/ntf/HtcLSNotification;)V
    .locals 4
    .parameter "context"
    .parameter "id"
    .parameter "ntf"

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, pkg:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "packageName is null or empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :cond_0
    if-nez p2, :cond_1

    .line 92
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "notification data is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    :cond_1
    if-gtz p1, :cond_2

    .line 95
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "id is <= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "HtcLockScreenSetNotification"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "notification"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 99
    const-string v2, "PackageName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string v2, "id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 102
    return-void
.end method

.method static setView(Landroid/content/Context;Lcom/htc/lockscreen/HtcLSViewGroup;)V
    .locals 3
    .parameter "context"
    .parameter "lsView"

    .prologue
    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string v1, "HtcLockScreenSetView"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "View"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 67
    const-string v1, "PackageName"

    invoke-virtual {p1}, Lcom/htc/lockscreen/HtcLSViewGroup;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v1, "id"

    invoke-virtual {p1}, Lcom/htc/lockscreen/HtcLSViewGroup;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 70
    return-void
.end method

.method public static supportRemotePhoneService(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 143
    invoke-static {}, Lcom/htc/lockscreen/HtcLSUtility;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x4060

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 144
    invoke-static {p0}, Lcom/htc/lockscreen/HtcLSUtility;->isWithIdleScreenBase(Landroid/content/Context;)Z

    move-result v0

    .line 146
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useIdleScreen()Z
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Lcom/htc/lockscreen/HtcLSUtility;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x4040

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_1

    :cond_0
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v0, :cond_2

    .line 133
    :cond_1
    const/4 v0, 0x1

    .line 135
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
