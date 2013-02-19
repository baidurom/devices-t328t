.class Landroid/media/MediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "mp"
    .parameter "looper"

    .prologue
    .line 2448
    iput-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 2449
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2450
    iput-object p2, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 2451
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 2455
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mNativeContext:I
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$100(Landroid/media/MediaPlayer;)I

    move-result v2

    if-nez v2, :cond_1

    .line 2456
    const-string v2, "MediaPlayer"

    const-string/jumbo v3, "mediaplayer went away with unhandled events"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2550
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 2459
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 2547
    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown message type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2461
    :sswitch_1
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2462
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    goto :goto_0

    .line 2466
    :sswitch_2
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2467
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 2468
    :cond_2
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #calls: Landroid/media/MediaPlayer;->stayAwake(Z)V
    invoke-static {v2, v6}, Landroid/media/MediaPlayer;->access$400(Landroid/media/MediaPlayer;Z)V

    .line 2469
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->SenseVersion:F
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$500(Landroid/media/MediaPlayer;)F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x4010

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mStreamType:I
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$600(Landroid/media/MediaPlayer;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 2470
    invoke-static {}, Landroid/media/AudioManager;->isSpecialCase()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2471
    const-string v2, "MediaPlayer"

    const-string v3, "beats setting trigger in complete"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #calls: Landroid/media/MediaPlayer;->triggerBeatsLogo(Z)V
    invoke-static {v2, v6}, Landroid/media/MediaPlayer;->access$700(Landroid/media/MediaPlayer;Z)V

    goto :goto_0

    .line 2475
    :cond_3
    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mEventAudioOnly="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mEventAudioOnly:Z
    invoke-static {v4}, Landroid/media/MediaPlayer;->access$800(Landroid/media/MediaPlayer;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mEventAudioOnly:Z
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$800(Landroid/media/MediaPlayer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2477
    const-string v2, "MediaPlayer"

    const-string v3, "beats setting trigger in complete"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mEventAudioOnly:Z
    invoke-static {v3}, Landroid/media/MediaPlayer;->access$800(Landroid/media/MediaPlayer;)Z

    move-result v3

    #calls: Landroid/media/MediaPlayer;->triggerBeatsLogo_audio(ZZZ)V
    invoke-static {v2, v6, v3, v6}, Landroid/media/MediaPlayer;->access$900(Landroid/media/MediaPlayer;ZZZ)V

    goto/16 :goto_0

    .line 2485
    :sswitch_3
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$1000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2486
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$1000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3, v4}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    goto/16 :goto_0

    .line 2490
    :sswitch_4
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$1100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2491
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$1100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    goto/16 :goto_0

    .line 2495
    :sswitch_5
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$1200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2496
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$1200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4, v5}, Landroid/media/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    goto/16 :goto_0

    .line 2502
    :sswitch_6
    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2503
    const/4 v0, 0x0

    .line 2504
    .local v0, error_was_handled:Z
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$1300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2505
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$1300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4, v5}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    .line 2507
    :cond_4
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v2

    if-eqz v2, :cond_5

    if-nez v0, :cond_5

    .line 2508
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 2510
    :cond_5
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #calls: Landroid/media/MediaPlayer;->stayAwake(Z)V
    invoke-static {v2, v6}, Landroid/media/MediaPlayer;->access$400(Landroid/media/MediaPlayer;Z)V

    goto/16 :goto_0

    .line 2514
    .end local v0           #error_was_handled:Z
    :sswitch_7
    invoke-static {}, Landroid/media/AudioManager;->isSpecialCase()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2515
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v4, :cond_6

    iget v2, p1, Landroid/os/Message;->arg2:I

    const/16 v3, 0x386

    if-ne v2, v3, :cond_6

    .line 2516
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #setter for: Landroid/media/MediaPlayer;->mEventAudioOnly:Z
    invoke-static {v2, v4}, Landroid/media/MediaPlayer;->access$802(Landroid/media/MediaPlayer;Z)Z

    .line 2518
    :cond_6
    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mEventAudioOnly="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mEventAudioOnly:Z
    invoke-static {v4}, Landroid/media/MediaPlayer;->access$800(Landroid/media/MediaPlayer;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , msg.arg1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , msg.arg2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    :cond_7
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x2bc

    if-eq v2, v3, :cond_8

    .line 2522
    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Info ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    :cond_8
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$1400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2525
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$1400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4, v5}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 2531
    :sswitch_8
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$1500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2532
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_9

    .line 2533
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$1500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    goto/16 :goto_0

    .line 2535
    :cond_9
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, [B

    if-eqz v2, :cond_0

    .line 2536
    new-instance v1, Landroid/media/TimedText;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-direct {v1, v2}, Landroid/media/TimedText;-><init>([B)V

    .line 2537
    .local v1, text:Landroid/media/TimedText;
    iget-object v2, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$1500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, v1}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    goto/16 :goto_0

    .line 2459
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x63 -> :sswitch_8
        0x64 -> :sswitch_6
        0xc8 -> :sswitch_7
    .end sparse-switch
.end method
