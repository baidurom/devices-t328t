.class Lcom/android/internal/telephony/SMSDispatcher$4;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SMSDispatcher;->showRetryMessageDialog(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;

.field final synthetic val$error:I

.field final synthetic val$smstracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2652
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$4;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$4;->val$smstracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iput p3, p0, Lcom/android/internal/telephony/SMSDispatcher$4;->val$error:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2654
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 2655
    const-string v1, "SMS"

    const-string v2, "click YES of negbutton to resend sms"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2656
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$4;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$4;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$4;->val$smstracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 2670
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$4;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    #getter for: Lcom/android/internal/telephony/SMSDispatcher;->mAlertDialogs:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/internal/telephony/SMSDispatcher;->access$200(Lcom/android/internal/telephony/SMSDispatcher;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2671
    return-void

    .line 2657
    :cond_1
    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    .line 2659
    const-string v1, "SMS"

    const-string v2, "click NO of negbutton to cancel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$4;->val$smstracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_2

    .line 2663
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$4;->val$smstracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    iget v2, p0, Lcom/android/internal/telephony/SMSDispatcher$4;->val$error:I

    invoke-virtual {v1, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2668
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$4;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$4;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2664
    :catch_0
    move-exception v0

    .line 2665
    .local v0, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v1, "SMS"

    const-string v2, "failed to send RESULT_ERROR_GENERIC_FAILURE when user don\'t want to retry sending message"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
