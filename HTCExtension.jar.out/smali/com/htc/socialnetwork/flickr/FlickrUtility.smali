.class public Lcom/htc/socialnetwork/flickr/FlickrUtility;
.super Ljava/lang/Object;
.source "FlickrUtility.java"

# interfaces
.implements Lcom/htc/socialnetwork/Constants;


# static fields
.field public static final API_SIG:Ljava/lang/String; = "api_sig"

.field public static final AUTH_URL:Ljava/lang/String; = "http://m.flickr.com/services/auth/"

.field public static final INVALID_TOKEN:Ljava/lang/String; = "Invalid auth token"

.field private static LOG:Z = false

.field public static final METHOD:Ljava/lang/String; = "method"

.field public static final RECENT_ACTIVITY:Ljava/lang/String; = "http://api.flickr.com/services/feeds/activity.gne"

.field public static final REST_URL:Ljava/lang/String; = "http://api.flickr.com/services/rest/"

.field public static final STAT:Ljava/lang/String; = "stat"

.field private static final STATUS_OK:Ljava/lang/String; = "ok"

.field private static TAG:Ljava/lang/String; = null

.field public static final UPLOAD_URL:Ljava/lang/String; = "http://api.flickr.com/services/upload/"

.field private static mClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "SocialNetwork-FlickrUtility"

    sput-object v0, Lcom/htc/socialnetwork/flickr/FlickrUtility;->TAG:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/socialnetwork/flickr/FlickrUtility;->LOG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeFeedsURI(Ljava/util/HashMap;)Landroid/net/Uri$Builder;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/net/Uri$Builder;"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 147
    .local v1, builder:Landroid/net/Uri$Builder;
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    .line 148
    .local v4, keys:[Ljava/lang/Object;
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 149
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/Object;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v3, v0, v2

    .line 150
    .local v3, k:Ljava/lang/Object;
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 151
    .local v6, value:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 149
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    .end local v3           #k:Ljava/lang/Object;
    .end local v6           #value:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public static encodeURI(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 16
    .parameter "base"
    .parameter
    .parameter "secret"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/net/Uri$Builder;"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 107
    .local v4, builder:Landroid/net/Uri$Builder;
    :try_start_0
    const-string v14, "MD5"

    invoke-static {v14}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v11

    .line 109
    .local v11, md:Ljava/security/MessageDigest;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/security/MessageDigest;->update([B)V

    .line 111
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v14

    new-array v9, v14, [Ljava/lang/String;

    .line 112
    .local v9, keys:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 113
    invoke-static {v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 114
    move-object v1, v9

    .local v1, arr$:[Ljava/lang/String;
    array-length v10, v1

    .local v10, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v10, :cond_1

    aget-object v8, v1, v7

    .line 115
    .local v8, k:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 116
    .local v12, o:Ljava/lang/Object;
    if-eqz v12, :cond_0

    .line 117
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 118
    .local v13, value:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/security/MessageDigest;->update([B)V

    .line 119
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/security/MessageDigest;->update([B)V

    .line 120
    invoke-virtual {v4, v8, v13}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 114
    .end local v13           #value:Ljava/lang/String;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 124
    .end local v8           #k:Ljava/lang/String;
    .end local v12           #o:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v11}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 125
    .local v5, digestbytes:[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 126
    .local v3, buffer:Ljava/lang/StringBuffer;
    move-object v1, v5

    .local v1, arr$:[B
    array-length v10, v1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v10, :cond_4

    aget-byte v2, v1, v7

    .line 127
    .local v2, b:B
    and-int/lit8 v15, v2, 0x7f

    if-gez v2, :cond_2

    const/16 v14, 0x80

    :goto_2
    add-int v13, v15, v14

    .line 128
    .local v13, value:I
    const/16 v14, 0x10

    if-ge v13, v14, :cond_3

    const-string v14, "0"

    :goto_3
    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 127
    .end local v13           #value:I
    :cond_2
    const/4 v14, 0x0

    goto :goto_2

    .line 128
    .restart local v13       #value:I
    :cond_3
    const-string v14, ""

    goto :goto_3

    .line 131
    .end local v2           #b:B
    .end local v13           #value:I
    :cond_4
    const-string v14, "api_sig"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v1           #arr$:[B
    .end local v3           #buffer:Ljava/lang/StringBuffer;
    .end local v5           #digestbytes:[B
    .end local v7           #i$:I
    .end local v9           #keys:[Ljava/lang/String;
    .end local v10           #len$:I
    .end local v11           #md:Ljava/security/MessageDigest;
    :goto_4
    return-object v4

    .line 132
    :catch_0
    move-exception v6

    .line 133
    .local v6, e:Ljava/security/NoSuchAlgorithmException;
    sget-object v14, Lcom/htc/socialnetwork/flickr/FlickrUtility;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static getParseResult(Lorg/apache/http/HttpResponse;)Lorg/json/JSONObject;
    .locals 11
    .parameter "r"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x7e1

    .line 259
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 261
    .local v4, out:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6, v4}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 262
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 263
    .local v5, status:I
    const/16 v6, 0xc8

    if-eq v5, v6, :cond_0

    .line 264
    new-instance v6, Lcom/htc/socialnetwork/SocialNetworkException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Http Error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 297
    .end local v5           #status:I
    :catch_0
    move-exception v2

    .line 298
    .local v2, e:Lorg/json/JSONException;
    new-instance v6, Lcom/htc/socialnetwork/SocialNetworkException;

    const-string v7, "JSONException"

    invoke-direct {v6, v10, v7, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 267
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v5       #status:I
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, content:Ljava/lang/String;
    const-string/jumbo v6, "{"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 271
    new-instance v6, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v7, 0x7e1

    invoke-direct {v6, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v6
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 301
    .end local v1           #content:Ljava/lang/String;
    .end local v5           #status:I
    :catch_1
    move-exception v2

    .line 302
    .local v2, e:Ljava/io/IOException;
    new-instance v6, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v7, 0x7d8

    const-string v8, "IOException"

    invoke-direct {v6, v7, v8, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 275
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #content:Ljava/lang/String;
    .restart local v5       #status:I
    :cond_1
    const/16 v6, 0x7b

    :try_start_2
    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 278
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 279
    .local v3, obj:Lorg/json/JSONObject;
    const-string v6, "stat"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "stat"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ok"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 280
    const-string v6, "code"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 281
    .local v0, code:I
    const/16 v6, 0x63

    if-eq v0, v6, :cond_2

    const/16 v6, 0x62

    if-ne v0, v6, :cond_3

    .line 282
    :cond_2
    new-instance v6, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v7, 0x7dd

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "INVALID_TOKENException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "message"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 287
    :cond_3
    new-instance v6, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v7, 0x7d6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ServerRejectException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "message"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 291
    .end local v0           #code:I
    :cond_4
    const-string v6, "<title>Flickr API: Bad feed</title>"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 292
    new-instance v6, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v7, 0x7d0

    const-string v8, "JSONException: Bad feed"

    invoke-direct {v6, v7, v8}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 296
    :cond_5
    return-object v3
.end method

.method public static getResult(Ljava/util/HashMap;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .parameter
    .parameter "secret"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 177
    .local p0, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://api.flickr.com/services/rest/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "http://api.flickr.com/services/rest/"

    invoke-static {v4, p0, p1}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->encodeURI(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 179
    .local v2, restGet:Lorg/apache/http/client/methods/HttpGet;
    sget-object v3, Lcom/htc/socialnetwork/flickr/FlickrUtility;->mClient:Lorg/apache/http/client/HttpClient;

    if-nez v3, :cond_0

    .line 180
    invoke-static {}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->initHttpClient()V

    .line 183
    :cond_0
    :try_start_0
    sget-object v3, Lcom/htc/socialnetwork/flickr/FlickrUtility;->mClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v3, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 184
    .local v1, r:Lorg/apache/http/HttpResponse;
    invoke-static {v1}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->getParseResult(Lorg/apache/http/HttpResponse;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    return-object v3

    .line 185
    .end local v1           #r:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 186
    .local v0, e:Ljava/net/UnknownHostException;
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7e5

    invoke-direct {v3, v4, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v3

    .line 188
    .end local v0           #e:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 189
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7d6

    const-string v5, "ClientProtocolException"

    invoke-direct {v3, v4, v5, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 192
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v0

    .line 193
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7d8

    const-string v5, "IOException"

    invoke-direct {v3, v4, v5, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 195
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 196
    .local v0, e:Ljava/util/ConcurrentModificationException;
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7e3

    const-string v5, "ConcurrentModificationException"

    invoke-direct {v3, v4, v5, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static getSignature(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter
    .parameter "secret"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 313
    .local p0, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 315
    .local v2, buffer:Ljava/lang/StringBuffer;
    :try_start_0
    const-string v11, "MD5"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    .line 317
    .local v9, md:Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/security/MessageDigest;->update([B)V

    .line 319
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v7

    .line 320
    .local v7, keys:[Ljava/lang/Object;
    invoke-static {v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 321
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/Object;
    array-length v8, v0

    .local v8, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v8, :cond_0

    aget-object v6, v0, v5

    .line 322
    .local v6, k:Ljava/lang/Object;
    invoke-virtual {p0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 323
    .local v10, value:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/security/MessageDigest;->update([B)V

    .line 324
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/security/MessageDigest;->update([B)V

    .line 321
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 327
    .end local v6           #k:Ljava/lang/Object;
    .end local v10           #value:Ljava/lang/String;
    :cond_0
    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 329
    .local v3, digestbytes:[B
    move-object v0, v3

    .local v0, arr$:[B
    array-length v8, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v8, :cond_3

    aget-byte v1, v0, v5

    .line 330
    .local v1, b:B
    and-int/lit8 v12, v1, 0x7f

    if-gez v1, :cond_1

    const/16 v11, 0x80

    :goto_2
    add-int v10, v12, v11

    .line 331
    .local v10, value:I
    const/16 v11, 0x10

    if-ge v10, v11, :cond_2

    const-string v11, "0"

    :goto_3
    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 329
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 330
    .end local v10           #value:I
    :cond_1
    const/4 v11, 0x0

    goto :goto_2

    .line 331
    .restart local v10       #value:I
    :cond_2
    const-string v11, ""
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 335
    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v3           #digestbytes:[B
    .end local v5           #i$:I
    .end local v7           #keys:[Ljava/lang/Object;
    .end local v8           #len$:I
    .end local v9           #md:Ljava/security/MessageDigest;
    .end local v10           #value:I
    :catch_0
    move-exception v4

    .line 336
    .local v4, e:Ljava/security/NoSuchAlgorithmException;
    sget-object v11, Lcom/htc/socialnetwork/flickr/FlickrUtility;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    .end local v4           #e:Ljava/security/NoSuchAlgorithmException;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11
.end method

.method private static initHttpClient()V
    .locals 8

    .prologue
    const v5, 0xea60

    .line 202
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 203
    .local v1, params:Lorg/apache/http/params/HttpParams;
    sget-object v4, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 204
    const/4 v4, 0x1

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 205
    const-string v4, "HTC-Android/1.0"

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 207
    invoke-static {v1, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 208
    invoke-static {v1, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 210
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 211
    .local v2, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v6

    const/16 v7, 0x50

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 213
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    .line 214
    .local v3, sslSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    new-instance v4, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;

    invoke-direct {v4}, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;-><init>()V

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 215
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "https"

    const/16 v6, 0x1bb

    invoke-direct {v4, v5, v3, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 217
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 220
    .local v0, manager:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v4, Lcom/htc/socialnetwork/flickr/FlickrUtility;->mClient:Lorg/apache/http/client/HttpClient;

    .line 221
    return-void
.end method

.method public static loadCommentFromJson(Lorg/json/JSONObject;Lcom/htc/socialnetwork/Comment;)Lcom/htc/socialnetwork/Comment;
    .locals 11
    .parameter "obj"
    .parameter "comment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 348
    if-nez p1, :cond_0

    .line 349
    new-instance p1, Lcom/htc/socialnetwork/Comment;

    .end local p1
    invoke-direct {p1}, Lcom/htc/socialnetwork/Comment;-><init>()V

    .line 351
    .restart local p1
    :cond_0
    const-string v7, "id"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, comment_id:Ljava/lang/String;
    const-string v7, "author"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 353
    .local v5, user_id:Ljava/lang/String;
    const-string v7, "authorname"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 354
    .local v6, user_name:Ljava/lang/String;
    const-string v7, "datecreate"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v1, v7, v9

    .line 355
    .local v1, date_created:J
    const-string v7, "permalink"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 356
    .local v4, url:Ljava/lang/String;
    const-string v7, "_content"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 357
    .local v3, description:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/htc/socialnetwork/Comment;->setId(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p1, v5}, Lcom/htc/socialnetwork/Comment;->setFromId(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p1, v1, v2}, Lcom/htc/socialnetwork/Comment;->setTime(J)V

    .line 360
    invoke-virtual {p1, v3}, Lcom/htc/socialnetwork/Comment;->setText(Ljava/lang/String;)V

    .line 362
    return-object p1
.end method

.method public static postResult(Ljava/util/HashMap;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .parameter
    .parameter "secret"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 229
    .local p0, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://api.flickr.com/services/rest/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "http://api.flickr.com/services/rest/"

    invoke-static {v4, p0, p1}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->encodeURI(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 231
    .local v2, restPost:Lorg/apache/http/client/methods/HttpPost;
    sget-object v3, Lcom/htc/socialnetwork/flickr/FlickrUtility;->mClient:Lorg/apache/http/client/HttpClient;

    if-nez v3, :cond_0

    .line 232
    invoke-static {}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->initHttpClient()V

    .line 235
    :cond_0
    :try_start_0
    sget-object v3, Lcom/htc/socialnetwork/flickr/FlickrUtility;->mClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v3, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 236
    .local v1, r:Lorg/apache/http/HttpResponse;
    invoke-static {v1}, Lcom/htc/socialnetwork/flickr/FlickrUtility;->getParseResult(Lorg/apache/http/HttpResponse;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    return-object v3

    .line 237
    .end local v1           #r:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 238
    .local v0, e:Ljava/net/UnknownHostException;
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7e5

    invoke-direct {v3, v4, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v3

    .line 240
    .end local v0           #e:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 241
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7d6

    const-string v5, "ClientProtocolException"

    invoke-direct {v3, v4, v5, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 244
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v0

    .line 245
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7d8

    const-string v5, "IOException"

    invoke-direct {v3, v4, v5, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 247
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 248
    .local v0, e:Ljava/util/ConcurrentModificationException;
    new-instance v3, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v4, 0x7e3

    const-string v5, "ConcurrentModificationException"

    invoke-direct {v3, v4, v5, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static setParams(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .parameter
    .parameter "method"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, Fparams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    monitor-enter p0

    .line 164
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 166
    .local v0, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "method"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    monitor-exit p0

    return-object v0

    .line 168
    .end local v0           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
