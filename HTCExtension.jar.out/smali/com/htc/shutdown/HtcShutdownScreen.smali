.class public Lcom/htc/shutdown/HtcShutdownScreen;
.super Landroid/app/Dialog;
.source "HtcShutdownScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/shutdown/HtcShutdownScreen$OnShutdownListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HtcShutdownScreen"


# instance fields
.field private mAnimationListener:Lcom/htc/shutdown/AnimationView$OnAnimationListener;

.field mAnimationView:Lcom/htc/shutdown/AnimationView;

.field private mContext:Landroid/content/Context;

.field private mData:Lcom/htc/shutdown/ConfigData;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mReader:Lcom/htc/shutdown/ConfigReader;

.field private mShutdownListener:Lcom/htc/shutdown/HtcShutdownScreen$OnShutdownListener;

.field private mSilentMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/shutdown/HtcShutdownScreen;-><init>(Landroid/content/Context;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "theme"

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 31
    iput-object v1, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 33
    iput-object v1, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mReader:Lcom/htc/shutdown/ConfigReader;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mSilentMode:Z

    .line 38
    iput-object v1, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mAnimationView:Lcom/htc/shutdown/AnimationView;

    .line 58
    iput-object v1, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mShutdownListener:Lcom/htc/shutdown/HtcShutdownScreen$OnShutdownListener;

    .line 268
    new-instance v0, Lcom/htc/shutdown/HtcShutdownScreen$1;

    invoke-direct {v0, p0}, Lcom/htc/shutdown/HtcShutdownScreen$1;-><init>(Lcom/htc/shutdown/HtcShutdownScreen;)V

    iput-object v0, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mAnimationListener:Lcom/htc/shutdown/AnimationView$OnAnimationListener;

    .line 62
    iput-object p1, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/htc/shutdown/HtcShutdownScreen;)Lcom/htc/shutdown/HtcShutdownScreen$OnShutdownListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mShutdownListener:Lcom/htc/shutdown/HtcShutdownScreen$OnShutdownListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/shutdown/HtcShutdownScreen;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/shutdown/HtcShutdownScreen;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private initAudio()V
    .locals 2

    .prologue
    .line 236
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 237
    iget-object v0, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mData:Lcom/htc/shutdown/ConfigData;

    iget-object v1, v1, Lcom/htc/shutdown/ConfigData;->audio:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 239
    iget-object v0, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v0

    goto :goto_0

    .line 243
    :catch_1
    move-exception v0

    goto :goto_0

    .line 240
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private initLayout()V
    .locals 6

    .prologue
    .line 198
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/shutdown/HtcShutdownScreen;->requestWindowFeature(I)Z

    .line 201
    iget-object v1, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mData:Lcom/htc/shutdown/ConfigData;

    iget-object v1, v1, Lcom/htc/shutdown/ConfigData;->pngPath:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 202
    new-instance v1, Lcom/htc/shutdown/AnimationView;

    iget-object v2, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mData:Lcom/htc/shutdown/ConfigData;

    iget-object v3, v3, Lcom/htc/shutdown/ConfigData;->pngPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mData:Lcom/htc/shutdown/ConfigData;

    iget-object v4, v4, Lcom/htc/shutdown/ConfigData;->pngLandPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mData:Lcom/htc/shutdown/ConfigData;

    iget v5, v5, Lcom/htc/shutdown/ConfigData;->fps:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/htc/shutdown/AnimationView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mAnimationView:Lcom/htc/shutdown/AnimationView;

    .line 203
    iget-object v1, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mAnimationView:Lcom/htc/shutdown/AnimationView;

    iget-object v2, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mAnimationListener:Lcom/htc/shutdown/AnimationView$OnAnimationListener;

    invoke-virtual {v1, v2}, Lcom/htc/shutdown/AnimationView;->setOnAnimationListener(Lcom/htc/shutdown/AnimationView$OnAnimationListener;)V

    .line 204
    iget-object v1, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mAnimationView:Lcom/htc/shutdown/AnimationView;

    invoke-virtual {p0, v1}, Lcom/htc/shutdown/HtcShutdownScreen;->setContentView(Landroid/view/View;)V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/customize/resource/shutdown.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, default_shutdown_file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mData:Lcom/htc/shutdown/ConfigData;

    const-string v2, "/system/customize/resource/shutdown.zip"

    iput-object v2, v1, Lcom/htc/shutdown/ConfigData;->pngPath:Ljava/lang/String;

    .line 210
    iget-object v1, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mData:Lcom/htc/shutdown/ConfigData;

    const/16 v2, 0xf

    iput v2, v1, Lcom/htc/shutdown/ConfigData;->fps:I

    .line 211
    new-instance v1, Lcom/htc/shutdown/AnimationView;

    iget-object v2, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mData:Lcom/htc/shutdown/ConfigData;

    iget-object v3, v3, Lcom/htc/shutdown/ConfigData;->pngPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mData:Lcom/htc/shutdown/ConfigData;

    iget-object v4, v4, Lcom/htc/shutdown/ConfigData;->pngLandPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mData:Lcom/htc/shutdown/ConfigData;

    iget v5, v5, Lcom/htc/shutdown/ConfigData;->fps:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/htc/shutdown/AnimationView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mAnimationView:Lcom/htc/shutdown/AnimationView;

    .line 212
    iget-object v1, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mAnimationView:Lcom/htc/shutdown/AnimationView;

    iget-object v2, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mAnimationListener:Lcom/htc/shutdown/AnimationView$OnAnimationListener;

    invoke-virtual {v1, v2}, Lcom/htc/shutdown/AnimationView;->setOnAnimationListener(Lcom/htc/shutdown/AnimationView$OnAnimationListener;)V

    .line 213
    iget-object v1, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mAnimationView:Lcom/htc/shutdown/AnimationView;

    invoke-virtual {p0, v1}, Lcom/htc/shutdown/HtcShutdownScreen;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 264
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    .line 265
    return-void
