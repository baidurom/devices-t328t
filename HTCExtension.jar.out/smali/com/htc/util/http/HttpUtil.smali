.class public Lcom/htc/util/http/HttpUtil;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/http/HttpUtil$ResponseObj;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONNECTION_TIMEOUT:I = 0x4e20

.field private static final DEFAULT_ENCODE:Ljava/lang/String; = "UTF-8"

.field private static final DEFAULT_KEEP_WIFI_RADIO_AWAKE:Z = false

.field private static final DEFAULT_RETRY:I = 0x1

.field private static final DEFAULT_ROAMING_ACCESS:Z = false

.field private static final DEFAULT_SOCKET_TIMEOUT:I = 0x1f40

.field public static final EXCEPTION_MSG_CONNECTION_TIMEOUT:Ljava/lang/String; = "connection_timeout"

.field public static final EXCEPTION_MSG_NO_ACTIVE_NETWORK:Ljava/lang/String; = "no_active_network"

.field public static final EXCEPTION_MSG_NO_ROAMING_ACCESS_RIGHT:Ljava/lang/String; = "no_roaming_access_right"

.field public static final EXCEPTION_MSG_SOCKET_TIMEOUT:Ljava/lang/String; = "socket_timeout"

.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Util"

.field private static final PREFIX:Ljava/lang/String; = "[HttpUtil] "


# instance fields
.field private connectionTimeout:I

.field private httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

.field private keepWifiRadioAwake:Z

.field private retry:I

.field private roamingAccess:Z

.field private socketTimeout:I

.field private urlEncode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/htc/util/http/HttpUtil;->urlEncode:Ljava/lang/String;

    .line 48
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/htc/util/http/HttpUtil;->socketTimeout:I

    .line 49
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/htc/util/http/HttpUtil;->connectionTimeout:I

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/util/http/HttpUtil;->retry:I

    .line 51
    iput-boolean v1, p0, Lcom/htc/util/http/HttpUtil;->roamingAccess:Z

    .line 52
    iput-boolean v1, p0, Lcom/htc/util/http/HttpUtil;->keepWifiRadioAwake:Z

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/http/HttpUtil;->httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 106
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .parameter "socketTimeout"
    .parameter "retry"

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/htc/util/http/HttpUtil;->urlEncode:Ljava/lang/String;

    .line 48
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/htc/util/http/HttpUtil;->socketTimeout:I

    .line 49
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/htc/util/http/HttpUtil;->connectionTimeout:I

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/util/http/HttpUtil;->retry:I

    .line 51
    iput-boolean v1, p0, Lcom/htc/util/http/HttpUtil;->roamingAccess:Z

    .line 52
    iput-boolean v1, p0, Lcom/htc/util/http/HttpUtil;->keepWifiRadioAwake:Z

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/http/HttpUtil;->httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 114
    iput p1, p0, Lcom/htc/util/http/HttpUtil;->socketTimeout:I

    .line 115
    iput p2, p0, Lcom/htc/util/http/HttpUtil;->retry:I

    .line 116
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .parameter "socketTimeout"
    .parameter "connectionTimeout"
    .parameter "retry"

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/htc/util/http/HttpUtil;->urlEncode:Ljava/lang/String;

    .line 48
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/htc/util/http/HttpUtil;->socketTimeout:I

    .line 49
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/htc/util/http/HttpUtil;->connectionTimeout:I

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/util/http/HttpUtil;->retry:I

    .line 51
    iput-boolean v1, p0, Lcom/htc/util/http/HttpUtil;->roamingAccess:Z

    .line 52
    iput-boolean v1, p0, Lcom/htc/util/http/HttpUtil;->keepWifiRadioAwake:Z

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/http/HttpUtil;->httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 125
    iput p1, p0, Lcom/htc/util/http/HttpUtil;->socketTimeout:I

    .line 126
    iput p2, p0, Lcom/htc/util/http/HttpUtil;->connectionTimeout:I

    .line 127
    iput p3, p0, Lcom/htc/util/http/HttpUtil;->retry:I

    .line 128
    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 2
    .parameter "socketTimeout"
    .parameter "connectionTimeout"
    .parameter "retry"
    .parameter "roamingAccess"

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/htc/util/http/HttpUtil;->urlEncode:Ljava/lang/String;

    .line 48
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/htc/util/http/HttpUtil;->socketTimeout:I

    .line 49
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/htc/util/http/HttpUtil;->connectionTimeout:I

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/util/http/HttpUtil;->retry:I

    .line 51
    iput-boolean v1, p0, Lcom/htc/util/http/HttpUtil;->roamingAccess:Z

    .line 52
    iput-boolean v1, p0, Lcom/htc/util/http/HttpUtil;->keepWifiRadioAwake:Z

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/http/HttpUtil;->httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 138
    iput p1, p0, Lcom/htc/util/http/HttpUtil;->socketTimeout:I

    .line 139
    iput p2, p0, Lcom/htc/util/http/HttpUtil;->connectionTimeout:I

    .line 140
    iput p3, p0, Lcom/htc/util/http/HttpUtil;->retry:I

    .line 141
    iput-boolean p4, p0, Lcom/htc/util/http/HttpUtil;->roamingAccess:Z

    .line 142
    return-void
