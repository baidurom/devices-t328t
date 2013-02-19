.class Lcom/htc/server/HtcDebugInfoOperator$1;
.super Ljava/lang/Object;
.source "HtcDebugInfoOperator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/server/HtcDebugInfoOperator;->logStatusbarInfo()V
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
    .line 423
    iput-object p1, p0, Lcom/htc/server/HtcDebugInfoOperator$1;->this$0:Lcom/htc/server/HtcDebugInfoOperator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 425
    new-instance v8, Ljava/lang/ProcessBuilder;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "/system/bin/dumpsys"

    aput-object v11, v9, v10

    const-string v10, "statusbar"

    aput-object v10, v9, v12

    invoke-direct {v8, v9}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v7

    .line 426
    .local v7, processBuilder:Ljava/lang/ProcessBuilder;
    const/4 v2, 0x0

    .line 427
    .local v2, input:Ljava/io/BufferedReader;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 428
    .local v5, plainText:Ljava/lang/StringBuilder;
    const-string v0, ""

    .line 429
    .local v0, cipherText:Ljava/lang/String;
    const/4 v4, 0x0

    .line 431
    .local v4, line:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v6

    .line 432
    .local v6, process:Ljava/lang/Process;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 433
    :goto_0
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 435
    :goto_1
    :try_start_3
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 436
    .end local v2           #input:Ljava/io/BufferedReader;
    .local v3, input:Ljava/io/BufferedReader;
    :try_start_4
    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    :cond_0
    :goto_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 438
    const-string v8, "StatusBarNotification"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "visible=true"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 439
    :cond_1
    const-string v8, "\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 450
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 451
    .end local v3           #input:Ljava/io/BufferedReader;
    .end local v6           #process:Ljava/lang/Process;
    .local v1, e:Ljava/lang/Exception;
    .restart local v2       #input:Ljava/io/BufferedReader;
    :goto_3
    :try_start_5
    const-string v8, "HtcDeviceInfoManager"

    const-string v9, "Error encrypt running process"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 453
    const/4 v5, 0x0

    .line 454
    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 456
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    :goto_4
    return-void

    .line 443
    .end local v2           #input:Ljava/io/BufferedReader;
    .restart local v3       #input:Ljava/io/BufferedReader;
    .restart local v6       #process:Ljava/lang/Process;
    :cond_3
    :try_start_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/utils/ulog/StringHelper;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 444
    if-eqz v0, :cond_4

    .line 445
    sget-object v8, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_STATUSBAR_INFO:Lcom/htc/utils/ulog/ULogTags;

    invoke-static {v8, v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 453
    :cond_4
    :goto_5
    const/4 v5, 0x0

    .line 454
    if-eqz v3, :cond_5

    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_5
    :goto_6
    move-object v2, v3

    .line 455
    .end local v3           #input:Ljava/io/BufferedReader;
    .restart local v2       #input:Ljava/io/BufferedReader;
    goto :goto_4

    .line 447
    .end local v2           #input:Ljava/io/BufferedReader;
    .restart local v3       #input:Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 448
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_9
    const-string v8, "HtcDeviceInfoManager"

    const-string v9, "encrypt exception"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_5

    .line 453
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    move-object v2, v3

    .end local v3           #input:Ljava/io/BufferedReader;
    .end local v6           #process:Ljava/lang/Process;
    .restart local v2       #input:Ljava/io/BufferedReader;
    :goto_7
    const/4 v5, 0x0

    .line 454
    if-eqz v2, :cond_6

    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 453
    :cond_6
    :goto_8
    throw v8

    .line 454
    :catch_2
    move-exception v9

    goto :goto_8

    .restart local v1       #e:Ljava/lang/Exception;
    :catch_3
    move-exception v8

    goto :goto_4

    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #input:Ljava/io/BufferedReader;
    .restart local v3       #input:Ljava/io/BufferedReader;
    .restart local v6       #process:Ljava/lang/Process;
    :catch_4
    move-exception v8

    goto :goto_6

    .line 453
    .end local v3           #input:Ljava/io/BufferedReader;
    .end local v6           #process:Ljava/lang/Process;
    .restart local v2       #input:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    goto :goto_7

    .line 450
    :catch_5
    move-exception v1

    goto :goto_3

    .line 433
    .restart local v6       #process:Ljava/lang/Process;
    :catch_6
    move-exception v8

    goto :goto_1

    .line 432
    :catch_7
    move-exception v8

    goto/16 :goto_0
.end method
