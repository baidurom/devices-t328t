.class public abstract Lcom/htc/cscore/restapi/proxy/ClientRestApi;
.super Ljava/lang/Object;
.source "ClientRestApi.java"


# instance fields
.field protected ServerUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public AddAggregatePerson(Lcom/htc/cscore/restapi/proxy/WebClasses$WAggregatePerson;)Lcom/htc/cscore/restapi/proxy/WebClasses$WAggregatePerson;
    .locals 12
    .parameter "person"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 667
    const-string v7, "%s/Services/People.svc/People/"

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 670
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 673
    .local v4, paramObj:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 674
    .local v4, paramObj:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 676
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 678
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v5, Lcom/htc/cscore/restapi/proxy/WebClasses$WAggregatePerson;

    invoke-direct {v5}, Lcom/htc/cscore/restapi/proxy/WebClasses$WAggregatePerson;-><init>()V

    .line 679
    .local v5, retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WAggregatePerson;
    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$11;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$11;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$11;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 680
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WAggregatePerson;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WAggregatePerson;
    check-cast v5, Lcom/htc/cscore/restapi/proxy/WebClasses$WAggregatePerson;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    .restart local v5       #retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WAggregatePerson;
    if-nez v5, :cond_0

    .line 682
    const/4 v5, 0x0

    .line 684
    .end local v5           #retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WAggregatePerson;
    :cond_0
    return-object v5

    .line 686
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 687
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "AddAggregatePerson (%s)"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v6, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public AddFriend(Ljava/lang/String;)V
    .locals 9
    .parameter "FriendRequestId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 508
    const-string v4, "%s/Services/FriendRequests.svc/Friends/%s/"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v6, v5, v8

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 511
    .local v3, url:Ljava/lang/String;
    :try_start_0
    const-string v2, ""

    .line 513
    .local v2, paramObj:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, jsonSend:Ljava/lang/String;
    sget-object v4, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v3, v4, v1}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    return-void

    .line 517
    .end local v1           #jsonSend:Ljava/lang/String;
    .end local v2           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 518
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "AddFriend (%s)"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v0, v5}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v4

    throw v4
.end method

.method public AddRecommendAppComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;
    .locals 13
    .parameter "appType"
    .parameter "appId"
    .parameter "appComment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 786
    const-string v8, "%s/Services/RecommendCommentLike.svc/RecommendCommentLike/AppComment/"

    new-array v9, v11, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 789
    .local v7, url:Ljava/lang/String;
    :try_start_0
    const-string v5, ""

    .line 792
    .local v5, paramObj:Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    .end local v5           #paramObj:Ljava/lang/String;
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 793
    .local v5, paramObj:Lorg/json/JSONObject;
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "appType"

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 794
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "appId"

    invoke-static {p2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 795
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "appComment"

    invoke-static/range {p3 .. p3}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 796
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 798
    .local v4, jsonSend:Ljava/lang/String;
    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v7, v8, v4}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 800
    .local v3, jsonRec:Ljava/lang/String;
    new-instance v6, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;

    invoke-direct {v6}, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;-><init>()V

    .line 801
    .local v6, retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;
    new-instance v8, Lcom/htc/cscore/restapi/proxy/ClientRestApi$14;

    invoke-direct {v8, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$14;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$14;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 802
    .local v2, genericType:Ljava/lang/reflect/Type;
    const-class v8, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;

    invoke-static {v6, v3, v8, v2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;
    check-cast v6, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    .restart local v6       #retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;
    if-nez v6, :cond_0

    .line 804
    const/4 v6, 0x0

    .line 806
    .end local v6           #retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;
    :cond_0
    return-object v6

    .line 808
    .end local v2           #genericType:Ljava/lang/reflect/Type;
    .end local v3           #jsonRec:Ljava/lang/String;
    .end local v4           #jsonSend:Ljava/lang/String;
    .end local v5           #paramObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 809
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "AddRecommendAppComment (%s)"

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v7, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v1, v9}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v8

    throw v8
.end method

.method public AddRecommendAppLike(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;
    .locals 13
    .parameter "appType"
    .parameter "appId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 729
    const-string v8, "%s/Services/RecommendCommentLike.svc/RecommendCommentLike/AppLikes/"

    new-array v9, v11, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 732
    .local v7, url:Ljava/lang/String;
    :try_start_0
    const-string v5, ""

    .line 735
    .local v5, paramObj:Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    .end local v5           #paramObj:Ljava/lang/String;
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 736
    .local v5, paramObj:Lorg/json/JSONObject;
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "appType"

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 737
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "appId"

    invoke-static {p2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 738
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 740
    .local v4, jsonSend:Ljava/lang/String;
    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v7, v8, v4}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 742
    .local v3, jsonRec:Ljava/lang/String;
    new-instance v6, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;

    invoke-direct {v6}, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;-><init>()V

    .line 743
    .local v6, retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;
    new-instance v8, Lcom/htc/cscore/restapi/proxy/ClientRestApi$13;

    invoke-direct {v8, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$13;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$13;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 744
    .local v2, genericType:Ljava/lang/reflect/Type;
    const-class v8, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;

    invoke-static {v6, v3, v8, v2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;
    check-cast v6, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    .restart local v6       #retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;
    if-nez v6, :cond_0

    .line 746
    const/4 v6, 0x0

    .line 748
    .end local v6           #retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendCommentLike;
    :cond_0
    return-object v6

    .line 750
    .end local v2           #genericType:Ljava/lang/reflect/Type;
    .end local v3           #jsonRec:Ljava/lang/String;
    .end local v4           #jsonSend:Ljava/lang/String;
    .end local v5           #paramObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 751
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "AddRecommendAppLike (%s)"

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v7, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v1, v9}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v8

    throw v8
.end method

.method public BindHandsetToAccount(Lcom/htc/cscore/restapi/proxy/WebClasses$WBindRequest;Ljava/lang/String;)V
    .locals 10
    .parameter "bindRequest"
    .parameter "AuthTicket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 126
    const-string v5, "%s/Services/Accounts.svc/Accounts/BindHandsetToAccount/"

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, url:Ljava/lang/String;
    :try_start_0
    const-string v3, ""

    .line 132
    .local v3, paramObj:Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    .end local v3           #paramObj:Ljava/lang/String;
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 133
    .local v3, paramObj:Lorg/json/JSONObject;
    move-object v0, v3

    check-cast v0, Lorg/json/JSONObject;

    move-object v5, v0

    const-string v6, "bindRequest"

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    move-object v0, v3

    check-cast v0, Lorg/json/JSONObject;

    move-object v5, v0

    const-string v6, "AuthTicket"

    invoke-static {p2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, jsonSend:Ljava/lang/String;
    sget-object v5, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v4, v5, v2}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    return-void

    .line 139
    .end local v2           #jsonSend:Ljava/lang/String;
    .end local v3           #paramObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 140
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "BindHandsetToAccount (%s)"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v4, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v1, v6}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v5

    throw v5
.end method

.method public BlockFriendRequest(Ljava/lang/String;)V
    .locals 9
    .parameter "FriendRequestId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 450
    const-string v4, "%s/Services/FriendRequests.svc/Blocked/%s/"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v6, v5, v8

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 453
    .local v3, url:Ljava/lang/String;
    :try_start_0
    const-string v2, ""

    .line 455
    .local v2, paramObj:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, jsonSend:Ljava/lang/String;
    sget-object v4, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v3, v4, v1}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    return-void

    .line 459
    .end local v1           #jsonSend:Ljava/lang/String;
    .end local v2           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 460
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "BlockFriendRequest (%s)"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v0, v5}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v4

    throw v4
