.class final Landroid/webkit/JWebCoreJavaBridge;
.super Landroid/os/Handler;
.source "JWebCoreJavaBridge.java"


# static fields
.field private static final FUNCPTR_MESSAGE:I = 0x2

.field private static final JWEBCOREJAVABRIDGE_CLS:I = 0x3

.field private static final LOGTAG:Ljava/lang/String; = "webkit-timers"

.field static final REFRESH_PLUGINS:I = 0x64

.field private static final TIMER_MESSAGE:I = 0x1

.field private static sCurrentMainWebView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private static sCurrentWebViewCoreHashCode:I


# instance fields
.field private mContentUriToFilePathMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasDeferredTimers:Z

.field private mHasInstantTimer:Z

.field private mNativeBridge:I

.field private mTimerPaused:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Landroid/webkit/JWebCoreJavaBridge;->sCurrentMainWebView:Ljava/lang/ref/WeakReference;

    .line 52
    const/4 v0, 0x0

    sput v0, Landroid/webkit/JWebCoreJavaBridge;->sCurrentWebViewCoreHashCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 64
    invoke-direct {p0}, Landroid/webkit/JWebCoreJavaBridge;->nativeConstructor()V

    .line 66
    return-void
.end method

.method private cookies(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"

    .prologue
    .line 216
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cookiesEnabled()Z
    .locals 1

    .prologue
    .line 223
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->acceptCookie()Z

    move-result v0

    return v0
.end method

.method private fireSharedTimer()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mHasInstantTimer:Z

    .line 104
    invoke-direct {p0}, Landroid/webkit/JWebCoreJavaBridge;->sharedTimerFired()V

    .line 105
    return-void
.end method

.method private getKeyStrengthList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    invoke-static {}, Landroid/webkit/CertTool;->getKeyStrengthList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPluginDirectories()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/webkit/PluginManager;->getInstance(Landroid/content/Context;)Landroid/webkit/PluginManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/PluginManager;->getPluginDirectories()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPluginSharedDataDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/webkit/PluginManager;->getInstance(Landroid/content/Context;)Landroid/webkit/PluginManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/PluginManager;->getPluginSharedDataDirectory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getSignedPublicKey(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "index"
    .parameter "challenge"
    .parameter "url"

    .prologue
    .line 283
    monitor-enter p0

    :try_start_0
    sget-object v1, Landroid/webkit/JWebCoreJavaBridge;->sCurrentMainWebView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 284
    .local v0, current:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/webkit/CertTool;->getSignedPublicKey(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 291
    :goto_0
    monitor-exit p0

    return-object v1

    .line 290
    :cond_0
    :try_start_1
    const-string/jumbo v1, "webkit-timers"

    const-string v2, "There is no active WebView for getSignedPublicKey"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const-string v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 283
    .end local v0           #current:Landroid/webkit/WebView;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private native nativeConstructor()V
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeServiceFuncPtrQueue()V
.end method

.method private native nativeUpdatePluginDirectories([Ljava/lang/String;Z)V
.end method

.method static declared-synchronized removeActiveWebView(Landroid/webkit/WebView;)V
    .locals 2
    .parameter "webview"

    .prologue
    .line 91
    const-class v1, Landroid/webkit/JWebCoreJavaBridge;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkit/JWebCoreJavaBridge;->sCurrentMainWebView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 96
    :goto_0
    monitor-exit v1

    return-void

    .line 95
    :cond_0
    :try_start_1
    sget-object v0, Landroid/webkit/JWebCoreJavaBridge;->sCurrentMainWebView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private resolveFilePathForContentUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 297
    iget-object v2, p0, Landroid/webkit/JWebCoreJavaBridge;->mContentUriToFilePathMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 298
    iget-object v2, p0, Landroid/webkit/JWebCoreJavaBridge;->mContentUriToFilePathMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 299
    .local v0, fileName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 307
    .end local v0           #fileName:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 306
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 307
    .local v1, jUri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static declared-synchronized setActiveWebView(Landroid/webkit/WebView;)V
    .locals 2
    .parameter "webview"

    .prologue
    .line 83
    const-class v1, Landroid/webkit/JWebCoreJavaBridge;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkit/JWebCoreJavaBridge;->sCurrentMainWebView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    :goto_0
    monitor-exit v1

    return-void

    .line 87
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Landroid/webkit/JWebCoreJavaBridge;->sCurrentMainWebView:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setCookies(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "url"
    .parameter "value"

    .prologue
    const/4 v7, -0x1

    .line 187
    const-string v6, "\r"

    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "\n"

    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 189
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 190
    .local v5, size:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 191
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 192
    .local v1, i:I
    :goto_0
    if-eq v1, v7, :cond_6

    if-ge v1, v5, :cond_6

    .line 193
    const/16 v6, 0xd

    invoke-virtual {p2, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 194
    .local v3, ir:I
    const/16 v6, 0xa

    invoke-virtual {p2, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 195
    .local v2, in:I
    if-ne v3, v7, :cond_2

    move v4, v2

    .line 197
    .local v4, newi:I
    :goto_1
    if-le v4, v1, :cond_5

    .line 198
    invoke-virtual {p2, v1, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 203
    :cond_1
    add-int/lit8 v1, v4, 0x1

    .line 204
    goto :goto_0

    .line 195
    .end local v4           #newi:I
    :cond_2
    if-ne v2, v7, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    if-ge v3, v2, :cond_4

    move v4, v3

    goto :goto_1

    :cond_4
    move v4, v2

    goto :goto_1

    .line 199
    .restart local v4       #newi:I
    :cond_5
    if-ne v4, v7, :cond_1

    .line 200
    invoke-virtual {p2, v1, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 205
    .end local v2           #in:I
    .end local v3           #ir:I
    .end local v4           #newi:I
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 207
    .end local v0           #buffer:Ljava/lang/StringBuilder;
    .end local v1           #i:I
    .end local v5           #size:I
    :cond_7
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method static declared-synchronized setCurrentWebView(Landroid/webkit/WebView;)V
    .locals 2
    .parameter "webview"

    .prologue
    .line 75
    const-class v1, Landroid/webkit/JWebCoreJavaBridge;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sput v0, Landroid/webkit/JWebCoreJavaBridge;->sCurrentWebViewCoreHashCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :goto_0
    monitor-exit v1

    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    sput v0, Landroid/webkit/JWebCoreJavaBridge;->sCurrentWebViewCoreHashCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setSharedTimer(J)V
    .locals 4
    .parameter "timemillis"

    .prologue
    const/4 v3, 0x1

    .line 247
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_1

    .line 252
    iget-boolean v1, p0, Landroid/webkit/JWebCoreJavaBridge;->mHasInstantTimer:Z

    if-eqz v1, :cond_0

    .line 263
    :goto_0
    return-void

    .line 255
    :cond_0
    iput-boolean v3, p0, Landroid/webkit/JWebCoreJavaBridge;->mHasInstantTimer:Z

    .line 256
    invoke-virtual {p0, v3}, Landroid/webkit/JWebCoreJavaBridge;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 257
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0, p1, p2}, Landroid/webkit/JWebCoreJavaBridge;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 260
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    invoke-virtual {p0, v3}, Landroid/webkit/JWebCoreJavaBridge;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 261
    .restart local v0       #msg:Landroid/os/Message;
    invoke-virtual {p0, v0, p1, p2}, Landroid/webkit/JWebCoreJavaBridge;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private native sharedTimerFired()V
.end method

.method private signalServiceFuncPtrQueue()V
    .locals 2

    .prologue
    .line 146
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/webkit/JWebCoreJavaBridge;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 147
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/JWebCoreJavaBridge;->sendMessage(Landroid/os/Message;)Z

    .line 148
    return-void
.end method

.method private stopSharedTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 272
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/JWebCoreJavaBridge;->removeMessages(I)V

    .line 273
    iput-boolean v1, p0, Landroid/webkit/JWebCoreJavaBridge;->mHasInstantTimer:Z

    .line 274
    iput-boolean v1, p0, Landroid/webkit/JWebCoreJavaBridge;->mHasDeferredTimers:Z

    .line 275
    return-void
.end method


# virtual methods
.method public native addPackageName(Ljava/lang/String;)V
.end method

.method public native addPackageNames(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/webkit/JWebCoreJavaBridge;->nativeFinalize()V

    .line 71
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 119
    sget v0, Landroid/webkit/JWebCoreJavaBridge;->sCurrentWebViewCoreHashCode:I

    const/4 v1, 0x3

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-static {v0, v1, v2, v3, v4}, Landroid/webkit/WebViewCore;->enterMsgHandle(IIID)V

    .line 121
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 140
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Landroid/webkit/WebViewCore;->leaveMsgHandle(D)V

    .line 142
    return-void

    .line 123
    :sswitch_0
    iget-boolean v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mTimerPaused:Z

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mHasDeferredTimers:Z

    goto :goto_0

    .line 126
    :cond_0
    invoke-direct {p0}, Landroid/webkit/JWebCoreJavaBridge;->fireSharedTimer()V

    goto :goto_0

    .line 131
    :sswitch_1
    invoke-direct {p0}, Landroid/webkit/JWebCoreJavaBridge;->nativeServiceFuncPtrQueue()V

    goto :goto_0

    .line 134
    :sswitch_2
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/webkit/PluginManager;->getInstance(Landroid/content/Context;)Landroid/webkit/PluginManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/PluginManager;->getPluginDirectories()[Ljava/lang/String;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v1, v0}, Landroid/webkit/JWebCoreJavaBridge;->nativeUpdatePluginDirectories([Ljava/lang/String;Z)V

    goto :goto_0

    .line 121
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch
.end method

.method public native nativeUpdateProxy(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mTimerPaused:Z

    if-nez v0, :cond_0

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mTimerPaused:Z

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mHasDeferredTimers:Z

    .line 160
    :cond_0
    return-void
.end method

.method public native removePackageName(Ljava/lang/String;)V
.end method

.method public resume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 166
    iget-boolean v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mTimerPaused:Z

    if-eqz v0, :cond_0

    .line 167
    iput-boolean v1, p0, Landroid/webkit/JWebCoreJavaBridge;->mTimerPaused:Z

    .line 168
    iget-boolean v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mHasDeferredTimers:Z

    if-eqz v0, :cond_0

    .line 169
    iput-boolean v1, p0, Landroid/webkit/JWebCoreJavaBridge;->mHasDeferredTimers:Z

    .line 170
    invoke-direct {p0}, Landroid/webkit/JWebCoreJavaBridge;->fireSharedTimer()V

    .line 173
    :cond_0
    return-void
.end method

.method public native setCacheSize(I)V
.end method

.method public native setNetworkOnLine(Z)V
.end method

.method public native setNetworkType(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public storeFilePathForContentUri(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "path"
    .parameter "contentUri"

    .prologue
    .line 311
    iget-object v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mContentUriToFilePathMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 312
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mContentUriToFilePathMap:Ljava/util/HashMap;

    .line 314
    :cond_0
    iget-object v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mContentUriToFilePathMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    return-void
.end method

.method public updateProxy(Landroid/net/ProxyProperties;)V
    .locals 4
    .parameter "proxyProperties"

    .prologue
    .line 318
    if-nez p1, :cond_0

    .line 319
    const-string v2, ""

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Landroid/webkit/JWebCoreJavaBridge;->nativeUpdateProxy(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :goto_0
    return-void

    .line 323
    :cond_0
    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, host:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getPort()I

    move-result v1

    .line 325
    .local v1, port:I
    if-eqz v1, :cond_1

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    :cond_1
    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/webkit/JWebCoreJavaBridge;->nativeUpdateProxy(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
