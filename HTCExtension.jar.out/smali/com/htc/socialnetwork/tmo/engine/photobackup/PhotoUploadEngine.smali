.class public Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;
.super Ljava/lang/Object;
.source "PhotoUploadEngine.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TMUS_PhotoUploadEngine"


# instance fields
.field private mLoginRunnable:Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread;

.field private mLoginRunnable2:Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread2;

.field private mLoginThread:Ljava/lang/Thread;

.field private mLoginThread2:Ljava/lang/Thread;

.field private mPassword:Ljava/lang/String;

.field private mPhotoUploadRunnable:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;

.field private mPhotoUploadThread:Ljava/lang/Thread;

.field private mToken:Ljava/lang/String;

.field private mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public CancelLogin()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mLoginThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mLoginRunnable:Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mLoginThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "TMUS_PhotoUploadEngine"

    const-string v1, "CancelLogin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mLoginRunnable:Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread;

    invoke-virtual {v0}, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread;->Cancel()V

    .line 54
    :cond_0
    return-void
.end method

.method public CancelLogin2()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mLoginThread2:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mLoginRunnable2:Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mLoginThread2:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "TMUS_PhotoUploadEngine"

    const-string v1, "CancelLogin2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mLoginRunnable2:Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread2;

    invoke-virtual {v0}, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread2;->Cancel()V

    .line 86
    :cond_0
    return-void
.end method

.method public CancelUploadPhoto()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mPhotoUploadThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mPhotoUploadRunnable:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mPhotoUploadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "TMUS_PhotoUploadEngine"

    const-string v1, "CancelUploadPhoto"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mPhotoUploadRunnable:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;

    invoke-virtual {v0}, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;->Cancel()V

    .line 159
    :cond_0
    return-void
.end method

.method public Login(Ljava/lang/String;Ljava/lang/String;Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback;)V
    .locals 3
    .parameter "username"
    .parameter "password"
    .parameter "logincallback"

    .prologue
    .line 30
    const-string v0, "TMUS_PhotoUploadEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Login:Username:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const-string v0, "TMUS_PhotoUploadEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Login:Password:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mLoginThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mLoginThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const-string v0, "TMUS_PhotoUploadEngine"

    const-string v1, "login thread is running"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :goto_0
    return-void

    .line 38
    :cond_0
    new-instance v0, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread;

    invoke-direct {v0, p1, p2, p3}, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback;)V

    iput-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mLoginRunnable:Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread;

    .line 39
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mLoginRunnable:Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mLoginThread:Ljava/lang/Thread;

    .line 40
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mLoginThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public Login2(Ljava/lang/String;Ljava/lang/String;Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback2;)V
    .locals 3
    .parameter "username"
    .parameter "password"
    .parameter "logincallback"

    .prologue
    .line 62
    const-string v0, "TMUS_PhotoUploadEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Login2:Username:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string v0, "TMUS_PhotoUploadEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Login2:Password:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mLoginThread2:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mLoginThread2:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-string v0, "TMUS_PhotoUploadEngine"

    const-string v1, "login thread2 is running"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    return-void

    .line 70
    :cond_0
    new-instance v0, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread2;

    invoke-direct {v0, p1, p2, p3}, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback2;)V

    iput-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mLoginRunnable2:Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread2;

    .line 71
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mLoginRunnable2:Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread2;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mLoginThread2:Ljava/lang/Thread;

    .line 72
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mLoginThread2:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public SetToken(Ljava/lang/String;)V
    .locals 3
    .parameter "token"

    .prologue
    .line 105
    const-string v0, "TMUS_PhotoUploadEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set:Token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iput-object p1, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mToken:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public SetUserNamePassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "username"
    .parameter "password"

    .prologue
    .line 93
    const-string v0, "TMUS_PhotoUploadEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set:Username:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v0, "TMUS_PhotoUploadEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set:Password:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iput-object p1, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mUsername:Ljava/lang/String;

    .line 97
    iput-object p2, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mPassword:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public UploadPhoto(Ljava/lang/String;Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback;)V
    .locals 3
    .parameter "filepath"
    .parameter "photouploadcallback"

    .prologue
    .line 115
    const-string v0, "TMUS_PhotoUploadEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UploadPhoto:filepath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mPhotoUploadThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mPhotoUploadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "TMUS_PhotoUploadEngine"

    const-string v1, "photo upload thread is running"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_0
    return-void

    .line 122
    :cond_0
    new-instance v0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;

    invoke-direct {v0}, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;-><init>()V

    iput-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mPhotoUploadRunnable:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;

    .line 123
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mPhotoUploadRunnable:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;

    iget-object v1, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mUsername:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;->Init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback;)V

    .line 125
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mPhotoUploadRunnable:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mPhotoUploadThread:Ljava/lang/Thread;

    .line 126
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mPhotoUploadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public UploadPhoto2(Ljava/lang/String;Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback;)V
    .locals 6
    .parameter "filepath"
    .parameter "photouploadcallback"

    .prologue
    .line 135
    const-string v0, "TMUS_PhotoUploadEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UploadPhoto:filepath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mPhotoUploadThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mPhotoUploadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "TMUS_PhotoUploadEngine"

    const-string v1, "photo upload thread is running"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_0
    return-void

    .line 142
    :cond_0
    new-instance v0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;

    invoke-direct {v0}, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;-><init>()V

    iput-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mPhotoUploadRunnable:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;

    .line 143
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mPhotoUploadRunnable:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;

    iget-object v1, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mUsername:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mPassword:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mToken:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;->Init2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadCallback;)V

    .line 145
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mPhotoUploadRunnable:Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadThread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mPhotoUploadThread:Ljava/lang/Thread;

    .line 146
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/PhotoUploadEngine;->mPhotoUploadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
