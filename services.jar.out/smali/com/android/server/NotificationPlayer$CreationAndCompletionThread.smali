.class final Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;
.super Ljava/lang/Thread;
.source "NotificationPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CreationAndCompletionThread"
.end annotation


# instance fields
.field public mCmd:Lcom/android/server/NotificationPlayer$Command;

.field final synthetic this$0:Lcom/android/server/NotificationPlayer;


# direct methods
.method public constructor <init>(Lcom/android/server/NotificationPlayer;Lcom/android/server/NotificationPlayer$Command;)V
    .locals 0
    .parameter
    .parameter "cmd"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    .line 91
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 92
    iput-object p2, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    .line 93
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0xa8

    .line 96
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 97
    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    #setter for: Lcom/android/server/NotificationPlayer;->mLooper:Landroid/os/Looper;
    invoke-static {v3, v4}, Lcom/android/server/NotificationPlayer;->access$002(Lcom/android/server/NotificationPlayer;Landroid/os/Looper;)Landroid/os/Looper;

    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v3, v3, Lcom/android/server/NotificationPlayer$Command;->context:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .local v0, audioManager:Landroid/media/AudioManager;
    :try_start_1
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    .line 106
    .local v2, player:Landroid/media/MediaPlayer;
    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mVzwCMAS:Z
    invoke-static {v3}, Lcom/android/server/NotificationPlayer;->access$100(Lcom/android/server/NotificationPlayer;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setIgnoreNotificationMuteSetting(Z)I

    .line 113
    :cond_0
    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget v3, v3, Lcom/android/server/NotificationPlayer$Command;->stream:I

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 116
    invoke-virtual {p0}, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->setNewVolume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 121
    :try_start_2
    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v3, v3, Lcom/android/server/NotificationPlayer$Command;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v4, v4, Lcom/android/server/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 122
    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-boolean v3, v3, Lcom/android/server/NotificationPlayer$Command;->looping:Z

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 123
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 129
    :goto_0
    :try_start_3
    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v3, v3, Lcom/android/server/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v3, v3, Lcom/android/server/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v3, v3, Lcom/android/server/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 131
    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-boolean v3, v3, Lcom/android/server/NotificationPlayer$Command;->looping:Z

    if-eqz v3, :cond_3

    .line 132
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v3, v5, :cond_1

    .line 133
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget v4, v4, Lcom/android/server/NotificationPlayer$Command;->stream:I

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 143
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 144
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 145
    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/android/server/NotificationPlayer;->access$200(Lcom/android/server/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 146
    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/android/server/NotificationPlayer;->access$200(Lcom/android/server/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 148
    :cond_2
    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #setter for: Lcom/android/server/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3, v2}, Lcom/android/server/NotificationPlayer;->access$202(Lcom/android/server/NotificationPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 153
    .end local v2           #player:Landroid/media/MediaPlayer;
    :goto_2
    :try_start_4
    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #setter for: Lcom/android/server/NotificationPlayer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3, v0}, Lcom/android/server/NotificationPlayer;->access$402(Lcom/android/server/NotificationPlayer;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 154
    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v4, v4, Lcom/android/server/NotificationPlayer$Command;->context:Landroid/content/Context;

    #setter for: Lcom/android/server/NotificationPlayer;->mContext:Landroid/content/Context;
    invoke-static {v3, v4}, Lcom/android/server/NotificationPlayer;->access$502(Lcom/android/server/NotificationPlayer;Landroid/content/Context;)Landroid/content/Context;

    .line 155
    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v4, v4, Lcom/android/server/NotificationPlayer$Command;->pkg:Ljava/lang/String;

    #setter for: Lcom/android/server/NotificationPlayer;->mPkg:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/server/NotificationPlayer;->access$602(Lcom/android/server/NotificationPlayer;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget v4, v4, Lcom/android/server/NotificationPlayer$Command;->id:I

    #setter for: Lcom/android/server/NotificationPlayer;->mId:I
    invoke-static {v3, v4}, Lcom/android/server/NotificationPlayer;->access$702(Lcom/android/server/NotificationPlayer;I)I

    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 158
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 159
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 160
    return-void

    .line 124
    .restart local v2       #player:Landroid/media/MediaPlayer;
    :catch_0
    move-exception v1

    .line 125
    .local v1, e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {p0, v2}, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->setDataSourceFromAFD(Landroid/media/MediaPlayer;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 150
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #player:Landroid/media/MediaPlayer;
    :catch_1
    move-exception v1

    .line 151
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_6
    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/NotificationPlayer;->access$300(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error loading sound for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v5, v5, Lcom/android/server/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 158
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v3

    .line 137
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v2       #player:Landroid/media/MediaPlayer;
    :cond_3
    :try_start_7
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v3, v5, :cond_1

    .line 138
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget v4, v4, Lcom/android/server/NotificationPlayer$Command;->stream:I

    const/4 v5, 0x3

    invoke-virtual {v0, v3, v4, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1
.end method

.method setDataSourceFromAFD(Landroid/media/MediaPlayer;)V
    .locals 8
    .parameter "player"

    .prologue
    .line 167
    const/4 v6, 0x0

    .line 169
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 170
    iget-object v0, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget v0, v0, Lcom/android/server/NotificationPlayer$Command;->stream:I

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 171
    iget-object v0, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v0, v0, Lcom/android/server/NotificationPlayer$Command;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x110

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 172
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 173
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 174
    iget-object v0, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-boolean v0, v0, Lcom/android/server/NotificationPlayer$Command;->looping:Z

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 175
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    if-eqz v6, :cond_0

    .line 188
    :try_start_1
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 192
    :goto_1
    const/4 v6, 0x0

    .line 196
    :cond_0
    return-void

    .line 177
    :cond_1
    :try_start_2
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 180
    iget-object v0, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-boolean v0, v0, Lcom/android/server/NotificationPlayer$Command;->looping:Z

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 181
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v7

    .line 184
    .local v7, e:Ljava/lang/Exception;
    :try_start_3
    iget-object v0, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/NotificationPlayer;->access$300(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error default sound Setting:"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 186
    if-eqz v6, :cond_0

    .line 188
    :try_start_4
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 189
    :catch_1
    move-exception v7

    .line 190
    .local v7, e:Ljava/io/IOException;
    :try_start_5
    iget-object v0, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/NotificationPlayer;->access$300(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AssetFileDescriptor could not close!"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 192
    .end local v7           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v0

    const/4 v6, 0x0

    throw v0

    .line 186
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_2

    .line 188
    :try_start_6
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 192
    :goto_2
    const/4 v6, 0x0

    .line 186
    :cond_2
    throw v0

    .line 189
    :catch_2
    move-exception v7

    .line 190
    .restart local v7       #e:Ljava/io/IOException;
    :try_start_7
    iget-object v1, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/NotificationPlayer;->access$300(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AssetFileDescriptor could not close!"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    .line 192
    .end local v7           #e:Ljava/io/IOException;
    :catchall_2
    move-exception v0

    const/4 v6, 0x0

    throw v0

    .line 189
    :catch_3
    move-exception v7

    .line 190
    .restart local v7       #e:Ljava/io/IOException;
    :try_start_8
    iget-object v0, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/NotificationPlayer;->access$300(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AssetFileDescriptor could not close!"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_1

    .line 192
    .end local v7           #e:Ljava/io/IOException;
    :catchall_3
    move-exception v0

    const/4 v6, 0x0

    throw v0
.end method

.method setNewVolume()V
    .locals 6

    .prologue
    .line 201
    iget-object v2, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    if-nez v2, :cond_0

    .line 225
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    monitor-enter v3

    .line 203
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget v2, v2, Lcom/android/server/NotificationPlayer$Command;->newVolume:I

    if-nez v2, :cond_1

    monitor-exit v3

    goto :goto_0

    .line 224
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 205
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/server/NotificationPlayer;->access$400(Lcom/android/server/NotificationPlayer;)Landroid/media/AudioManager;

    move-result-object v0

    .line 206
    .local v0, audioManager:Landroid/media/AudioManager;
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v2, v2, Lcom/android/server/NotificationPlayer$Command;->context:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 207
    iget-object v2, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v2, v2, Lcom/android/server/NotificationPlayer$Command;->context:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #audioManager:Landroid/media/AudioManager;
    check-cast v0, Landroid/media/AudioManager;

    .line 210
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :cond_2
    if-eqz v0, :cond_4

    .line 211
    iget-object v2, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget v4, v4, Lcom/android/server/NotificationPlayer$Command;->stream:I

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    iput v4, v2, Lcom/android/server/NotificationPlayer$Command;->oriVolume:I

    .line 212
    const v2, 0x7fffffff

    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget v4, v4, Lcom/android/server/NotificationPlayer$Command;->newVolume:I

    if-ne v2, v4, :cond_3

    .line 213
    iget-object v2, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget v4, v4, Lcom/android/server/NotificationPlayer$Command;->stream:I

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    iput v4, v2, Lcom/android/server/NotificationPlayer$Command;->newVolume:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget v2, v2, Lcom/android/server/NotificationPlayer$Command;->stream:I

    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget v4, v4, Lcom/android/server/NotificationPlayer$Command;->newVolume:I

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 221
    :goto_1
    :try_start_3
    const-string v2, "NotificationPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setNewVol] oriVol="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget v5, v5, Lcom/android/server/NotificationPlayer$Command;->oriVolume:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " NewVol="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget v5, v5, Lcom/android/server/NotificationPlayer$Command;->newVolume:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_4
    monitor-exit v3

    goto/16 :goto_0

    .line 217
    :catch_0
    move-exception v1

    .line 219
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v2, "NotificationPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setStringVolume error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method setOriVolume()V
    .locals 6

    .prologue
    .line 228
    iget-object v2, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    if-nez v2, :cond_0

    .line 249
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v3, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    monitor-enter v3

    .line 230
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget v2, v2, Lcom/android/server/NotificationPlayer$Command;->newVolume:I

    if-nez v2, :cond_1

    monitor-exit v3

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 232
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/server/NotificationPlayer;->access$400(Lcom/android/server/NotificationPlayer;)Landroid/media/AudioManager;

    move-result-object v0

    .line 233
    .local v0, audioManager:Landroid/media/AudioManager;
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v2, v2, Lcom/android/server/NotificationPlayer$Command;->context:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 234
    iget-object v2, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget-object v2, v2, Lcom/android/server/NotificationPlayer$Command;->context:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #audioManager:Landroid/media/AudioManager;
    check-cast v0, Landroid/media/AudioManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :cond_2
    if-eqz v0, :cond_3

    .line 239
    :try_start_2
    iget-object v2, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget v2, v2, Lcom/android/server/NotificationPlayer$Command;->stream:I

    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget v4, v4, Lcom/android/server/NotificationPlayer$Command;->oriVolume:I

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 244
    :goto_1
    :try_start_3
    const-string v2, "NotificationPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setOriVol] oriVol="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget v5, v5, Lcom/android/server/NotificationPlayer$Command;->oriVolume:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " NewVol="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    iget v5, v5, Lcom/android/server/NotificationPlayer$Command;->newVolume:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v2, p0, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/server/NotificationPlayer$Command;

    const/4 v4, 0x0

    iput v4, v2, Lcom/android/server/NotificationPlayer$Command;->newVolume:I

    .line 248
    :cond_3
    monitor-exit v3

    goto :goto_0

    .line 240
    :catch_0
    move-exception v1

    .line 242
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v2, "NotificationPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setStringVolume error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
