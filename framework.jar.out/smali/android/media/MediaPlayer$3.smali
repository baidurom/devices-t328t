.class Landroid/media/MediaPlayer$3;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlugin$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mMediaPlayer:Landroid/media/MediaPlayer;

.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter

    .prologue
    .line 3156
    iput-object p1, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3157
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method


# virtual methods
.method public onError(II)V
    .locals 4
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 3183
    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DLNA]onError=> what: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", extra: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3184
    iget-object v1, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 3185
    iget-object v1, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$1300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3186
    iget-object v1, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3187
    iget-object v1, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v1

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, p2, v3}, Landroid/media/MediaPlayer$DLNAEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3188
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer$DLNAEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3190
    .end local v0           #m:Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    #calls: Landroid/media/MediaPlayer;->stayAwake(Z)V
    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->access$400(Landroid/media/MediaPlayer;Z)V

    .line 3193
    :cond_1
    return-void
.end method

.method public onResponse(II)V
    .locals 9
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x64

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3197
    const-string v2, "MediaPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DLNA]onResponse=> what: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", extra: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3198
    const/4 v0, 0x0

    .line 3199
    .local v0, bDLNAConnected:Z
    iget-object v2, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 3200
    iget-object v2, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    #setter for: Landroid/media/MediaPlayer;->mDLNAInitDone:Z
    invoke-static {v2, v3}, Landroid/media/MediaPlayer;->access$1702(Landroid/media/MediaPlayer;Z)Z

    .line 3201
    sparse-switch p1, :sswitch_data_0

    .line 3247
    :cond_0
    :goto_0
    return-void

    .line 3203
    :sswitch_0
    iget-object v2, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    #setter for: Landroid/media/MediaPlayer;->mDLNAMode:Z
    invoke-static {v2, v4}, Landroid/media/MediaPlayer;->access$1802(Landroid/media/MediaPlayer;Z)Z

    .line 3204
    iget-object v2, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 3207
    :sswitch_1
    packed-switch p2, :pswitch_data_0

    .line 3217
    const-string v2, "MediaPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DLNA]Unknown extra code for prepare response:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3220
    :goto_1
    iget-object v5, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAMode:Z
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$1800(Landroid/media/MediaPlayer;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_2
    #setter for: Landroid/media/MediaPlayer;->mDLNAMode:Z
    invoke-static {v5, v2}, Landroid/media/MediaPlayer;->access$1802(Landroid/media/MediaPlayer;Z)Z

    .line 3222
    iget-object v2, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAMode:Z
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$1800(Landroid/media/MediaPlayer;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3223
    const-string v2, "MediaPlayer"

    const-string v3, "[DLNA]Prepare success, enable DLNA mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3224
    iget-object v2, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    #calls: Landroid/media/MediaPlayer;->setWirelessDisplayStatus(Z)V
    invoke-static {v2, v4}, Landroid/media/MediaPlayer;->access$1900(Landroid/media/MediaPlayer;Z)V

    .line 3230
    :goto_3
    iget-object v2, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAMode:Z
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$1800(Landroid/media/MediaPlayer;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3231
    iget-object v2, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3232
    iget-object v2, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v2

    const/16 v3, -0x1f4

    invoke-virtual {v2, v7, v3, v4, v8}, Landroid/media/MediaPlayer$DLNAEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3233
    .local v1, m:Landroid/os/Message;
    iget-object v2, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer$DLNAEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 3209
    .end local v1           #m:Landroid/os/Message;
    :pswitch_0
    const-string v2, "MediaPlayer"

    const-string v5, "[DLNA]PREPARE SUCCESS"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3210
    const/4 v0, 0x1

    .line 3211
    goto :goto_1

    .line 3213
    :pswitch_1
    const-string v2, "MediaPlayer"

    const-string v5, "[DLNA]PREPARE FAILED"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3214
    iget-object v2, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    #setter for: Landroid/media/MediaPlayer;->mDLNAMode:Z
    invoke-static {v2, v4}, Landroid/media/MediaPlayer;->access$1802(Landroid/media/MediaPlayer;Z)Z

    goto :goto_1

    :cond_1
    move v2, v4

    .line 3220
    goto :goto_2

    .line 3227
    :cond_2
    const-string v2, "MediaPlayer"

    const-string v5, "[DLNA]Prepare failed, do not enable DLNA mode"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3228
    iget-object v2, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    #calls: Landroid/media/MediaPlayer;->setWirelessDisplayStatus(Z)V
    invoke-static {v2, v3}, Landroid/media/MediaPlayer;->access$1900(Landroid/media/MediaPlayer;Z)V

    goto :goto_3

    .line 3237
    :cond_3
    iget-object v2, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 3238
    iget-object v2, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v7, v4, v8}, Landroid/media/MediaPlayer$DLNAEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3239
    .restart local v1       #m:Landroid/os/Message;
    iget-object v2, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer$DLNAEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3241
    .end local v1           #m:Landroid/os/Message;
    :cond_4
    iget-object v2, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    goto/16 :goto_0

    .line 3201
    nop

    :sswitch_data_0
    .sparse-switch
        0x2041 -> :sswitch_0
        0x2080 -> :sswitch_1
    .end sparse-switch

    .line 3207
    :pswitch_data_0
    .packed-switch 0x2081
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onStateChanged(II)V
    .locals 5
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v4, 0x0

    .line 3166
    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DLNA]onStateChanged=> what: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", extra: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3167
    iget-object v1, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 3168
    packed-switch p1, :pswitch_data_0

    .line 3179
    :cond_0
    :goto_0
    return-void

    .line 3170
    :pswitch_0
    iget-object v1, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3171
    iget-object v1, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/media/MediaPlayer$DLNAEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3172
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer$DLNAEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 3168
    nop

    :pswitch_data_0
    .packed-switch 0x1080
        :pswitch_0
    .end packed-switch
.end method

.method public setMediaPlayer(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "mp"

    .prologue
    .line 3161
    iput-object p1, p0, Landroid/media/MediaPlayer$3;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 3162
    return-void
.end method
