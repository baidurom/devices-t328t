.class Lcom/android/server/am/HtcErrorReportManager$2;
.super Ljava/lang/Object;
.source "HtcErrorReportManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/HtcErrorReportManager;->addErrorToDropBoxForHTC(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/HtcErrorReportManager;

.field final synthetic val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$dropboxTag:Ljava/lang/String;

.field final synthetic val$eventType:Ljava/lang/String;

.field final synthetic val$isNeedRunBySelf:Z

.field final synthetic val$logFile:Ljava/io/File;

.field final synthetic val$report:Ljava/lang/String;

.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;ZLandroid/os/DropBoxManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    iput-object p2, p0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dropboxTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/HtcErrorReportManager$2;->val$sb:Ljava/lang/StringBuilder;

    iput-object p4, p0, Lcom/android/server/am/HtcErrorReportManager$2;->val$report:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/am/HtcErrorReportManager$2;->val$logFile:Ljava/io/File;

    iput-object p6, p0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/am/HtcErrorReportManager$2;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iput-boolean p8, p0, Lcom/android/server/am/HtcErrorReportManager$2;->val$isNeedRunBySelf:Z

    iput-object p9, p0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dbox:Landroid/os/DropBoxManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 230
    new-instance v4, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/misc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dbox_tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    .local v4, temp_file:Ljava/io/File;
    const/4 v12, 0x0

    .line 232
    .local v12, fileWriter:Ljava/io/OutputStreamWriter;
    const/4 v14, 0x0

    .line 234
    .local v14, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 235
    .end local v14           #fos:Ljava/io/FileOutputStream;
    .local v15, fos:Ljava/io/FileOutputStream;
    const/16 v18, 0x0

    .line 236
    .local v18, os:Ljava/io/OutputStream;
    const/4 v2, 0x1

    :try_start_1
    sget-object v3, Lcom/android/server/am/HtcErrorReportManager;->SEED_GETTER:Lcom/htc/utils/ulog/io/LogStream$SeedGetter;

    invoke-static {v15, v2, v3}, Lcom/htc/utils/ulog/io/LogStream;->concatenateOutputStream(Ljava/io/OutputStream;ZLcom/htc/utils/ulog/io/LogStream$SeedGetter;)Ljava/io/OutputStream;

    move-result-object v18

    .line 237
    new-instance v13, Ljava/io/OutputStreamWriter;

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 239
    .end local v12           #fileWriter:Ljava/io/OutputStreamWriter;
    .local v13, fileWriter:Ljava/io/OutputStreamWriter;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 240
    const-string v2, "\n----- KERNEL -----\n"

    invoke-virtual {v13, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    new-instance v3, Ljava/io/File;

    const-string v20, "/proc/version"

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v20, 0x5

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    #calls: Lcom/android/server/am/HtcErrorReportManager;->logTextFile(Ljava/io/File;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V
    invoke-static {v2, v3, v13, v0}, Lcom/android/server/am/HtcErrorReportManager;->access$000(Lcom/android/server/am/HtcErrorReportManager;Ljava/io/File;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V

    .line 243
    const-string v2, "\n----- CMDLINE -----\n"

    invoke-virtual {v13, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    new-instance v3, Ljava/io/File;

    const-string v20, "/proc/cmdline"

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v20, 0x5

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    #calls: Lcom/android/server/am/HtcErrorReportManager;->logTextFile(Ljava/io/File;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V
    invoke-static {v2, v3, v13, v0}, Lcom/android/server/am/HtcErrorReportManager;->access$000(Lcom/android/server/am/HtcErrorReportManager;Ljava/io/File;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$report:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 247
    const-string v2, "\n----- REPORT -----\n"

    invoke-virtual {v13, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$report:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v13}, Ljava/io/OutputStreamWriter;->flush()V

    .line 251
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$logFile:Ljava/io/File;

    if-eqz v2, :cond_2

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    const-string v3, "native_crash"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 253
    const-string v2, "\n----- LOG FILE -----\n"

    invoke-virtual {v13, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 255
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$logFile:Ljava/io/File;

    #calls: Lcom/android/server/am/HtcErrorReportManager;->logTextFile(Ljava/io/File;Ljava/io/OutputStreamWriter;)V
    invoke-static {v2, v3, v13}, Lcom/android/server/am/HtcErrorReportManager;->access$100(Lcom/android/server/am/HtcErrorReportManager;Ljava/io/File;Ljava/io/OutputStreamWriter;)V

    .line 257
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 258
    const-string v2, "\n----- STACK TRACE -----\n"

    invoke-virtual {v13, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v13}, Ljava/io/OutputStreamWriter;->flush()V

    .line 263
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logcat_for_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 264
    .local v19, setting:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    iget-object v2, v2, Lcom/android/server/am/HtcErrorReportManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-static {v2, v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 266
    .local v16, lines:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    const-string v3, "crash"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    const-string v3, "anr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    const-string v3, "watchdog"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 267
    :cond_4
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "userdebug"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v16, 0x1000

    .line 268
    :cond_5
    :goto_0
    if-lez v16, :cond_6

    .line 269
    const-string v2, "\n----- SYSTEM LOG -----\n"

    invoke-virtual {v13, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    new-instance v3, Ljava/lang/ProcessBuilder;

    const/16 v20, 0x5

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "/system/bin/logcat"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string v22, "-v"

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string v22, "time"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    const-string v22, "-t"

    aput-object v22, v20, v21

    const/16 v21, 0x4

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v3

    const/16 v20, 0x0

    move-object/from16 v0, v20

    #calls: Lcom/android/server/am/HtcErrorReportManager;->logProcessResult(Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V
    invoke-static {v2, v3, v13, v0}, Lcom/android/server/am/HtcErrorReportManager;->access$200(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V

    .line 272
    const-string v2, "\n----- EVENT LOG -----\n"

    invoke-virtual {v13, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    new-instance v3, Ljava/lang/ProcessBuilder;

    const/16 v20, 0x7

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "/system/bin/logcat"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string v22, "-v"

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string v22, "time"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    const-string v22, "-b"

    aput-object v22, v20, v21

    const/16 v21, 0x4

    const-string v22, "events"

    aput-object v22, v20, v21

    const/16 v21, 0x5

    const-string v22, "-t"

    aput-object v22, v20, v21

    const/16 v21, 0x6

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v3

    const/16 v20, 0x0

    move-object/from16 v0, v20

    #calls: Lcom/android/server/am/HtcErrorReportManager;->logProcessResult(Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V
    invoke-static {v2, v3, v13, v0}, Lcom/android/server/am/HtcErrorReportManager;->access$200(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V

    .line 275
    const-string v2, "\n----- RADIO LOG -----\n"

    invoke-virtual {v13, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    new-instance v3, Ljava/lang/ProcessBuilder;

    const/16 v20, 0x7

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "/system/bin/logcat"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string v22, "-v"

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string v22, "time"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    const-string v22, "-b"

    aput-object v22, v20, v21

    const/16 v21, 0x4

    const-string v22, "radio"

    aput-object v22, v20, v21

    const/16 v21, 0x5

    const-string v22, "-t"

    aput-object v22, v20, v21

    const/16 v21, 0x6

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v3

    const/16 v20, 0x0

    move-object/from16 v0, v20

    #calls: Lcom/android/server/am/HtcErrorReportManager;->logProcessResult(Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V
    invoke-static {v2, v3, v13, v0}, Lcom/android/server/am/HtcErrorReportManager;->access$200(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V

    .line 278
    const-string v2, "\n----- KERNEL MSG -----\n"

    invoke-virtual {v13, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    new-instance v3, Ljava/lang/ProcessBuilder;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "/system/bin/dmesg"

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    #calls: Lcom/android/server/am/HtcErrorReportManager;->logProcessResult(Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V
    invoke-static {v2, v3, v13, v0}, Lcom/android/server/am/HtcErrorReportManager;->access$200(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V

    .line 280
    const-string v2, "\n----- PROCRANK (procrank) -----\n"

    invoke-virtual {v13, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    new-instance v3, Ljava/lang/ProcessBuilder;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "/system/xbin/procrank"

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/16 v20, 0x0

    move-object/from16 v0, v20

    #calls: Lcom/android/server/am/HtcErrorReportManager;->logProcessResult(Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V
    invoke-static {v2, v3, v13, v0}, Lcom/android/server/am/HtcErrorReportManager;->access$200(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V

    .line 284
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    iget-object v2, v2, Lcom/android/server/am/HtcErrorReportManager;->mContext:Landroid/content/Context;

    const-string v3, "com.htc.feedback"

    const-string v20, "com.htc.feedback.DeviceStatus"

    move-object/from16 v0, v20

    #calls: Lcom/android/server/am/HtcErrorReportManager;->getClassFromHtcFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    invoke-static {v2, v3, v0}, Lcom/android/server/am/HtcErrorReportManager;->access$300(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 285
    .local v10, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v10, :cond_7

    .line 286
    const/4 v2, 0x2

    new-array v9, v2, [Ljava/lang/Class;

    .line 287
    .local v9, arguTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v2, 0x2

    new-array v8, v2, [Ljava/lang/Object;

    .line 288
    .local v8, arguList:[Ljava/lang/Object;
    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v9, v2

    .line 289
    const/4 v2, 0x0

    const-string v3, "/data"

    aput-object v3, v8, v2

    .line 290
    const/4 v2, 0x1

    const-class v3, Ljava/io/OutputStreamWriter;

    aput-object v3, v9, v2

    .line 291
    const/4 v2, 0x1

    aput-object v13, v8, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 293
    :try_start_3
    const-string v2, "dump"

    invoke-virtual {v10, v2, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 294
    .local v17, method:Ljava/lang/reflect/Method;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-virtual {v13}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 302
    .end local v8           #arguList:[Ljava/lang/Object;
    .end local v9           #arguTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v17           #method:Ljava/lang/reflect/Method;
    :cond_7
    :goto_1
    if-eqz v13, :cond_17

    .line 303
    :try_start_4
    invoke-virtual {v13}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 304
    const/4 v12, 0x0

    .line 307
    .end local v13           #fileWriter:Ljava/io/OutputStreamWriter;
    .restart local v12       #fileWriter:Ljava/io/OutputStreamWriter;
    :goto_2
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 308
    .local v6, entryStartTime:J
    const/16 v5, 0x8

    .line 309
    .local v5, flags:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$isNeedRunBySelf:Z

    if-eqz v2, :cond_8

    .line 310
    or-int/lit16 v5, v5, 0x4000

    .line 311
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dbox:Landroid/os/DropBoxManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;IJ)V

    .line 312
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dropboxTag:Ljava/lang/String;

    const-string v3, "SYSTEM_CRASH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    const-string v3, "watchdog"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {}, Landroid/os/Process;->isDumpStateExist()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result v2

    if-eqz v2, :cond_d

    .line 334
    if-eqz v12, :cond_9

    .line 335
    :try_start_6
    invoke-virtual {v12}, Ljava/io/OutputStreamWriter;->close()V

    .line 336
    :cond_9
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 337
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :cond_a
    :goto_3
    move-object v14, v15

    .line 341
    .end local v5           #flags:I
    .end local v6           #entryStartTime:J
    .end local v10           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v15           #fos:Ljava/io/FileOutputStream;
    .end local v16           #lines:I
    .end local v18           #os:Ljava/io/OutputStream;
    .end local v19           #setting:Ljava/lang/String;
    .restart local v14       #fos:Ljava/io/FileOutputStream;
    :cond_b
    :goto_4
    return-void

    .line 267
    .end local v12           #fileWriter:Ljava/io/OutputStreamWriter;
    .end local v14           #fos:Ljava/io/FileOutputStream;
    .restart local v13       #fileWriter:Ljava/io/OutputStreamWriter;
    .restart local v15       #fos:Ljava/io/FileOutputStream;
    .restart local v16       #lines:I
    .restart local v18       #os:Ljava/io/OutputStream;
    .restart local v19       #setting:Ljava/lang/String;
    :cond_c
    const/16 v16, 0x400

    goto/16 :goto_0

    .line 319
    .end local v13           #fileWriter:Ljava/io/OutputStreamWriter;
    .restart local v5       #flags:I
    .restart local v6       #entryStartTime:J
    .restart local v10       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v12       #fileWriter:Ljava/io/OutputStreamWriter;
    :cond_d
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    const-string v3, "watchdog"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v2

    if-nez v2, :cond_f

    .line 320
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v2, :cond_14

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->hprofFileName:Ljava/lang/String;

    if-eqz v2, :cond_12

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    const-string v3, "/data/system/last_crash_msg"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dropboxTag:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->hprofFileName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    #calls: Lcom/android/server/am/HtcErrorReportManager;->createLogEntry(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v0}, Lcom/android/server/am/HtcErrorReportManager;->access$400(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 334
    :cond_f
    :goto_5
    if-eqz v12, :cond_10

    .line 335
    :try_start_8
    invoke-virtual {v12}, Ljava/io/OutputStreamWriter;->close()V

    .line 336
    :cond_10
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 337
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :cond_11
    move-object v14, v15

    .line 339
    .end local v15           #fos:Ljava/io/FileOutputStream;
    .restart local v14       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 324
    .end local v14           #fos:Ljava/io/FileOutputStream;
    .restart local v15       #fos:Ljava/io/FileOutputStream;
    :cond_12
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    const-string v3, "/data/system/last_crash_msg"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dropboxTag:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    #calls: Lcom/android/server/am/HtcErrorReportManager;->createLogEntry(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v0}, Lcom/android/server/am/HtcErrorReportManager;->access$400(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_5

    .line 330
    .end local v5           #flags:I
    .end local v6           #entryStartTime:J
    .end local v10           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v16           #lines:I
    .end local v19           #setting:Ljava/lang/String;
    :catch_0
    move-exception v11

    move-object v14, v15

    .line 331
    .end local v15           #fos:Ljava/io/FileOutputStream;
    .end local v18           #os:Ljava/io/OutputStream;
    .local v11, e:Ljava/lang/Exception;
    .restart local v14       #fos:Ljava/io/FileOutputStream;
    :goto_6
    :try_start_a
    const-string v2, "ActivityManager"

    const-string v3, "Error in dumping error information"

    invoke-static {v2, v3, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 334
    if-eqz v12, :cond_13

    .line 335
    :try_start_b
    invoke-virtual {v12}, Ljava/io/OutputStreamWriter;->close()V

    .line 336
    :cond_13
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 337
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_4

    .line 338
    :catch_1
    move-exception v2

    goto/16 :goto_4

    .line 327
    .end local v11           #e:Ljava/lang/Exception;
    .end local v14           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #flags:I
    .restart local v6       #entryStartTime:J
    .restart local v10       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v15       #fos:Ljava/io/FileOutputStream;
    .restart local v16       #lines:I
    .restart local v18       #os:Ljava/io/OutputStream;
    .restart local v19       #setting:Ljava/lang/String;
    :cond_14
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    const-string v3, "/data/system/last_crash_msg"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dropboxTag:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    #calls: Lcom/android/server/am/HtcErrorReportManager;->createLogEntry(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v0}, Lcom/android/server/am/HtcErrorReportManager;->access$400(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_5

    .line 333
    .end local v5           #flags:I
    .end local v6           #entryStartTime:J
    .end local v10           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v16           #lines:I
    .end local v19           #setting:Ljava/lang/String;
    :catchall_0
    move-exception v2

    move-object v14, v15

    .line 334
    .end local v15           #fos:Ljava/io/FileOutputStream;
    .end local v18           #os:Ljava/io/OutputStream;
    .restart local v14       #fos:Ljava/io/FileOutputStream;
    :goto_7
    if-eqz v12, :cond_15

    .line 335
    :try_start_d
    invoke-virtual {v12}, Ljava/io/OutputStreamWriter;->close()V

    .line 336
    :cond_15
    if-eqz v4, :cond_16

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 337
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    .line 339
    :cond_16
    :goto_8
    throw v2

    .line 338
    .end local v14           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #flags:I
    .restart local v6       #entryStartTime:J
    .restart local v10       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v15       #fos:Ljava/io/FileOutputStream;
    .restart local v16       #lines:I
    .restart local v18       #os:Ljava/io/OutputStream;
    .restart local v19       #setting:Ljava/lang/String;
    :catch_2
    move-exception v2

    move-object v14, v15

    .line 340
    .end local v15           #fos:Ljava/io/FileOutputStream;
    .restart local v14       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 338
    .end local v5           #flags:I
    .end local v6           #entryStartTime:J
    .end local v10           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v16           #lines:I
    .end local v18           #os:Ljava/io/OutputStream;
    .end local v19           #setting:Ljava/lang/String;
    :catch_3
    move-exception v3

    goto :goto_8

    .line 333
    :catchall_1
    move-exception v2

    goto :goto_7

    .end local v12           #fileWriter:Ljava/io/OutputStreamWriter;
    .end local v14           #fos:Ljava/io/FileOutputStream;
    .restart local v13       #fileWriter:Ljava/io/OutputStreamWriter;
    .restart local v15       #fos:Ljava/io/FileOutputStream;
    .restart local v18       #os:Ljava/io/OutputStream;
    :catchall_2
    move-exception v2

    move-object v14, v15

    .end local v15           #fos:Ljava/io/FileOutputStream;
    .restart local v14       #fos:Ljava/io/FileOutputStream;
    move-object v12, v13

    .end local v13           #fileWriter:Ljava/io/OutputStreamWriter;
    .restart local v12       #fileWriter:Ljava/io/OutputStreamWriter;
    goto :goto_7

    .line 330
    .end local v18           #os:Ljava/io/OutputStream;
    :catch_4
    move-exception v11

    goto :goto_6

    .end local v12           #fileWriter:Ljava/io/OutputStreamWriter;
    .end local v14           #fos:Ljava/io/FileOutputStream;
    .restart local v13       #fileWriter:Ljava/io/OutputStreamWriter;
    .restart local v15       #fos:Ljava/io/FileOutputStream;
    .restart local v18       #os:Ljava/io/OutputStream;
    :catch_5
    move-exception v11

    move-object v14, v15

    .end local v15           #fos:Ljava/io/FileOutputStream;
    .restart local v14       #fos:Ljava/io/FileOutputStream;
    move-object v12, v13

    .end local v13           #fileWriter:Ljava/io/OutputStreamWriter;
    .restart local v12       #fileWriter:Ljava/io/OutputStreamWriter;
    goto :goto_6

    .line 338
    .end local v14           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #flags:I
    .restart local v6       #entryStartTime:J
    .restart local v10       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v15       #fos:Ljava/io/FileOutputStream;
    .restart local v16       #lines:I
    .restart local v19       #setting:Ljava/lang/String;
    :catch_6
    move-exception v2

    goto/16 :goto_3

    .line 296
    .end local v5           #flags:I
    .end local v6           #entryStartTime:J
    .end local v12           #fileWriter:Ljava/io/OutputStreamWriter;
    .restart local v8       #arguList:[Ljava/lang/Object;
    .restart local v9       #arguTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .restart local v13       #fileWriter:Ljava/io/OutputStreamWriter;
    :catch_7
    move-exception v2

    goto/16 :goto_1

    .end local v8           #arguList:[Ljava/lang/Object;
    .end local v9           #arguTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_17
    move-object v12, v13

    .end local v13           #fileWriter:Ljava/io/OutputStreamWriter;
    .restart local v12       #fileWriter:Ljava/io/OutputStreamWriter;
    goto/16 :goto_2
.end method
