.class Lcom/android/server/am/HtcAppErrorDialog;
.super Landroid/app/Dialog;
.source "HtcAppErrorDialog.java"


# static fields
.field static final DISMISS_TIMEOUT:J = 0x493e0L

.field private static final FEEDBACK_PACKAGE_NAME:Ljava/lang/String; = "com.htc.feedback"

.field static final FORCE_QUIT:I = 0x0

.field static final FORCE_QUIT_AND_AUTO_REPORT:I = 0x2

.field static final FORCE_QUIT_AND_REPORT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HtcAppErrorDialog"


# instance fields
.field private final mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

.field private final mDlgBaseCallback:Lcom/android/server/am/HtcErrorDialogBase$Callback;

.field private mInit:Z

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mResult:Lcom/android/server/am/AppErrorResult;

.field private final mWindowTitle:Ljava/lang/String;

.field private final mWindowType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V
    .locals 22
    .parameter "context"
    .parameter "result"
    .parameter "app"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 166
    new-instance v19, Lcom/android/server/am/HtcAppErrorDialog$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/HtcAppErrorDialog$1;-><init>(Lcom/android/server/am/HtcAppErrorDialog;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBaseCallback:Lcom/android/server/am/HtcErrorDialogBase$Callback;

    .line 42
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 45
    .local v12, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v19, "com.htc.feedback"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 50
    .local v15, res:Landroid/content/res/Resources;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "htc_error_report_auto_send"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    const/4 v3, 0x1

    .line 53
    .local v3, autoSend:Z
    :goto_1
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 54
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/HtcAppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 55
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Application Error: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/HtcAppErrorDialog;->mWindowTitle:Ljava/lang/String;

    .line 56
    new-instance v19, Lcom/android/server/am/HtcErrorDialogBase;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBaseCallback:Lcom/android/server/am/HtcErrorDialogBase$Callback;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/HtcErrorDialogBase;-><init>(Landroid/content/Context;Lcom/android/server/am/HtcErrorDialogBase$Callback;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    .line 58
    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 59
    const/16 v19, 0x7da

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/HtcAppErrorDialog;->mWindowType:I

    .line 64
    :goto_2
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Ljava/util/HashSet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    .local v9, name:Ljava/lang/CharSequence;
    if-eqz v9, :cond_4

    .line 70
    :goto_3
    const-wide/high16 v17, 0x400c

    .line 72
    .local v17, sense:D
    :try_start_1
    sget-object v19, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v17

    .line 77
    :goto_4
    const/4 v11, 0x0

    .local v11, negativeBtnName:Ljava/lang/CharSequence;
    const/4 v14, 0x0

    .local v14, positiveBtnName:Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 78
    .local v5, dlgMsg:Ljava/lang/CharSequence;
    const/4 v10, 0x0

    .local v10, negativeBtnMsgId:I
    const/4 v13, 0x0

    .line 79
    .local v13, positiveBtnMsgId:I
    const/4 v8, 0x0

    .line 80
    .local v8, hasTwoBtns:Z
    const/16 v16, 0x0

    .line 81
    .local v16, resId:I
    if-eqz v3, :cond_5

    const/4 v4, 0x2

    .line 84
    .local v4, dismissMsgId:I
    :goto_5
    if-eqz v3, :cond_7

    .line 85
    :try_start_2
    const-string v19, "msg_app_crash_auto"

    const-string v20, "string"

    const-string v21, "com.htc.feedback"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 86
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 87
    const-wide/high16 v19, 0x4010

    cmpg-double v19, v17, v19

    if-gez v19, :cond_6

    .line 88
    const v19, 0x10403c2

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 89
    const/4 v10, 0x2

    .line 135
    :cond_0
    :goto_6
    const-string v19, "title_error_dialog"

    const-string v20, "string"

    const-string v21, "com.htc.feedback"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 136
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 138
    .local v6, dlgTitle:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/am/HtcErrorDialogBase;->setCancelable(Z)V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/android/server/am/HtcErrorDialogBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/android/server/am/HtcErrorDialogBase;->setMessage(Ljava/lang/CharSequence;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11, v10}, Lcom/android/server/am/HtcErrorDialogBase;->setNegativeButton(Ljava/lang/CharSequence;I)V

    .line 143
    if-eqz v8, :cond_1

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v13}, Lcom/android/server/am/HtcErrorDialogBase;->setPositiveButton(Ljava/lang/CharSequence;I)V

    .line 147
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    move-object/from16 v19, v0

    const-wide/32 v20, 0x493e0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/server/am/HtcErrorDialogBase;->sendMessageDelayed(IJ)V

    .line 149
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/HtcAppErrorDialog;->mInit:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 154
    .end local v6           #dlgTitle:Ljava/lang/CharSequence;
    :goto_7
    return-void

    .line 46
    .end local v3           #autoSend:Z
    .end local v4           #dismissMsgId:I
    .end local v5           #dlgMsg:Ljava/lang/CharSequence;
    .end local v8           #hasTwoBtns:Z
    .end local v9           #name:Ljava/lang/CharSequence;
    .end local v10           #negativeBtnMsgId:I
    .end local v11           #negativeBtnName:Ljava/lang/CharSequence;
    .end local v13           #positiveBtnMsgId:I
    .end local v14           #positiveBtnName:Ljava/lang/CharSequence;
    .end local v15           #res:Landroid/content/res/Resources;
    .end local v16           #resId:I
    .end local v17           #sense:D
    :catch_0
    move-exception v7

    .line 47
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .restart local v15       #res:Landroid/content/res/Resources;
    goto/16 :goto_0

    .line 50
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 61
    .restart local v3       #autoSend:Z
    :cond_3
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/HtcAppErrorDialog;->mWindowType:I

    goto/16 :goto_2

    .line 67
    :cond_4
    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .restart local v9       #name:Ljava/lang/CharSequence;
    goto/16 :goto_3

    .line 73
    .restart local v17       #sense:D
    :catch_1
    move-exception v7

    .line 74
    .local v7, e:Ljava/lang/Exception;
    const-string v19, "HtcAppErrorDialog"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "version parse error"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 81
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v5       #dlgMsg:Ljava/lang/CharSequence;
    .restart local v8       #hasTwoBtns:Z
    .restart local v10       #negativeBtnMsgId:I
    .restart local v11       #negativeBtnName:Ljava/lang/CharSequence;
    .restart local v13       #positiveBtnMsgId:I
    .restart local v14       #positiveBtnName:Ljava/lang/CharSequence;
    .restart local v16       #resId:I
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 90
    .restart local v4       #dismissMsgId:I
    :cond_6
    const-wide/high16 v19, 0x4010

    cmpl-double v19, v17, v19

    if-ltz v19, :cond_0

    .line 91
    :try_start_3
    const-string v19, "btn_close"

    const-string v20, "string"

    const-string v21, "com.htc.feedback"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 92
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 93
    const/4 v10, 0x2

    goto/16 :goto_6

    .line 96
    :cond_7
    const-string v19, "msg_app_crash"

    const-string v20, "string"

    const-string v21, "com.htc.feedback"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 97
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 98
    const-wide/high16 v19, 0x4010

    cmpg-double v19, v17, v19

    if-gez v19, :cond_9

    .line 99
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    .line 102
    const-string v19, "btn_no"

    const-string v20, "string"

    const-string v21, "com.htc.feedback"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 103
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 104
    const/4 v10, 0x0

    .line 107
    const-string v19, "app_name"

    const-string v20, "string"

    const-string v21, "com.htc.feedback"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 108
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 109
    const/4 v13, 0x1

    .line 112
    const/4 v8, 0x1

    goto/16 :goto_6

    .line 114
    :cond_8
    const v19, 0x10403c2

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 115
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 117
    :cond_9
    const-wide/high16 v19, 0x4010

    cmpl-double v19, v17, v19

    if-ltz v19, :cond_0

    .line 118
    const-string v19, "btn_dont_send"

    const-string v20, "string"

    const-string v21, "com.htc.feedback"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 119
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 120
    const/4 v10, 0x0

    .line 121
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 124
    const-string v19, "btn_send_report"

    const-string v20, "string"

    const-string v21, "com.htc.feedback"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 125
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v14

    .line 126
    const/4 v13, 0x1

    .line 129
    const/4 v8, 0x1

    goto/16 :goto_6

    .line 150
    :catch_2
    move-exception v7

    .line 151
    .restart local v7       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcAppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 152
    const-string v19, "HtcAppErrorDialog"

    const-string v20, "Constructor()"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7
.end method

.method static synthetic access$000(Lcom/android/server/am/HtcAppErrorDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/HtcAppErrorDialog;)Lcom/android/server/am/AppErrorResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/server/am/HtcAppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/android/server/am/HtcAppErrorDialog;->mInit:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    invoke-virtual {v0}, Lcom/android/server/am/HtcErrorDialogBase;->dismiss()V

    .line 164
    :cond_0
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/android/server/am/HtcAppErrorDialog;->mInit:Z

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    iget-object v1, p0, Lcom/android/server/am/HtcAppErrorDialog;->mWindowTitle:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/HtcAppErrorDialog;->mWindowType:I

    const/high16 v3, 0x4000

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/HtcErrorDialogBase;->show(Ljava/lang/String;II)V

    .line 159
    :cond_0
    return-void
.end method