.end method

.method public onActivityResult()V
    .locals 0

    .prologue
    .line 231
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x1

    .line 75
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 79
    :try_start_0
    new-instance v7, Ljava/io/File;

    const-string v9, "system/etc/customer/shutdown.gif"

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v7, small_operator_image:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 83
    new-instance v9, Lcom/htc/shutdown/ConfigData;

    invoke-direct {v9}, Lcom/htc/shutdown/ConfigData;-><init>()V

    iput-object v9, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mData:Lcom/htc/shutdown/ConfigData;

    .line 84
    iget-object v9, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mData:Lcom/htc/shutdown/ConfigData;

    const-string v10, "system/etc/customer/shutdown.gif"

    iput-object v10, v9, Lcom/htc/shutdown/ConfigData;->image:Ljava/lang/String;

    .line 85
    iget-object v9, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mData:Lcom/htc/shutdown/ConfigData;

    const-string v10, "system/etc/customer/shutdown.mp3"

    iput-object v10, v9, Lcom/htc/shutdown/ConfigData;->audio:Ljava/lang/String;

    .line 140
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mData:Lcom/htc/shutdown/ConfigData;

    iget-object v9, v9, Lcom/htc/shutdown/ConfigData;->audio:Ljava/lang/String;

    if-eqz v9, :cond_8

    .line 141
    new-instance v0, Ljava/io/File;

    iget-object v9, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mData:Lcom/htc/shutdown/ConfigData;

    iget-object v9, v9, Lcom/htc/shutdown/ConfigData;->audio:Ljava/lang/String;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, audio_file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 143
    iget-object v9, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mData:Lcom/htc/shutdown/ConfigData;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/htc/shutdown/ConfigData;->useAudio:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v0           #audio_file:Ljava/io/File;
    .end local v7           #small_operator_image:Ljava/io/File;
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/shutdown/HtcShutdownScreen;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "mode_ringer"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v6

    .line 164
    .local v6, ringMode:I
    if-eqz v6, :cond_1

    if-ne v6, v11, :cond_9

    .line 165
    :cond_1
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mSilentMode:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 190
    .end local v6           #ringMode:I
    :goto_2
    iget-object v9, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mData:Lcom/htc/shutdown/ConfigData;

    iget-boolean v9, v9, Lcom/htc/shutdown/ConfigData;->useAudio:Z

    if-eqz v9, :cond_2

    iget-boolean v9, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mSilentMode:Z

    if-nez v9, :cond_2

    .line 191
    invoke-direct {p0}, Lcom/htc/shutdown/HtcShutdownScreen;->initAudio()V

    .line 194
    :cond_2
    invoke-direct {p0}, Lcom/htc/shutdown/HtcShutdownScreen;->initLayout()V

    .line 195
    return-void

    .line 89
    .restart local v7       #small_operator_image:Ljava/io/File;
    :cond_3
    :try_start_2
    new-instance v9, Lcom/htc/shutdown/ConfigReader;

    invoke-direct {v9}, Lcom/htc/shutdown/ConfigReader;-><init>()V

    iput-object v9, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mReader:Lcom/htc/shutdown/ConfigReader;

    .line 90
    const-string v9, "ro.cid"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 93
    .local v8, str_cid:Ljava/lang/String;
    const/4 v1, 0x0

    .line 94
    .local v1, bUseCwAnimation:Z
    const-string v5, "/data/data/cw/animation.xml"

    .line 95
    .local v5, cw_config_path:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    .local v4, cwConfig:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 99
    iget-object v9, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mReader:Lcom/htc/shutdown/ConfigReader;

    invoke-virtual {v9, v5}, Lcom/htc/shutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 100
    iget-object v9, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mReader:Lcom/htc/shutdown/ConfigReader;

    invoke-virtual {v9}, Lcom/htc/shutdown/ConfigReader;->getConfigData()Lcom/htc/shutdown/ConfigData;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mData:Lcom/htc/shutdown/ConfigData;

    .line 101
    iget-object v9, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mData:Lcom/htc/shutdown/ConfigData;

    iget-object v9, v9, Lcom/htc/shutdown/ConfigData;->image:Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 102
    const/4 v1, 0x1

    .line 108
    :cond_4
    if-nez v1, :cond_0

    .line 109
    if-eqz v8, :cond_6

    .line 113
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/system/customize/CID/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".xml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, config_path:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v2, config:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 118
    iget-object v9, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mReader:Lcom/htc/shutdown/ConfigReader;

    invoke-virtual {v9, v3}, Lcom/htc/shutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 119
    iget-object v9, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mReader:Lcom/htc/shutdown/ConfigReader;

    invoke-virtual {v9}, Lcom/htc/shutdown/ConfigReader;->getConfigData()Lcom/htc/shutdown/ConfigData;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mData:Lcom/htc/shutdown/ConfigData;

    .line 120
    iget-object v9, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mData:Lcom/htc/shutdown/ConfigData;

    iget-object v9, v9, Lcom/htc/shutdown/ConfigData;->image:Ljava/lang/String;

    if-nez v9, :cond_0

    .line 123
    iget-object v9, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mReader:Lcom/htc/shutdown/ConfigReader;

    const-string v10, "/system/customize/CID/default.xml"

    invoke-virtual {v9, v10}, Lcom/htc/shutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 124
    iget-object v9, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mReader:Lcom/htc/shutdown/ConfigReader;

    invoke-virtual {v9}, Lcom/htc/shutdown/ConfigReader;->getConfigData()Lcom/htc/shutdown/ConfigData;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mData:Lcom/htc/shutdown/ConfigData;

    goto/16 :goto_0

    .line 158
    .end local v1           #bUseCwAnimation:Z
    .end local v2           #config:Ljava/io/File;
    .end local v3           #config_path:Ljava/lang/String;
    .end local v4           #cwConfig:Ljava/io/File;
    .end local v5           #cw_config_path:Ljava/lang/String;
    .end local v7           #small_operator_image:Ljava/io/File;
    .end local v8           #str_cid:Ljava/lang/String;
    :catch_0
    move-exception v9

    goto/16 :goto_1

    .line 129
    .restart local v1       #bUseCwAnimation:Z
    .restart local v2       #config:Ljava/io/File;
    .restart local v3       #config_path:Ljava/lang/String;
    .restart local v4       #cwConfig:Ljava/io/File;
    .restart local v5       #cw_config_path:Ljava/lang/String;
    .restart local v7       #small_operator_image:Ljava/io/File;
    .restart local v8       #str_cid:Ljava/lang/String;
    :cond_5
    iget-object v9, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mReader:Lcom/htc/shutdown/ConfigReader;

    const-string v10, "/system/customize/CID/default.xml"

    invoke-virtual {v9, v10}, Lcom/htc/shutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 130
    iget-object v9, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mReader:Lcom/htc/shutdown/ConfigReader;

    invoke-virtual {v9}, Lcom/htc/shutdown/ConfigReader;->getConfigData()Lcom/htc/shutdown/ConfigData;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mData:Lcom/htc/shutdown/ConfigData;

    goto/16 :goto_0

    .line 133
    .end local v2           #config:Ljava/io/File;
    .end local v3           #config_path:Ljava/lang/String;
    :cond_6
    iget-object v9, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mReader:Lcom/htc/shutdown/ConfigReader;

    const-string v10, "/system/customize/CID/default.xml"

    invoke-virtual {v9, v10}, Lcom/htc/shutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 134
    iget-object v9, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mReader:Lcom/htc/shutdown/ConfigReader;

    invoke-virtual {v9}, Lcom/htc/shutdown/ConfigReader;->getConfigData()Lcom/htc/shutdown/ConfigData;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mData:Lcom/htc/shutdown/ConfigData;

    goto/16 :goto_0

    .line 145
    .end local v1           #bUseCwAnimation:Z
    .end local v4           #cwConfig:Ljava/io/File;
    .end local v5           #cw_config_path:Ljava/lang/String;
    .end local v8           #str_cid:Ljava/lang/String;
    .restart local v0       #audio_file:Ljava/io/File;
    :cond_7
    iget-object v9, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mData:Lcom/htc/shutdown/ConfigData;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/htc/shutdown/ConfigData;->useAudio:Z

    goto/16 :goto_1

    .line 155
    .end local v0           #audio_file:Ljava/io/File;
    :cond_8
    iget-object v9, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mData:Lcom/htc/shutdown/ConfigData;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/htc/shutdown/ConfigData;->useAudio:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 167
    .end local v7           #small_operator_image:Ljava/io/File;
    .restart local v6       #ringMode:I
    :cond_9
    const/4 v9, 0x0

    :try_start_3
    iput-boolean v9, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mSilentMode:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 170
    .end local v6           #ringMode:I
    :catch_1
    move-exception v9

    goto/16 :goto_2
.end method

.method public setShutdownListener(Lcom/htc/shutdown/HtcShutdownScreen$OnShutdownListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 304
    iput-object p1, p0, Lcom/htc/shutdown/HtcShutdownScreen;->mShutdownListener:Lcom/htc/shutdown/HtcShutdownScreen$OnShutdownListener;

    .line 305
    return-void
.end method
