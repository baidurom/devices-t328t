.class Lcom/android/internal/telephony/SMSDispatcher$2;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;

.field final synthetic val$bFirstofAll:Z

.field final synthetic val$bLastofAll:Z

.field final synthetic val$mRoamGuideDlg:Lcom/htc/dialog/HtcAlertDialog;

.field final synthetic val$mRoamingTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/htc/dialog/HtcAlertDialog;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 982
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$mRoamGuideDlg:Lcom/htc/dialog/HtcAlertDialog;

    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$mRoamingTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iput-boolean p4, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$bFirstofAll:Z

    iput-boolean p5, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$bLastofAll:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x1

    .line 985
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$mRoamGuideDlg:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v4}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    .line 987
    :try_start_0
    sget-object v5, Lcom/android/internal/telephony/SMSDispatcher;->mWaitRoamDialog:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 988
    :try_start_1
    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mWaitRoamDialog:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 989
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 995
    :goto_0
    if-nez p3, :cond_1

    .line 997
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$mRoamingTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    if-eqz v4, :cond_0

    .line 999
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1000
    .local v2, informationIntent:Landroid/content/Intent;
    const-string v4, "under_retry"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1001
    const-string v4, "retry_count"

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1002
    const-string v4, "auto_send"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1003
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$mRoamingTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_0

    .line 1005
    :try_start_2
    const-string v4, "SMS"

    const-string v5, "EVENT_SHOW_SPRINT_ROAM_DLG, message send fail, will auto send later"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$mRoamingTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v5, v5, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/high16 v6, 0x1000

    invoke-virtual {v4, v5, v6, v2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1040
    .end local v2           #informationIntent:Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 989
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 990
    :catch_0
    move-exception v4

    goto :goto_0

    .line 1008
    .restart local v2       #informationIntent:Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 1010
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1015
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #informationIntent:Landroid/content/Intent;
    :cond_1
    if-ne p3, v6, :cond_0

    .line 1016
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v4}, Lcom/android/internal/telephony/SMSDispatcher;->getServiceState()I

    move-result v3

    .line 1019
    .local v3, ss:I
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    #calls: Lcom/android/internal/telephony/SMSDispatcher;->isNotInService(I)Z
    invoke-static {v4, v3}, Lcom/android/internal/telephony/SMSDispatcher;->access$000(Lcom/android/internal/telephony/SMSDispatcher;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1020
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$mRoamingTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-static {v3, v4}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1

    .line 1024
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v4}, Lcom/android/internal/telephony/SMSDispatcher;->isImproveSmsSending()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1025
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$mRoamingTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$bFirstofAll:Z

    iget-boolean v7, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$bLastofAll:Z

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZ)V

    goto :goto_1

    .line 1031
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$mRoamingTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-static {v4}, Lcom/android/internal/telephony/SMSDispatcher;->getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    .line 1032
    .local v0, appName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    #getter for: Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;
    invoke-static {v4}, Lcom/android/internal/telephony/SMSDispatcher;->access$100(Lcom/android/internal/telephony/SMSDispatcher;)Lcom/android/internal/telephony/SmsUsageMonitor;

    move-result-object v4

    invoke-virtual {v4, v0, v6}, Lcom/android/internal/telephony/SmsUsageMonitor;->check(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1033
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$mRoamingTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$bFirstofAll:Z

    iget-boolean v7, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$bLastofAll:Z

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZ)V

    goto :goto_1

    .line 1035
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v6, 0x7

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$mRoamingTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method
