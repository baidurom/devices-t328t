.class Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;
.super Landroid/os/Handler;
.source "CdmaConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaConnection;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "l"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;->this$0:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 145
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 160
    :goto_0
    return-void

    .line 150
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;->this$0:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->stopTone()V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;->this$0:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->processNextPostDialChar()V

    goto :goto_0

    .line 157
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;->this$0:Lcom/android/internal/telephony/cdma/CdmaConnection;

    #calls: Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->access$000(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
