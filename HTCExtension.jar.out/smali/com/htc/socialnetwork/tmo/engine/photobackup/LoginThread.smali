.class public Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread;
.super Lcom/htc/socialnetwork/tmo/engine/HttpTransport;
.source "LoginThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "TMUS_LoginThread"


# instance fields
.field private mHttpGet:Lorg/apache/http/client/methods/HttpGet;

.field private mlogincallback:Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback;)V
    .locals 2
    .parameter "username"
    .parameter "password"
    .parameter "logincallback"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;-><init>()V

    .line 16
    invoke-virtual {p0}, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread;->InitHttpClient()V

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread;->InitAuth(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iput-object p3, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread;->mlogincallback:Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback;

    .line 20
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mDownloadUri:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    .line 21
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    iput-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mAbort:Lorg/apache/http/client/methods/AbortableHttpRequest;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mCancel:Z

    .line 23
    return-void
.end method


# virtual methods
.method public Cancel()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mCancel:Z

    .line 31
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mAbort:Lorg/apache/http/client/methods/AbortableHttpRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/AbortableHttpRequest;->abort()V

    .line 32
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 41
    :try_start_0
    iget-boolean v3, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mCancel:Z

    if-eqz v3, :cond_0

    .line 42
    iget-object v3, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread;->mlogincallback:Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback;

    sget-object v4, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback$LOGIN_RESULT;->FAIL_CANCEL_LOGIN:Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback$LOGIN_RESULT;

    invoke-interface {v3, v4}, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback;->LoginResult(Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback$LOGIN_RESULT;)V

    .line 45
    :cond_0
    iget-object v3, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v4, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 47
    .local v1, httpresponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 49
    .local v2, status:I
    const-string v3, "TMUS_LoginThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Status code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_1

    const/16 v3, 0x193

    if-ne v2, v3, :cond_3

    .line 52
    :cond_1
    iget-object v3, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread;->mlogincallback:Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback;

    sget-object v4, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback$LOGIN_RESULT;->SUCCESS_LOGIN:Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback$LOGIN_RESULT;

    invoke-interface {v3, v4}, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback;->LoginResult(Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback$LOGIN_RESULT;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v1           #httpresponse:Lorg/apache/http/HttpResponse;
    .end local v2           #status:I
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 71
    return-void

    .line 54
    .restart local v1       #httpresponse:Lorg/apache/http/HttpResponse;
    .restart local v2       #status:I
    :cond_3
    const/16 v3, 0x191

    if-eq v2, v3, :cond_4

    const/16 v3, 0x194

    if-ne v2, v3, :cond_5

    .line 55
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread;->mlogincallback:Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback;

    sget-object v4, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback$LOGIN_RESULT;->FAIL_INVALID_USERNAME_PASSWORD:Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback$LOGIN_RESULT;

    invoke-interface {v3, v4}, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback;->LoginResult(Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback$LOGIN_RESULT;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 61
    .end local v1           #httpresponse:Lorg/apache/http/HttpResponse;
    .end local v2           #status:I
    :catch_0
    move-exception v0

    .line 62
    .local v0, e:Ljava/io/IOException;
    const-string v3, "TMUS_LoginThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!!! Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-boolean v3, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mCancel:Z

    if-eqz v3, :cond_6

    .line 64
    iget-object v3, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread;->mlogincallback:Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback;

    sget-object v4, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback$LOGIN_RESULT;->FAIL_CANCEL_LOGIN:Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback$LOGIN_RESULT;

    invoke-interface {v3, v4}, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback;->LoginResult(Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback$LOGIN_RESULT;)V

    goto :goto_0

    .line 57
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #httpresponse:Lorg/apache/http/HttpResponse;
    .restart local v2       #status:I
    :cond_5
    const/16 v3, 0x1f7

    if-ne v2, v3, :cond_2

    .line 58
    :try_start_2
    iget-object v3, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread;->mlogincallback:Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback;

    sget-object v4, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback$LOGIN_RESULT;->FAIL_SERVER_UNAVAILABLE:Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback$LOGIN_RESULT;

    invoke-interface {v3, v4}, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback;->LoginResult(Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback$LOGIN_RESULT;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 67
    .end local v1           #httpresponse:Lorg/apache/http/HttpResponse;
    .end local v2           #status:I
    .restart local v0       #e:Ljava/io/IOException;
    :cond_6
    iget-object v3, p0, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginThread;->mlogincallback:Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback;

    sget-object v4, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback$LOGIN_RESULT;->FAIL_CONNECTION_ERROR:Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback$LOGIN_RESULT;

    invoke-interface {v3, v4}, Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback;->LoginResult(Lcom/htc/socialnetwork/tmo/engine/photobackup/LoginCallback$LOGIN_RESULT;)V

    goto :goto_0
.end method
