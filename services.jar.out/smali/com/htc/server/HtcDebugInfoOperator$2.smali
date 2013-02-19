.class Lcom/htc/server/HtcDebugInfoOperator$2;
.super Ljava/lang/Object;
.source "HtcDebugInfoOperator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/server/HtcDebugInfoOperator;->logLockscreenShortcutInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/HtcDebugInfoOperator;


# direct methods
.method constructor <init>(Lcom/htc/server/HtcDebugInfoOperator;)V
    .locals 0
    .parameter

    .prologue
    .line 509
    iput-object p1, p0, Lcom/htc/server/HtcDebugInfoOperator$2;->this$0:Lcom/htc/server/HtcDebugInfoOperator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 512
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 513
    .local v5, plainText:Ljava/lang/StringBuilder;
    const-string v0, ""

    .line 515
    .local v0, cipherText:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    iget-object v9, p0, Lcom/htc/server/HtcDebugInfoOperator$2;->this$0:Lcom/htc/server/HtcDebugInfoOperator;

    iget-object v8, p0, Lcom/htc/server/HtcDebugInfoOperator$2;->this$0:Lcom/htc/server/HtcDebugInfoOperator;

    #getter for: Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/server/HtcDebugInfoOperator;->access$100(Lcom/htc/server/HtcDebugInfoOperator;)Landroid/content/Context;

    move-result-object v8

    const-string v10, "keyguard"

    invoke-virtual {v8, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/KeyguardManager;

    #setter for: Lcom/htc/server/HtcDebugInfoOperator;->keyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v9, v8}, Lcom/htc/server/HtcDebugInfoOperator;->access$002(Lcom/htc/server/HtcDebugInfoOperator;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;

    .line 517
    iget-object v8, p0, Lcom/htc/server/HtcDebugInfoOperator$2;->this$0:Lcom/htc/server/HtcDebugInfoOperator;

    #getter for: Lcom/htc/server/HtcDebugInfoOperator;->keyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v8}, Lcom/htc/server/HtcDebugInfoOperator;->access$000(Lcom/htc/server/HtcDebugInfoOperator;)Landroid/app/KeyguardManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/KeyguardManager;->getIdleScreenLabel()Ljava/lang/String;

    move-result-object v3

    .line 518
    .local v3, idleScreenLabel:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 519
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    :cond_0
    iget-object v8, p0, Lcom/htc/server/HtcDebugInfoOperator$2;->this$0:Lcom/htc/server/HtcDebugInfoOperator;

    iget-object v9, p0, Lcom/htc/server/HtcDebugInfoOperator$2;->this$0:Lcom/htc/server/HtcDebugInfoOperator;

    #getter for: Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/htc/server/HtcDebugInfoOperator;->access$100(Lcom/htc/server/HtcDebugInfoOperator;)Landroid/content/Context;

    move-result-object v9

    #calls: Lcom/htc/server/HtcDebugInfoOperator;->getShortcutVisibility(Landroid/content/Context;)Z
    invoke-static {v8, v9}, Lcom/htc/server/HtcDebugInfoOperator;->access$200(Lcom/htc/server/HtcDebugInfoOperator;Landroid/content/Context;)Z

    move-result v7

    .line 522
    .local v7, visible:Z
    if-eqz v7, :cond_4

    .line 523
    iget-object v8, p0, Lcom/htc/server/HtcDebugInfoOperator$2;->this$0:Lcom/htc/server/HtcDebugInfoOperator;

    iget-object v9, p0, Lcom/htc/server/HtcDebugInfoOperator$2;->this$0:Lcom/htc/server/HtcDebugInfoOperator;

    #getter for: Lcom/htc/server/HtcDebugInfoOperator;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/htc/server/HtcDebugInfoOperator;->access$100(Lcom/htc/server/HtcDebugInfoOperator;)Landroid/content/Context;

    move-result-object v9

    #calls: Lcom/htc/server/HtcDebugInfoOperator;->getShortcutInfoList(Landroid/content/Context;)Ljava/util/List;
    invoke-static {v8, v9}, Lcom/htc/server/HtcDebugInfoOperator;->access$300(Lcom/htc/server/HtcDebugInfoOperator;Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    .line 524
    .local v6, shortcutAppList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/server/HtcDebugInfoOperator$ShortcutInfo;>;"
    if-eqz v6, :cond_1

    .line 525
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .local v4, j:I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 526
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/server/HtcDebugInfoOperator$ShortcutInfo;

    iget-object v8, v8, Lcom/htc/server/HtcDebugInfoOperator$ShortcutInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/server/HtcDebugInfoOperator$ShortcutInfo;

    iget-object v8, v8, Lcom/htc/server/HtcDebugInfoOperator$ShortcutInfo;->mClassName:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 530
    .end local v2           #i:I
    .end local v4           #j:I
    :cond_1
    const-string v8, "NO_LOCKSCREEN_SHORTCUT"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .end local v6           #shortcutAppList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/server/HtcDebugInfoOperator$ShortcutInfo;>;"
    :cond_2
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/utils/ulog/StringHelper;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 535
    if-eqz v0, :cond_3

    .line 536
    sget-object v8, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_LOCKSCREEN_SHORTCUT_INFO:Lcom/htc/utils/ulog/ULogTags;

    invoke-static {v8, v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;)V

    .line 541
    .end local v3           #idleScreenLabel:Ljava/lang/String;
    .end local v7           #visible:Z
    :cond_3
    :goto_2
    const/4 v5, 0x0

    .line 543
    return-void

    .line 532
    .restart local v3       #idleScreenLabel:Ljava/lang/String;
    .restart local v7       #visible:Z
    :cond_4
    const-string v8, "NO_LOCKSCREEN_SHORTCUT"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 538
    .end local v3           #idleScreenLabel:Ljava/lang/String;
    .end local v7           #visible:Z
    :catch_0
    move-exception v1

    .line 539
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    const-string v8, "HtcDeviceInfoManager"

    const-string v9, "logLockscreenShortcutInfo exception"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 541
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    const/4 v5, 0x0

    throw v8
.end method
