.class public Lcom/htc/cscore/restapi/request/JSONCloudRequest;
.super Ljava/lang/Object;
.source "JSONCloudRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/restapi/request/JSONCloudRequest$StreamableByteArray;,
        Lcom/htc/cscore/restapi/request/JSONCloudRequest$StreamableString;,
        Lcom/htc/cscore/restapi/request/JSONCloudRequest$ReadStreamable;,
        Lcom/htc/cscore/restapi/request/JSONCloudRequest$WriteStreamable;,
        Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;
    }
.end annotation


# static fields
.field static connectionTimeout:I

.field static readTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const v0, 0xea60

    .line 30
    sput v0, Lcom/htc/cscore/restapi/request/JSONCloudRequest;->connectionTimeout:I

    .line 31
    sput v0, Lcom/htc/cscore/restapi/request/JSONCloudRequest;->readTimeout:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 197
    return-void
.end method

.method public static SafeStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .parameter "stream"

    .prologue
    .line 185
    :try_start_0
    invoke-static {p0}, Lcom/htc/cscore/restapi/request/JSONCloudRequest;->StreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 191
    :goto_0
    return-object v1

    .line 187
    :catch_0
    move-exception v0

    .line 189
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "JSONCloudRequest.SafeStreamToString"

    const-string v2, "Failed to convert: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v1, ""

    goto :goto_0
.end method

.method public static StreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .local v2, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 170
    .local v1, reader:Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 171
    .local v0, line:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static deserializeJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7
    .parameter "jsonString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 354
    const/4 v1, 0x0

    .line 357
    .local v1, retVal:Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #retVal:Lorg/json/JSONObject;
    .local v2, retVal:Lorg/json/JSONObject;
    move-object v1, v2

    .line 374
    .end local v2           #retVal:Lorg/json/JSONObject;
    .restart local v1       #retVal:Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 359
    :catch_0
    move-exception v0

    .line 366
    .local v0, e:Lorg/json/JSONException;
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 367
    .end local v1           #retVal:Lorg/json/JSONObject;
    .restart local v2       #retVal:Lorg/json/JSONObject;
    :try_start_2
    const-string v4, "value"

    const-string v5, "\""

    const-string v6, ""

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v2

    .line 372
    .end local v2           #retVal:Lorg/json/JSONObject;
    .restart local v1       #retVal:Lorg/json/JSONObject;
    goto :goto_0

    .line 369
    :catch_1
    move-exception v3

    .line 371
    .local v3, xxx:Ljava/lang/Exception;
    :goto_1
    throw v0

    .line 369
    .end local v1           #retVal:Lorg/json/JSONObject;
    .end local v3           #xxx:Ljava/lang/Exception;
    .restart local v2       #retVal:Lorg/json/JSONObject;
    :catch_2
    move-exception v3

    move-object v1, v2

    .end local v2           #retVal:Lorg/json/JSONObject;
    .restart local v1       #retVal:Lorg/json/JSONObject;
    goto :goto_1
.end method

.method public static getConnectionTimeout()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/htc/cscore/restapi/request/JSONCloudRequest;->connectionTimeout:I

    return v0
.end method

.method public static getReadTimeout()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/htc/cscore/restapi/request/JSONCloudRequest;->readTimeout:I

    return v0
.end method

