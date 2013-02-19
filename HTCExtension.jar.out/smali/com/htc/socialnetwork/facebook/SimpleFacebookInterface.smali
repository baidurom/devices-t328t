.class Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;
.super Ljava/lang/Object;
.source "SimpleFacebookInterface.java"

# interfaces
.implements Lcom/htc/socialnetwork/Constants;


# static fields
.field private static final ALBUM_PRIVACY_EVERYONE:Ljava/lang/String; = "everyone"

.field private static final ALBUM_PRIVACY_FRIENDS:Ljava/lang/String; = "friends"

.field private static final ALBUM_PRIVACY_FRIENDS_OF_FRIENDS:Ljava/lang/String; = "friends-of-friends"

.field private static final AUTH_URL:Ljava/lang/String; = "http://m.facebook.com/auth.php?"

.field private static final BIRTHDAY:Ljava/lang/String; = "birthday_date"

.field private static final CITY:Ljava/lang/String; = "city"

.field private static final CREATOR:Ljava/lang/String; = "creator"

.field private static final CURRENT_LOCATION:Ljava/lang/String; = "current_location"

.field private static final DESCRIPTION:Ljava/lang/String; = "description"

.field private static final EID:Ljava/lang/String; = "eid"

.field private static final EMPTY:Ljava/lang/String; = ""

.field private static final END_TIME:Ljava/lang/String; = "end_time"

.field private static final EVENTS_GET:Ljava/lang/String; = "facebook.events.get"

.field private static final EVENTS_GETMEMBERS:Ljava/lang/String; = "facebook.events.getMembers"

.field private static final FB_HTTPS_URL:Ljava/lang/String; = "https://api.facebook.com/restserver.php"

.field private static final FB_HTTP_URL:Ljava/lang/String; = "http://api.facebook.com/restserver.php"

.field private static final FIRSTNAME:Ljava/lang/String; = "first_name"

.field private static final FQL_QUERY:Ljava/lang/String; = "facebook.fql.query"

.field private static final GROUPID:Ljava/lang/String; = "gid"

.field private static final GROUPS_GET:Ljava/lang/String; = "facebook.groups.get"

.field private static final LASTNAME:Ljava/lang/String; = "last_name"

.field private static final LOCATION:Ljava/lang/String; = "location"

.field private static final LOG_TAG:Ljava/lang/String; = "SocialNetwork-SimpleFacebookInterface"

.field private static final MESSAGE:Ljava/lang/String; = "message"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final NOTES_COUNT:Ljava/lang/String; = "notes_count"

.field private static final PAGES_GETINFO:Ljava/lang/String; = "facebook.pages.getInfo"

.field private static final PAGE_ID:Ljava/lang/String; = "page_id"

.field private static final PIC_BIG:Ljava/lang/String; = "pic_big"

.field private static final PIC_SQUARE:Ljava/lang/String; = "pic_square"

.field private static final PRIVACY_EVERYONE:I = 0x0

.field private static final PRIVACY_FRIENDS:I = 0x1

.field private static final PRIVACY_FRIENDS_OF_FRIENDS:I = 0x2

.field private static final PROFILE_UPDATE_TIME:Ljava/lang/String; = "profile_update_time"

.field private static final PROFILE_URL:Ljava/lang/String; = "profile_url"

.field private static final START_TIME:Ljava/lang/String; = "start_time"

.field private static final STATUS:Ljava/lang/String; = "status"

.field private static final TIME:Ljava/lang/String; = "time"

.field private static final UID:Ljava/lang/String; = "uid"

.field private static final UPDATE_TIME:Ljava/lang/String; = "update_time"

.field private static final USERS_GETINFO:Ljava/lang/String; = "facebook.users.getInfo"

.field private static final VERSION:Ljava/lang/String; = "1.0"

.field private static final WALL_COUNT:Ljava/lang/String; = "wall_count"

.field private static final WORK_HISTORY:Ljava/lang/String; = "work_history"

.field private static final fields:Ljava/lang/String; = "uid , first_name , last_name , name , current_location , notes_count , pic_big , pic_square , profile_url , profile_update_time , status , wall_count , work_history , birthday_date"

.field static localSession_key:Ljava/lang/String; = null

.field private static final page_fields:Ljava/lang/String; = "page_id , name , pic_big , pic_square"


# instance fields
.field private api_key:Ljava/lang/String;

.field private init_secret:Ljava/lang/String;

.field private mClient:Lorg/apache/http/client/HttpClient;

.field privacyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private session_key:Ljava/lang/String;

.field private session_secret:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "api_key"
    .parameter "init_secret"

    .prologue
    const/4 v0, 0x0

    .line 283
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->api_key:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->init_secret:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_key:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_secret:Ljava/lang/String;

    .line 284
    iput-object p1, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->api_key:Ljava/lang/String;

    .line 285
    iput-object p2, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->init_secret:Ljava/lang/String;

    .line 286
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->privacyMap:Ljava/util/HashMap;

    .line 287
    iget-object v0, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->privacyMap:Ljava/util/HashMap;

    const-string v1, "everyone"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object v0, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->privacyMap:Ljava/util/HashMap;

    const-string v1, "friends"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v0, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->privacyMap:Ljava/util/HashMap;

    const-string v1, "friends-of-friends"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    invoke-direct {p0}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->initHttpClient()V

    .line 292
    return-void
.end method