.end method

.method public CancelFullMerge(Ljava/lang/String;)V
    .locals 9
    .parameter "queueName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1256
    const-string v4, "%s/Services/VirtualDevices.svc/Devices/CancelFullMerge/%s/"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v6, v5, v8

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1259
    .local v3, url:Ljava/lang/String;
    :try_start_0
    const-string v2, ""

    .line 1261
    .local v2, paramObj:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1263
    .local v1, jsonSend:Ljava/lang/String;
    sget-object v4, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v3, v4, v1}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1268
    return-void

    .line 1265
    .end local v1           #jsonSend:Ljava/lang/String;
    .end local v2           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1266
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "CancelFullMerge (%s)"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v0, v5}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v4

    throw v4
.end method

.method public ChangePassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "authTicket"
    .parameter "newPassword"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 219
    const-string v5, "%s/Services/Accounts.svc/Accounts/ChangePassword/"

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 222
    .local v4, url:Ljava/lang/String;
    :try_start_0
    const-string v3, ""

    .line 225
    .local v3, paramObj:Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    .end local v3           #paramObj:Ljava/lang/String;
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 226
    .local v3, paramObj:Lorg/json/JSONObject;
    move-object v0, v3

    check-cast v0, Lorg/json/JSONObject;

    move-object v5, v0

    const-string v6, "authTicket"

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    move-object v0, v3

    check-cast v0, Lorg/json/JSONObject;

    move-object v5, v0

    const-string v6, "newPassword"

    invoke-static {p2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, jsonSend:Ljava/lang/String;
    sget-object v5, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v4, v5, v2}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    return-void

    .line 232
    .end local v2           #jsonSend:Ljava/lang/String;
    .end local v3           #paramObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 233
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "ChangePassword (%s)"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v1, v6}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v5

    throw v5
.end method

.method public CreateAccountFromHandset(Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;)Ljava/lang/String;
    .locals 12
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 58
    const-string v7, "%s/Services/Accounts.svc/Accounts/CreateAccountFromHandset/"

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 61
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 64
    .local v4, paramObj:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 65
    .local v4, paramObj:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 70
    .local v5, retObj:Ljava/lang/String;
    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$1;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$1;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 71
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Ljava/lang/String;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .restart local v5       #retObj:Ljava/lang/String;
    if-nez v5, :cond_0

    .line 73
    const/4 v5, 0x0

    .line 75
    .end local v5           #retObj:Ljava/lang/String;
    :cond_0
    return-object v5

    .line 77
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "CreateAccountFromHandset (%s)"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v6, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public DeleteFriend(Ljava/lang/String;)V
    .locals 9
    .parameter "FriendRequestId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 535
    const-string v4, "%s/Services/FriendRequests.svc/Friends/%s/"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v6, v5, v8

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 538
    .local v3, url:Ljava/lang/String;
    :try_start_0
    const-string v2, ""

    .line 540
    .local v2, paramObj:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 542
    .local v1, jsonSend:Ljava/lang/String;
    sget-object v4, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->DELETE:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v3, v4, v1}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    return-void

    .line 544
    .end local v1           #jsonSend:Ljava/lang/String;
    .end local v2           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 545
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DeleteFriend (%s)"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v0, v5}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v4

    throw v4
.end method

.method public DeleteInvitation(Ljava/lang/String;)V
    .locals 9
    .parameter "FriendRequestId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 422
    const-string v4, "%s/Services/FriendRequests.svc/Requests/%s/"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v6, v5, v8

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 425
    .local v3, url:Ljava/lang/String;
    :try_start_0
    const-string v2, ""

    .line 427
    .local v2, paramObj:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 429
    .local v1, jsonSend:Ljava/lang/String;
    sget-object v4, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->DELETE:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v3, v4, v1}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    return-void

    .line 431
    .end local v1           #jsonSend:Ljava/lang/String;
    .end local v2           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 432
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DeleteInvitation (%s)"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v0, v5}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v4

    throw v4
.end method

.method public DeleteRecommendAppComment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "appType"
    .parameter "appId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 822
    const-string v4, "%s/Services/RecommendCommentLike.svc/RecommendCommentLike/AppComments/%s/%s/"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v6, v5, v8

    aput-object p1, v5, v7

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 825
    .local v3, url:Ljava/lang/String;
    :try_start_0
    const-string v2, ""

    .line 827
    .local v2, paramObj:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 829
    .local v1, jsonSend:Ljava/lang/String;
    sget-object v4, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->DELETE:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v3, v4, v1}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    return-void

    .line 831
    .end local v1           #jsonSend:Ljava/lang/String;
    .end local v2           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 832
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DeleteRecommendAppComment (%s)"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v0, v5}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v4

    throw v4
.end method

.method public DeleteRecommendAppLike(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "appType"
    .parameter "appId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 764
    const-string v4, "%s/Services/RecommendCommentLike.svc/RecommendCommentLike/AppLikes/%s/%s/"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v6, v5, v8

    aput-object p1, v5, v7

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 767
    .local v3, url:Ljava/lang/String;
    :try_start_0
    const-string v2, ""

    .line 769
    .local v2, paramObj:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 771
    .local v1, jsonSend:Ljava/lang/String;
    sget-object v4, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->DELETE:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v3, v4, v1}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    return-void

    .line 773
    .end local v1           #jsonSend:Ljava/lang/String;
    .end local v2           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 774
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DeleteRecommendAppLike (%s)"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v0, v5}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v4

    throw v4
.end method