.method public static sendHttpRequestViaStreamables(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$WriteStreamable;Lcom/htc/cscore/restapi/request/JSONCloudRequest$ReadStreamable;)V
    .locals 13
    .parameter "url"
    .parameter "method"
    .parameter "authKey"
    .parameter "outParam"
    .parameter "inParam"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 252
    const/4 v2, 0x0

    .line 253
    .local v2, httpClient:Ljava/net/HttpURLConnection;
    const/4 v4, 0x0

    .line 254
    .local v4, inStream:Ljava/io/InputStream;
    if-eqz p2, :cond_4

    const-string v8, ""

    if-eq p2, v8, :cond_4

    const/4 v8, 0x1

    :goto_0
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 256
    .local v6, usingDeviceToken:Ljava/lang/Boolean;
    const/16 v5, 0xc8

    .line 273
    .local v5, statusCode:I
    :try_start_0
    const-string v8, "https:"

    invoke-virtual {p0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 276
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    .line 277
    .local v3, https:Ljavax/net/ssl/HttpsURLConnection;
    sget-object v8, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v3, v8}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 278
    move-object v2, v3

    .line 284
    .end local v3           #https:Ljavax/net/ssl/HttpsURLConnection;
    :goto_1
    sget v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest;->connectionTimeout:I

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 285
    sget v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest;->readTimeout:I

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 287
    const-string v8, "accept"

    const-string v9, "application/json"

    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v8, "accept-encoding"

    const-string v9, "gzip,deflate,sdch"

    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v8, "content-type"

    const-string v9, "application/json;charset=utf-8"

    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string/jumbo v8, "x-request"

    const-string v9, "JSON"

    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v8, "X-HTC-DEVICE-SN"

    const-string v9, "ro.serialno"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 294
    const-string v8, "AuthKey"

    invoke-virtual {v2, v8, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_0
    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    if-ne p1, v8, :cond_6

    .line 297
    const-string v8, "GET"

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 306
    :goto_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 308
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 314
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 321
    :goto_3
    if-eqz v4, :cond_1

    .line 323
    :try_start_2
    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Lcom/htc/cscore/restapi/request/JSONCloudRequest$ReadStreamable;->readFrom(Ljava/io/InputStream;)V

    .line 326
    :cond_1
    const/16 v8, 0xc8

    if-lt v5, v8, :cond_2

    const/16 v8, 0x12c

    if-lt v5, v8, :cond_8

    .line 328
    :cond_2
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "JSONCloudRequest.sendRequest - invalid http status code %d calling: %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object p0, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 331
    :catch_0
    move-exception v1

    .line 333
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 334
    new-instance v7, Lcom/htc/cscore/restapi/exceptions/WebException;

    const-string v8, "JSonCloudRequest.sendRequest failed"

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/cscore/restapi/request/JSONCloudRequest;->SafeStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v1, v9, v5}, Lcom/htc/cscore/restapi/exceptions/WebException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;I)V

    .line 335
    .local v7, we:Lcom/htc/cscore/restapi/exceptions/WebException;
    const-string v8, "sendHttpRequestViaStreamables"

    invoke-static {v8, v7, v6}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->_TranslateException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Ljava/lang/Exception;

    move-result-object v8

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 341
    .end local v1           #e:Ljava/lang/Exception;
    .end local v7           #we:Lcom/htc/cscore/restapi/exceptions/WebException;
    :catchall_0
    move-exception v8

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 342
    :cond_3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v8

    .line 254
    .end local v5           #statusCode:I
    .end local v6           #usingDeviceToken:Ljava/lang/Boolean;
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 280
    .restart local v5       #statusCode:I
    .restart local v6       #usingDeviceToken:Ljava/lang/Boolean;
    :cond_5
    :try_start_4
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    goto/16 :goto_1

    .line 298
    :cond_6
    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    if-ne p1, v8, :cond_7

    .line 299
    const-string v8, "POST"

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 300
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 302
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Lcom/htc/cscore/restapi/request/JSONCloudRequest$WriteStreamable;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_2

    .line 304
    :cond_7
    const-string v8, "DELETE"

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 316
    :catch_1
    move-exception v1

    .line 318
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_3

    .line 341
    .end local v1           #e:Ljava/lang/Exception;
    :cond_8
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 342
    :cond_9
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 346
    return-void
.end method

.method public static setConnectionTimeout(I)V
    .locals 0
    .parameter "connectionTimeout"

    .prologue
    .line 46
    sput p0, Lcom/htc/cscore/restapi/request/JSONCloudRequest;->connectionTimeout:I

    .line 47
    return-void
.end method

.method public static setReadTimeout(I)V
    .locals 0
    .parameter "readTimeout"

    .prologue
    .line 62
    sput p0, Lcom/htc/cscore/restapi/request/JSONCloudRequest;->readTimeout:I

    .line 63
    return-void
.end method
