.class final Landroid/os/memory/RunningState$BackgroundHandler;
.super Landroid/os/Handler;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/memory/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BackgroundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/memory/RunningState;


# direct methods
.method public constructor <init>(Landroid/os/memory/RunningState;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 144
    iput-object p1, p0, Landroid/os/memory/RunningState$BackgroundHandler;->this$0:Landroid/os/memory/RunningState;

    .line 145
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 146
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x2

    .line 151
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 169
    :goto_0
    return-void

    .line 153
    :pswitch_0
    iget-object v1, p0, Landroid/os/memory/RunningState$BackgroundHandler;->this$0:Landroid/os/memory/RunningState;

    #calls: Landroid/os/memory/RunningState;->reset()V
    invoke-static {v1}, Landroid/os/memory/RunningState;->access$000(Landroid/os/memory/RunningState;)V

    goto :goto_0

    .line 156
    :pswitch_1
    iget-object v1, p0, Landroid/os/memory/RunningState$BackgroundHandler;->this$0:Landroid/os/memory/RunningState;

    iget-object v2, v1, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 157
    :try_start_0
    iget-object v1, p0, Landroid/os/memory/RunningState$BackgroundHandler;->this$0:Landroid/os/memory/RunningState;

    iget-boolean v1, v1, Landroid/os/memory/RunningState;->mResumed:Z

    if-nez v1, :cond_0

    .line 158
    monitor-exit v2

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    iget-object v1, p0, Landroid/os/memory/RunningState$BackgroundHandler;->this$0:Landroid/os/memory/RunningState;

    iget-object v1, v1, Landroid/os/memory/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 162
    .local v0, cmd:Landroid/os/Message;
    iget-object v1, p0, Landroid/os/memory/RunningState$BackgroundHandler;->this$0:Landroid/os/memory/RunningState;

    iget-object v2, p0, Landroid/os/memory/RunningState$BackgroundHandler;->this$0:Landroid/os/memory/RunningState;

    iget-object v2, v2, Landroid/os/memory/RunningState;->mApplicationContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/os/memory/RunningState$BackgroundHandler;->this$0:Landroid/os/memory/RunningState;

    iget-object v3, v3, Landroid/os/memory/RunningState;->mAm:Landroid/app/ActivityManager;

    #calls: Landroid/os/memory/RunningState;->update(Landroid/content/Context;Landroid/app/ActivityManager;)Z
    invoke-static {v1, v2, v3}, Landroid/os/memory/RunningState;->access$100(Landroid/os/memory/RunningState;Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 163
    iget-object v1, p0, Landroid/os/memory/RunningState$BackgroundHandler;->this$0:Landroid/os/memory/RunningState;

    iget-object v1, v1, Landroid/os/memory/RunningState;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 164
    invoke-virtual {p0, v4}, Landroid/os/memory/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 165
    invoke-virtual {p0, v4}, Landroid/os/memory/RunningState$BackgroundHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 166
    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/memory/RunningState$BackgroundHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 162
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
