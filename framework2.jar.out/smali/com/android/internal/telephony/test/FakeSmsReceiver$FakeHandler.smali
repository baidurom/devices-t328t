.class final Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;
.super Landroid/os/Handler;
.source "FakeSmsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/test/FakeSmsReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FakeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/test/FakeSmsReceiver;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/test/FakeSmsReceiver;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 694
    iput-object p1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->this$0:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    .line 695
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 697
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 700
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 701
    .local v3, str:Ljava/lang/String;
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/String;

    .line 702
    .local v1, pdu:[Ljava/lang/String;
    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 704
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 745
    :goto_0
    return-void

    .line 710
    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->this$0:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    #calls: Lcom/android/internal/telephony/test/FakeSmsReceiver;->parseCdmaSMS(Ljava/lang/String;)V
    invoke-static {v4, v3}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->access$000(Lcom/android/internal/telephony/test/FakeSmsReceiver;Ljava/lang/String;)V

    .line 711
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->this$0:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    #getter for: Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;
    invoke-static {v4}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->access$100(Lcom/android/internal/telephony/test/FakeSmsReceiver;)Landroid/os/Parcel;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SmsMessage;->newFromParcel(Landroid/os/Parcel;)Landroid/telephony/SmsMessage;

    move-result-object v2

    .line 713
    .local v2, sms:Landroid/telephony/SmsMessage;
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->this$0:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iget-object v4, v4, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mCdmaSMSDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    if-eqz v4, :cond_0

    .line 714
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->this$0:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iget-object v4, v4, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mCdmaSMSDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    iget-object v5, v2, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatchFakeMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 718
    :catch_0
    move-exception v0

    .line 719
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v4, "FakeSmsReceiver"

    const-string v5, "Exception dispatching message"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 716
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :cond_0
    :try_start_1
    const-string v4, "FakeSmsReceiver"

    const-string v5, "mCdmaSMSDispatcher is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 729
    .end local v2           #sms:Landroid/telephony/SmsMessage;
    :pswitch_1
    invoke-static {v1}, Landroid/telephony/SmsMessage;->newFromCMT([Ljava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    .line 731
    .restart local v2       #sms:Landroid/telephony/SmsMessage;
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->this$0:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iget-object v4, v4, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mGsmSMSDispatcher:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    if-eqz v4, :cond_1

    .line 732
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->this$0:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iget-object v4, v4, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mGsmSMSDispatcher:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    iget-object v5, v2, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchFakeMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 736
    :catch_1
    move-exception v0

    .line 737
    .restart local v0       #ex:Ljava/lang/RuntimeException;
    const-string v4, "FakeSmsReceiver"

    const-string v5, "Exception dispatching message"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 734
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :cond_1
    :try_start_3
    const-string v4, "FakeSmsReceiver"

    const-string v5, "mGsmSMSDispatcher is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 704
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