.method public ForgotPassword(Lcom/htc/cscore/restapi/proxy/WebClasses$WPasswordRequest;)V
    .locals 9
    .parameter "passwordRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 278
    const-string v4, "%s/Services/Accounts.svc/Accounts/ForgotPassword/"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 281
    .local v3, url:Ljava/lang/String;
    :try_start_0
    const-string v2, ""

    .line 284
    .local v2, paramObj:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 285
    .local v2, paramObj:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, jsonSend:Ljava/lang/String;
    sget-object v4, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v3, v4, v1}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    return-void

    .line 289
    .end local v1           #jsonSend:Ljava/lang/String;
    .end local v2           #paramObj:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 290
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "ForgotPassword (%s)"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v3, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v0, v5}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v4

    throw v4
.end method

.method public GetAllApplicationInformation(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;II)Lcom/htc/cscore/restapi/json/SearchResults;
    .locals 12
    .parameter
    .parameter "appType"
    .parameter "sortBy"
    .parameter "sortDescending"
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "II)",
            "Lcom/htc/cscore/restapi/json/SearchResults",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationInformation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    .line 1057
    .local p1, appIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "%s/Services/RecommendCommentLike.svc/RecommendCommentLike/GetAllApplicationInformation/"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1060
    .local v7, url:Ljava/lang/String;
    :try_start_0
    const-string v5, ""

    .line 1063
    .local v5, paramObj:Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    .end local v5           #paramObj:Ljava/lang/String;
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1064
    .local v5, paramObj:Lorg/json/JSONObject;
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "appIds"

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1065
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "appType"

    invoke-static {p2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1066
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "sortBy"

    invoke-static {p3}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1067
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "sortDescending"

    invoke-static/range {p4 .. p4}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1068
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "start"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1069
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "count"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1070
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1072
    .local v4, jsonSend:Ljava/lang/String;
    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v7, v8, v4}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1074
    .local v3, jsonRec:Ljava/lang/String;
    new-instance v6, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v6}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    .line 1075
    .local v6, retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationInformation;>;"
    new-instance v8, Lcom/htc/cscore/restapi/proxy/ClientRestApi$22;

    invoke-direct {v8, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$22;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$22;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1076
    .local v2, genericType:Ljava/lang/reflect/Type;
    const-class v8, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationInformation;

    invoke-static {v6, v3, v8, v2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationInformation;>;"
    check-cast v6, Lcom/htc/cscore/restapi/json/SearchResults;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1077
    .restart local v6       #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationInformation;>;"
    if-nez v6, :cond_0

    .line 1078
    const/4 v6, 0x0

    .line 1080
    .end local v6           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationInformation;>;"
    :cond_0
    return-object v6

    .line 1082
    .end local v2           #genericType:Ljava/lang/reflect/Type;
    .end local v3           #jsonRec:Ljava/lang/String;
    .end local v4           #jsonSend:Ljava/lang/String;
    .end local v5           #paramObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 1083
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "GetAllApplicationInformation (%s)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v1, v9}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v8

    throw v8
.end method

.method public GetFootprints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/htc/cscore/restapi/json/SearchResults;
    .locals 11
    .parameter "keywords"
    .parameter "friendRequestId"
    .parameter "swLat"
    .parameter "swLong"
    .parameter "neLat"
    .parameter "neLong"
    .parameter "searchType"
    .parameter "categoryId"
    .parameter "favorites"
    .parameter "uncategorized"
    .parameter "sortBy"
    .parameter "sortDescending"
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Lcom/htc/cscore/restapi/json/SearchResults",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprint;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    .line 352
    const-string v7, "%s/Services/Footprints.svc/GetFootprints/?keywords=%s&friendsdeviceid=%s&swLat=%s&swLong=%s&neLat=%s&neLong=%s&searchType=%s&categoryId=%s&favorites=%s&uncategorized=%s&sortBy=%s&sortDescending=%s&start=%s&count=%s"

    const/16 v8, 0xf

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    aput-object p2, v8, v9

    const/4 v9, 0x3

    aput-object p3, v8, v9

    const/4 v9, 0x4

    aput-object p4, v8, v9

    const/4 v9, 0x5

    aput-object p5, v8, v9

    const/4 v9, 0x6

    aput-object p6, v8, v9

    const/4 v9, 0x7

    aput-object p7, v8, v9

    const/16 v9, 0x8

    aput-object p8, v8, v9

    const/16 v9, 0x9

    aput-object p9, v8, v9

    const/16 v9, 0xa

    aput-object p10, v8, v9

    const/16 v9, 0xb

    aput-object p11, v8, v9

    const/16 v9, 0xc

    aput-object p12, v8, v9

    const/16 v9, 0xd

    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0xe

    invoke-static/range {p14 .. p14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 355
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 357
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 359
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 361
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v5, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v5}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    .line 362
    .local v5, retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprint;>;"
    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$7;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$7;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$7;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 363
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprint;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprint;>;"
    check-cast v5, Lcom/htc/cscore/restapi/json/SearchResults;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    .restart local v5       #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprint;>;"
    if-nez v5, :cond_0

    .line 365
    const/4 v5, 0x0

    .line 367
    .end local v5           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFootprint;>;"
    :cond_0
    return-object v5

    .line 369
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 370
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "GetFootprints (%s)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public GetFriendFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;II)Lcom/htc/cscore/restapi/json/SearchResults;
    .locals 11
    .parameter "appId"
    .parameter "appType"
    .parameter "sortBy"
    .parameter "sortDescending"
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "II)",
            "Lcom/htc/cscore/restapi/json/SearchResults",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendFeedback;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    .line 968
    const-string v7, "%s/Services/RecommendCommentLike.svc/RecommendCommentLike/GetFriendFeedback/?appId=%s&appType=%s&sortBy=%s&sortDescending=%s&start=%s&count=%s"

    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    aput-object p2, v8, v9

    const/4 v9, 0x3

    aput-object p3, v8, v9

    const/4 v9, 0x4

    aput-object p4, v8, v9

    const/4 v9, 0x5

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 971
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 973
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 975
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 977
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v5, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v5}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    .line 978
    .local v5, retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendFeedback;>;"
    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$19;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$19;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$19;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 979
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendFeedback;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendFeedback;>;"
    check-cast v5, Lcom/htc/cscore/restapi/json/SearchResults;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 980
    .restart local v5       #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendFeedback;>;"
    if-nez v5, :cond_0

    .line 981
    const/4 v5, 0x0

    .line 983
    .end local v5           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendFeedback;>;"
    :cond_0
    return-object v5

    .line 985
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 986
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "GetFriendFeedback (%s)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public GetFriendRecommendedCommentsCount(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .parameter "friendRequestId"
    .parameter "appType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v7, -0x1

    const/4 v11, 0x1

    .line 922
    const-string v8, "%s/Services/RecommendCommentLike.svc/RecommendCommentLike/GetFriendRecommendedCommentsCount/?friendRequestId=%s&appType=%s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v10, v9, v12

    aput-object p1, v9, v11

    const/4 v10, 0x2

    aput-object p2, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 925
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 927
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 929
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v8, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 931
    .local v2, jsonRec:Ljava/lang/String;
    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 932
    .local v5, retObj:Ljava/lang/Integer;
    new-instance v8, Lcom/htc/cscore/restapi/proxy/ClientRestApi$18;

    invoke-direct {v8, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$18;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$18;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 933
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v8, Ljava/lang/Integer;

    invoke-static {v5, v2, v8, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Ljava/lang/Integer;
    check-cast v5, Ljava/lang/Integer;

    .line 934
    .restart local v5       #retObj:Ljava/lang/Integer;
    if-nez v5, :cond_0

    .line 937
    :goto_0
    return v7

    :cond_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    goto :goto_0

    .line 939
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    .end local v5           #retObj:Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 940
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "GetFriendRecommendedCommentsCount (%s)"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v6, v8, v12

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public GetFriendRecommendedLikesComments(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "friendRequestId"
    .parameter "appType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 844
    const-string v7, "%s/Services/RecommendCommentLike.svc/RecommendCommentLike/GetFriendRecommendedLikesComments/?friendRequestId=%s&appType=%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v9, v8, v11

    aput-object p1, v8, v10

    const/4 v9, 0x2

    aput-object p2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 847
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 849
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 851
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 853
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 854
    .local v5, retObj:Ljava/util/List;,"Ljava/util/List<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;>;"
    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$15;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$15;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$15;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 855
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Ljava/util/List;,"Ljava/util/List<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;>;"
    check-cast v5, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 856
    .restart local v5       #retObj:Ljava/util/List;,"Ljava/util/List<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;>;"
    if-nez v5, :cond_0

    .line 857
    const/4 v5, 0x0

    .line 859
    .end local v5           #retObj:Ljava/util/List;,"Ljava/util/List<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;>;"
    :cond_0
    return-object v5

    .line 861
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 862
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "GetFriendRecommendedLikesComments (%s)"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v6, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public GetFriendRecommendedLikesCount(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .parameter "friendRequestId"
    .parameter "appType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v7, -0x1

    const/4 v11, 0x1

    .line 896
    const-string v8, "%s/Services/RecommendCommentLike.svc/RecommendCommentLike/GetFriendRecommendedLikesCount/?friendRequestId=%s&appType=%s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v10, v9, v12

    aput-object p1, v9, v11

    const/4 v10, 0x2

    aput-object p2, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 899
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 901
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 903
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v8, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 905
    .local v2, jsonRec:Ljava/lang/String;
    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 906
    .local v5, retObj:Ljava/lang/Integer;
    new-instance v8, Lcom/htc/cscore/restapi/proxy/ClientRestApi$17;

    invoke-direct {v8, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$17;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$17;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 907
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v8, Ljava/lang/Integer;

    invoke-static {v5, v2, v8, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Ljava/lang/Integer;
    check-cast v5, Ljava/lang/Integer;

    .line 908
    .restart local v5       #retObj:Ljava/lang/Integer;
    if-nez v5, :cond_0

    .line 911
    :goto_0
    return v7

    :cond_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    goto :goto_0

    .line 913
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    .end local v5           #retObj:Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 914
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "GetFriendRecommendedLikesCount (%s)"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v6, v8, v12

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public GetFriends(Ljava/lang/String;Ljava/lang/Boolean;II)Lcom/htc/cscore/restapi/json/SearchResults;
    .locals 11
    .parameter "sortBy"
    .parameter "sortDescending"
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "II)",
            "Lcom/htc/cscore/restapi/json/SearchResults",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WFriend;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    .line 558
    const-string v7, "%s/Services/FriendRequests.svc/GetFriends/?sortBy=%s&sortDescending=%s&start=%s&count=%s"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    aput-object p2, v8, v9

    const/4 v9, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 561
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 563
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 565
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 567
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v5, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v5}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    .line 568
    .local v5, retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFriend;>;"
    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$8;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$8;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$8;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 569
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriend;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFriend;>;"
    check-cast v5, Lcom/htc/cscore/restapi/json/SearchResults;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    .restart local v5       #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFriend;>;"
    if-nez v5, :cond_0

    .line 571
    const/4 v5, 0x0

    .line 573
    .end local v5           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFriend;>;"
    :cond_0
    return-object v5

    .line 575
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 576
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "GetFriends (%s)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public GetFriendsRecommendedCommentsLikes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;II)Lcom/htc/cscore/restapi/json/SearchResults;
    .locals 11
    .parameter "appType"
    .parameter "sortBy"
    .parameter "sortDescending"
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "II)",
            "Lcom/htc/cscore/restapi/json/SearchResults",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    .line 870
    const-string v7, "%s/Services/RecommendCommentLike.svc/RecommendCommentLike/GetFriendsRecommendedCommentsLikes/?appType=%s&sortBy=%s&sortDescending=%s&start=%s&count=%s"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    aput-object p2, v8, v9

    const/4 v9, 0x3

    aput-object p3, v8, v9

    const/4 v9, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 873
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 875
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 877
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 879
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v5, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v5}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    .line 880
    .local v5, retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;>;"
    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$16;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$16;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$16;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 881
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;>;"
    check-cast v5, Lcom/htc/cscore/restapi/json/SearchResults;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    .restart local v5       #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;>;"
    if-nez v5, :cond_0

    .line 883
    const/4 v5, 0x0

    .line 885
    .end local v5           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;>;"
    :cond_0
    return-object v5

    .line 887
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 888
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "GetFriendsRecommendedCommentsLikes (%s)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public GetIncomingRequests(Ljava/lang/String;Ljava/lang/Boolean;II)Lcom/htc/cscore/restapi/json/SearchResults;
    .locals 11
    .parameter "sortBy"
    .parameter "sortDescending"
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "II)",
            "Lcom/htc/cscore/restapi/json/SearchResults",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WFriend;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    .line 636
    const-string v7, "%s/Services/FriendRequests.svc/GetIncomingRequests/?sortBy=%s&sortDescending=%s&start=%s&count=%s"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    aput-object p2, v8, v9

    const/4 v9, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 639
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 641
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 643
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 645
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v5, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v5}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    .line 646
    .local v5, retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFriend;>;"
    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$10;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$10;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$10;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 647
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriend;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFriend;>;"
    check-cast v5, Lcom/htc/cscore/restapi/json/SearchResults;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    .restart local v5       #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFriend;>;"
    if-nez v5, :cond_0

    .line 649
    const/4 v5, 0x0

    .line 651
    .end local v5           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFriend;>;"
    :cond_0
    return-object v5

    .line 653
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 654
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "GetIncomingRequests (%s)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public GetMatches(Ljava/lang/String;Ljava/lang/Boolean;II)Lcom/htc/cscore/restapi/json/SearchResults;
    .locals 11
    .parameter "sortBy"
    .parameter "sortDescending"
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "II)",
            "Lcom/htc/cscore/restapi/json/SearchResults",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WFriend;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    .line 601
    const-string v7, "%s/Services/FriendRequests.svc/GetMatches/?sortBy=%s&sortDescending=%s&start=%s&count=%s"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    aput-object p2, v8, v9

    const/4 v9, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 604
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 606
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 608
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 610
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v5, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v5}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    .line 611
    .local v5, retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFriend;>;"
    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$9;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$9;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$9;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 612
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriend;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFriend;>;"
    check-cast v5, Lcom/htc/cscore/restapi/json/SearchResults;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    .restart local v5       #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFriend;>;"
    if-nez v5, :cond_0

    .line 614
    const/4 v5, 0x0

    .line 616
    .end local v5           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WFriend;>;"
    :cond_0
    return-object v5

    .line 618
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 619
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "GetMatches (%s)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public GetPhysicalDeviceModels(Ljava/lang/String;Ljava/lang/Boolean;II)Lcom/htc/cscore/restapi/json/SearchResults;
    .locals 11
    .parameter "sortBy"
    .parameter "sortDescending"
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "II)",
            "Lcom/htc/cscore/restapi/json/SearchResults",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WPhysicalDeviceModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    .line 699
    const-string v7, "%s/Services/PhysicalDeviceModels.svc/GetPhysicalDeviceModels/?sortBy=%s&sortDescending=%s&start=%s&count=%s"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    aput-object p2, v8, v9

    const/4 v9, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 702
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 704
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 706
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 708
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v5, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v5}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    .line 709
    .local v5, retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WPhysicalDeviceModel;>;"
    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$12;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$12;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$12;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 710
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WPhysicalDeviceModel;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WPhysicalDeviceModel;>;"
    check-cast v5, Lcom/htc/cscore/restapi/json/SearchResults;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    .restart local v5       #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WPhysicalDeviceModel;>;"
    if-nez v5, :cond_0

    .line 712
    const/4 v5, 0x0

    .line 714
    .end local v5           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WPhysicalDeviceModel;>;"
    :cond_0
    return-object v5

    .line 716
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 717
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "GetPhysicalDeviceModels (%s)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public GetRecommendAppsPopularityCounts(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;II)Lcom/htc/cscore/restapi/json/SearchResults;
    .locals 12
    .parameter
    .parameter "appType"
    .parameter "sortBy"
    .parameter "sortDescending"
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "II)",
            "Lcom/htc/cscore/restapi/json/SearchResults",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendAppsPopularityCount;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    .line 1028
    .local p1, appIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "%s/Services/RecommendCommentLike.svc/RecommendCommentLike/GetAppsPopularityCounts/?appType=%s&sortBy=%s&sortDescending=%s&start=%s&count=%s"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    const/4 v10, 0x2

    aput-object p3, v9, v10

    const/4 v10, 0x3

    aput-object p4, v9, v10

    const/4 v10, 0x4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1031
    .local v7, url:Ljava/lang/String;
    :try_start_0
    const-string v5, ""

    .line 1034
    .local v5, paramObj:Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    .end local v5           #paramObj:Ljava/lang/String;
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1035
    .local v5, paramObj:Lorg/json/JSONObject;
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "appIds"

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1036
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1038
    .local v4, jsonSend:Ljava/lang/String;
    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v7, v8, v4}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1040
    .local v3, jsonRec:Ljava/lang/String;
    new-instance v6, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v6}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    .line 1041
    .local v6, retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendAppsPopularityCount;>;"
    new-instance v8, Lcom/htc/cscore/restapi/proxy/ClientRestApi$21;

    invoke-direct {v8, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$21;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$21;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1042
    .local v2, genericType:Ljava/lang/reflect/Type;
    const-class v8, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendAppsPopularityCount;

    invoke-static {v6, v3, v8, v2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendAppsPopularityCount;>;"
    check-cast v6, Lcom/htc/cscore/restapi/json/SearchResults;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1043
    .restart local v6       #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendAppsPopularityCount;>;"
    if-nez v6, :cond_0

    .line 1044
    const/4 v6, 0x0

    .line 1046
    .end local v6           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendAppsPopularityCount;>;"
    :cond_0
    return-object v6

    .line 1048
    .end local v2           #genericType:Ljava/lang/reflect/Type;
    .end local v3           #jsonRec:Ljava/lang/String;
    .end local v4           #jsonSend:Ljava/lang/String;
    .end local v5           #paramObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 1049
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "GetRecommendAppsPopularityCounts (%s)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v1, v9}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v8

    throw v8
.end method

.method public GetRecommendedWishlist(Ljava/lang/String;Ljava/lang/Boolean;II)Lcom/htc/cscore/restapi/json/SearchResults;
    .locals 11
    .parameter "sortBy"
    .parameter "sortDescending"
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "II)",
            "Lcom/htc/cscore/restapi/json/SearchResults",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    .line 998
    const-string v7, "%s/Services/RecommendCommentLike.svc/RecommendCommentLike/GetRecommendedWishlist/?sortBy=%s&sortDescending=%s&start=%s&count=%s"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    aput-object p2, v8, v9

    const/4 v9, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1001
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 1003
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1005
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1007
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v5, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v5}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    .line 1008
    .local v5, retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist;>;"
    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$20;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$20;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$20;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1009
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist;>;"
    check-cast v5, Lcom/htc/cscore/restapi/json/SearchResults;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1010
    .restart local v5       #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist;>;"
    if-nez v5, :cond_0

    .line 1011
    const/4 v5, 0x0

    .line 1013
    .end local v5           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WRecommendWishlist;>;"
    :cond_0
    return-object v5

    .line 1015
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1016
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "GetRecommendedWishlist (%s)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public GetRegionForAccount(Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;
    .locals 12
    .parameter "emailAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1154
    const-string v7, "%s/Services/Regions.svc/Regions/GetRegionForAccount/"

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1157
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 1160
    .local v4, paramObj:Ljava/lang/String;
    new-instance v4, Ljava/lang/String;

    .end local v4           #paramObj:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1161
    .restart local v4       #paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1163
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1165
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v5, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;

    invoke-direct {v5}, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;-><init>()V

    .line 1166
    .local v5, retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;
    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$25;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$25;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$25;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1167
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;
    check-cast v5, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1168
    .restart local v5       #retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;
    if-nez v5, :cond_0

    .line 1169
    const/4 v5, 0x0

    .line 1171
    .end local v5           #retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;
    :cond_0
    return-object v5

    .line 1173
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1174
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "GetRegionForAccount (%s)"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v6, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public GetRegions()Lcom/htc/cscore/restapi/json/SearchResults;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/cscore/restapi/json/SearchResults",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1125
    const-string v7, "%s/Services/Regions.svc/Regions/"

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1126
    .local v6, url:Ljava/lang/String;
    const-string v7, "MyHTC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GetRegions URL: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :try_start_0
    const-string v4, ""

    .line 1130
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1132
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1134
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v5, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v5}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    .line 1135
    .local v5, retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;>;"
    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$24;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$24;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$24;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1136
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;>;"
    check-cast v5, Lcom/htc/cscore/restapi/json/SearchResults;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1137
    .restart local v5       #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;>;"
    if-nez v5, :cond_0

    .line 1138
    const/4 v5, 0x0

    .line 1140
    .end local v5           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;>;"
    :cond_0
    return-object v5

    .line 1142
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1143
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "GetRegions (%s)"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v6, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public GetRegions(Ljava/lang/String;Ljava/lang/Boolean;II)Lcom/htc/cscore/restapi/json/SearchResults;
    .locals 11
    .parameter "sortBy"
    .parameter "sortDescending"
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "II)",
            "Lcom/htc/cscore/restapi/json/SearchResults",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    .line 1095
    const-string v7, "%s/Services/Regions.svc/Regions/?sortBy=%s&sortDescending=%s&start=%s&count=%s"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    aput-object p2, v8, v9

    const/4 v9, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1098
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 1100
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1102
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1104
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v5, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v5}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    .line 1105
    .local v5, retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;>;"
    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$23;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$23;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$23;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1106
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;>;"
    check-cast v5, Lcom/htc/cscore/restapi/json/SearchResults;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1107
    .restart local v5       #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;>;"
    if-nez v5, :cond_0

    .line 1108
    const/4 v5, 0x0

    .line 1110
    .end local v5           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;>;"
    :cond_0
    return-object v5

    .line 1112
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1113
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "GetRegions (%s)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public GetSecurityQuestion(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "emailAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 245
    const-string v8, "%s/Services/Accounts.svc/Accounts/SecurityQuestion/"

    new-array v9, v12, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 248
    .local v7, url:Ljava/lang/String;
    :try_start_0
    const-string v5, ""

    .line 251
    .local v5, paramObj:Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    .end local v5           #paramObj:Ljava/lang/String;
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 252
    .local v5, paramObj:Lorg/json/JSONObject;
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "emailAddress"

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 255
    .local v4, jsonSend:Ljava/lang/String;
    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v7, v8, v4}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, jsonRec:Ljava/lang/String;
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    .line 258
    .local v6, retObj:Ljava/lang/String;
    new-instance v8, Lcom/htc/cscore/restapi/proxy/ClientRestApi$5;

    invoke-direct {v8, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$5;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 259
    .local v2, genericType:Ljava/lang/reflect/Type;
    const-class v8, Ljava/lang/String;

    invoke-static {v6, v3, v8, v2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #retObj:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .restart local v6       #retObj:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 261
    const/4 v6, 0x0

    .line 263
    .end local v6           #retObj:Ljava/lang/String;
    :cond_0
    return-object v6

    .line 265
    .end local v2           #genericType:Ljava/lang/reflect/Type;
    .end local v3           #jsonRec:Ljava/lang/String;
    .end local v4           #jsonSend:Ljava/lang/String;
    .end local v5           #paramObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 266
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "GetSecurityQuestion (%s)"

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v7, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v1, v9}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v8

    throw v8
.end method

.method public GetServerTime()Ljava/util/Date;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1180
    const-string v7, "%s/Services/Server.svc/Time"

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1183
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 1185
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1187
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1189
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 1190
    .local v5, retObj:Ljava/util/Date;
    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$26;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$26;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$26;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1191
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Ljava/util/Date;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Ljava/util/Date;
    check-cast v5, Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1192
    .restart local v5       #retObj:Ljava/util/Date;
    if-nez v5, :cond_0

    .line 1193
    const/4 v5, 0x0

    .line 1195
    .end local v5           #retObj:Ljava/util/Date;
    :cond_0
    return-object v5

    .line 1197
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1198
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "GetServerTime (%s)"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v6, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public GetVersion()Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1204
    const-string v7, "%s/Services/Server.svc/Version"

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1207
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 1209
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1211
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1213
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 1214
    .local v5, retObj:Ljava/lang/String;
    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$27;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$27;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$27;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1215
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Ljava/lang/String;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1216
    .restart local v5       #retObj:Ljava/lang/String;
    if-nez v5, :cond_0

    .line 1217
    const/4 v5, 0x0

    .line 1219
    .end local v5           #retObj:Ljava/lang/String;
    :cond_0
    return-object v5

    .line 1221
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1222
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "GetVersion (%s)"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v6, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public HandsetLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    .locals 12
    .parameter "emailAddress"
    .parameter "handsetDeviceId"
    .parameter "AuthTicket"
    .parameter "versionNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    .line 152
    const-string v8, "%s/Services/Accounts.svc/Accounts/HandsetLogin/%s/"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 155
    .local v7, url:Ljava/lang/String;
    :try_start_0
    const-string v5, ""

    .line 158
    .local v5, paramObj:Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    .end local v5           #paramObj:Ljava/lang/String;
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 159
    .local v5, paramObj:Lorg/json/JSONObject;
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "emailAddress"

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "AuthTicket"

    invoke-static {p3}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "versionNumber"

    invoke-static/range {p4 .. p4}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, jsonSend:Ljava/lang/String;
    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v7, v8, v4}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, jsonRec:Ljava/lang/String;
    new-instance v6, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    invoke-direct {v6}, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;-><init>()V

    .line 167
    .local v6, retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    new-instance v8, Lcom/htc/cscore/restapi/proxy/ClientRestApi$3;

    invoke-direct {v8, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$3;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 168
    .local v2, genericType:Ljava/lang/reflect/Type;
    const-class v8, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    invoke-static {v6, v3, v8, v2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    check-cast v6, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .restart local v6       #retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    if-nez v6, :cond_0

    .line 170
    const/4 v6, 0x0

    .line 172
    .end local v6           #retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    :cond_0
    return-object v6

    .line 174
    .end local v2           #genericType:Ljava/lang/reflect/Type;
    .end local v3           #jsonRec:Ljava/lang/String;
    .end local v4           #jsonSend:Ljava/lang/String;
    .end local v5           #paramObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 175
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "HandsetLogin (%s)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v1, v9}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v8

    throw v8
.end method

.method public RequestBinding(Lcom/htc/cscore/restapi/proxy/WebClasses$WRequestBind;Ljava/lang/String;)Ljava/util/UUID;
    .locals 14
    .parameter "requestBind"
    .parameter "AuthTicket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 91
    const-string v8, "%s/Services/Accounts.svc/Accounts/RequestBinding/"

    new-array v9, v13, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 94
    .local v7, url:Ljava/lang/String;
    :try_start_0
    const-string v5, ""

    .line 97
    .local v5, paramObj:Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    .end local v5           #paramObj:Ljava/lang/String;
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 98
    .local v5, paramObj:Lorg/json/JSONObject;
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "requestBind"

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "AuthTicket"

    invoke-static/range {p2 .. p2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, jsonSend:Ljava/lang/String;
    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v7, v8, v4}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, jsonRec:Ljava/lang/String;
    new-instance v6, Ljava/util/UUID;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-direct {v6, v8, v9, v10, v11}, Ljava/util/UUID;-><init>(JJ)V

    .line 105
    .local v6, retObj:Ljava/util/UUID;
    new-instance v8, Lcom/htc/cscore/restapi/proxy/ClientRestApi$2;

    invoke-direct {v8, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$2;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 106
    .local v2, genericType:Ljava/lang/reflect/Type;
    const-class v8, Ljava/util/UUID;

    invoke-static {v6, v3, v8, v2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #retObj:Ljava/util/UUID;
    check-cast v6, Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .restart local v6       #retObj:Ljava/util/UUID;
    if-nez v6, :cond_0

    .line 108
    const/4 v6, 0x0

    .line 110
    .end local v6           #retObj:Ljava/util/UUID;
    :cond_0
    return-object v6

    .line 112
    .end local v2           #genericType:Ljava/lang/reflect/Type;
    .end local v3           #jsonRec:Ljava/lang/String;
    .end local v4           #jsonSend:Ljava/lang/String;
    .end local v5           #paramObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 113
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "RequestBinding (%s)"

    new-array v9, v13, [Ljava/lang/Object;

    aput-object v7, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v1, v9}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v8

    throw v8
.end method

.method public ScheduleFullMerge()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1234
    const-string v4, "%s/Services/VirtualDevices.svc/Devices/ScheduleFullMerge/"

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1237
    .local v3, url:Ljava/lang/String;
    :try_start_0
    const-string v2, ""

    .line 1239
    .local v2, paramObj:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1241
    .local v1, jsonSend:Ljava/lang/String;
    sget-object v4, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v3, v4, v1}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1246
    return-void

    .line 1243
    .end local v1           #jsonSend:Ljava/lang/String;
    .end local v2           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1244
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "ScheduleFullMerge (%s)"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v0, v5}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v4

    throw v4
.end method

.method public SendInvitation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "FriendRequestId"
    .parameter "Message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 391
    const-string v5, "%s/Services/FriendRequests.svc/Requests/%s/"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v7, v6, v9

    aput-object p1, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 394
    .local v4, url:Ljava/lang/String;
    :try_start_0
    const-string v3, ""

    .line 397
    .local v3, paramObj:Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    .end local v3           #paramObj:Ljava/lang/String;
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 398
    .local v3, paramObj:Lorg/json/JSONObject;
    move-object v0, v3

    check-cast v0, Lorg/json/JSONObject;

    move-object v5, v0

    const-string v6, "Message"

    invoke-static {p2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 399
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 401
    .local v2, jsonSend:Ljava/lang/String;
    sget-object v5, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v4, v5, v2}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    return-void

    .line 403
    .end local v2           #jsonSend:Ljava/lang/String;
    .end local v3           #paramObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 404
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "SendInvitation (%s)"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v1, v6}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v5

    throw v5
.end method

.method public UnblockFriendRequest(Ljava/lang/String;)V
    .locals 9
    .parameter "FriendRequestId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 478
    const-string v4, "%s/Services/FriendRequests.svc/Unblocked/%s/"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v6, v5, v8

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 481
    .local v3, url:Ljava/lang/String;
    :try_start_0
    const-string v2, ""

    .line 483
    .local v2, paramObj:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 485
    .local v1, jsonSend:Ljava/lang/String;
    sget-object v4, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->DELETE:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v3, v4, v1}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    return-void

    .line 487
    .end local v1           #jsonSend:Ljava/lang/String;
    .end local v2           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 488
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "UnblockFriendRequest (%s)"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v0, v5}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v4

    throw v4