.method public static generateSignature(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
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
    .line 188
    .local p0, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 189
    .local v5, sigBuf:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 190
    .local v3, keys:[Ljava/lang/Object;
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 192
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/Object;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v2, v0, v1

    .line 193
    .local v2, k:Ljava/lang/Object;
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 194
    .local v6, value:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    .end local v2           #k:Ljava/lang/Object;
    .end local v6           #value:Ljava/lang/String;
    :cond_0
    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private getParseResult(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 11
    .parameter "resp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 504
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 506
    .local v6, sb:Ljava/lang/StringBuffer;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 508
    .local v5, page:Lorg/apache/http/HttpEntity;
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    const-string v9, "gzip"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 510
    const-string v8, "SocialNetwork-SimpleFacebookInterface"

    const-string v9, "GZIP encoded stream"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/util/zip/GZIPInputStream;

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    const-string v9, "UTF-8"

    invoke-direct {v3, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 519
    .local v3, isr:Ljava/io/InputStreamReader;
    :goto_0
    const/16 v8, 0x1000

    new-array v0, v8, [C

    .line 522
    .local v0, buff:[C
    :goto_1
    const/16 v8, 0xfff

    invoke-virtual {v3, v0, v10, v8}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v1

    .local v1, cnt:I
    if-lez v1, :cond_1

    .line 523
    invoke-virtual {v6, v0, v10, v1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 515
    .end local v0           #buff:[C
    .end local v1           #cnt:I
    .end local v3           #isr:Ljava/io/InputStreamReader;
    :cond_0
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-direct {v3, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 516
    .restart local v3       #isr:Ljava/io/InputStreamReader;
    const-string v8, "SocialNetwork-SimpleFacebookInterface"

    const-string v9, "NO GZIP"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 526
    .restart local v0       #buff:[C
    .restart local v1       #cnt:I
    :cond_1
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 527
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 528
    .local v7, status:I
    const/16 v8, 0xc8

    if-eq v7, v8, :cond_2

    .line 529
    new-instance v8, Lcom/htc/socialnetwork/SocialNetworkException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Http Error : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 532
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 536
    .local v2, content:Ljava/lang/String;
    const-string/jumbo v8, "{}"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 537
    const/4 v4, 0x0

    .line 550
    :goto_2
    return-object v4

    .line 538
    :cond_3
    const-string/jumbo v8, "{"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string/jumbo v8, "}"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 539
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 540
    .local v4, obj:Lorg/json/JSONObject;
    invoke-static {v4}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->isError(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 542
    .end local v4           #obj:Lorg/json/JSONObject;
    :cond_4
    const-string v8, "["

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "]"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 543
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 544
    :cond_5
    const-string v8, "<"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, ">"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 545
    new-instance v8, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v9, 0x7e1

    invoke-direct {v8, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v8

    .line 546
    :cond_6
    const-string v8, "\""

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "\""

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 547
    const/4 v8, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 548
    goto :goto_2

    :cond_7
    move-object v4, v2

    .line 550
    goto :goto_2
.end method

.method private initHttpClient()V
    .locals 8

    .prologue
    const v5, 0xea60

    .line 296
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 297
    .local v1, params:Lorg/apache/http/params/HttpParams;
    sget-object v4, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 298
    const/4 v4, 0x1

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 299
    const-string v4, "HTC-Android/1.0"

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 301
    invoke-static {v1, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 302
    invoke-static {v1, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 304
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 305
    .local v2, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v6

    const/16 v7, 0x50

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 307
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    .line 308
    .local v3, sslSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    new-instance v4, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;

    invoke-direct {v4}, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;-><init>()V

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 309
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "https"

    const/16 v6, 0x1bb

    invoke-direct {v4, v5, v3, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 310
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 313
    .local v0, manager:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v4, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->mClient:Lorg/apache/http/client/HttpClient;

    .line 314
    return-void
.end method

.method private static isError(Lorg/json/JSONObject;)V
    .locals 6
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 215
    :try_start_0
    const-string v4, "error_code"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 217
    .local v1, error_code:I
    const-string v4, "error_msg"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, error_msg:Ljava/lang/String;
    move v3, v1

    .line 220
    .local v3, resCode:I
    sparse-switch v1, :sswitch_data_0

    .line 233
    :goto_0
    new-instance v4, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v5, 0x7d6

    invoke-direct {v4, v5, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 234
    .end local v1           #error_code:I
    .end local v2           #error_msg:Ljava/lang/String;
    .end local v3           #resCode:I
    :catch_0
    move-exception v0

    .line 235
    .local v0, e:Lorg/json/JSONException;
    return-void

    .line 223
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #error_code:I
    .restart local v2       #error_msg:Ljava/lang/String;
    .restart local v3       #resCode:I
    :sswitch_0
    new-instance v4, Lcom/htc/socialnetwork/AuthenticationException;

    invoke-direct {v4}, Lcom/htc/socialnetwork/AuthenticationException;-><init>()V

    throw v4

    .line 226
    :sswitch_1
    new-instance v4, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v5, 0x1ce9

    invoke-direct {v4, v5, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :sswitch_2
    const/16 v3, 0x1d1d

    goto :goto_0

    .line 220
    nop

    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_0
        0x191 -> :sswitch_1
        0x1c5 -> :sswitch_2
    .end sparse-switch
.end method

.method public static join(Ljava/lang/CharSequence;[J)Ljava/lang/String;
    .locals 8
    .parameter "delimiter"
    .parameter "tokens"

    .prologue
    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 246
    .local v1, firstTime:Z
    move-object v0, p1

    .local v0, arr$:[J
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-wide v5, v0, v2

    .line 247
    .local v5, token:J
    if-eqz v1, :cond_0

    .line 248
    const/4 v1, 0x0

    .line 252
    :goto_1
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 246
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 254
    .end local v5           #token:J
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static join(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "delimiter"
    .parameter "tokens"

    .prologue
    .line 262
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 264
    .local v1, firstTime:Z
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 265
    .local v5, token:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 266
    const/4 v1, 0x0

    .line 270
    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    :cond_0
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 272
    .end local v5           #token:Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "src"

    .prologue
    const/4 v9, 0x0

    .line 153
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 156
    .local v2, digestBuf:Ljava/lang/StringBuffer;
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 157
    .local v6, md:Ljava/security/MessageDigest;
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 158
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 160
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 161
    .local v3, digestbytes:[B
    move-object v0, v3

    .local v0, arr$:[B
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-byte v1, v0, v4

    .line 162
    .local v1, b:B
    and-int/lit8 v10, v1, 0x7f

    if-gez v1, :cond_0

    const/16 v8, 0x80

    :goto_1
    add-int v7, v10, v8

    .line 163
    .local v7, value:I
    const/16 v8, 0x10

    if-ge v7, v8, :cond_1

    const-string v8, "0"

    :goto_2
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v7           #value:I
    :cond_0
    move v8, v9

    .line 162
    goto :goto_1

    .line 163
    .restart local v7       #value:I
    :cond_1
    const-string v8, ""
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 166
    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v3           #digestbytes:[B
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #md:Ljava/security/MessageDigest;
    .end local v7           #value:I
    :catch_0
    move-exception v8

    .line 170
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private setUserData(Lcom/htc/socialnetwork/User;Lorg/json/JSONObject;)V
    .locals 15
    .parameter "user"
    .parameter "jsonObj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1711
    const-string v11, "uid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "uid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1712
    const-string v11, "uid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/htc/socialnetwork/User;->setId(Ljava/lang/String;)V

    .line 1714
    :cond_0
    const-string v11, "page_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "page_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1715
    const-string v11, "page_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/htc/socialnetwork/User;->setId(Ljava/lang/String;)V

    .line 1718
    :cond_1
    const-string v11, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1719
    const-string v11, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/htc/socialnetwork/User;->setUserName(Ljava/lang/String;)V

    .line 1720
    const-string v11, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/htc/socialnetwork/User;->setFullName(Ljava/lang/String;)V

    .line 1723
    :cond_2
    const-string v11, "first_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "first_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1724
    const-string v11, "first_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/htc/socialnetwork/User;->setFirstName(Ljava/lang/String;)V

    .line 1726
    :cond_3
    const-string v11, "last_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "last_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1727
    const-string v11, "last_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/htc/socialnetwork/User;->setLastName(Ljava/lang/String;)V

    .line 1729
    :cond_4
    const-string v11, "pic_square"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "pic_square"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1730
    const-string v11, "pic_square"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/htc/socialnetwork/User;->setBuddyIconURL(Ljava/lang/String;)V

    .line 1732
    :cond_5
    const-string v11, "pic_big"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string v11, "pic_big"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1733
    const-string v11, "pic_big"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/htc/socialnetwork/User;->setLargeBuddyIconURL(Ljava/lang/String;)V

    .line 1735
    :cond_6
    const-string v11, "profile_url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "profile_url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1736
    const-string v11, "profile_url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/htc/socialnetwork/User;->setProfileUrl(Ljava/lang/String;)V

    .line 1738
    :cond_7
    const/4 v1, 0x0

    .line 1739
    .local v1, content:Ljava/lang/String;
    const-string v11, "profile_update_time"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    const-string v11, "profile_update_time"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1741
    const-string v11, "profile_update_time"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1742
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "null"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 1744
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Lcom/htc/socialnetwork/User;->setProfileUpdateTime(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1751
    :cond_8
    :goto_0
    const-string v11, "birthday_date"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "birthday_date"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1752
    const-string v11, "birthday_date"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1753
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "null"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 1754
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/htc/socialnetwork/User;->setBirthday(Ljava/lang/String;)V

    .line 1757
    :cond_9
    const/4 v7, 0x0

    .line 1758
    .local v7, obj:Ljava/lang/Object;
    const-string v11, "status"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_b

    const-string v11, "status"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1759
    const-string v11, "status"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 1760
    if-eqz v7, :cond_b

    instance-of v11, v7, Lorg/json/JSONObject;

    if-eqz v11, :cond_b

    move-object v8, v7

    .line 1761
    check-cast v8, Lorg/json/JSONObject;

    .line 1762
    .local v8, statusObj:Lorg/json/JSONObject;
    const-string v11, "message"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_a

    const-string v11, "message"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1763
    const-string v11, "message"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/htc/socialnetwork/User;->setStatus(Ljava/lang/String;)V

    .line 1764
    :cond_a
    const-string v11, "time"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_b

    const-string v11, "time"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1766
    :try_start_1
    const-string v11, "time"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Lcom/htc/socialnetwork/User;->setStatusUpdateTime(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1774
    .end local v7           #obj:Ljava/lang/Object;
    .end local v8           #statusObj:Lorg/json/JSONObject;
    :cond_b
    :goto_1
    const-string v11, "current_location"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_c

    const-string v11, "current_location"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1775
    const-string v11, "current_location"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 1776
    .restart local v7       #obj:Ljava/lang/Object;
    if-eqz v7, :cond_c

    instance-of v11, v7, Lorg/json/JSONObject;

    if-eqz v11, :cond_c

    move-object v6, v7

    .line 1777
    check-cast v6, Lorg/json/JSONObject;

    .line 1778
    .local v6, locationObj:Lorg/json/JSONObject;
    const-string v11, "city"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_c

    const-string v11, "city"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1779
    const-string v11, "city"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/htc/socialnetwork/User;->setCurrentLocation(Ljava/lang/String;)V

    .line 1783
    .end local v6           #locationObj:Lorg/json/JSONObject;
    .end local v7           #obj:Ljava/lang/Object;
    :cond_c
    const-string v11, "work_history"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_d

    const-string v11, "work_history"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 1784
    const-string v11, "work_history"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 1785
    .local v9, work_his:Ljava/lang/Object;
    if-eqz v9, :cond_d

    instance-of v11, v9, Lorg/json/JSONArray;

    if-eqz v11, :cond_d

    move-object v4, v9

    .line 1786
    check-cast v4, Lorg/json/JSONArray;

    .line 1788
    .local v4, jsWork_his:Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_d

    .line 1789
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1790
    .local v3, jsWork:Lorg/json/JSONObject;
    const-string v11, "location"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 1791
    const-string v11, "location"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1792
    .local v5, location:Lorg/json/JSONObject;
    const-string v11, "city"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 1793
    const-string v11, "city"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1795
    .local v10, work_location:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/htc/socialnetwork/User;->setWorkLocation(Ljava/lang/String;)V

    .line 1803
    .end local v3           #jsWork:Lorg/json/JSONObject;
    .end local v4           #jsWork_his:Lorg/json/JSONArray;
    .end local v5           #location:Lorg/json/JSONObject;
    .end local v9           #work_his:Ljava/lang/Object;
    .end local v10           #work_location:Ljava/lang/String;
    :cond_d
    const/4 v1, 0x0

    .line 1804
    const/4 v7, 0x0

    .line 1805
    .restart local v7       #obj:Ljava/lang/Object;
    return-void

    .line 1745
    .end local v7           #obj:Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 1746
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v11, "SocialNetwork-SimpleFacebookInterface"

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1768
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local v7       #obj:Ljava/lang/Object;
    .restart local v8       #statusObj:Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    .line 1769
    .restart local v2       #e:Ljava/lang/NumberFormatException;
    const-string v11, "SocialNetwork-SimpleFacebookInterface"

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method


# virtual methods
.method public addPhotoComment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "pid"
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 1957
    const-string v3, "SocialNetwork-SimpleFacebookInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start add comment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    const-string v0, "facebook.photos.addComment"

    .line 1959
    .local v0, addComment:Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1960
    .local v1, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "pid"

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1961
    const-string v3, "body"

    invoke-virtual {v1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1962
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v3}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doGet(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1963
    .local v2, result:Ljava/lang/String;
    const-string v3, "SocialNetwork-SimpleFacebookInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "result "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    return-void
.end method

.method public cleanSession()V
    .locals 1

    .prologue
    .line 644
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_secret:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_key:Ljava/lang/String;

    .line 645
    return-void
.end method

.method public createAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .parameter "name"
    .parameter "description"
    .parameter "location"
    .parameter "visible"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x7d0

    .line 1268
    const-string v0, "facebook.photos.createAlbum"

    .line 1269
    .local v0, create_album:Ljava/lang/String;
    const-string v4, ""

    .line 1270
    .local v4, privacySetting:Ljava/lang/String;
    packed-switch p4, :pswitch_data_0

    .line 1281
    :goto_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1283
    .local v3, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 1284
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const-string v6, "Album name should be specified"

    invoke-direct {v5, v7, v6}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 1272
    .end local v3           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_0
    const-string v4, "everyone"

    .line 1273
    goto :goto_0

    .line 1275
    :pswitch_1
    const-string v4, "friends"

    .line 1276
    goto :goto_0

    .line 1278
    :pswitch_2
    const-string v4, "friends-of-friends"

    goto :goto_0

    .line 1287
    .restart local v3       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v5, "name"

    invoke-virtual {v3, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    if-eqz p2, :cond_1

    .line 1289
    const-string v5, "description"

    invoke-virtual {v3, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    :cond_1
    if-eqz p3, :cond_2

    .line 1291
    const-string v5, "location"

    invoke-virtual {v3, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    :cond_2
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1293
    const-string v5, "visible"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    :cond_3
    const-string v5, "facebook.photos.createAlbum"

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v3, v6}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doGet(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 1296
    .local v2, obj:Lorg/json/JSONObject;
    if-nez v2, :cond_4

    .line 1297
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const-string v6, "Create album error"

    invoke-direct {v5, v7, v6}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 1300
    :cond_4
    :try_start_0
    const-string v5, "aid"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 1301
    :catch_0
    move-exception v1

    .line 1302
    .local v1, e:Lorg/json/JSONException;
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const-string v6, "JSONException"

    invoke-direct {v5, v7, v6, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 1270
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected doGet(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;
    .locals 16
    .parameter "method"
    .parameter
    .parameter "useSSL"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 358
    .local p2, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 359
    .local v2, builder:Landroid/net/Uri$Builder;
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    .line 361
    .local v9, paramTmp:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v13, "method"

    move-object/from16 v0, p1

    invoke-virtual {v9, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string v13, "api_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->api_key:Ljava/lang/String;

    invoke-virtual {v9, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v13, "v"

    const-string v14, "1.0"

    invoke-virtual {v9, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v13, "format"

    const-string v14, "json"

    invoke-virtual {v9, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_key:Ljava/lang/String;

    if-eqz v13, :cond_1

    .line 367
    const-string v13, "session_key"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_key:Ljava/lang/String;

    invoke-virtual {v9, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_secret:Ljava/lang/String;

    if-eqz v13, :cond_2

    .line 376
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_secret:Ljava/lang/String;

    .line 380
    .local v11, secret:Ljava/lang/String;
    :goto_1
    invoke-static {v9, v11}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->generateSignature(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 382
    .local v12, sig:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v13

    new-array v7, v13, [Ljava/lang/String;

    .line 383
    .local v7, keys:[Ljava/lang/String;
    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 385
    move-object v1, v7

    .local v1, arr$:[Ljava/lang/String;
    array-length v8, v1

    .local v8, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_2
    if-ge v5, v8, :cond_3

    aget-object v6, v1, v5

    .line 386
    .local v6, key:Ljava/lang/String;
    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v2, v6, v13}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 385
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 369
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #key:Ljava/lang/String;
    .end local v7           #keys:[Ljava/lang/String;
    .end local v8           #len$:I
    .end local v11           #secret:Ljava/lang/String;
    .end local v12           #sig:Ljava/lang/String;
    :cond_1
    const-string v13, "facebook.auth.expireSession"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 370
    const-string v13, "session_key"

    sget-object v14, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->localSession_key:Ljava/lang/String;

    invoke-virtual {v9, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 378
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->init_secret:Ljava/lang/String;

    .restart local v11       #secret:Ljava/lang/String;
    goto :goto_1

    .line 389
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v5       #i$:I
    .restart local v7       #keys:[Ljava/lang/String;
    .restart local v8       #len$:I
    .restart local v12       #sig:Ljava/lang/String;
    :cond_3
    const-string v13, "sig"

    invoke-virtual {v2, v13, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 390
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_4

    const-string v13, "https://api.facebook.com/restserver.php"

    :goto_3
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v13}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 394
    .local v4, get:Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    const-string v13, "Accept-Encoding"

    const-string v14, "gzip"

    invoke-virtual {v4, v13, v14}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->mClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v13, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 396
    .local v10, r:Lorg/apache/http/HttpResponse;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getParseResult(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v13

    return-object v13

    .line 390
    .end local v4           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v10           #r:Lorg/apache/http/HttpResponse;
    :cond_4
    const-string v13, "http://api.facebook.com/restserver.php"

    goto :goto_3

    .line 397
    .restart local v4       #get:Lorg/apache/http/client/methods/HttpGet;
    :catch_0
    move-exception v3

    .line 398
    .local v3, e:Ljava/net/UnknownHostException;
    new-instance v13, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v14, 0x7e5

    invoke-direct {v13, v14, v3}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v13

    .line 399
    .end local v3           #e:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v3

    .line 400
    .local v3, e:Lorg/apache/http/client/ClientProtocolException;
    new-instance v13, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v14, 0x7d6

    invoke-direct {v13, v14, v3}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v13

    .line 401
    .end local v3           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v3

    .line 402
    .local v3, e:Ljava/io/IOException;
    new-instance v13, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v14, 0x7d8

    invoke-direct {v13, v14, v3}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v13

    .line 403
    .end local v3           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 404
    .local v3, e:Lorg/json/JSONException;
    new-instance v13, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v14, 0x7d0

    const-string v15, "JSONException"

    invoke-direct {v13, v14, v15, v3}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 406
    .end local v3           #e:Lorg/json/JSONException;
    :catch_4
    move-exception v3

    .line 407
    .local v3, e:Ljava/util/ConcurrentModificationException;
    new-instance v13, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v14, 0x7e3

    const-string v15, "ConcurrentModificationException"

    invoke-direct {v13, v14, v15, v3}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v13
.end method

.method protected doPost(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;
    .locals 20
    .parameter "method"
    .parameter
    .parameter "useSSL"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 432
    .local p2, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 433
    .local v4, builder:Landroid/net/Uri$Builder;
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    .line 435
    .local v12, paramTmp:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v17, "method"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    const-string v17, "api_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->api_key:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    const-string v17, "v"

    const-string v18, "1.0"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const-string v17, "format"

    const-string v18, "json"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_key:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 441
    const-string v17, "session_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_key:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_secret:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 450
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_secret:Ljava/lang/String;

    .line 454
    .local v15, secret:Ljava/lang/String;
    :goto_1
    invoke-static {v12, v15}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->generateSignature(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 455
    .local v16, sig:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v10, v0, [Ljava/lang/String;

    .line 456
    .local v10, keys:[Ljava/lang/String;
    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 458
    move-object v3, v10

    .local v3, arr$:[Ljava/lang/String;
    array-length v11, v3

    .local v11, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_2
    if-ge v8, v11, :cond_3

    aget-object v9, v3, v8

    .line 459
    .local v9, key:Ljava/lang/String;
    invoke-virtual {v12, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v4, v9, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 458
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 443
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #key:Ljava/lang/String;
    .end local v10           #keys:[Ljava/lang/String;
    .end local v11           #len$:I
    .end local v15           #secret:Ljava/lang/String;
    .end local v16           #sig:Ljava/lang/String;
    :cond_1
    const-string v17, "facebook.auth.expireSession"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 444
    const-string v17, "session_key"

    sget-object v18, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->localSession_key:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 452
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->init_secret:Ljava/lang/String;

    .restart local v15       #secret:Ljava/lang/String;
    goto :goto_1

    .line 461
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v8       #i$:I
    .restart local v10       #keys:[Ljava/lang/String;
    .restart local v11       #len$:I
    .restart local v16       #sig:Ljava/lang/String;
    :cond_3
    const-string v17, "sig"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 462
    new-instance v13, Lorg/apache/http/client/methods/HttpPost;

    if-eqz p3, :cond_4

    const-string v17, "https://api.facebook.com/restserver.php"

    :goto_3
    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 463
    .local v13, post:Lorg/apache/http/client/methods/HttpPost;
    const-string v17, "Content-Type"

    const-string v18, "application/x-www-form-urlencoded"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :try_start_0
    const-string v17, "Accept-Encoding"

    const-string v18, "gzip"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 469
    .local v7, entityString:Ljava/lang/String;
    new-instance v6, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v6, v7}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 470
    .local v6, entity:Lorg/apache/http/HttpEntity;
    invoke-virtual {v13, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->mClient:Lorg/apache/http/client/HttpClient;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 472
    .local v14, r:Lorg/apache/http/HttpResponse;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getParseResult(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v17

    return-object v17

    .line 462
    .end local v6           #entity:Lorg/apache/http/HttpEntity;
    .end local v7           #entityString:Ljava/lang/String;
    .end local v13           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v14           #r:Lorg/apache/http/HttpResponse;
    :cond_4
    const-string v17, "http://api.facebook.com/restserver.php"

    goto :goto_3

    .line 473
    .restart local v13       #post:Lorg/apache/http/client/methods/HttpPost;
    :catch_0
    move-exception v5

    .line 474
    .local v5, e:Ljava/net/UnknownHostException;
    new-instance v17, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v18, 0x7e5

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v1, v5}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v17

    .line 475
    .end local v5           #e:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v5

    .line 476
    .local v5, e:Lorg/apache/http/client/ClientProtocolException;
    new-instance v17, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v18, 0x7d6

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v1, v5}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v17

    .line 477
    .end local v5           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v5

    .line 478
    .local v5, e:Ljava/io/UnsupportedEncodingException;
    new-instance v17, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v18, 0x7d8

    const-string v19, "UnsupportedEncodingException"

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 480
    .end local v5           #e:Ljava/io/UnsupportedEncodingException;
    :catch_3
    move-exception v5

    .line 481
    .local v5, e:Ljava/io/IOException;
    new-instance v17, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v18, 0x7d8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v1, v5}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v17

    .line 482
    .end local v5           #e:Ljava/io/IOException;
    :catch_4
    move-exception v5

    .line 483
    .local v5, e:Lorg/json/JSONException;
    new-instance v17, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v18, 0x7d0

    const-string v19, "JSONException"

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 485
    .end local v5           #e:Lorg/json/JSONException;
    :catch_5
    move-exception v5

    .line 486
    .local v5, e:Ljava/util/ConcurrentModificationException;
    new-instance v17, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v18, 0x7e3

    const-string v19, "ConcurrentModificationException"

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v5}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v17
.end method

.method public fql(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "query"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 1893
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1894
    .local v0, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "query"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1895
    const-string v1, "facebook.fql.query"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doPost(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getAlbum([Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .parameter "aids"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/socialnetwork/Album;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 1469
    .local p2, collection:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/socialnetwork/Album;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getAlbums([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Collection;)V

    .line 1470
    return-void
.end method

.method public getAlbums(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 2
    .parameter "uid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/socialnetwork/Album;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 1453
    .local p2, collection:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/socialnetwork/Album;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getAlbums([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Collection;)V

    .line 1454
    return-void
.end method

.method public getAlbums([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Collection;)V
    .locals 26
    .parameter "uids"
    .parameter "aids"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/socialnetwork/Album;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 1328
    .local p3, collection:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/socialnetwork/Album;>;"
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 1329
    new-instance v22, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v23, 0x7d0

    const-string v24, "Either uid or aids should be specified"

    invoke-direct/range {v22 .. v24}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v22

    .line 1332
    :cond_0
    if-nez p3, :cond_2

    .line 1438
    :cond_1
    return-void

    .line 1335
    :cond_2
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v22, "SELECT aid, cover_pid, owner, name, created, modified, description, location, link, size, visible FROM album WHERE "

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1339
    .local v18, query:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    if-lez v22, :cond_3

    .line 1340
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "owner IN ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->join(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1342
    :cond_3
    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v22, v0

    if-lez v22, :cond_5

    .line 1343
    if-eqz p1, :cond_4

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    if-lez v22, :cond_4

    .line 1344
    const-string v22, " AND "

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1346
    :cond_4
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "aid IN ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->join(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1348
    :cond_5
    const-string v22, " ORDER BY modified DESC"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1361
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->fql(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/json/JSONArray;

    .line 1362
    .local v10, jsonArray:Lorg/json/JSONArray;
    if-eqz v10, :cond_1

    .line 1365
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1366
    .local v4, coverIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/socialnetwork/Album;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_f

    .line 1368
    :try_start_0
    invoke-virtual {v10, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 1369
    .local v11, jsonObject:Lorg/json/JSONObject;
    new-instance v2, Lcom/htc/socialnetwork/Album;

    invoke-direct {v2}, Lcom/htc/socialnetwork/Album;-><init>()V

    .line 1370
    .local v2, album:Lcom/htc/socialnetwork/Album;
    const-string v22, "aid"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_6

    const-string v22, "aid"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 1371
    const-string v22, "aid"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/htc/socialnetwork/Album;->setId(Ljava/lang/String;)V

    .line 1372
    :cond_6
    const-string v22, "created"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_7

    const-string v22, "created"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 1373
    const-string v22, "created"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    mul-long v22, v22, v24

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1}, Lcom/htc/socialnetwork/Album;->setCreateTime(J)V

    .line 1375
    :cond_7
    const-string v22, "modified"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_8

    const-string v22, "modified"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 1377
    const-string v22, "modified"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    mul-long v22, v22, v24

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1}, Lcom/htc/socialnetwork/Album;->setUpdateTime(J)V

    .line 1379
    :cond_8
    const-string v22, "name"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_9

    const-string v22, "name"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 1380
    const-string v22, "name"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/htc/socialnetwork/Album;->setName(Ljava/lang/String;)V

    .line 1381
    :cond_9
    const-string v22, "size"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_a

    const-string v22, "size"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 1382
    const-string v22, "size"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/htc/socialnetwork/Album;->setPhotoAmount(I)V

    .line 1384
    :cond_a
    const-string v22, "cover_pid"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_b

    const-string v22, "cover_pid"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 1386
    const-string v22, "cover_pid"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/htc/socialnetwork/Album;->setCoverPhoto(Ljava/lang/String;)V

    .line 1387
    :cond_b
    const-string v22, "visible"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_e

    const-string v22, "visible"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->privacyMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    const-string v23, "visible"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    .line 1390
    .local v21, visible:Ljava/lang/Integer;
    if-eqz v21, :cond_d

    .line 1391
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/htc/socialnetwork/Album;->setVisibleType(I)V

    .line 1397
    .end local v21           #visible:Ljava/lang/Integer;
    :goto_1
    invoke-virtual {v2}, Lcom/htc/socialnetwork/Album;->getCoverPhoto()Ljava/lang/String;

    move-result-object v5

    .line 1398
    .local v5, coverPid:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/htc/socialnetwork/Album;->getPhotoAmount()I

    move-result v19

    .line 1399
    .local v19, size:I
    if-eqz v5, :cond_c

    if-lez v19, :cond_c

    .line 1400
    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1401
    :cond_c
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1366
    .end local v2           #album:Lcom/htc/socialnetwork/Album;
    .end local v5           #coverPid:Ljava/lang/String;
    .end local v11           #jsonObject:Lorg/json/JSONObject;
    .end local v19           #size:I
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1393
    .restart local v2       #album:Lcom/htc/socialnetwork/Album;
    .restart local v11       #jsonObject:Lorg/json/JSONObject;
    .restart local v21       #visible:Ljava/lang/Integer;
    :cond_d
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/htc/socialnetwork/Album;->setVisibleType(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 1402
    .end local v2           #album:Lcom/htc/socialnetwork/Album;
    .end local v11           #jsonObject:Lorg/json/JSONObject;
    .end local v21           #visible:Ljava/lang/Integer;
    :catch_0
    move-exception v14

    .line 1403
    .local v14, nfe:Ljava/lang/NumberFormatException;
    const-string v22, "SocialNetwork-SimpleFacebookInterface"

    const-string v23, "NumberFormatException at getAlbums"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1395
    .end local v14           #nfe:Ljava/lang/NumberFormatException;
    .restart local v2       #album:Lcom/htc/socialnetwork/Album;
    .restart local v11       #jsonObject:Lorg/json/JSONObject;
    :cond_e
    const/16 v22, 0x0

    :try_start_1
    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/htc/socialnetwork/Album;->setVisibleType(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 1404
    .end local v2           #album:Lcom/htc/socialnetwork/Album;
    .end local v11           #jsonObject:Lorg/json/JSONObject;
    :catch_1
    move-exception v6

    .line 1405
    .local v6, e:Lorg/json/JSONException;
    const-string v22, "SocialNetwork-SimpleFacebookInterface"

    const-string v23, "JSONException at getAlbums"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1406
    .end local v6           #e:Lorg/json/JSONException;
    :catch_2
    move-exception v6

    .line 1407
    .local v6, e:Ljava/lang/Exception;
    const-string v22, "SocialNetwork-SimpleFacebookInterface"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " at getAlbums"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1411
    .end local v6           #e:Ljava/lang/Exception;
    :cond_f
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v3, v0, [Ljava/lang/String;

    .line 1412
    .local v3, coverIdArray:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 1413
    .local v12, m:I
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1414
    .local v9, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_10

    .line 1415
    add-int/lit8 v13, v12, 0x1

    .end local v12           #m:I
    .local v13, m:I
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    aput-object v22, v3, v12

    move v12, v13

    .end local v13           #m:I
    .restart local v12       #m:I
    goto :goto_3

    .line 1417
    :cond_10
    array-length v0, v3

    move/from16 v22, v0

    if-lez v22, :cond_1

    .line 1418
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getPhoto(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 1419
    .local v16, photoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/Photo;>;"
    if-eqz v16, :cond_1

    .line 1424
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_11
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/socialnetwork/Photo;

    .line 1425
    .local v15, p:Lcom/htc/socialnetwork/Photo;
    invoke-virtual {v15}, Lcom/htc/socialnetwork/Photo;->getThumbUrl()Ljava/net/URL;

    move-result-object v20

    .line 1426
    .local v20, url:Ljava/net/URL;
    invoke-virtual {v15}, Lcom/htc/socialnetwork/Photo;->getPid()Ljava/lang/String;

    move-result-object v17

    .line 1427
    .local v17, pid:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/socialnetwork/Album;

    .line 1428
    .restart local v2       #album:Lcom/htc/socialnetwork/Album;
    if-eqz v2, :cond_11

    if-eqz v20, :cond_11

    .line 1430
    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/htc/socialnetwork/Album;->setCoverUrl(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public getComments(Ljava/lang/String;)Ljava/util/List;
    .locals 17
    .parameter "pid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Comment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 1990
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1991
    .local v9, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v13, "pid"

    move-object/from16 v0, p1

    invoke-virtual {v9, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1993
    :try_start_0
    const-string v13, "facebook.photos.getComments"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v9, v14}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doGet(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONArray;

    .line 1995
    .local v7, jsonArray:Lorg/json/JSONArray;
    if-nez v7, :cond_1

    .line 1996
    const/4 v2, 0x0

    .line 2011
    :cond_0
    return-object v2

    .line 1997
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1998
    .local v2, comments:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/Comment;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v5, v13, :cond_0

    .line 1999
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 2000
    .local v8, obj:Lorg/json/JSONObject;
    new-instance v1, Lcom/htc/socialnetwork/Comment;

    invoke-direct {v1}, Lcom/htc/socialnetwork/Comment;-><init>()V

    .line 2001
    .local v1, comment:Lcom/htc/socialnetwork/Comment;
    const-string v13, "body"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2002
    .local v10, text:Ljava/lang/String;
    const-string v13, "from"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2003
    .local v4, fromId:Ljava/lang/String;
    const-string v13, "time"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    mul-long v11, v13, v15

    .line 2004
    .local v11, time:J
    const-string v13, "pcid"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2005
    .local v6, id:Ljava/lang/String;
    invoke-virtual {v1, v6}, Lcom/htc/socialnetwork/Comment;->setId(Ljava/lang/String;)V

    .line 2006
    invoke-virtual {v1, v4}, Lcom/htc/socialnetwork/Comment;->setFromId(Ljava/lang/String;)V

    .line 2007
    invoke-virtual {v1, v10}, Lcom/htc/socialnetwork/Comment;->setText(Ljava/lang/String;)V

    .line 2008
    invoke-virtual {v1, v11, v12}, Lcom/htc/socialnetwork/Comment;->setTime(J)V

    .line 2009
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1998
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2012
    .end local v1           #comment:Lcom/htc/socialnetwork/Comment;
    .end local v2           #comments:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/Comment;>;"
    .end local v4           #fromId:Ljava/lang/String;
    .end local v5           #i:I
    .end local v6           #id:Ljava/lang/String;
    .end local v7           #jsonArray:Lorg/json/JSONArray;
    .end local v8           #obj:Lorg/json/JSONObject;
    .end local v10           #text:Ljava/lang/String;
    .end local v11           #time:J
    :catch_0
    move-exception v3

    .line 2013
    .local v3, e:Lorg/json/JSONException;
    new-instance v13, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v14, 0x7d0

    const-string v15, "JSONException"

    invoke-direct {v13, v14, v15, v3}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v13
.end method

.method public getContactInfo(Ljava/util/Collection;)V
    .locals 16
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/socialnetwork/User;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 1904
    .local p1, users:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/socialnetwork/User;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1905
    .local v8, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1906
    .local v12, userMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/socialnetwork/User;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1907
    .local v10, st:Ljava/lang/StringBuilder;
    const/4 v4, 0x1

    .line 1908
    .local v4, first:Z
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/socialnetwork/User;

    .line 1909
    .local v11, user:Lcom/htc/socialnetwork/User;
    if-eqz v4, :cond_0

    .line 1910
    const/4 v4, 0x0

    .line 1914
    :goto_1
    invoke-virtual {v11}, Lcom/htc/socialnetwork/User;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1915
    invoke-virtual {v11}, Lcom/htc/socialnetwork/User;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1912
    :cond_0
    const-string v14, ","

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1917
    .end local v11           #user:Lcom/htc/socialnetwork/User;
    :cond_1
    const-string v14, "uids"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1918
    const-string v14, "facebook.users.getContactInfo"

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v8, v15}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doGet(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONArray;

    .line 1920
    .local v7, jsonArray:Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v5, v14, :cond_6

    .line 1922
    :try_start_0
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 1923
    .local v13, userObj:Lorg/json/JSONObject;
    const-string v14, "uid"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 1924
    const-string v14, "uid"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1925
    .local v9, pid:Ljava/lang/String;
    invoke-virtual {v12, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/socialnetwork/User;

    .line 1926
    .restart local v11       #user:Lcom/htc/socialnetwork/User;
    invoke-virtual {v11}, Lcom/htc/socialnetwork/User;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1927
    const-string v14, "email"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 1928
    const-string v14, "email"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1929
    .local v2, email:Ljava/lang/Object;
    instance-of v14, v2, Lorg/json/JSONObject;

    if-eqz v14, :cond_5

    .line 1930
    move-object v0, v2

    check-cast v0, Lorg/json/JSONObject;

    move-object v3, v0

    .line 1931
    .local v3, emailObj:Lorg/json/JSONObject;
    const-string v14, "email"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 1932
    const-string v14, "email"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/htc/socialnetwork/User;->setEmailAddress(Ljava/lang/String;)V

    .line 1938
    .end local v2           #email:Ljava/lang/Object;
    .end local v3           #emailObj:Lorg/json/JSONObject;
    :cond_2
    :goto_3
    const-string v14, "cell"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 1939
    const-string v14, "cell"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/htc/socialnetwork/User;->setCellNumber(Ljava/lang/String;)V

    .line 1940
    :cond_3
    const-string v14, "phone"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 1941
    const-string v14, "phone"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/htc/socialnetwork/User;->setPhoneNumber(Ljava/lang/String;)V

    .line 1920
    .end local v9           #pid:Ljava/lang/String;
    .end local v11           #user:Lcom/htc/socialnetwork/User;
    .end local v13           #userObj:Lorg/json/JSONObject;
    :cond_4
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1935
    .restart local v2       #email:Ljava/lang/Object;
    .restart local v9       #pid:Ljava/lang/String;
    .restart local v11       #user:Lcom/htc/socialnetwork/User;
    .restart local v13       #userObj:Lorg/json/JSONObject;
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/htc/socialnetwork/User;->setEmailAddress(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1944
    .end local v2           #email:Ljava/lang/Object;
    .end local v9           #pid:Ljava/lang/String;
    .end local v11           #user:Lcom/htc/socialnetwork/User;
    .end local v13           #userObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 1945
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .line 1949
    .end local v1           #e:Lorg/json/JSONException;
    :cond_6
    return-void
.end method

.method public getDeepLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .parameter "url"
    .parameter "secret"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 1847
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1848
    .local v8, param:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "api_key"

    iget-object v10, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->api_key:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1849
    const-string v9, "t"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1850
    const-string v9, "uid"

    move-object/from16 v0, p3

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1851
    const-string v9, "url"

    move-object/from16 v0, p1

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1852
    const-string v9, "sig"

    move-object/from16 v0, p2

    invoke-static {v8, v0}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->generateSignature(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1854
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1857
    .local v7, pairs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1858
    .local v5, k:Ljava/lang/String;
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v10, v5, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1861
    .end local v5           #k:Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v3, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    .line 1862
    .local v3, entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1863
    .local v6, out:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v3, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 1864
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v9, "http://m.facebook.com/auth.php?"

    invoke-direct {v1, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1865
    .local v1, buf:Ljava/lang/StringBuffer;
    const-string v9, "UTF-8"

    invoke-virtual {v6, v9}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1868
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v9

    return-object v9

    .line 1869
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .end local v3           #entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v6           #out:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v2

    .line 1870
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 1871
    new-instance v9, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v10, 0x7d8

    const-string v11, "UnsuppoertedEncodingException"

    invoke-direct {v9, v10, v11, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 1873
    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v2

    .line 1874
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1875
    new-instance v9, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v10, 0x7d8

    const-string v11, "FileNotFoundException"

    invoke-direct {v9, v10, v11, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 1877
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 1878
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1879
    new-instance v9, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v10, 0x7d8

    const-string v11, "IOException"

    invoke-direct {v9, v10, v11, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v9
.end method

.method protected getEventByIds([JLjava/util/Collection;)V
    .locals 5
    .parameter "eids"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/socialnetwork/Event;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 925
    .local p2, events:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/socialnetwork/Event;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 943
    :cond_0
    :goto_0
    return-void

    .line 928
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT eid, name, description, location, start_time, end_time, creator, update_time FROM event WHERE eid IN ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-static {v4, p1}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->join(Ljava/lang/CharSequence;[J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) AND end_time >= start_time AND start_time < end_time"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 933
    .local v2, query:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->fql(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 934
    .local v1, o:Ljava/lang/Object;
    const/4 v0, 0x0

    .line 935
    .local v0, jsonArray:Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    .line 937
    instance-of v3, v1, Lorg/json/JSONArray;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 938
    check-cast v0, Lorg/json/JSONArray;

    .line 942
    invoke-virtual {p0, v0, p2}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->setEventData(Lorg/json/JSONArray;Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getEventMembers(J)[Ljava/lang/String;
    .locals 13
    .parameter "eid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 1017
    const-string v2, "facebook.events.getMembers"

    .line 1018
    .local v2, event_get:Ljava/lang/String;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1019
    .local v8, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "eid"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    const-string v9, "facebook.events.getMembers"

    invoke-virtual {p0, v9, v8, v12}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doGet(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 1023
    .local v5, jsonObject:Lorg/json/JSONObject;
    if-nez v5, :cond_1

    .line 1024
    new-array v6, v12, [Ljava/lang/String;

    .line 1038
    :cond_0
    :goto_0
    return-object v6

    .line 1027
    :cond_1
    :try_start_0
    const-string v9, "attending"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 1029
    .local v7, obj:Ljava/lang/Object;
    if-eqz v7, :cond_2

    instance-of v9, v7, Lorg/json/JSONArray;

    if-eqz v9, :cond_2

    .line 1030
    move-object v0, v7

    check-cast v0, Lorg/json/JSONArray;

    move-object v4, v0

    .line 1031
    .local v4, jsonArray:Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    new-array v6, v9, [Ljava/lang/String;

    .line 1032
    .local v6, member:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 1033
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v3

    .line 1032
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1037
    .end local v3           #i:I
    .end local v4           #jsonArray:Lorg/json/JSONArray;
    .end local v6           #member:[Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    new-array v6, v9, [Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v6       #member:[Ljava/lang/String;
    goto :goto_0

    .line 1039
    .end local v6           #member:[Ljava/lang/String;
    .end local v7           #obj:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 1040
    .local v1, e:Lorg/json/JSONException;
    new-instance v9, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v10, 0x7d0

    const-string v11, "JSONException"

    invoke-direct {v9, v10, v11, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v9
.end method

.method protected getEvents(Ljava/lang/String;JLjava/util/Collection;)V
    .locals 7
    .parameter "uid"
    .parameter "start_time"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/socialnetwork/Event;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 901
    .local p4, events:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/socialnetwork/Event;>;"
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 917
    :cond_0
    :goto_0
    return-void

    .line 904
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 905
    .local v2, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "start_time"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long v5, p2, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    const-string v3, "rsvp_status"

    const-string v4, "attending"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    const-string v3, "facebook.events.get"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doGet(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v1

    .line 908
    .local v1, o:Ljava/lang/Object;
    const/4 v0, 0x0

    .line 909
    .local v0, jsonArray:Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    .line 911
    instance-of v3, v1, Lorg/json/JSONArray;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 912
    check-cast v0, Lorg/json/JSONArray;

    .line 916
    invoke-virtual {p0, v0, p4}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->setEventData(Lorg/json/JSONArray;Ljava/util/Collection;)V

    goto :goto_0
.end method

.method protected getFriendIds(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 9
    .parameter "uid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 682
    .local p2, collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 706
    :cond_0
    return-void

    .line 684
    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 685
    .local v5, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "select uid from user where uid in (select uid2 from friend where uid1=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\') order by name"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 688
    .local v6, query:Ljava/lang/String;
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getSession()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    .line 689
    const-string v7, "uid"

    invoke-virtual {v5, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    :cond_2
    invoke-virtual {p0, v6}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->fql(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    .line 691
    .local v3, jsonArray:Lorg/json/JSONArray;
    if-eqz v3, :cond_0

    .line 694
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 696
    :try_start_0
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 697
    .local v4, jsonObj:Lorg/json/JSONObject;
    const-string v7, "uid"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "uid"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 698
    const-string v7, "uid"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 699
    .local v1, friendId:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 700
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    .end local v1           #friendId:Ljava/lang/String;
    .end local v4           #jsonObj:Lorg/json/JSONObject;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 702
    :catch_0
    move-exception v0

    .line 703
    .local v0, e:Lorg/json/JSONException;
    const-string v7, "SocialNetwork-SimpleFacebookInterface"

    const-string v8, "JSONException in getFriendIds"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected getFriendInvites(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 10
    .parameter "userId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 1145
    .local p2, invites:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1168
    :cond_0
    return-void

    .line 1147
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT uid, name FROM user WHERE uid IN ( SELECT uid_from FROM friend_request WHERE uid_to = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " )"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1149
    .local v5, query:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->fql(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    .line 1150
    .local v2, jsonArray:Lorg/json/JSONArray;
    if-eqz v2, :cond_0

    .line 1152
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 1154
    :try_start_0
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1155
    .local v3, jsonObject:Lorg/json/JSONObject;
    const/4 v6, 0x0

    .line 1156
    .local v6, uid:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1157
    .local v4, name:Ljava/lang/String;
    const-string v7, "uid"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "uid"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1158
    const-string v7, "uid"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1159
    :cond_2
    const-string v7, "name"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "name"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1160
    const-string v7, "name"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1161
    :cond_3
    invoke-virtual {p2, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1152
    .end local v3           #jsonObject:Lorg/json/JSONObject;
    .end local v4           #name:Ljava/lang/String;
    .end local v6           #uid:Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1162
    :catch_0
    move-exception v0

    .line 1163
    .local v0, e:Lorg/json/JSONException;
    const-string v7, "SocialNetwork-SimpleFacebookInterface"

    const-string v8, "JSONException at getFriendInvites"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1164
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 1165
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "SocialNetwork-SimpleFacebookInterface"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " at getFriendInvites"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getFriendList(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 751
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 758
    .local v1, friendList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/User;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "select uid, name, pic_square from user where uid in (select uid2 from friend where uid1=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\') order by name"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 762
    .local v5, query:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->fql(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    .line 763
    .local v3, jsonArray:Lorg/json/JSONArray;
    if-nez v3, :cond_1

    .line 782
    :cond_0
    return-object v1

    .line 767
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 768
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 769
    .local v4, jsonObj:Lorg/json/JSONObject;
    new-instance v6, Lcom/htc/socialnetwork/User;

    invoke-direct {v6}, Lcom/htc/socialnetwork/User;-><init>()V

    .line 770
    .local v6, user:Lcom/htc/socialnetwork/User;
    const-string v7, "uid"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/socialnetwork/User;->setId(Ljava/lang/String;)V

    .line 771
    const-string v7, "name"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/socialnetwork/User;->setUserName(Ljava/lang/String;)V

    .line 772
    const-string v7, "name"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/socialnetwork/User;->setFullName(Ljava/lang/String;)V

    .line 773
    const-string v7, "pic_square"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 774
    const-string v7, "pic_square"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/socialnetwork/User;->setBuddyIconURL(Ljava/lang/String;)V

    .line 775
    :cond_2
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 777
    .end local v4           #jsonObj:Lorg/json/JSONObject;
    .end local v6           #user:Lcom/htc/socialnetwork/User;
    :catch_0
    move-exception v0

    .line 778
    .local v0, e:Lorg/json/JSONException;
    new-instance v7, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v8, 0x7d0

    const-string v9, "JSONException"

    invoke-direct {v7, v8, v9, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public getFriendListWithContactData(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 794
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 801
    .local v1, friendList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/User;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "select uid , first_name , last_name , name , current_location , notes_count , pic_big , pic_square , profile_url , profile_update_time , status , wall_count , work_history , birthday_date from user where uid in (select uid2 from friend where uid1=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\') order by name"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 807
    .local v5, query:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->fql(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    .line 808
    .local v3, jsonArray:Lorg/json/JSONArray;
    if-nez v3, :cond_0

    .line 824
    :goto_0
    return-object v1

    .line 812
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    :try_start_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 813
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 814
    .local v4, jsonObj:Lorg/json/JSONObject;
    new-instance v6, Lcom/htc/socialnetwork/User;

    invoke-direct {v6}, Lcom/htc/socialnetwork/User;-><init>()V

    .line 815
    .local v6, user:Lcom/htc/socialnetwork/User;
    invoke-direct {p0, v6, v4}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->setUserData(Lcom/htc/socialnetwork/User;Lorg/json/JSONObject;)V

    .line 816
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 812
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 818
    .end local v4           #jsonObj:Lorg/json/JSONObject;
    .end local v6           #user:Lcom/htc/socialnetwork/User;
    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getContactInfo(Ljava/util/Collection;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 819
    :catch_0
    move-exception v0

    .line 820
    .local v0, e:Lorg/json/JSONException;
    new-instance v7, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v8, 0x7d0

    const-string v9, "JSONException"

    invoke-direct {v7, v8, v9, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public getFriends(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 717
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 718
    .local v5, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "select uid from user where uid in (select uid2 from friend where uid1=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\') order by name"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 721
    .local v6, query:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getSession()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    .line 722
    const-string v7, "uid"

    invoke-virtual {v5, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    :cond_0
    invoke-virtual {p0, v6}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->fql(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    .line 724
    .local v3, jsonArray:Lorg/json/JSONArray;
    if-nez v3, :cond_2

    .line 725
    const/4 v7, 0x0

    new-array v1, v7, [Ljava/lang/String;

    .line 739
    :cond_1
    return-object v1

    .line 727
    :cond_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    new-array v1, v7, [Ljava/lang/String;

    .line 730
    .local v1, friends:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 731
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 732
    .local v4, jsonObj:Lorg/json/JSONObject;
    const-string v7, "uid"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 734
    .end local v4           #jsonObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 735
    .local v0, e:Lorg/json/JSONException;
    new-instance v7, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v8, 0x7d0

    const-string v9, "JSONException"

    invoke-direct {v7, v8, v9, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public getGroupIds(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1112
    const-string v2, "facebook.groups.get"

    .line 1113
    .local v2, group_get:Ljava/lang/String;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1115
    .local v6, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 1116
    const-string v7, "uid"

    invoke-virtual {v6, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    :cond_0
    const-string v7, "facebook.groups.get"

    invoke-virtual {p0, v7, v6, v8}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doGet(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v5

    .line 1119
    .local v5, obj:Ljava/lang/Object;
    if-nez v5, :cond_2

    .line 1120
    new-array v1, v8, [Ljava/lang/String;

    .line 1131
    :cond_1
    return-object v1

    :cond_2
    move-object v4, v5

    .line 1122
    check-cast v4, Lorg/json/JSONArray;

    .line 1125
    .local v4, jsonArray:Lorg/json/JSONArray;
    :try_start_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    new-array v1, v7, [Ljava/lang/String;

    .line 1127
    .local v1, gids:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 1128
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "gid"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1127
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1132
    .end local v1           #gids:[Ljava/lang/String;
    .end local v3           #i:I
    :catch_0
    move-exception v0

    .line 1133
    .local v0, e:Lorg/json/JSONException;
    new-instance v7, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v8, 0x7d0

    const-string v9, "JSONException"

    invoke-direct {v7, v8, v9, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public getGroupInvites(Ljava/util/List;Ljava/util/Collection;)V
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/socialnetwork/GroupInvite;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 1061
    .local p1, gids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, invites:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/socialnetwork/GroupInvite;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1100
    :cond_0
    return-void

    .line 1063
    :cond_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1064
    .local v8, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 1065
    const-string v9, "gids"

    const-string v10, ","

    invoke-static {v10, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    const-string v9, "facebook.groups.get"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v8, v10}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doGet(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v7

    .line 1070
    .local v7, obj:Ljava/lang/Object;
    if-eqz v7, :cond_0

    .line 1073
    instance-of v9, v7, Lorg/json/JSONArray;

    if-eqz v9, :cond_0

    move-object v4, v7

    .line 1074
    check-cast v4, Lorg/json/JSONArray;

    .line 1075
    .local v4, jsonArray:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v2, v9, :cond_0

    .line 1077
    :try_start_0
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1078
    .local v5, jsonObj:Lorg/json/JSONObject;
    if-eqz v5, :cond_4

    .line 1079
    const/4 v1, 0x0

    .line 1080
    .local v1, gid:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1081
    .local v6, name:Ljava/lang/String;
    const-string v9, "gid"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "gid"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1082
    const-string v9, "gid"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1084
    :cond_2
    const-string v9, "name"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "name"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1085
    const-string v9, "name"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1087
    :cond_3
    if-eqz v1, :cond_4

    if-eqz v6, :cond_4

    .line 1088
    new-instance v3, Lcom/htc/socialnetwork/GroupInvite;

    invoke-direct {v3}, Lcom/htc/socialnetwork/GroupInvite;-><init>()V

    .line 1089
    .local v3, invite:Lcom/htc/socialnetwork/GroupInvite;
    invoke-virtual {v3, v1}, Lcom/htc/socialnetwork/GroupInvite;->setGroupId(Ljava/lang/String;)V

    .line 1090
    invoke-virtual {v3, v6}, Lcom/htc/socialnetwork/GroupInvite;->setGroupName(Ljava/lang/String;)V

    .line 1091
    invoke-interface {p2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1075
    .end local v1           #gid:Ljava/lang/String;
    .end local v3           #invite:Lcom/htc/socialnetwork/GroupInvite;
    .end local v6           #name:Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1094
    .end local v5           #jsonObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1095
    .local v0, e:Lorg/json/JSONException;
    new-instance v9, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v10, 0x7d0

    const-string v11, "JSONException"

    invoke-direct {v9, v10, v11, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v9
.end method

.method public getLikeList(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .parameter "pid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 2024
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "select user_id from like where object_id in (select object_id from photo where pid=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->fql(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 2028
    .local v4, result:Ljava/lang/Object;
    instance-of v5, v4, Lorg/json/JSONArray;

    if-eqz v5, :cond_0

    move-object v2, v4

    .line 2029
    check-cast v2, Lorg/json/JSONArray;

    .line 2030
    .local v2, jsonArry:Lorg/json/JSONArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 2031
    .local v3, likers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 2033
    :try_start_0
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "user_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2031
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2034
    :catch_0
    move-exception v0

    .line 2036
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 2040
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #i:I
    .end local v2           #jsonArry:Lorg/json/JSONArray;
    .end local v3           #likers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2042
    .restart local v3       #likers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    return-object v3
.end method

.method public getLoginUser()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 657
    const-string v1, "facebook.users.getLoggedInUser"

    .line 658
    .local v1, loginuser_get:Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 661
    .local v2, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v3, "facebook.users.getLoggedInUser"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v2, v4}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doGet(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Lcom/htc/socialnetwork/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    :goto_0
    return-object v3

    .line 662
    :catch_0
    move-exception v0

    .line 666
    .local v0, e:Lcom/htc/socialnetwork/AuthenticationException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getNotifications(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 20
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Update;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 1178
    .local p1, updates:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/Update;>;"
    .local p2, friendInvites:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, groupInvites:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p4, eventInvites:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v10, "facebook.notifications.get"

    .line 1179
    .local v10, notification_get:Ljava/lang/String;
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1183
    .local v12, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v17, "facebook.notifications.get"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v12, v2}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doGet(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    .line 1187
    .local v6, jsonObj:Lorg/json/JSONObject;
    if-eqz p2, :cond_0

    .line 1188
    const-string v17, "friend_requests"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 1189
    .local v11, obj:Ljava/lang/Object;
    if-eqz v11, :cond_0

    instance-of v0, v11, Lorg/json/JSONArray;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1190
    move-object v0, v11

    check-cast v0, Lorg/json/JSONArray;

    move-object v5, v0

    .line 1192
    .local v5, jsonArray:Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v4, v0, :cond_0

    .line 1193
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1194
    .local v14, request_from:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1192
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1199
    .end local v4           #i:I
    .end local v5           #jsonArray:Lorg/json/JSONArray;
    .end local v11           #obj:Ljava/lang/Object;
    .end local v14           #request_from:Ljava/lang/String;
    :cond_0
    if-eqz p3, :cond_1

    .line 1200
    const-string v17, "group_invites"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 1201
    .restart local v11       #obj:Ljava/lang/Object;
    if-eqz v11, :cond_1

    instance-of v0, v11, Lorg/json/JSONArray;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 1202
    move-object v0, v11

    check-cast v0, Lorg/json/JSONArray;

    move-object v5, v0

    .line 1204
    .restart local v5       #jsonArray:Lorg/json/JSONArray;
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v4, v0, :cond_1

    .line 1205
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1206
    .local v15, request_gid:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1204
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1211
    .end local v4           #i:I
    .end local v5           #jsonArray:Lorg/json/JSONArray;
    .end local v11           #obj:Ljava/lang/Object;
    .end local v15           #request_gid:Ljava/lang/String;
    :cond_1
    if-eqz p4, :cond_2

    .line 1212
    const-string v17, "event_invites"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 1213
    .restart local v11       #obj:Ljava/lang/Object;
    if-eqz v11, :cond_2

    instance-of v0, v11, Lorg/json/JSONArray;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 1214
    move-object v0, v11

    check-cast v0, Lorg/json/JSONArray;

    move-object v5, v0

    .line 1215
    .restart local v5       #jsonArray:Lorg/json/JSONArray;
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v4, v0, :cond_2

    .line 1216
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1217
    .local v13, request_eid:Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1215
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1223
    .end local v4           #i:I
    .end local v5           #jsonArray:Lorg/json/JSONArray;
    .end local v11           #obj:Ljava/lang/Object;
    .end local v13           #request_eid:Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_4

    .line 1225
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 1227
    .local v8, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_3
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1228
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1229
    .local v7, key:Ljava/lang/String;
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 1231
    .restart local v11       #obj:Ljava/lang/Object;
    instance-of v0, v11, Lorg/json/JSONObject;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 1232
    move-object v0, v11

    check-cast v0, Lorg/json/JSONObject;

    move-object v9, v0

    .line 1233
    .local v9, msgObject:Lorg/json/JSONObject;
    const-string v17, "unread"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 1234
    new-instance v16, Lcom/htc/socialnetwork/Update;

    invoke-direct/range {v16 .. v16}, Lcom/htc/socialnetwork/Update;-><init>()V

    .line 1235
    .local v16, update:Lcom/htc/socialnetwork/Update;
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/htc/socialnetwork/Update;->setType(Ljava/lang/String;)V

    .line 1236
    const-string v17, "unread"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lcom/htc/socialnetwork/Update;->setCount(I)V

    .line 1238
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1243
    .end local v6           #jsonObj:Lorg/json/JSONObject;
    .end local v7           #key:Ljava/lang/String;
    .end local v8           #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v9           #msgObject:Lorg/json/JSONObject;
    .end local v11           #obj:Ljava/lang/Object;
    .end local v16           #update:Lcom/htc/socialnetwork/Update;
    :catch_0
    move-exception v3

    .line 1244
    .local v3, e:Lorg/json/JSONException;
    new-instance v17, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v18, 0x7d0

    const-string v19, "JSONException"

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 1247
    .end local v3           #e:Lorg/json/JSONException;
    .restart local v6       #jsonObj:Lorg/json/JSONObject;
    :cond_4
    return-void
.end method

.method public getPageInfo(Ljava/lang/String;)Lcom/htc/socialnetwork/User;
    .locals 8
    .parameter "pageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1581
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1582
    .local v3, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 1583
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v6, 0x7e0

    const-string v7, "User ID should be specified"

    invoke-direct {v5, v6, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 1586
    :cond_0
    const-string v5, "page_ids"

    invoke-virtual {v3, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1587
    const-string v5, "fields"

    const-string v6, "page_id , name , pic_big , pic_square"

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1589
    const-string v5, "facebook.pages.getInfo"

    invoke-virtual {p0, v5, v3, v7}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doGet(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 1591
    .local v1, jsonArray:Lorg/json/JSONArray;
    if-nez v1, :cond_1

    .line 1592
    const/4 v4, 0x0

    .line 1598
    :goto_0
    return-object v4

    .line 1595
    :cond_1
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1596
    .local v2, jsonObj:Lorg/json/JSONObject;
    new-instance v4, Lcom/htc/socialnetwork/User;

    invoke-direct {v4}, Lcom/htc/socialnetwork/User;-><init>()V

    .line 1597
    .local v4, user:Lcom/htc/socialnetwork/User;
    invoke-direct {p0, v4, v2}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->setUserData(Lcom/htc/socialnetwork/User;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1599
    .end local v2           #jsonObj:Lorg/json/JSONObject;
    .end local v4           #user:Lcom/htc/socialnetwork/User;
    :catch_0
    move-exception v0

    .line 1600
    .local v0, e:Lorg/json/JSONException;
    const-string v5, "SocialNetwork-SimpleFacebookInterface"

    const-string v6, "get page error "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1601
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v6, 0x7d0

    const-string v7, "JSONException"

    invoke-direct {v5, v6, v7, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public getPhoto(JLjava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .parameter "subjId"
    .parameter "albumId"
    .parameter "photoIds"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Photo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 1485
    const-string v9, "facebook.photos.get"

    .line 1486
    .local v9, photo_get:Ljava/lang/String;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1488
    .local v8, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v12, -0x1

    cmp-long v12, p1, v12

    if-nez v12, :cond_1

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    array-length v12, v0

    if-nez v12, :cond_1

    .line 1490
    :cond_0
    new-instance v12, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v13, 0x7d0

    const-string v14, "Either subjId or aids or pids should be specified"

    invoke-direct {v12, v13, v14}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v12

    .line 1493
    :cond_1
    const-wide/16 v12, -0x1

    cmp-long v12, p1, v12

    if-eqz v12, :cond_2

    .line 1494
    const-string v12, "subj_id"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p1

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    :cond_2
    if-eqz p3, :cond_3

    .line 1496
    const-string v12, "aid"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1497
    :cond_3
    if-eqz p4, :cond_4

    move-object/from16 v0, p4

    array-length v12, v0

    if-lez v12, :cond_4

    .line 1498
    const-string v12, "pids"

    const-string v13, ","

    move-object/from16 v0, p4

    invoke-static {v13, v0}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->join(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1505
    :cond_4
    const-string v12, "facebook.photos.get"

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v8, v13}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doPost(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v2

    .line 1506
    .local v2, content:Ljava/lang/Object;
    if-eqz v2, :cond_d

    instance-of v12, v2, Lorg/json/JSONArray;

    if-eqz v12, :cond_d

    move-object v5, v2

    .line 1507
    check-cast v5, Lorg/json/JSONArray;

    .line 1508
    .local v5, jsonArray:Lorg/json/JSONArray;
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 1509
    .local v10, photos:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/Photo;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v4, v12, :cond_e

    .line 1511
    :try_start_0
    new-instance v11, Lcom/htc/socialnetwork/Photo;

    invoke-direct {v11}, Lcom/htc/socialnetwork/Photo;-><init>()V

    .line 1512
    .local v11, pht:Lcom/htc/socialnetwork/Photo;
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 1513
    .local v6, jsonObj:Lorg/json/JSONObject;
    const-string v12, "aid"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string v12, "aid"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1514
    const-string v12, "aid"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/htc/socialnetwork/Photo;->setAlbum(Ljava/lang/String;)V

    .line 1515
    :cond_5
    const-string v12, "caption"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "caption"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1516
    const-string v12, "caption"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/htc/socialnetwork/Photo;->setTitle(Ljava/lang/String;)V

    .line 1517
    :cond_6
    const-string v12, "src_big"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    const-string v12, "src_big"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v12

    if-eqz v12, :cond_7

    .line 1519
    :try_start_1
    new-instance v12, Ljava/net/URL;

    const-string v13, "src_big"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/htc/socialnetwork/Photo;->setUrl(Ljava/net/URL;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1523
    :cond_7
    :goto_1
    :try_start_2
    const-string v12, "src_small"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8

    const-string v12, "src_small"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v12

    if-eqz v12, :cond_8

    .line 1526
    :try_start_3
    new-instance v12, Ljava/net/URL;

    const-string v13, "src_small"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/htc/socialnetwork/Photo;->setThumbUrl(Ljava/net/URL;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1531
    :cond_8
    :goto_2
    :try_start_4
    const-string v12, "link"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_9

    const-string v12, "link"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v12

    if-eqz v12, :cond_9

    .line 1533
    :try_start_5
    new-instance v12, Ljava/net/URL;

    const-string v13, "link"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/htc/socialnetwork/Photo;->setLink(Ljava/net/URL;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1537
    :cond_9
    :goto_3
    :try_start_6
    const-string v12, "created"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_a

    const-string v12, "created"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1538
    const-string v12, "created"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Lcom/htc/socialnetwork/Photo;->setTime(J)V

    .line 1539
    :cond_a
    const-string v12, "modified"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_b

    const-string v12, "modified"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1540
    const-string v12, "modified"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Lcom/htc/socialnetwork/Photo;->setLastUpdateTime(J)V

    .line 1542
    :cond_b
    const-string v12, "pid"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_c

    const-string v12, "pid"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 1543
    const-string v12, "pid"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/htc/socialnetwork/Photo;->setPid(Ljava/lang/String;)V

    .line 1544
    :cond_c
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 1509
    .end local v6           #jsonObj:Lorg/json/JSONObject;
    .end local v11           #pht:Lcom/htc/socialnetwork/Photo;
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1545
    :catch_0
    move-exception v7

    .line 1546
    .local v7, nfe:Ljava/lang/NumberFormatException;
    const-string v12, "SocialNetwork-SimpleFacebookInterface"

    const-string v13, "NumberFormatException at getPhoto"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1547
    .end local v7           #nfe:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v3

    .line 1548
    .local v3, e:Lorg/json/JSONException;
    const-string v12, "SocialNetwork-SimpleFacebookInterface"

    const-string v13, "JSONException at getPhoto"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1549
    .end local v3           #e:Lorg/json/JSONException;
    :catch_2
    move-exception v3

    .line 1550
    .local v3, e:Ljava/lang/Exception;
    const-string v12, "SocialNetwork-SimpleFacebookInterface"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " at getPhoto"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1555
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #i:I
    .end local v5           #jsonArray:Lorg/json/JSONArray;
    .end local v10           #photos:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/Photo;>;"
    :cond_d
    const/4 v10, 0x0

    :cond_e
    return-object v10

    .line 1534
    .restart local v4       #i:I
    .restart local v5       #jsonArray:Lorg/json/JSONArray;
    .restart local v6       #jsonObj:Lorg/json/JSONObject;
    .restart local v10       #photos:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/Photo;>;"
    .restart local v11       #pht:Lcom/htc/socialnetwork/Photo;
    :catch_3
    move-exception v12

    goto/16 :goto_3

    .line 1528
    :catch_4
    move-exception v12

    goto/16 :goto_2

    .line 1520
    :catch_5
    move-exception v12

    goto/16 :goto_1
.end method

.method public getPhoto(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "albumId"
    .parameter "photoIds"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Photo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 1572
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getPhoto(JLjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getSession()Ljava/lang/String;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_key:Ljava/lang/String;

    return-object v0
.end method

.method protected getSessionSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_secret:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusList(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 836
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 837
    .local v6, statusList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/socialnetwork/Status;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 838
    .local v4, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "facebook.status.get"

    .line 840
    .local v7, status_get:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 841
    const-string v8, "uid"

    invoke-virtual {v4, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    :cond_0
    const-string v8, "facebook.status.get"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v4, v9}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doGet(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    .line 844
    .local v2, jsonArray:Lorg/json/JSONArray;
    if-nez v2, :cond_2

    .line 862
    :cond_1
    return-object v6

    .line 848
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 849
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 850
    .local v3, jsonObj:Lorg/json/JSONObject;
    new-instance v5, Lcom/htc/socialnetwork/Status;

    invoke-direct {v5}, Lcom/htc/socialnetwork/Status;-><init>()V

    .line 851
    .local v5, status:Lcom/htc/socialnetwork/Status;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    const-string v8, "message"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/htc/socialnetwork/Status;->setMessage(Ljava/lang/String;)V

    .line 853
    const-string v8, "time"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-virtual {v5, v8, v9}, Lcom/htc/socialnetwork/Status;->setTime(J)V

    .line 854
    const-string v8, "status_id"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/htc/socialnetwork/Status;->setStatusId(J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 857
    .end local v3           #jsonObj:Lorg/json/JSONObject;
    .end local v5           #status:Lcom/htc/socialnetwork/Status;
    :catch_0
    move-exception v0

    .line 858
    .local v0, e:Lorg/json/JSONException;
    new-instance v8, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v9, 0x7d0

    const-string v10, "JSONException"

    invoke-direct {v8, v9, v10, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method

.method public getUserByName(Ljava/lang/String;)[Lcom/htc/socialnetwork/User;
    .locals 9
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 1817
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "select uid , first_name , last_name , name , current_location , notes_count , pic_big , pic_square , profile_url , profile_update_time , status , wall_count , work_history , birthday_date from user where name=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->fql(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    .line 1820
    .local v2, jsonArray:Lorg/json/JSONArray;
    if-nez v2, :cond_1

    .line 1821
    const/4 v5, 0x0

    .line 1833
    :cond_0
    return-object v5

    .line 1823
    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v5, v6, [Lcom/htc/socialnetwork/User;

    .line 1826
    .local v5, users:[Lcom/htc/socialnetwork/User;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    array-length v6, v5

    if-ge v1, v6, :cond_0

    .line 1827
    new-instance v4, Lcom/htc/socialnetwork/User;

    invoke-direct {v4}, Lcom/htc/socialnetwork/User;-><init>()V

    .line 1828
    .local v4, user:Lcom/htc/socialnetwork/User;
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1829
    .local v3, jsonObj:Lorg/json/JSONObject;
    aput-object v4, v5, v1

    .line 1830
    invoke-direct {p0, v4, v3}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->setUserData(Lcom/htc/socialnetwork/User;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1826
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1835
    .end local v3           #jsonObj:Lorg/json/JSONObject;
    .end local v4           #user:Lcom/htc/socialnetwork/User;
    :catch_0
    move-exception v0

    .line 1836
    .local v0, e:Lorg/json/JSONException;
    new-instance v6, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v7, 0x7d0

    const-string v8, "JSONException"

    invoke-direct {v6, v7, v8, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public getUserInfo(Ljava/lang/String;)Lcom/htc/socialnetwork/User;
    .locals 8
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1612
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1613
    .local v3, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 1614
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v6, 0x7e0

    const-string v7, "User ID should be specified"

    invoke-direct {v5, v6, v7}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 1617
    :cond_0
    const-string v5, "uids"

    invoke-virtual {v3, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1618
    const-string v5, "fields"

    const-string v6, "uid , first_name , last_name , name , current_location , notes_count , pic_big , pic_square , profile_url , profile_update_time , status , wall_count , work_history , birthday_date"

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1620
    const-string v5, "facebook.users.getInfo"

    invoke-virtual {p0, v5, v3, v7}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doGet(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 1622
    .local v1, jsonArray:Lorg/json/JSONArray;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 1623
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getPageInfo(Ljava/lang/String;)Lcom/htc/socialnetwork/User;

    move-result-object v4

    .line 1630
    :goto_0
    return-object v4

    .line 1627
    :cond_2
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1628
    .local v2, jsonObj:Lorg/json/JSONObject;
    new-instance v4, Lcom/htc/socialnetwork/User;

    invoke-direct {v4}, Lcom/htc/socialnetwork/User;-><init>()V

    .line 1629
    .local v4, user:Lcom/htc/socialnetwork/User;
    invoke-direct {p0, v4, v2}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->setUserData(Lcom/htc/socialnetwork/User;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1631
    .end local v2           #jsonObj:Lorg/json/JSONObject;
    .end local v4           #user:Lcom/htc/socialnetwork/User;
    :catch_0
    move-exception v0

    .line 1632
    .local v0, e:Lorg/json/JSONException;
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v6, 0x7d0

    const-string v7, "JSONException"

    invoke-direct {v5, v6, v7, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method protected getUserInfo(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/socialnetwork/User;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 1643
    .local p1, uids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .local p2, users:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/socialnetwork/User;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1644
    .local v4, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 1645
    :cond_0
    new-instance v6, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v7, 0x7e0

    const-string v8, "User ID should be specified"

    invoke-direct {v6, v7, v8}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 1648
    :cond_1
    const-string v6, "uids"

    const-string v7, ","

    invoke-static {v7, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1649
    const-string v6, "fields"

    const-string v7, "uid , first_name , last_name , name , current_location , notes_count , pic_big , pic_square , profile_url , profile_update_time , status , wall_count , work_history , birthday_date"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1651
    const-string v6, "facebook.users.getInfo"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v4, v7}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doPost(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    .line 1653
    .local v2, jsonArray:Lorg/json/JSONArray;
    if-nez v2, :cond_2

    .line 1668
    :goto_0
    return-void

    .line 1656
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 1658
    :try_start_0
    new-instance v5, Lcom/htc/socialnetwork/User;

    invoke-direct {v5}, Lcom/htc/socialnetwork/User;-><init>()V

    .line 1659
    .local v5, user:Lcom/htc/socialnetwork/User;
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1660
    .local v3, jsonObj:Lorg/json/JSONObject;
    invoke-direct {p0, v5, v3}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->setUserData(Lcom/htc/socialnetwork/User;Lorg/json/JSONObject;)V

    .line 1661
    invoke-interface {p2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1656
    .end local v3           #jsonObj:Lorg/json/JSONObject;
    .end local v5           #user:Lcom/htc/socialnetwork/User;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1662
    :catch_0
    move-exception v0

    .line 1663
    .local v0, e:Lorg/json/JSONException;
    const-string v6, "SocialNetwork-SimpleFacebookInterface"

    const-string v7, "JSONException at getUserInfo(Collection<String> , Collection<User> )"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1667
    .end local v0           #e:Lorg/json/JSONException;
    :cond_3
    invoke-virtual {p0, p2}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getContactInfo(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getUserInfo([Ljava/lang/String;)[Lcom/htc/socialnetwork/User;
    .locals 10
    .parameter "userIds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 1676
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1678
    .local v4, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    array-length v7, p1

    if-nez v7, :cond_1

    .line 1679
    :cond_0
    new-instance v7, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v8, 0x7e0

    const-string v9, "User ID should be specified"

    invoke-direct {v7, v8, v9}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 1682
    :cond_1
    const-string v7, "uids"

    const-string v8, ","

    invoke-static {v8, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1683
    const-string v7, "fields"

    const-string v8, "uid , first_name , last_name , name , current_location , notes_count , pic_big , pic_square , profile_url , profile_update_time , status , wall_count , work_history , birthday_date"

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1685
    const-string v7, "facebook.users.getInfo"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v4, v8}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doGet(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    .line 1688
    .local v2, jsonArray:Lorg/json/JSONArray;
    if-nez v2, :cond_3

    .line 1689
    const/4 v6, 0x0

    .line 1701
    :cond_2
    return-object v6

    .line 1691
    :cond_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    new-array v6, v7, [Lcom/htc/socialnetwork/User;

    .line 1694
    .local v6, users:[Lcom/htc/socialnetwork/User;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    array-length v7, v6

    if-ge v1, v7, :cond_2

    .line 1695
    new-instance v5, Lcom/htc/socialnetwork/User;

    invoke-direct {v5}, Lcom/htc/socialnetwork/User;-><init>()V

    .line 1696
    .local v5, user:Lcom/htc/socialnetwork/User;
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1697
    .local v3, jsonObj:Lorg/json/JSONObject;
    aput-object v5, v6, v1

    .line 1698
    invoke-direct {p0, v5, v3}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->setUserData(Lcom/htc/socialnetwork/User;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1694
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1703
    .end local v3           #jsonObj:Lorg/json/JSONObject;
    .end local v5           #user:Lcom/htc/socialnetwork/User;
    :catch_0
    move-exception v0

    .line 1704
    .local v0, e:Lorg/json/JSONException;
    new-instance v7, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v8, 0x7d0

    const-string v9, "JSONException"

    invoke-direct {v7, v8, v9, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "userName"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 567
    const-string v0, "facebook.auth.login"

    .line 568
    .local v0, auth_method:Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 569
    .local v3, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object v4, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_secret:Ljava/lang/String;

    iput-object v4, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_key:Ljava/lang/String;

    .line 571
    const-string v5, "email"

    invoke-virtual {v3, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    const-string v5, "password"

    invoke-virtual {v3, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    :try_start_0
    const-string v5, "facebook.auth.login"

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v3, v6}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doGet(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 577
    .local v2, jsonObj:Lorg/json/JSONObject;
    if-nez v2, :cond_0

    .line 596
    .end local v2           #jsonObj:Lorg/json/JSONObject;
    :goto_0
    return-object v4

    .line 579
    .restart local v2       #jsonObj:Lorg/json/JSONObject;
    :cond_0
    const-string v5, "session_key"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_key:Ljava/lang/String;

    .line 580
    const-string v5, "secret"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_secret:Ljava/lang/String;

    .line 587
    invoke-virtual {p0}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getLoginUser()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/htc/socialnetwork/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 590
    .local v4, uid:Ljava/lang/String;
    goto :goto_0

    .line 591
    .end local v2           #jsonObj:Lorg/json/JSONObject;
    .end local v4           #uid:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 592
    .local v1, e:Lorg/json/JSONException;
    new-instance v5, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v6, 0x7d0

    const-string v7, "JSONException"

    invoke-direct {v5, v6, v7, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 594
    .end local v1           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 595
    .local v1, e:Lcom/htc/socialnetwork/AuthenticationException;
    const-string v5, "SocialNetwork-SimpleFacebookInterface"

    invoke-virtual {v1}, Lcom/htc/socialnetwork/AuthenticationException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public logout()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 624
    const-string v0, "facebook.auth.expireSession"

    .line 625
    .local v0, auth_expire:Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 628
    .local v1, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v2, "facebook.auth.expireSession"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v1, v3}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doGet(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/htc/socialnetwork/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    :goto_0
    iput-object v5, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_key:Ljava/lang/String;

    .line 634
    iput-object v5, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_secret:Ljava/lang/String;

    .line 636
    return v4

    .line 629
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected setEventData(Lorg/json/JSONArray;Ljava/util/Collection;)V
    .locals 9
    .parameter "jsonArray"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/socialnetwork/Event;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .local p2, events:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/socialnetwork/Event;>;"
    const-wide/16 v7, 0x3e8

    .line 952
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_8

    .line 954
    :try_start_0
    new-instance v1, Lcom/htc/socialnetwork/Event;

    invoke-direct {v1}, Lcom/htc/socialnetwork/Event;-><init>()V

    .line 955
    .local v1, evt:Lcom/htc/socialnetwork/Event;
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 956
    .local v3, jsonObj:Lorg/json/JSONObject;
    const-string v5, "eid"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "eid"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 957
    const-string v5, "eid"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/htc/socialnetwork/Event;->setId(J)V

    .line 961
    const-string v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 962
    const-string v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/socialnetwork/Event;->setName(Ljava/lang/String;)V

    .line 966
    :goto_1
    const-string v5, "creator"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "creator"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 967
    const-string v5, "creator"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/socialnetwork/Event;->setCreator(Ljava/lang/String;)V

    .line 971
    :goto_2
    const-string v5, "description"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "description"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 972
    const-string v5, "description"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/socialnetwork/Event;->setDescription(Ljava/lang/String;)V

    .line 975
    :goto_3
    const-string v5, "location"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "location"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 976
    const-string v5, "location"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/socialnetwork/Event;->setLocation(Ljava/lang/String;)V

    .line 980
    :goto_4
    const-string v5, "end_time"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "end_time"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 981
    const-string v5, "end_time"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    mul-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Lcom/htc/socialnetwork/Event;->setEndTime(J)V

    .line 983
    :cond_0
    const-string v5, "start_time"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "start_time"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 984
    const-string v5, "start_time"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    mul-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Lcom/htc/socialnetwork/Event;->setStartTime(J)V

    .line 987
    :cond_1
    const-string v5, "update_time"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "update_time"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 988
    const-string v5, "update_time"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    mul-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Lcom/htc/socialnetwork/Event;->setUpdateTime(J)V

    .line 991
    :cond_2
    invoke-virtual {v1}, Lcom/htc/socialnetwork/Event;->getId()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getEventMembers(J)[Ljava/lang/String;

    move-result-object v4

    .line 995
    .local v4, members:[Ljava/lang/String;
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/socialnetwork/Event;->setEventMembers(Ljava/util/List;)V

    .line 996
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 952
    .end local v1           #evt:Lcom/htc/socialnetwork/Event;
    .end local v3           #jsonObj:Lorg/json/JSONObject;
    .end local v4           #members:[Ljava/lang/String;
    :cond_3
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 964
    .restart local v1       #evt:Lcom/htc/socialnetwork/Event;
    .restart local v3       #jsonObj:Lorg/json/JSONObject;
    :cond_4
    const-string v5, ""

    invoke-virtual {v1, v5}, Lcom/htc/socialnetwork/Event;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_1

    .line 997
    .end local v1           #evt:Lcom/htc/socialnetwork/Event;
    .end local v3           #jsonObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 998
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v5, "SocialNetwork-SimpleFacebookInterface"

    const-string v6, "NumberFormatException at getEvents"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 969
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v1       #evt:Lcom/htc/socialnetwork/Event;
    .restart local v3       #jsonObj:Lorg/json/JSONObject;
    :cond_5
    :try_start_1
    const-string v5, ""

    invoke-virtual {v1, v5}, Lcom/htc/socialnetwork/Event;->setCreator(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_2

    .line 999
    .end local v1           #evt:Lcom/htc/socialnetwork/Event;
    .end local v3           #jsonObj:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 1000
    .local v0, e:Lorg/json/JSONException;
    const-string v5, "SocialNetwork-SimpleFacebookInterface"

    const-string v6, "JSONException at getEvents"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 974
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #evt:Lcom/htc/socialnetwork/Event;
    .restart local v3       #jsonObj:Lorg/json/JSONObject;
    :cond_6
    :try_start_2
    const-string v5, ""

    invoke-virtual {v1, v5}, Lcom/htc/socialnetwork/Event;->setDescription(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    .line 1001
    .end local v1           #evt:Lcom/htc/socialnetwork/Event;
    .end local v3           #jsonObj:Lorg/json/JSONObject;
    :catch_2
    move-exception v0

    .line 1002
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "SocialNetwork-SimpleFacebookInterface"

    const-string v6, "Exception at getEvents"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 978
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #evt:Lcom/htc/socialnetwork/Event;
    .restart local v3       #jsonObj:Lorg/json/JSONObject;
    :cond_7
    :try_start_3
    const-string v5, ""

    invoke-virtual {v1, v5}, Lcom/htc/socialnetwork/Event;->setLocation(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_4

    .line 1005
    .end local v1           #evt:Lcom/htc/socialnetwork/Event;
    .end local v3           #jsonObj:Lorg/json/JSONObject;
    :cond_8
    return-void
.end method

.method public setLike(Ljava/lang/String;Z)V
    .locals 6
    .parameter "pid"
    .parameter "like"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 1973
    if-eqz p2, :cond_0

    .line 1974
    const-string v1, "facebook.photos.addLike"

    .line 1978
    .local v1, photo_Like:Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1979
    .local v0, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "pid"

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1980
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v3}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doGet(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1981
    .local v2, result:Ljava/lang/String;
    const-string v3, "SocialNetwork-SimpleFacebookInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addLike result"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    return-void

    .line 1976
    .end local v0           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #photo_Like:Ljava/lang/String;
    .end local v2           #result:Ljava/lang/String;
    :cond_0
    const-string v1, "facebook.photos.removeLike"

    .restart local v1       #photo_Like:Ljava/lang/String;
    goto :goto_0
.end method

.method public setStatus(Ljava/lang/String;)Z
    .locals 4
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 876
    const-string v1, "facebook.status.set"

    .line 877
    .local v1, status_set:Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 878
    .local v0, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 879
    const-string v2, "status"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    :cond_0
    const-string v2, "facebook.status.set"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->doGet(Ljava/lang/String;Ljava/util/HashMap;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public updateSession(Ljava/lang/String;)V
    .locals 3
    .parameter "sessionStr"

    .prologue
    .line 324
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, secrets:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_key:Ljava/lang/String;

    .line 329
    iget-object v1, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_key:Ljava/lang/String;

    sput-object v1, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->localSession_key:Ljava/lang/String;

    .line 330
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->session_secret:Ljava/lang/String;

    goto :goto_0
.end method
