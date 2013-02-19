.class Lcom/android/server/am/HtcAppNotRespondingDialog;
.super Landroid/app/Dialog;
.source "HtcAppNotRespondingDialog.java"


# static fields
.field private static final FEEDBACK_PACKAGE_NAME:Ljava/lang/String; = "com.htc.feedback"

.field static final FORCE_CLOSE:I = 0x1

.field static final FORCE_CLOSE_AND_AUTO_REPORT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "HtcAppNotRespondingDialog"

.field static final WAIT:I = 0x2

.field static final WAIT_AND_AUTO_REPORT:I = 0x5

.field static final WAIT_AND_REPORT:I = 0x3


# instance fields
.field private final mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

.field private final mDlgBaseCallback:Lcom/android/server/am/HtcErrorDialogBase$Callback;

.field private mInit:Z

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mWindowTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 27
    .parameter "service"
    .parameter "context"
    .parameter "app"
    .parameter "activity"

    .prologue
    .line 38
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 184
    new-instance v24, Lcom/android/server/am/HtcAppNotRespondingDialog$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/HtcAppNotRespondingDialog$1;-><init>(Lcom/android/server/am/HtcAppNotRespondingDialog;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/HtcAppNotRespondingDialog;->mDlgBaseCallback:Lcom/android/server/am/HtcErrorDialogBase$Callback;

    .line 41
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/HtcAppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 42
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/HtcAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 43
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Application Not Responding: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/HtcAppNotRespondingDialog;->mWindowTitle:Ljava/lang/String;

    .line 44
    new-instance v24, Lcom/android/server/am/HtcErrorDialogBase;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mDlgBaseCallback:Lcom/android/server/am/HtcErrorDialogBase$Callback;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/HtcErrorDialogBase;-><init>(Landroid/content/Context;Lcom/android/server/am/HtcErrorDialogBase$Callback;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/HtcAppNotRespondingDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    .line 48
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 50
    .local v17, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v24, "com.htc.feedback"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v20

    .line 55
    .local v20, res:Landroid/content/res/Resources;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "htc_error_report_auto_send"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    const/4 v4, 0x1

    .line 60
    .local v4, autoSend:Z
    :goto_1
    const/4 v14, 0x0

    .local v14, negativeBtnName:Ljava/lang/CharSequence;
    const/16 v16, 0x0

    .local v16, neutralBtnName:Ljava/lang/CharSequence;
    const/16 v19, 0x0

    .local v19, positiveBtnName:Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 61
    .local v5, dlgMsg:Ljava/lang/CharSequence;
    const/4 v13, 0x0

    .local v13, negativeBtnMsgId:I
    const/4 v15, 0x0

    .local v15, neutralBtnMsgId:I
    const/16 v18, 0x0

    .line 62
    .local v18, positiveBtnMsgId:I
    const/4 v8, 0x0

    .local v8, hasNegativeBtn:Z
    const/4 v9, 0x0

    .local v9, hasNeutralBtn:Z
    const/4 v10, 0x0

    .line 63
    .local v10, hasPositiveBtn:Z
    const/16 v21, 0x0

    .line 65
    .local v21, resId:I
    if-eqz p4, :cond_5

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 68
    .local v11, name1:Ljava/lang/CharSequence;
    :goto_2
    const/4 v12, 0x0

    .line 69
    .local v12, name2:Ljava/lang/CharSequence;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Ljava/util/HashSet;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashSet;->size()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 71
    if-eqz v11, :cond_6

    .line 84
    :goto_3
    const-wide/high16 v22, 0x400c

    .line 86
    .local v22, sense:D
    :try_start_1
    sget-object v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v22

    .line 92
    :goto_4
    if-eqz v4, :cond_a

    .line 93
    :try_start_2
    const-string v24, "msg_app_anr_auto"

    const-string v25, "string"

    const-string v26, "com.htc.feedback"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    .line 94
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 95
    const-wide/high16 v24, 0x4010

    cmpg-double v24, v22, v24

    if-gez v24, :cond_9

    .line 97
    const v24, 0x10403c2

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 98
    const/4 v13, 0x4

    .line 99
    const/4 v8, 0x1

    .line 101
    const v24, 0x10403c4

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 102
    const/4 v15, 0x5

    .line 103
    const/4 v9, 0x1

    .line 155
    :cond_0
    :goto_5
    const-string v24, "title_error_dialog"

    const-string v25, "string"

    const-string v26, "com.htc.feedback"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    .line 156
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 158
    .local v6, dlgTitle:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Lcom/android/server/am/HtcErrorDialogBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/android/server/am/HtcErrorDialogBase;->setMessage(Ljava/lang/CharSequence;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/android/server/am/HtcErrorDialogBase;->setCancelable(Z)V

    .line 161
    if-eqz v8, :cond_1

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v14, v13}, Lcom/android/server/am/HtcErrorDialogBase;->setNegativeButton(Ljava/lang/CharSequence;I)V

    .line 163
    :cond_1
    if-eqz v9, :cond_2

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/android/server/am/HtcErrorDialogBase;->setNeutralButton(Ljava/lang/CharSequence;I)V

    .line 165
    :cond_2
    if-eqz v10, :cond_3

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/HtcErrorDialogBase;->setPositiveButton(Ljava/lang/CharSequence;I)V

    .line 168
    :cond_3
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/HtcAppNotRespondingDialog;->mInit:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 172
    .end local v6           #dlgTitle:Ljava/lang/CharSequence;
    :goto_6
    return-void

    .line 51
    .end local v4           #autoSend:Z
    .end local v5           #dlgMsg:Ljava/lang/CharSequence;
    .end local v8           #hasNegativeBtn:Z
    .end local v9           #hasNeutralBtn:Z
    .end local v10           #hasPositiveBtn:Z
    .end local v11           #name1:Ljava/lang/CharSequence;
    .end local v12           #name2:Ljava/lang/CharSequence;
    .end local v13           #negativeBtnMsgId:I
    .end local v14           #negativeBtnName:Ljava/lang/CharSequence;
    .end local v15           #neutralBtnMsgId:I
    .end local v16           #neutralBtnName:Ljava/lang/CharSequence;
    .end local v18           #positiveBtnMsgId:I
    .end local v19           #positiveBtnName:Ljava/lang/CharSequence;
    .end local v20           #res:Landroid/content/res/Resources;
    .end local v21           #resId:I
    .end local v22           #sense:D
    :catch_0
    move-exception v7

    .line 52
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .restart local v20       #res:Landroid/content/res/Resources;
    goto/16 :goto_0

    .line 55
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 65
    .restart local v4       #autoSend:Z
    .restart local v5       #dlgMsg:Ljava/lang/CharSequence;
    .restart local v8       #hasNegativeBtn:Z
    .restart local v9       #hasNeutralBtn:Z
    .restart local v10       #hasPositiveBtn:Z
    .restart local v13       #negativeBtnMsgId:I
    .restart local v14       #negativeBtnName:Ljava/lang/CharSequence;
    .restart local v15       #neutralBtnMsgId:I
    .restart local v16       #neutralBtnName:Ljava/lang/CharSequence;
    .restart local v18       #positiveBtnMsgId:I
    .restart local v19       #positiveBtnName:Ljava/lang/CharSequence;
    .restart local v21       #resId:I
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 73
    .restart local v11       #name1:Ljava/lang/CharSequence;
    .restart local v12       #name2:Ljava/lang/CharSequence;
    :cond_6
    move-object v11, v12

    .line 74
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto/16 :goto_3

    .line 77
    :cond_7
    if-eqz v11, :cond_8

    .line 78
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto/16 :goto_3

    .line 80
    :cond_8
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto/16 :goto_3

    .line 87
    .restart local v22       #sense:D
    :catch_1
    move-exception v7

    .line 88
    .local v7, e:Ljava/lang/Exception;
    const-string v24, "HtcAppNotRespondingDialog"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "version parse error"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 104
    .end local v7           #e:Ljava/lang/Exception;
    :cond_9
    const-wide/high16 v24, 0x4010

    cmpl-double v24, v22, v24

    if-ltz v24, :cond_0

    .line 105
    :try_start_3
    const-string v24, "btn_close"

    const-string v25, "string"

    const-string v26, "com.htc.feedback"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    .line 106
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 107
    const/4 v13, 0x4

    .line 108
    const/4 v8, 0x1

    .line 110
    const v24, 0x10403c4

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 111
    const/4 v15, 0x5

    .line 112
    const/4 v9, 0x1

    goto/16 :goto_5

    .line 115
    :cond_a
    const-string v24, "msg_app_anr"

    const-string v25, "string"

    const-string v26, "com.htc.feedback"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    .line 116
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 117
    const-wide/high16 v24, 0x4010

    cmpg-double v24, v22, v24

    if-gez v24, :cond_c

    .line 118
    const v24, 0x10403c4

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 119
    const/4 v15, 0x2

    .line 120
    const/4 v9, 0x1

    .line 121
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    move-object/from16 v24, v0

    if-eqz v24, :cond_b

    .line 122
    const-string v24, "btn_no"

    const-string v25, "string"

    const-string v26, "com.htc.feedback"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    .line 123
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 124
    const/4 v13, 0x1

    .line 125
    const/4 v8, 0x1

    .line 127
    const-string v24, "app_name"

    const-string v25, "string"

    const-string v26, "com.htc.feedback"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    .line 128
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .line 129
    const/16 v18, 0x3

    .line 130
    const/4 v10, 0x1

    goto/16 :goto_5

    .line 132
    :cond_b
    const v24, 0x10403c2

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 133
    const/4 v13, 0x1

    .line 134
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 136
    :cond_c
    const-wide/high16 v24, 0x4010

    cmpl-double v24, v22, v24

    if-ltz v24, :cond_0

    .line 137
    const-string v24, "btn_dont_send"

    const-string v25, "string"

    const-string v26, "com.htc.feedback"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    .line 138
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 139
    const/4 v13, 0x1

    .line 140
    const/4 v8, 0x1

    .line 142
    const v24, 0x10403c4

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 143
    if-eqz v4, :cond_d

    const/4 v15, 0x5

    .line 144
    :goto_7
    const/4 v9, 0x1

    .line 146
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 147
    const-string v24, "btn_send_report"

    const-string v25, "string"

    const-string v26, "com.htc.feedback"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    .line 148
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v19

    .line 149
    const/16 v18, 0x3

    .line 150
    const/4 v10, 0x1

    goto/16 :goto_5

    .line 143
    :cond_d
    const/4 v15, 0x2

    goto :goto_7

    .line 169
    :catch_2
    move-exception v7

    .line 170
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v24, "HtcAppNotRespondingDialog"

    const-string v25, "Constructor()"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6
.end method

.method static synthetic access$000(Lcom/android/server/am/HtcAppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/HtcAppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mInit:Z

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    invoke-virtual {v0}, Lcom/android/server/am/HtcErrorDialogBase;->dismiss()V

    .line 182
    :cond_0
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mInit:Z

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    iget-object v1, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mWindowTitle:Ljava/lang/String;

    const/4 v2, 0x0

    const/high16 v3, 0x4000

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/HtcErrorDialogBase;->show(Ljava/lang/String;II)V

    .line 177
    :cond_0
    return-void
.end method