.end method

.method public UpdateAccount(Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;)Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;
    .locals 12
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 187
    const-string v7, "%s/Services/Accounts.svc/Accounts/"

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 190
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 193
    .local v4, paramObj:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 194
    .local v4, paramObj:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v5, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;

    invoke-direct {v5}, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;-><init>()V

    .line 199
    .local v5, retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;
    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$4;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$4;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 200
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;
    check-cast v5, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .restart local v5       #retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;
    if-nez v5, :cond_0

    .line 202
    const/4 v5, 0x0

    .line 204
    .end local v5           #retObj:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;
    :cond_0
    return-object v5

    .line 206
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "UpdateAccount (%s)"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v6, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public VerifyEmailAddress(Ljava/lang/String;)Ljava/util/UUID;
    .locals 14
    .parameter "VerificationId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 303
    const-string v8, "%s/Services/Accounts.svc/Accounts/VerifyEmailAddress/"

    new-array v9, v13, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 306
    .local v7, url:Ljava/lang/String;
    :try_start_0
    const-string v5, ""

    .line 309
    .local v5, paramObj:Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    .end local v5           #paramObj:Ljava/lang/String;
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 310
    .local v5, paramObj:Lorg/json/JSONObject;
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "VerificationId"

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 313
    .local v4, jsonSend:Ljava/lang/String;
    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v7, v8, v4}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 315
    .local v3, jsonRec:Ljava/lang/String;
    new-instance v6, Ljava/util/UUID;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-direct {v6, v8, v9, v10, v11}, Ljava/util/UUID;-><init>(JJ)V

    .line 316
    .local v6, retObj:Ljava/util/UUID;
    new-instance v8, Lcom/htc/cscore/restapi/proxy/ClientRestApi$6;

    invoke-direct {v8, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$6;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 317
    .local v2, genericType:Ljava/lang/reflect/Type;
    const-class v8, Ljava/util/UUID;

    invoke-static {v6, v3, v8, v2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #retObj:Ljava/util/UUID;
    check-cast v6, Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    .restart local v6       #retObj:Ljava/util/UUID;
    if-nez v6, :cond_0

    .line 319
    const/4 v6, 0x0

    .line 321
    .end local v6           #retObj:Ljava/util/UUID;
    :cond_0
    return-object v6

    .line 323
    .end local v2           #genericType:Ljava/lang/reflect/Type;
    .end local v3           #jsonRec:Ljava/lang/String;
    .end local v4           #jsonSend:Ljava/lang/String;
    .end local v5           #paramObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 324
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "VerifyEmailAddress (%s)"

    new-array v9, v13, [Ljava/lang/Object;

    aput-object v7, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v1, v9}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v8

    throw v8
.end method

.method protected abstract _authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract _webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;
.end method

.method protected abstract _webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public getMarketingOptInString(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "country"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1392
    iget-object v5, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    .line 1393
    .local v5, svrURL:Ljava/lang/String;
    const-string v7, "$"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1394
    .local v1, i:I
    if-lez v1, :cond_0

    .line 1395
    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v5, v10, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1398
    :cond_0
    const-string v7, "%s/%s/static/marketing-opt-in.html"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v10

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1401
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 1403
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1404
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1406
    .local v2, jsonRec:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 1407
    const/4 v2, 0x0

    .line 1409
    .end local v2           #jsonRec:Ljava/lang/String;
    :cond_1
    return-object v2

    .line 1412
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1413
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "getMarketingOptInString (%s)"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v6, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public getVirtualDeviceAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1281
    const-string v7, "%s/Services/VirtualDevices.svc/Devices/Attribute/%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v9, v8, v11

    aput-object p1, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1283
    .local v6, url:Ljava/lang/String;
    const-string v7, "VirtualDeviceAttribute"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getVirtualDeviceAttribute URL: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    :try_start_0
    const-string v4, ""

    .line 1287
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1289
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1291
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 1292
    .local v5, retObj:Ljava/lang/String;
    new-instance v7, Lcom/htc/cscore/restapi/proxy/ClientRestApi$28;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$28;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$28;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1293
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Ljava/lang/String;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 1294
    .restart local v5       #retObj:Ljava/lang/String;
    const-string v7, "VirtualDeviceAttribute"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getVirtualDeviceAttribute retObj: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1296
    if-nez v5, :cond_0

    .line 1297
    const/4 v5, 0x0

    .line 1299
    .end local v5           #retObj:Ljava/lang/String;
    :cond_0
    return-object v5

    .line 1302
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1303
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "getVirtualDeviceAttribute (%s)"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v6, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public hasLocationService(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "country"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1350
    iget-object v7, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    .line 1351
    .local v7, svrURL:Ljava/lang/String;
    const-string v9, "$"

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1352
    .local v2, i:I
    if-lez v2, :cond_0

    .line 1353
    add-int/lit8 v9, v2, -0x1

    invoke-virtual {v7, v11, v9}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1356
    :cond_0
    const-string v9, "%s/%s/handsetLocationEnabled.html"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v11

    aput-object p1, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1359
    .local v8, url:Ljava/lang/String;
    :try_start_0
    const-string v5, ""

    .line 1361
    .local v5, paramObj:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1363
    .local v4, jsonSend:Ljava/lang/String;
    sget-object v9, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v8, v9, v4}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1365
    .local v3, jsonRec:Ljava/lang/String;
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    .line 1366
    .local v6, retObj:Ljava/lang/String;
    new-instance v9, Lcom/htc/cscore/restapi/proxy/ClientRestApi$30;

    invoke-direct {v9, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$30;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v9}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$30;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1367
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v9, Ljava/lang/String;

    invoke-static {v6, v3, v9, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #retObj:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1369
    .restart local v6       #retObj:Ljava/lang/String;
    if-nez v6, :cond_1

    .line 1370
    const/4 v6, 0x0

    .line 1372
    .end local v6           #retObj:Ljava/lang/String;
    :cond_1
    return-object v6

    .line 1375
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v3           #jsonRec:Ljava/lang/String;
    .end local v4           #jsonSend:Ljava/lang/String;
    .end local v5           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1376
    .local v0, e:Ljava/lang/Exception;
    const-string v9, "hasLocationService (%s)"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v8, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {p0, v9, v0, v10}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v9

    throw v9
.end method

.method public setVirtualDeviceAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1318
    const-string v8, "%s/Services/VirtualDevices.svc/Devices/Attribute/%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v10, v9, v12

    aput-object p1, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1320
    .local v7, url:Ljava/lang/String;
    const-string v8, "VirtualDeviceAttribute"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getVirtualDeviceAttribute URL: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    :try_start_0
    const-string v5, ""

    .line 1325
    .local v5, paramObj:Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    .end local v5           #paramObj:Ljava/lang/String;
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1326
    .local v5, paramObj:Lorg/json/JSONObject;
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "value"

    invoke-static {p2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1328
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1330
    .local v4, jsonSend:Ljava/lang/String;
    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v7, v8, v4}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1332
    .local v3, jsonRec:Ljava/lang/String;
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    .line 1333
    .local v6, retObj:Ljava/lang/String;
    new-instance v8, Lcom/htc/cscore/restapi/proxy/ClientRestApi$29;

    invoke-direct {v8, p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$29;-><init>(Lcom/htc/cscore/restapi/proxy/ClientRestApi;)V

    invoke-virtual {v8}, Lcom/htc/cscore/restapi/proxy/ClientRestApi$29;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1334
    .local v2, genericType:Ljava/lang/reflect/Type;
    const-class v8, Ljava/lang/String;

    invoke-static {v6, v3, v8, v2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #retObj:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 1335
    .restart local v6       #retObj:Ljava/lang/String;
    const-string v8, "VirtualDeviceAttribute"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setVirtualDeviceAttribute retObj: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1340
    return-void

    .line 1337
    .end local v2           #genericType:Ljava/lang/reflect/Type;
    .end local v3           #jsonRec:Ljava/lang/String;
    .end local v4           #jsonSend:Ljava/lang/String;
    .end local v5           #paramObj:Lorg/json/JSONObject;
    .end local v6           #retObj:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1338
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "getVirtualDeviceAttribute (%s)"

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v7, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v1, v9}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v8

    throw v8
.end method