.end method

.method private _cancelCurrentRequest()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/util/http/HttpUtil;->httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/util/http/HttpUtil;->httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->isAborted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/htc/util/http/HttpUtil;->httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 100
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/htc/util/http/HttpUtil;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/util/http/HttpUtil;->connectionTimeout()V

    return-void
.end method

.method private checkNetworkStatus(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 3
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 470
    const/4 v0, 0x0

    .line 472
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-eqz p1, :cond_1

    .line 473
    invoke-static {p1}, Lcom/htc/util/http/NetworkUtil;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 474
    if-nez v0, :cond_0

    .line 475
    new-instance v1, Ljava/io/IOException;

    const-string v2, "no_active_network"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 478
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/util/http/HttpUtil;->roamingAccess:Z

    if-nez v1, :cond_1

    .line 479
    new-instance v1, Ljava/io/IOException;

    const-string v2, "no_roaming_access_right"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 483
    :cond_1
    return-object v0
.end method

.method private connectionTimeout()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/htc/util/http/HttpUtil;->_cancelCurrentRequest()V

    .line 94
    return-void
.end method

.method private sendGETRequest(Ljava/lang/String;[Lorg/apache/http/NameValuePair;Ljava/util/HashMap;)Lcom/htc/util/http/HttpUtil$ResponseObj;
    .locals 26
    .parameter "targetURL"
    .parameter "parameters"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/http/NameValuePair;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/htc/util/http/HttpUtil$ResponseObj;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 344
    .local p3, headerParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_2

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v22, v0

    if-lez v22, :cond_2

    .line 345
    const-string v19, ""

    .line 346
    .local v19, temp:Ljava/lang/String;
    move-object/from16 v4, p2

    .local v4, arr$:[Lorg/apache/http/NameValuePair;
    array-length v12, v4

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v12, :cond_1

    aget-object v14, v4, v10

    .line 347
    .local v14, nvp:Lorg/apache/http/NameValuePair;
    const-string v22, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "?"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 349
    :goto_1
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v14}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/HttpUtil;->urlEncode:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v23 .. v24}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v14}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/HttpUtil;->urlEncode:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v23 .. v24}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 346
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 348
    :cond_0
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "&"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_1

    .line 352
    .end local v14           #nvp:Lorg/apache/http/NameValuePair;
    :cond_1
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 360
    .end local v4           #arr$:[Lorg/apache/http/NameValuePair;
    .end local v10           #i$:I
    .end local v12           #len$:I
    .end local v19           #temp:Ljava/lang/String;
    :cond_2
    const/4 v15, 0x0

    .line 361
    .local v15, response:Lorg/apache/http/HttpResponse;
    const/16 v18, 0x0

    .line 362
    .local v18, success:Z
    const/16 v20, 0x0

    .line 363
    .local v20, times:I
    const/16 v16, 0x0

    .line 364
    .local v16, responseObj:Lcom/htc/util/http/HttpUtil$ResponseObj;
    const/4 v11, 0x0

    .line 365
    .local v11, lastEx:Ljava/lang/Exception;
    const/4 v5, 0x0

    .line 366
    .local v5, connectionTimeoutAborter:Ljava/util/concurrent/ScheduledFuture;,"Ljava/util/concurrent/ScheduledFuture<*>;"
    const/4 v6, 0x0

    .local v6, connectionTimeoutControler:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    move-object v7, v6

    .line 368
    .end local v6           #connectionTimeoutControler:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .local v7, connectionTimeoutControler:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :goto_2
    if-nez v18, :cond_c

    .line 369
    const/4 v15, 0x0

    .line 370
    const/16 v18, 0x0

    .line 371
    const/16 v16, 0x0

    .line 373
    add-int/lit8 v20, v20, 0x1

    .line 374
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/util/http/HttpUtil;->retry:I

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_5

    .line 375
    if-eqz v11, :cond_c

    .line 376
    instance-of v0, v11, Ljava/net/SocketTimeoutException;

    move/from16 v22, v0

    if-eqz v22, :cond_3

    .line 377
    new-instance v22, Ljava/io/IOException;

    const-string v23, "socket_timeout"

    invoke-direct/range {v22 .. v23}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 378
    :cond_3
    instance-of v0, v11, Ljava/io/IOException;

    move/from16 v22, v0

    if-eqz v22, :cond_4

    .line 379
    new-instance v22, Ljava/io/IOException;

    const-string v23, "connection_timeout"

    invoke-direct/range {v22 .. v23}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 381
    :cond_4
    throw v11

    .line 392
    :cond_5
    :try_start_0
    new-instance v22, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/HttpUtil;->httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 395
    if-eqz p3, :cond_7

    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->size()I

    move-result v22

    if-lez v22, :cond_7

    .line 396
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 397
    .local v13, name:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 398
    .local v21, value:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/HttpUtil;->httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v13, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 447
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v13           #name:Ljava/lang/String;
    .end local v21           #value:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v6, v7

    .line 448
    .end local v7           #connectionTimeoutControler:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .restart local v6       #connectionTimeoutControler:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .local v8, e:Ljava/lang/Exception;
    :goto_4
    move-object v11, v8

    .line 453
    if-eqz v6, :cond_6

    .line 454
    invoke-virtual {v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 455
    const/4 v6, 0x0

    .line 456
    const/4 v5, 0x0

    .end local v8           #e:Ljava/lang/Exception;
    :cond_6
    :goto_5
    move-object v7, v6

    .end local v6           #connectionTimeoutControler:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .restart local v7       #connectionTimeoutControler:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    goto/16 :goto_2

    .line 405
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/util/http/HttpUtil;->socketTimeout:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_8

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/HttpUtil;->httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/http/client/methods/HttpRequestBase;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v22

    const-string v23, "http.socket.timeout"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/util/http/HttpUtil;->socketTimeout:I

    move/from16 v24, v0

    invoke-interface/range {v22 .. v24}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 409
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/util/http/HttpUtil;->connectionTimeout:I

    move/from16 v22, v0

    if-lez v22, :cond_e

    .line 410
    new-instance v6, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-direct {v6, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 411
    .end local v7           #connectionTimeoutControler:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .restart local v6       #connectionTimeoutControler:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :try_start_2
    new-instance v22, Lcom/htc/util/http/HttpUtil$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/util/http/HttpUtil$1;-><init>(Lcom/htc/util/http/HttpUtil;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/util/http/HttpUtil;->connectionTimeout:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    sget-object v25, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v22

    move-wide/from16 v1, v23

    move-object/from16 v3, v25

    invoke-virtual {v6, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v5

    .line 419
    :goto_6
    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v9}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 423
    .local v9, httpClient:Lorg/apache/http/client/HttpClient;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/HttpUtil;->httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v9, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 425
    if-eqz v5, :cond_9

    invoke-interface {v5}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v22

    if-nez v22, :cond_9

    .line 426
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v5, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 433
    :cond_9
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v22

    const/16 v23, 0xc8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 437
    new-instance v17, Lcom/htc/util/http/HttpUtil$ResponseObj;

    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/apache/http/util/EntityUtils;->getContentCharSet(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v22

    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v23

    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/util/http/HttpUtil$ResponseObj;-><init>(Ljava/lang/String;[B[Lorg/apache/http/Header;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 440
    .end local v16           #responseObj:Lcom/htc/util/http/HttpUtil$ResponseObj;
    .local v17, responseObj:Lcom/htc/util/http/HttpUtil$ResponseObj;
    const/16 v18, 0x1

    move-object/from16 v16, v17

    .line 453
    .end local v17           #responseObj:Lcom/htc/util/http/HttpUtil$ResponseObj;
    .restart local v16       #responseObj:Lcom/htc/util/http/HttpUtil$ResponseObj;
    :goto_7
    if-eqz v6, :cond_6

    .line 454
    invoke-virtual {v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 455
    const/4 v6, 0x0

    .line 456
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 445
    :cond_a
    const/16 v18, 0x0

    goto :goto_7

    .line 453
    .end local v6           #connectionTimeoutControler:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .end local v9           #httpClient:Lorg/apache/http/client/HttpClient;
    .restart local v7       #connectionTimeoutControler:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :catchall_0
    move-exception v22

    move-object v6, v7

    .end local v7           #connectionTimeoutControler:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .restart local v6       #connectionTimeoutControler:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :goto_8
    if-eqz v6, :cond_b

    .line 454
    invoke-virtual {v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 455
    const/4 v6, 0x0

    .line 456
    const/4 v5, 0x0

    :cond_b
    throw v22

    .line 461
    .end local v6           #connectionTimeoutControler:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .restart local v7       #connectionTimeoutControler:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :cond_c
    if-nez v18, :cond_d

    .line 462
    const/16 v16, 0x0

    .line 465
    :cond_d
    return-object v16

    .line 453
    .end local v7           #connectionTimeoutControler:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .restart local v6       #connectionTimeoutControler:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :catchall_1
    move-exception v22

    goto :goto_8

    .line 447
    :catch_1
    move-exception v8

    goto/16 :goto_4

    .end local v6           #connectionTimeoutControler:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .restart local v7       #connectionTimeoutControler:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :cond_e
    move-object v6, v7

    .end local v7           #connectionTimeoutControler:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .restart local v6       #connectionTimeoutControler:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    goto :goto_6
.end method

.method private wifiLockAcquire(Landroid/content/Context;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 5
    .parameter "context"

    .prologue
    .line 487
    const/4 v0, 0x0

    .line 489
    .local v0, wifiLock:Landroid/net/wifi/WifiManager$WifiLock;
    if-eqz p1, :cond_0

    .line 490
    const-string v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 491
    .local v1, wifiManager:Landroid/net/wifi/WifiManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HttpUtil - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    .line 493
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_0

    .line 494
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 495
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 502
    .end local v1           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_0
    return-object v0
.end method

.method private wifiLockRelease(Landroid/net/wifi/WifiManager$WifiLock;)V
    .locals 1
    .parameter "wifiLock"

    .prologue
    .line 506
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 512
    :cond_0
    return-void
.end method


# virtual methods
.method public GETasByteArray(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/NameValuePair;Ljava/util/HashMap;)[B
    .locals 2
    .parameter "context"
    .parameter "targetURL"
    .parameter "parameters"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/http/NameValuePair;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 594
    .local p4, headerParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/util/http/HttpUtil;->GETasResponseObj(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/NameValuePair;Ljava/util/HashMap;)Lcom/htc/util/http/HttpUtil$ResponseObj;

    move-result-object v0

    .line 596
    .local v0, responseObj:Lcom/htc/util/http/HttpUtil$ResponseObj;
    if-nez v0, :cond_0

    .line 597
    const/4 v1, 0x0

    .line 600
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/htc/util/http/HttpUtil$ResponseObj;->getContent()[B

    move-result-object v1

    goto :goto_0
.end method

.method public GETasByteArray(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)[B
    .locals 1
    .parameter "targetURL"
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 615
    invoke-virtual {p0, v0, p1, p2, v0}, Lcom/htc/util/http/HttpUtil;->GETasByteArray(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/NameValuePair;Ljava/util/HashMap;)[B

    move-result-object v0

    return-object v0
.end method

.method public GETasResponseObj(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/NameValuePair;Ljava/util/HashMap;)Lcom/htc/util/http/HttpUtil$ResponseObj;
    .locals 5
    .parameter "context"
    .parameter "targetURL"
    .parameter "parameters"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/http/NameValuePair;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/htc/util/http/HttpUtil$ResponseObj;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 532
    .local p4, headerParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 535
    .local v2, wifiLock:Landroid/net/wifi/WifiManager$WifiLock;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/util/http/HttpUtil;->checkNetworkStatus(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 537
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    iget-boolean v3, p0, Lcom/htc/util/http/HttpUtil;->keepWifiRadioAwake:Z

    if-eqz v3, :cond_0

    .line 538
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 539
    invoke-direct {p0, p1}, Lcom/htc/util/http/HttpUtil;->wifiLockAcquire(Landroid/content/Context;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v2

    .line 543
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/htc/util/http/HttpUtil;->sendGETRequest(Ljava/lang/String;[Lorg/apache/http/NameValuePair;Ljava/util/HashMap;)Lcom/htc/util/http/HttpUtil$ResponseObj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 547
    invoke-direct {p0, v2}, Lcom/htc/util/http/HttpUtil;->wifiLockRelease(Landroid/net/wifi/WifiManager$WifiLock;)V

    return-object v3

    .line 544
    .end local v1           #networkInfo:Landroid/net/NetworkInfo;
    :catch_0
    move-exception v0

    .line 545
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-direct {p0, v2}, Lcom/htc/util/http/HttpUtil;->wifiLockRelease(Landroid/net/wifi/WifiManager$WifiLock;)V

    throw v3
.end method

.method public GETasText(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/NameValuePair;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "targetURL"
    .parameter "parameters"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/http/NameValuePair;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 566
    .local p4, headerParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/util/http/HttpUtil;->GETasResponseObj(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/NameValuePair;Ljava/util/HashMap;)Lcom/htc/util/http/HttpUtil$ResponseObj;

    move-result-object v0

    .line 568
    .local v0, responseObj:Lcom/htc/util/http/HttpUtil$ResponseObj;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/util/http/HttpUtil$ResponseObj;->getContent()[B

    move-result-object v1

    if-nez v1, :cond_1

    .line 569
    :cond_0
    const/4 v1, 0x0

    .line 575
    :goto_0
    return-object v1

    .line 572
    :cond_1
    invoke-virtual {v0}, Lcom/htc/util/http/HttpUtil$ResponseObj;->getCharset()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 573
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/htc/util/http/HttpUtil$ResponseObj;->getContent()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 575
    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/htc/util/http/HttpUtil$ResponseObj;->getContent()[B

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/util/http/HttpUtil$ResponseObj;->getCharset()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public forceClose()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/util/http/HttpUtil;->retry:I

    .line 86
    invoke-direct {p0}, Lcom/htc/util/http/HttpUtil;->_cancelCurrentRequest()V

    .line 87
    return-void
.end method

.method public getConnectionTimeout()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/htc/util/http/HttpUtil;->connectionTimeout:I

    return v0
.end method

.method public getRetry()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/htc/util/http/HttpUtil;->retry:I

    return v0
.end method

.method public getSocketTimeout()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/htc/util/http/HttpUtil;->socketTimeout:I

    return v0
.end method

.method public getTimeout()J
    .locals 2

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/htc/util/http/HttpUtil;->getConnectionTimeout()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getUrlEncode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/htc/util/http/HttpUtil;->urlEncode:Ljava/lang/String;

    return-object v0
.end method

.method public isKeepWifiRadioAwake()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/htc/util/http/HttpUtil;->keepWifiRadioAwake:Z

    return v0
.end method

.method public isRoamingAccess()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/htc/util/http/HttpUtil;->roamingAccess:Z

    return v0
.end method

.method public setConnectionTimeout(I)V
    .locals 0
    .parameter "connectionTimeout"

    .prologue
    .line 221
    iput p1, p0, Lcom/htc/util/http/HttpUtil;->connectionTimeout:I

    .line 222
    return-void
.end method

.method public setKeepWifiRadioAwake(Z)V
    .locals 0
    .parameter "keepWifiRadioAwake"

    .prologue
    .line 277
    iput-boolean p1, p0, Lcom/htc/util/http/HttpUtil;->keepWifiRadioAwake:Z

    .line 278
    return-void
.end method

.method public setRetry(I)V
    .locals 0
    .parameter "retry"

    .prologue
    .line 245
    iput p1, p0, Lcom/htc/util/http/HttpUtil;->retry:I

    .line 246
    return-void
.end method

.method public setRoamingAccess(Z)V
    .locals 0
    .parameter "roamingAccess"

    .prologue
    .line 261
    iput-boolean p1, p0, Lcom/htc/util/http/HttpUtil;->roamingAccess:Z

    .line 262
    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 0
    .parameter "socketTimeout"

    .prologue
    .line 205
    iput p1, p0, Lcom/htc/util/http/HttpUtil;->socketTimeout:I

    .line 206
    return-void
.end method

.method public setTimeout(I)V
    .locals 0
    .parameter "connectionTimeout"

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lcom/htc/util/http/HttpUtil;->setConnectionTimeout(I)V

    .line 190
    return-void
.end method

.method public setUrlEncode(Ljava/lang/String;)V
    .locals 0
    .parameter "urlEncode"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/htc/util/http/HttpUtil;->urlEncode:Ljava/lang/String;

    .line 166
    return-void
.end method
