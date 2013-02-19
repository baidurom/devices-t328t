.class Lcom/htc/service/vt/MediaVT$EventHandler;
.super Landroid/os/Handler;
.source "MediaVT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/service/vt/MediaVT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/service/vt/MediaVT;


# direct methods
.method public constructor <init>(Lcom/htc/service/vt/MediaVT;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1033
    iput-object p1, p0, Lcom/htc/service/vt/MediaVT$EventHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    .line 1034
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1035
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 1039
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1131
    const-string v1, "MediaVT_Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :cond_0
    :goto_0
    return-void

    .line 1063
    :sswitch_0
    const-string v1, "MediaVT_Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VT Stack notify to MediaVT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/service/vt/MediaVT$EventHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Lcom/htc/service/vt/MediaVT;->getMediaVTNotificationString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " when MediaVT state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/service/vt/MediaVT$EventHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    iget-object v4, p0, Lcom/htc/service/vt/MediaVT$EventHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    #getter for: Lcom/htc/service/vt/MediaVT;->mMediaVTState:I
    invoke-static {v4}, Lcom/htc/service/vt/MediaVT;->access$200(Lcom/htc/service/vt/MediaVT;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1

    .line 1066
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT$EventHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    iput-boolean v5, v1, Lcom/htc/service/vt/MediaVT;->mVTSerivceExist:Z

    .line 1070
    :cond_1
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT$EventHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    #getter for: Lcom/htc/service/vt/MediaVT;->mIsDisconnectCalled:Z
    invoke-static {v1}, Lcom/htc/service/vt/MediaVT;->access$300(Lcom/htc/service/vt/MediaVT;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    .line 1071
    const-string v1, "MediaVT_Java"

    const-string v2, "Phone APP called MediaVT.disconnect(), but stack return VT_UNSOLICITED_TERMINATED due to timing case."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    const-string v1, "MediaVT_Java"

    const-string v2, "Send VT_DISCONNECT_COMPLETE to MediaVT itself then call back VT_DISCONNECT_COMPLETE to phone AP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT$EventHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    #getter for: Lcom/htc/service/vt/MediaVT;->mEventHandler:Lcom/htc/service/vt/MediaVT$EventHandler;
    invoke-static {v1}, Lcom/htc/service/vt/MediaVT;->access$400(Lcom/htc/service/vt/MediaVT;)Lcom/htc/service/vt/MediaVT$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/htc/service/vt/MediaVT$EventHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1077
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    if-eq v1, v6, :cond_3

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_4

    .line 1081
    :cond_3
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT$EventHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    #getter for: Lcom/htc/service/vt/MediaVT;->mIsDeInitializeCalled:Z
    invoke-static {v1}, Lcom/htc/service/vt/MediaVT;->access$500(Lcom/htc/service/vt/MediaVT;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1083
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT$EventHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    #setter for: Lcom/htc/service/vt/MediaVT;->mIsDeInitializeCalled:Z
    invoke-static {v1, v7}, Lcom/htc/service/vt/MediaVT;->access$502(Lcom/htc/service/vt/MediaVT;Z)Z

    .line 1084
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT$EventHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    invoke-virtual {v1}, Lcom/htc/service/vt/MediaVT;->vt_deInitialize()V

    .line 1086
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT$EventHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    #getter for: Lcom/htc/service/vt/MediaVT;->mMediaVTServiceReady:Z
    invoke-static {v1}, Lcom/htc/service/vt/MediaVT;->access$600(Lcom/htc/service/vt/MediaVT;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1087
    const-string v1, "MediaVT_Java"

    const-string v2, "send VT_MEDIAVTSERVICE_DESTROY"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT$EventHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    const/16 v2, 0x136

    #calls: Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V
    invoke-static {v1, v2, v5, v5, v9}, Lcom/htc/service/vt/MediaVT;->access$100(Lcom/htc/service/vt/MediaVT;IIILjava/lang/Object;)V

    .line 1089
    const-string v1, "MediaVT_Java"

    const-string v2, "send VT_MEDIAVTSERVICE_UNBIND"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT$EventHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    const/16 v2, 0x137

    #calls: Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V
    invoke-static {v1, v2, v5, v5, v9}, Lcom/htc/service/vt/MediaVT;->access$100(Lcom/htc/service/vt/MediaVT;IIILjava/lang/Object;)V

    .line 1103
    :cond_4
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v7, :cond_5

    .line 1104
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT$EventHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    const/4 v2, 0x2

    #calls: Lcom/htc/service/vt/MediaVT;->setMediaVTState(I)Z
    invoke-static {v1, v2}, Lcom/htc/service/vt/MediaVT;->access$700(Lcom/htc/service/vt/MediaVT;I)Z

    .line 1107
    :cond_5
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v8, :cond_6

    .line 1108
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT$EventHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    #calls: Lcom/htc/service/vt/MediaVT;->setMediaVTState(I)Z
    invoke-static {v1, v8}, Lcom/htc/service/vt/MediaVT;->access$700(Lcom/htc/service/vt/MediaVT;I)Z

    .line 1111
    :cond_6
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v6, :cond_7

    .line 1112
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT$EventHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    const/4 v2, 0x4

    #calls: Lcom/htc/service/vt/MediaVT;->setMediaVTState(I)Z
    invoke-static {v1, v2}, Lcom/htc/service/vt/MediaVT;->access$700(Lcom/htc/service/vt/MediaVT;I)Z

    .line 1115
    :cond_7
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_8

    .line 1116
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT$EventHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    #calls: Lcom/htc/service/vt/MediaVT;->setMediaVTState(I)Z
    invoke-static {v1, v6}, Lcom/htc/service/vt/MediaVT;->access$700(Lcom/htc/service/vt/MediaVT;I)Z

    .line 1121
    :cond_8
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT$EventHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    #getter for: Lcom/htc/service/vt/MediaVT;->mEventListener:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/htc/service/vt/MediaVT;->access$800(Lcom/htc/service/vt/MediaVT;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1122
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT$EventHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    #getter for: Lcom/htc/service/vt/MediaVT;->mEventListener:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/htc/service/vt/MediaVT;->access$800(Lcom/htc/service/vt/MediaVT;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/vt/MediaVT$OnEventListener;

    .line 1123
    .local v0, eventListener:Lcom/htc/service/vt/MediaVT$OnEventListener;
    if-eqz v0, :cond_0

    .line 1124
    const-string v1, "MediaVT_Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send notification to AP: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/service/vt/MediaVT$EventHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Lcom/htc/service/vt/MediaVT;->getMediaVTNotificationString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v1, v5}, Lcom/htc/service/vt/MediaVT$OnEventListener;->onEvent(II)Z

    goto/16 :goto_0

    .line 1039
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x64 -> :sswitch_0
    .end sparse-switch
.end method
