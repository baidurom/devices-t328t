.class public Lcom/htc/cscore/restapi/proxy/RestServicesProxy;
.super Lcom/htc/cscore/restapi/proxy/ClientRestApi;
.source "RestServicesProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/restapi/proxy/RestServicesProxy$StreamablePbReliableMessages;
    }
.end annotation


# static fields
.field public static LANGUAGE_ID_ENGLISH:Ljava/lang/String;


# instance fields
.field protected DevServerMode:Z

.field public EmailAddress:Ljava/lang/String;

.field protected HandsetDeviceId:Ljava/util/UUID;

.field protected Password:Ljava/lang/String;

.field private _clientVersionString:Ljava/lang/String;

.field private _cmsUri:Ljava/lang/String;

.field protected deviceToken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string v0, "en"

    sput-object v0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->LANGUAGE_ID_ENGLISH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/UUID;)V
    .locals 1
    .parameter "serviceUri"
    .parameter "cmsUri"
    .parameter "devServerMode"
    .parameter "handsetDeviceId"

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->DevServerMode:Z

    .line 169
    iput-object p4, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->HandsetDeviceId:Ljava/util/UUID;

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->deviceToken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    .line 171
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->SetServerName(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 172
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/UUID;Landroid/content/Context;)V
    .locals 1
    .parameter "serviceUri"
    .parameter "cmsUri"
    .parameter "devServerMode"
    .parameter "handsetDeviceId"
    .parameter "context"

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->DevServerMode:Z

    .line 181
    iput-object p4, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->HandsetDeviceId:Ljava/util/UUID;

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->deviceToken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    .line 183
    iput-object p5, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->mContext:Landroid/content/Context;

    .line 184
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->SetServerName(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 185
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .parameter "serviceUri"
    .parameter "cmsUri"
    .parameter "devServerMode"
    .parameter "handsetDeviceId"
    .parameter "emailAddress"
    .parameter "password"
    .parameter "context"

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;-><init>()V

    .line 90
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->DevServerMode:Z

    .line 141
    iput-object p4, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->HandsetDeviceId:Ljava/util/UUID;

    .line 142
    iput-object p5, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->EmailAddress:Ljava/lang/String;

    .line 143
    iput-object p6, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->Password:Ljava/lang/String;

    .line 144
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->deviceToken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    .line 145
    iput-object p7, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->mContext:Landroid/content/Context;

    .line 148
    :try_start_0
    invoke-virtual {p7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->getClientVersionString(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_clientVersionString:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->SetServerName(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 155
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "RestServicesProxy.ctor.getClientVersionString"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_clientVersionString:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)V
    .locals 3
    .parameter "serviceUri"
    .parameter "cmsUri"
    .parameter "devServerMode"
    .parameter "handsetDeviceId"
    .parameter "emailAddress"
    .parameter "password"
    .parameter "packageName"
    .parameter "packageManager"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;-><init>()V

    .line 90
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->DevServerMode:Z

    .line 115
    iput-object p4, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->HandsetDeviceId:Ljava/util/UUID;

    .line 116
    iput-object p5, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->EmailAddress:Ljava/lang/String;

    .line 117
    iput-object p6, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->Password:Ljava/lang/String;

    .line 118
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->deviceToken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    .line 122
    :try_start_0
    invoke-static {p7, p8}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->getClientVersionString(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_clientVersionString:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->SetServerName(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 129
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "RestServicesProxy.ctor.getClientVersionString"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_clientVersionString:Ljava/lang/String;

    goto :goto_0
.end method

.method private static _IsNullOrEmpty(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .parameter "str"

    .prologue
    .line 1136
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static _getAuthKey(Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;)Ljava/lang/String;
    .locals 3
    .parameter "deviceToken"

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;->AuthKey:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;->AuthKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;->AuthKey:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1149
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;->AuthKey:Ljava/lang/String;

    goto :goto_0
.end method

.method private _loginIfNeeded()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->deviceToken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    if-nez v0, :cond_0

    .line 1237
    iget-object v0, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->EmailAddress:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->HandsetDeviceId:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->Password:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/cscore/util/CSUtil;->getServerTime(Landroid/content/Context;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->getAuthTicket(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_clientVersionString:Ljava/lang/String;

    invoke-super {p0, v0, v1, v2, v3}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->HandsetLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->deviceToken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    .line 1242
    :cond_0
    return-void
.end method

.method private _nullableToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1246
    .local p1, obj:Ljava/lang/Object;,"TT;"
    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private _sendRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 4
    .parameter "url"
    .parameter "method"
    .parameter "param"
    .parameter "authenticated"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1179
    new-instance v1, Lcom/htc/cscore/restapi/request/JSONCloudRequest$StreamableString;

    const-string v2, "\\\\"

    const-string v3, "\\"

    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/cscore/restapi/request/JSONCloudRequest$StreamableString;-><init>(Ljava/lang/String;)V

    .line 1180
    .local v1, outParam:Lcom/htc/cscore/restapi/request/JSONCloudRequest$StreamableString;
    new-instance v0, Lcom/htc/cscore/restapi/request/JSONCloudRequest$StreamableString;

    invoke-direct {v0}, Lcom/htc/cscore/restapi/request/JSONCloudRequest$StreamableString;-><init>()V

    .line 1181
    .local v0, inParam:Lcom/htc/cscore/restapi/request/JSONCloudRequest$StreamableString;
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->sendAuthenticatedRequestViaStreamables(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Lcom/htc/cscore/restapi/request/JSONCloudRequest$WriteStreamable;Lcom/htc/cscore/restapi/request/JSONCloudRequest$ReadStreamable;)V

    .line 1183
    :goto_0
    iget-object v2, v0, Lcom/htc/cscore/restapi/request/JSONCloudRequest$StreamableString;->_s:Ljava/lang/String;

    return-object v2

    .line 1182
    :cond_0
    const-string v2, ""

    invoke-static {p1, p2, v2, v1, v0}, Lcom/htc/cscore/restapi/request/JSONCloudRequest;->sendHttpRequestViaStreamables(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$WriteStreamable;Lcom/htc/cscore/restapi/request/JSONCloudRequest$ReadStreamable;)V

    goto :goto_0
.end method

.method public static getRegionForAccount(Ljava/lang/String;ZLjava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;
    .locals 3
    .parameter "serverName"
    .parameter "devServerMode"
    .parameter "emailAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    .line 413
    new-instance v0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    const-string v1, ""

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/UUID;)V

    .line 414
    .local v0, rest:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;
    invoke-virtual {v0, p2}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->GetRegionForAccount(Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;

    move-result-object v1

    return-object v1
.end method

.method public static getRegions(Ljava/lang/String;Z)Lcom/htc/cscore/restapi/json/SearchResults;
    .locals 4
    .parameter "serverName"
    .parameter "devServerMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
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
    const/4 v3, 0x0

    .line 394
    new-instance v0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    const-string v1, ""

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/UUID;)V

    .line 395
    .local v0, rest:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;
    const-string v1, "Name"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->GetRegions(Ljava/lang/String;Ljava/lang/Boolean;II)Lcom/htc/cscore/restapi/json/SearchResults;

    move-result-object v1

    return-object v1
.end method

.method private sendAuthenticatedRequestViaStreamables(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Lcom/htc/cscore/restapi/request/JSONCloudRequest$WriteStreamable;Lcom/htc/cscore/restapi/request/JSONCloudRequest$ReadStreamable;)V
    .locals 3
    .parameter "url"
    .parameter "method"
    .parameter "outParam"
    .parameter "inParam"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1153
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 1155
    invoke-direct {p0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_loginIfNeeded()V

    .line 1159
    :try_start_0
    iget-object v2, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->deviceToken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    invoke-static {v2}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_getAuthKey(Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2, v2, p3, p4}, Lcom/htc/cscore/restapi/request/JSONCloudRequest;->sendHttpRequestViaStreamables(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$WriteStreamable;Lcom/htc/cscore/restapi/request/JSONCloudRequest$ReadStreamable;)V
    :try_end_0
    .catch Lcom/htc/cscore/restapi/exceptions/ClientNotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1174
    :cond_0
    return-void

    .line 1162
    :catch_0
    move-exception v0

    .line 1164
    .local v0, e:Lcom/htc/cscore/restapi/exceptions/ClientNotAuthorizedException;
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->EmailAddress:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_IsNullOrEmpty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->Password:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_IsNullOrEmpty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1166
    :cond_1
    throw v0

    .line 1170
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->deviceToken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    .line 1153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private validateCorrectCredentials(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "emailAddress"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/ClientInvalidCredentialsException;
        }
    .end annotation

    .prologue
    .line 1094
    if-nez p1, :cond_0

    .line 1095
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ClientInvalidCredentialsException;

    const-string v1, "Null email address"

    invoke-direct {v0, v1}, Lcom/htc/cscore/restapi/exceptions/ClientInvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1098
    :cond_0
    if-nez p2, :cond_1

    .line 1099
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/ClientInvalidCredentialsException;

    const-string v1, "Null password"

    invoke-direct {v0, v1}, Lcom/htc/cscore/restapi/exceptions/ClientInvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1101
    :cond_1
    return-void
.end method


# virtual methods
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

    .line 537
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

    .line 540
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 542
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 544
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 546
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 547
    .local v5, retObj:Ljava/util/List;,"Ljava/util/List<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;>;"
    new-instance v7, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$1;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$1;-><init>(Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 548
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Ljava/util/List;,"Ljava/util/List<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;>;"
    check-cast v5, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    .restart local v5       #retObj:Ljava/util/List;,"Ljava/util/List<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;>;"
    if-nez v5, :cond_0

    .line 550
    const/4 v5, 0x0

    .line 552
    .end local v5           #retObj:Ljava/util/List;,"Ljava/util/List<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;>;"
    :cond_0
    return-object v5

    .line 554
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 555
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "GetFriendRecommendedLikesComments (%s)"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v6, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public GetMyCommentAndLikeCounts(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 12
    .parameter "appTypes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WCommentAndLikeCounts;",
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

    .line 585
    const-string v7, "%s/Services/RecommendCommentLike.svc/RecommendCommentLike/GetMyCommentAndLikeCounts/?appTypes=%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v9, v8, v11

    invoke-direct {p0, p1}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_nullableToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 588
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 590
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 592
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 594
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 595
    .local v5, retObj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/cscore/restapi/proxy/WebClasses$WCommentAndLikeCounts;>;"
    new-instance v7, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$3;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$3;-><init>(Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 596
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WCommentAndLikeCounts;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/cscore/restapi/proxy/WebClasses$WCommentAndLikeCounts;>;"
    check-cast v5, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    .restart local v5       #retObj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/cscore/restapi/proxy/WebClasses$WCommentAndLikeCounts;>;"
    if-nez v5, :cond_0

    .line 598
    const/4 v5, 0x0

    .line 600
    .end local v5           #retObj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/cscore/restapi/proxy/WebClasses$WCommentAndLikeCounts;>;"
    :cond_0
    return-object v5

    .line 602
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 603
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "GetMyCommentsAndLikes (%s)"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v6, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public GetMyCommentsAndLikes(Ljava/lang/String;Ljava/lang/String;ZII)Lcom/htc/cscore/restapi/json/SearchResults;
    .locals 12
    .parameter "appTypes"
    .parameter "sortBy"
    .parameter "sortDescending"
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZII)",
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
    .line 560
    const-string v8, "MyHTC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GetMyCommentsAndLikes: appTypes = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "sortBy = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "sortDescending = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "start = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "count"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const-string v8, "%s/Services/RecommendCommentLike.svc/RecommendCommentLike/GetMyCommentsAndLikes/?appTypes=%s&sortBy=%s&sortDescending=%s&start=%s&count=%s"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-direct {p0, p1}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_nullableToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-direct {p0, p2}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_nullableToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_nullableToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_nullableToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_nullableToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 565
    .local v7, url:Ljava/lang/String;
    :try_start_0
    const-string v5, ""

    .line 567
    .local v5, paramObj:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 569
    .local v4, jsonSend:Ljava/lang/String;
    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v7, v8, v4}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 571
    .local v3, jsonRec:Ljava/lang/String;
    new-instance v6, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v6}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    .line 572
    .local v6, retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;>;"
    new-instance v8, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$2;

    invoke-direct {v8, p0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$2;-><init>(Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)V

    invoke-virtual {v8}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 573
    .local v2, genericType:Ljava/lang/reflect/Type;
    const-class v8, Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;

    invoke-static {v6, v3, v8, v2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;>;"
    check-cast v6, Lcom/htc/cscore/restapi/json/SearchResults;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    .restart local v6       #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;>;"
    if-nez v6, :cond_0

    .line 575
    const/4 v6, 0x0

    .line 577
    .end local v6           #retObj:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;>;"
    :cond_0
    return-object v6

    .line 579
    .end local v2           #genericType:Ljava/lang/reflect/Type;
    .end local v3           #jsonRec:Ljava/lang/String;
    .end local v4           #jsonSend:Ljava/lang/String;
    .end local v5           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 580
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "GetMyCommentsAndLikes (%s)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v1, v9}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v8

    throw v8
.end method

.method public HandsetLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    .locals 3
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
    .line 1198
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/CSException;

    const-string v1, "RestServicesProxy.HandsetLogin - this function should not be called directly. Please use the HandsetLogin function which specifies the packageName and PackageManager"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/cscore/restapi/exceptions/CSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public HandsetLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    .locals 6
    .parameter "emailAddress"
    .parameter "handsetDeviceId"
    .parameter "AuthTicket"
    .parameter "packageName"
    .parameter "pm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    .line 1215
    :try_start_0
    invoke-static {p4, p5}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->getClientVersionString(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, p1, p2, p3, v2}, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->HandsetLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    :try_end_0
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    return-object v2

    .line 1220
    :catch_0
    move-exception v0

    .line 1222
    .local v0, csException:Lcom/htc/cscore/restapi/exceptions/CSException;
    throw v0

    .line 1224
    .end local v0           #csException:Lcom/htc/cscore/restapi/exceptions/CSException;
    :catch_1
    move-exception v1

    .line 1225
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Lcom/htc/cscore/restapi/exceptions/CSException;

    const-string v3, "HandsetLogin"

    const-string v4, "RestServicesUtilities._TranslateException"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v1, v5}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->_TranslateException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Ljava/lang/Exception;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/htc/cscore/restapi/exceptions/CSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public SetServerName(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .parameter "serviceUri"
    .parameter "cmsUri"
    .parameter "devServerMode"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 223
    if-eqz p1, :cond_0

    .line 225
    iput-boolean p3, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->DevServerMode:Z

    .line 226
    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v2

    .line 227
    .local v0, prefixWithProtocol:Z
    :goto_0
    if-eqz p3, :cond_4

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_3

    const-string v1, "http://"

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":8081"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    .line 237
    .end local v0           #prefixWithProtocol:Z
    :cond_0
    :goto_2
    if-eqz p2, :cond_1

    .line 239
    const-string v1, "http"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    move v0, v2

    .line 240
    .restart local v0       #prefixWithProtocol:Z
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_7

    const-string v1, "https://"

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->removeTrailingSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_cmsUri:Ljava/lang/String;

    .line 243
    .end local v0           #prefixWithProtocol:Z
    :cond_1
    return-void

    :cond_2
    move v0, v3

    .line 226
    goto :goto_0

    .line 229
    .restart local v0       #prefixWithProtocol:Z
    :cond_3
    const-string v1, ""

    goto :goto_1

    .line 233
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_5

    const-string v1, "https://"

    :goto_5
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->removeTrailingSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const-string v1, ""

    goto :goto_5

    .end local v0           #prefixWithProtocol:Z
    :cond_6
    move v0, v3

    .line 239
    goto :goto_3

    .line 240
    .restart local v0       #prefixWithProtocol:Z
    :cond_7
    const-string v1, ""

    goto :goto_4
.end method

.method protected _authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"
    .parameter "method"
    .parameter "outParam"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1121
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_sendRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected _webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;
    .locals 2
    .parameter "functionName"
    .parameter "e"
    .parameter "usingDeviceToken"

    .prologue
    .line 1110
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/htc/cscore/restapi/exceptions/CSException;

    if-ne v0, v1, :cond_0

    check-cast p2, Lcom/htc/cscore/restapi/exceptions/CSException;

    .line 1111
    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_0
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/CSException;

    const-string v1, "RestServicesUtilities._TranslateException"

    invoke-static {v1, p2, p3}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->_TranslateException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/htc/cscore/restapi/exceptions/CSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p2, v0

    goto :goto_0
.end method

.method protected _webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"
    .parameter "method"
    .parameter "outParam"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1131
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_sendRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bindHandset(Lcom/htc/cscore/restapi/proxy/WebClasses$WBindRequest;)V
    .locals 7
    .parameter "bindRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 1015
    :try_start_0
    iget-object v2, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->EmailAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->Password:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->validateCorrectCredentials(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    iget-object v2, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->Password:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/cscore/util/CSUtil;->getServerTime(Landroid/content/Context;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->getAuthTicket(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 1017
    .local v0, authTicket:Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->BindHandsetToAccount(Lcom/htc/cscore/restapi/proxy/WebClasses$WBindRequest;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/htc/cscore/restapi/exceptions/ClientInvalidCredentialsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1023
    return-void

    .line 1019
    .end local v0           #authTicket:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1021
    .local v1, e:Lcom/htc/cscore/restapi/exceptions/ClientInvalidCredentialsException;
    const-string v2, "bindHandset (%s,%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->EmailAddress:Ljava/lang/String;

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->HandsetDeviceId:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v1, v3}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v2

    throw v2
.end method

.method public createAccount(Ljava/lang/String;Ljava/lang/String;Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/UUID;
    .locals 6
    .parameter "fname"
    .parameter "lname"
    .parameter "region"
    .parameter "languagecode"
    .parameter "areaCode"
    .parameter "phoneNumber"
    .parameter "handsetDevId"
    .parameter "countryCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    .line 446
    new-instance v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;

    invoke-direct {v3}, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;-><init>()V

    .line 447
    .local v3, virtualDev:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->PhoneNumberString:Ljava/lang/String;

    .line 448
    invoke-static {p7}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->HandsetDeviceId:Ljava/util/UUID;

    .line 449
    sget-object v4, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;->Unknown:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    iput-object v4, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->ForceRingState:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    .line 450
    sget-object v4, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;->Unknown:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    iput-object v4, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->RemoteDataWipeState:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    .line 451
    sget-object v4, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;->Unknown:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    iput-object v4, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->LockedHandsetState:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    .line 452
    sget-object v4, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;->Unknown:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    iput-object v4, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->MessageForwardStateEmail:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    .line 453
    sget-object v4, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;->Unknown:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    iput-object v4, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->MessageForwardStatePhone:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    .line 454
    sget-object v4, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;->Unknown:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    iput-object v4, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->CallForwardingState:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WPhoneOperationStatus;

    .line 455
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->BindRequestId:Ljava/util/UUID;

    .line 456
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->AlternateNumber:Ljava/lang/String;

    .line 457
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->MessageForwardEmailAddress:Ljava/lang/String;

    .line 458
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->MessageForwardPhoneNumber:Ljava/lang/String;

    .line 459
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->CallForwardPhoneNumber:Ljava/lang/String;

    .line 460
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->LockHandsetPin:Ljava/lang/String;

    .line 461
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->LockHandsetMessage:Ljava/lang/String;

    .line 462
    iput-object p5, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->AreaCode:Ljava/lang/String;

    .line 463
    iput-object p8, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->CountryCode:Ljava/lang/String;

    .line 464
    sget-object v4, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;->ResyncStateInSync:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;

    iput-object v4, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->ResyncState:Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice$WResyncStateType;

    .line 465
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WVirtualDevice;->ResyncStateDate:Ljava/util/Date;

    .line 467
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;

    invoke-direct {v0}, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;-><init>()V

    .line 468
    .local v0, account:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;
    iget-object v4, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->EmailAddress:Ljava/lang/String;

    iput-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->EmailAddress:Ljava/lang/String;

    .line 469
    iget-object v4, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->Password:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/cscore/restapi/utility/Whirlpool;->WhirlPoolHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->NewPassword:Ljava/lang/String;

    .line 470
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->AuthTicket:Ljava/lang/String;

    .line 471
    sget-object v4, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountStatusType;->Active:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountStatusType;

    iput-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->AccountStatus:Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount$WAccountStatusType;

    .line 472
    iput-object p1, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->FirstName:Ljava/lang/String;

    .line 473
    iput-object p2, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->LastName:Ljava/lang/String;

    .line 474
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->Region:Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;

    .line 478
    iget-object v4, p3, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;->Id:Ljava/util/UUID;

    iput-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->RegionId:Ljava/util/UUID;

    .line 483
    iput-object p4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->LanguageCode:Ljava/lang/String;

    .line 484
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->VirtualDevices:Ljava/util/List;

    .line 485
    iget-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->VirtualDevices:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    iput-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->DateOfBirth:Ljava/util/Date;

    .line 487
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->SendEmailAboutProducts:Z

    .line 488
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->CanShareUsageInfo:Z

    .line 489
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->TellHTCId:Ljava/lang/String;

    .line 490
    const-string v4, "What is your favorite sport?"

    iput-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->SecurityQuestion:Ljava/lang/String;

    .line 491
    const-string v4, "Football"

    iput-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->SecurityAnswer:Ljava/lang/String;

    .line 492
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    iput-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->CreateTime:Ljava/util/Date;

    .line 493
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->VerifyEmailId:Ljava/util/UUID;

    .line 494
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->IpAddress:Ljava/lang/String;

    .line 495
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->CaptchaChallengeField:Ljava/lang/String;

    .line 496
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;->CaptchaResponseField:Ljava/lang/String;

    .line 498
    invoke-virtual {p0, v0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->CreateAccountFromHandset(Lcom/htc/cscore/restapi/proxy/WebClasses$WAccount;)Ljava/lang/String;

    move-result-object v1

    .line 499
    .local v1, retval:Ljava/lang/String;
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    .line 500
    .local v2, uuid:Ljava/util/UUID;
    if-eqz v2, :cond_0

    .line 503
    .end local v2           #uuid:Ljava/util/UUID;
    :goto_0
    return-object v2

    .restart local v2       #uuid:Ljava/util/UUID;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public deleteCSAccount(Ljava/lang/String;)V
    .locals 10
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 846
    const-string v5, "%s/Services/AccountsExtn.svc/Accounts/Delete/"

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 848
    .local v4, url:Ljava/lang/String;
    :try_start_0
    const-string v3, ""

    .line 851
    .local v3, paramObj:Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    .end local v3           #paramObj:Ljava/lang/String;
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 852
    .local v3, paramObj:Lorg/json/JSONObject;
    move-object v0, v3

    check-cast v0, Lorg/json/JSONObject;

    move-object v5, v0

    const-string v6, "AuthTicket"

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 854
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 856
    .local v2, jsonSend:Ljava/lang/String;
    sget-object v5, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v4, v5, v2}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    return-void

    .line 858
    .end local v2           #jsonSend:Ljava/lang/String;
    .end local v3           #paramObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 859
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "deleteCSAccount (%s)"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v1, v6}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v5

    throw v5
.end method

.method public getAllHtcHubContent(Ljava/lang/String;)Lcom/htc/cscore/restapi/json/HtcHubContent;
    .locals 13
    .parameter "language"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 289
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    move-object v9, v2

    move-object v10, v2

    move-object v11, v2

    move-object v12, v2

    invoke-virtual/range {v0 .. v12}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->getFilteredHtcHubContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/htc/cscore/restapi/json/HtcHubContent;

    move-result-object v0

    return-object v0
.end method

.method public getAllSettingForProductOption()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WSetting;",
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

    .line 683
    const-string v7, "%s/Services/SimpleSettings.svc/SimpleSettings/GetSettings/"

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 687
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 688
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 689
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 691
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 692
    .local v5, retObj:Ljava/util/List;,"Ljava/util/List<Lcom/htc/cscore/restapi/proxy/WebClasses$WSetting;>;"
    new-instance v7, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$6;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$6;-><init>(Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 693
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Lcom/htc/cscore/restapi/proxy/WebClasses$WSetting;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Ljava/util/List;,"Ljava/util/List<Lcom/htc/cscore/restapi/proxy/WebClasses$WSetting;>;"
    check-cast v5, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    .restart local v5       #retObj:Ljava/util/List;,"Ljava/util/List<Lcom/htc/cscore/restapi/proxy/WebClasses$WSetting;>;"
    if-nez v5, :cond_0

    .line 696
    const/4 v5, 0x0

    .line 698
    .end local v5           #retObj:Ljava/util/List;,"Ljava/util/List<Lcom/htc/cscore/restapi/proxy/WebClasses$WSetting;>;"
    :cond_0
    return-object v5

    .line 701
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 702
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "getAllSettingForProductOption (%s)"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v6, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public getCmsServerUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_cmsUri:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentLegalDocsID(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "region"
    .parameter "locale"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
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

    .line 875
    const-string v7, "%s/Services/LegalDocs.svc/LegalDocs/Current/%s/%s/Id/"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v9, v8, v11

    aput-object p1, v8, v10

    const/4 v9, 0x2

    aput-object p2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 878
    .local v5, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 880
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 882
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v5, v7, v3}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 885
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x4

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 886
    .local v6, versionList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v7, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$8;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$8;-><init>(Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$8;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 887
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Ljava/util/List;

    invoke-static {v6, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #versionList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    check-cast v6, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 889
    .restart local v6       #versionList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v6, :cond_0

    .line 890
    const/4 v6, 0x0

    .line 892
    .end local v6           #versionList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    return-object v6

    .line 894
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 895
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "getCurrentLegalDocsID (%s)"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v5, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public getEmailForProductOption()Ljava/lang/Boolean;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 614
    const-string v7, "%s/Services/Accounts.svc/Accounts/SendEmailAboutProducts/"

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 617
    .local v6, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 619
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 621
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v6, v7, v3}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 623
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 624
    .local v5, retObj:Ljava/lang/String;
    new-instance v7, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$4;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$4;-><init>(Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 625
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Ljava/lang/Boolean;

    invoke-static {v5, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #retObj:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 628
    .restart local v5       #retObj:Ljava/lang/String;
    if-nez v5, :cond_0

    .line 629
    const/4 v7, 0x0

    .line 631
    :goto_0
    return-object v7

    :cond_0
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 634
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    .end local v5           #retObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 635
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "getEmailForProductOption (%s)"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v6, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public getFileAsset(Lcom/htc/cscore/restapi/request/JSONCloudRequest$ReadStreamable;Ljava/lang/String;)V
    .locals 7
    .parameter "dataReceiver"
    .parameter "partialUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 267
    const-string v2, "%s%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_cmsUri:Ljava/lang/String;

    aput-object v4, v3, v6

    aput-object p2, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, url:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->sendAuthenticatedRequestViaStreamables(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Lcom/htc/cscore/restapi/request/JSONCloudRequest$WriteStreamable;Lcom/htc/cscore/restapi/request/JSONCloudRequest$ReadStreamable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "RestServicesProxy.getBinaryAsset failed (%s)"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v3}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v2

    throw v2
.end method

.method public getFilteredHtcHubContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/htc/cscore/restapi/json/HtcHubContent;
    .locals 10
    .parameter "language"
    .parameter "appType"
    .parameter "region"
    .parameter "model"
    .parameter "id"
    .parameter "operator"
    .parameter "vendor"
    .parameter "htcContent"
    .parameter "featured"
    .parameter "sortBy"
    .parameter "pageNum"
    .parameter "pageSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    .line 325
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    new-instance v6, Lcom/htc/cscore/restapi/exceptions/CSException;

    const-string v7, "getFilteredHtcHubContent - language parameter cannot be empty"

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/htc/cscore/restapi/exceptions/CSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 326
    :cond_1
    const-string/jumbo v6, "zh"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 328
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 332
    .local v2, loc:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    const-string v7, "cn"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 333
    const-string p1, "cn"

    .line 338
    .end local v2           #loc:Ljava/util/Locale;
    :cond_2
    :goto_0
    const-string v6, "%s/%s/services/json/htc-hub-content.js?apptype=%s&region=%s&model=%s&appid=%s&operator=%s&vendor=%s&htc=%s&featured=%s&sortby=%s&page=%s&size=%s"

    const/16 v7, 0xd

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_cmsUri:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    invoke-direct {p0, p2}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_nullableToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-direct {p0, p3}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_nullableToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    invoke-direct {p0, p4}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_nullableToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    invoke-direct {p0, p5}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_nullableToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_nullableToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x7

    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_nullableToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x8

    move-object/from16 v0, p8

    invoke-direct {p0, v0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_nullableToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x9

    move-object/from16 v0, p9

    invoke-direct {p0, v0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_nullableToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xa

    move-object/from16 v0, p10

    invoke-direct {p0, v0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_nullableToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xb

    move-object/from16 v0, p11

    invoke-direct {p0, v0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_nullableToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xc

    move-object/from16 v0, p12

    invoke-direct {p0, v0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_nullableToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 354
    .local v5, url:Ljava/lang/String;
    :try_start_0
    sget-object v6, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    const-string v7, ""

    invoke-virtual {p0, v5, v6, v7}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 356
    .local v4, retVal:Ljava/lang/String;
    new-instance v3, Lcom/htc/cscore/restapi/json/HtcHubContent;

    invoke-direct {v3}, Lcom/htc/cscore/restapi/json/HtcHubContent;-><init>()V

    .line 357
    .local v3, retObj:Lcom/htc/cscore/restapi/json/HtcHubContent;
    const-class v6, Lcom/htc/cscore/restapi/json/HtcHubContent;

    invoke-static {v3, v4, v6}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #retObj:Lcom/htc/cscore/restapi/json/HtcHubContent;
    check-cast v3, Lcom/htc/cscore/restapi/json/HtcHubContent;

    .line 361
    .restart local v3       #retObj:Lcom/htc/cscore/restapi/json/HtcHubContent;
    if-nez v3, :cond_4

    new-instance v6, Ljava/lang/Exception;

    const-string v7, "getHtcHubContent failed to deserialize return value: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    .end local v3           #retObj:Lcom/htc/cscore/restapi/json/HtcHubContent;
    .end local v4           #retVal:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 381
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "getHtcHubContent (%s,%s)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v6, v1, v7}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v6

    throw v6

    .line 334
    .end local v1           #e:Ljava/lang/Exception;
    .end local v5           #url:Ljava/lang/String;
    .restart local v2       #loc:Ljava/util/Locale;
    :cond_3
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    const-string v7, "tw"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 335
    const-string p1, "tw"

    goto/16 :goto_0

    .line 366
    .end local v2           #loc:Ljava/util/Locale;
    .restart local v3       #retObj:Lcom/htc/cscore/restapi/json/HtcHubContent;
    .restart local v4       #retVal:Ljava/lang/String;
    .restart local v5       #url:Ljava/lang/String;
    :cond_4
    if-eqz p11, :cond_5

    if-eqz p12, :cond_5

    :try_start_1
    iget-object v6, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->apps:Lcom/htc/cscore/restapi/json/SearchResults;

    if-eqz v6, :cond_5

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->apps:Lcom/htc/cscore/restapi/json/SearchResults;

    iget v7, v7, Lcom/htc/cscore/restapi/json/SearchResults;->Count:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    div-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    if-le v6, v7, :cond_5

    new-instance v6, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v6}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    iput-object v6, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->apps:Lcom/htc/cscore/restapi/json/SearchResults;

    .line 367
    :cond_5
    if-eqz p11, :cond_6

    if-eqz p12, :cond_6

    iget-object v6, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->music:Lcom/htc/cscore/restapi/json/SearchResults;

    if-eqz v6, :cond_6

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->music:Lcom/htc/cscore/restapi/json/SearchResults;

    iget v7, v7, Lcom/htc/cscore/restapi/json/SearchResults;->Count:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    div-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    if-le v6, v7, :cond_6

    new-instance v6, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v6}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    iput-object v6, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->music:Lcom/htc/cscore/restapi/json/SearchResults;

    .line 368
    :cond_6
    if-eqz p11, :cond_7

    if-eqz p12, :cond_7

    iget-object v6, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->scenes:Lcom/htc/cscore/restapi/json/SearchResults;

    if-eqz v6, :cond_7

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->scenes:Lcom/htc/cscore/restapi/json/SearchResults;

    iget v7, v7, Lcom/htc/cscore/restapi/json/SearchResults;->Count:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    div-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    if-le v6, v7, :cond_7

    new-instance v6, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v6}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    iput-object v6, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->scenes:Lcom/htc/cscore/restapi/json/SearchResults;

    .line 369
    :cond_7
    if-eqz p11, :cond_8

    if-eqz p12, :cond_8

    iget-object v6, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->skins:Lcom/htc/cscore/restapi/json/SearchResults;

    if-eqz v6, :cond_8

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->skins:Lcom/htc/cscore/restapi/json/SearchResults;

    iget v7, v7, Lcom/htc/cscore/restapi/json/SearchResults;->Count:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    div-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    if-le v6, v7, :cond_8

    new-instance v6, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v6}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    iput-object v6, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->skins:Lcom/htc/cscore/restapi/json/SearchResults;

    .line 370
    :cond_8
    if-eqz p11, :cond_9

    if-eqz p12, :cond_9

    iget-object v6, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->widgets:Lcom/htc/cscore/restapi/json/SearchResults;

    if-eqz v6, :cond_9

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->widgets:Lcom/htc/cscore/restapi/json/SearchResults;

    iget v7, v7, Lcom/htc/cscore/restapi/json/SearchResults;->Count:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    div-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    if-le v6, v7, :cond_9

    new-instance v6, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v6}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    iput-object v6, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->widgets:Lcom/htc/cscore/restapi/json/SearchResults;

    .line 371
    :cond_9
    if-eqz p11, :cond_a

    if-eqz p12, :cond_a

    iget-object v6, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->wallpapers:Lcom/htc/cscore/restapi/json/SearchResults;

    if-eqz v6, :cond_a

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->wallpapers:Lcom/htc/cscore/restapi/json/SearchResults;

    iget v7, v7, Lcom/htc/cscore/restapi/json/SearchResults;->Count:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    div-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    if-le v6, v7, :cond_a

    new-instance v6, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v6}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    iput-object v6, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->wallpapers:Lcom/htc/cscore/restapi/json/SearchResults;

    .line 372
    :cond_a
    if-eqz p11, :cond_b

    if-eqz p12, :cond_b

    iget-object v6, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->soundsets:Lcom/htc/cscore/restapi/json/SearchResults;

    if-eqz v6, :cond_b

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->soundsets:Lcom/htc/cscore/restapi/json/SearchResults;

    iget v7, v7, Lcom/htc/cscore/restapi/json/SearchResults;->Count:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    div-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    if-le v6, v7, :cond_b

    new-instance v6, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v6}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    iput-object v6, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->soundsets:Lcom/htc/cscore/restapi/json/SearchResults;

    .line 373
    :cond_b
    if-eqz p11, :cond_c

    if-eqz p12, :cond_c

    iget-object v6, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->ringtones:Lcom/htc/cscore/restapi/json/SearchResults;

    if-eqz v6, :cond_c

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->ringtones:Lcom/htc/cscore/restapi/json/SearchResults;

    iget v7, v7, Lcom/htc/cscore/restapi/json/SearchResults;->Count:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    div-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    if-le v6, v7, :cond_c

    new-instance v6, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v6}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    iput-object v6, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->ringtones:Lcom/htc/cscore/restapi/json/SearchResults;

    .line 374
    :cond_c
    if-eqz p11, :cond_d

    if-eqz p12, :cond_d

    iget-object v6, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->alarms:Lcom/htc/cscore/restapi/json/SearchResults;

    if-eqz v6, :cond_d

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->alarms:Lcom/htc/cscore/restapi/json/SearchResults;

    iget v7, v7, Lcom/htc/cscore/restapi/json/SearchResults;->Count:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    div-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    if-le v6, v7, :cond_d

    new-instance v6, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v6}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    iput-object v6, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->alarms:Lcom/htc/cscore/restapi/json/SearchResults;

    .line 375
    :cond_d
    if-eqz p11, :cond_e

    if-eqz p12, :cond_e

    iget-object v6, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->notifications:Lcom/htc/cscore/restapi/json/SearchResults;

    if-eqz v6, :cond_e

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->notifications:Lcom/htc/cscore/restapi/json/SearchResults;

    iget v7, v7, Lcom/htc/cscore/restapi/json/SearchResults;->Count:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    div-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    if-le v6, v7, :cond_e

    new-instance v6, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v6}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    iput-object v6, v3, Lcom/htc/cscore/restapi/json/HtcHubContent;->notifications:Lcom/htc/cscore/restapi/json/SearchResults;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 377
    :cond_e
    return-object v3
.end method

.method public getFullMergeStopFlag()Lcom/htc/cscore/restapi/proxy/WebClasses$WServerFMStatus;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 977
    const-string v6, "%s/Services/VirtualDevices.svc/Devices/FullMergeSync/"

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 980
    .local v5, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 982
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 984
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v6, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v5, v6, v3}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 986
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WServerFMStatus;

    invoke-direct {v1}, Lcom/htc/cscore/restapi/proxy/WebClasses$WServerFMStatus;-><init>()V

    .line 988
    .local v1, fmStatus:Lcom/htc/cscore/restapi/proxy/WebClasses$WServerFMStatus;
    const-class v6, Lcom/htc/cscore/restapi/proxy/WebClasses$WServerFMStatus;

    invoke-static {v1, v2, v6}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #fmStatus:Lcom/htc/cscore/restapi/proxy/WebClasses$WServerFMStatus;
    check-cast v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WServerFMStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 990
    .restart local v1       #fmStatus:Lcom/htc/cscore/restapi/proxy/WebClasses$WServerFMStatus;
    if-nez v1, :cond_0

    .line 991
    const/4 v1, 0x0

    .line 993
    .end local v1           #fmStatus:Lcom/htc/cscore/restapi/proxy/WebClasses$WServerFMStatus;
    :cond_0
    return-object v1

    .line 996
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 997
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "getFullMergeStopFlag (%s)"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v5, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v6, v0, v7}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v6

    throw v6
.end method

.method public getPendingLegalDoc(Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WPendingLegalDoc;
    .locals 11
    .parameter "locale"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 941
    const-string v6, "%s/Services/LegalDocs.svc/LegalDocs/Pending/%s/"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v8, v7, v10

    aput-object p1, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 944
    .local v5, url:Ljava/lang/String;
    :try_start_0
    const-string v3, ""

    .line 946
    .local v3, paramObj:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 948
    .local v2, jsonSend:Ljava/lang/String;
    sget-object v6, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v5, v6, v2}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 951
    .local v1, jsonRec:Ljava/lang/String;
    new-instance v4, Lcom/htc/cscore/restapi/proxy/WebClasses$WPendingLegalDoc;

    invoke-direct {v4}, Lcom/htc/cscore/restapi/proxy/WebClasses$WPendingLegalDoc;-><init>()V

    .line 953
    .local v4, pendingLegalDoc:Lcom/htc/cscore/restapi/proxy/WebClasses$WPendingLegalDoc;
    const-class v6, Lcom/htc/cscore/restapi/proxy/WebClasses$WPendingLegalDoc;

    invoke-static {v4, v1, v6}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #pendingLegalDoc:Lcom/htc/cscore/restapi/proxy/WebClasses$WPendingLegalDoc;
    check-cast v4, Lcom/htc/cscore/restapi/proxy/WebClasses$WPendingLegalDoc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    .restart local v4       #pendingLegalDoc:Lcom/htc/cscore/restapi/proxy/WebClasses$WPendingLegalDoc;
    if-nez v4, :cond_0

    .line 956
    const/4 v4, 0x0

    .line 958
    .end local v4           #pendingLegalDoc:Lcom/htc/cscore/restapi/proxy/WebClasses$WPendingLegalDoc;
    :cond_0
    return-object v4

    .line 960
    .end local v1           #jsonRec:Ljava/lang/String;
    .end local v2           #jsonSend:Ljava/lang/String;
    .end local v3           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 961
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "getPendingLegalDoc (%s)"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v5, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v6, v0, v7}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v6

    throw v6
.end method

.method public getPendingLegalDocsID(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "region"
    .parameter "locale"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
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

    .line 907
    const-string v7, "%s/Services/LegalDocs.svc/LegalDocs/Pending/%s/%s/Id/"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v9, v8, v11

    aput-object p1, v8, v10

    const/4 v9, 0x2

    aput-object p2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 910
    .local v5, url:Ljava/lang/String;
    :try_start_0
    const-string v4, ""

    .line 912
    .local v4, paramObj:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 914
    .local v3, jsonSend:Ljava/lang/String;
    sget-object v7, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->GET:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v5, v7, v3}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 917
    .local v2, jsonRec:Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x4

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 918
    .local v6, versionList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v7, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$9;

    invoke-direct {v7, p0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$9;-><init>(Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)V

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$9;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 919
    .local v1, genericType:Ljava/lang/reflect/Type;
    const-class v7, Ljava/util/List;

    invoke-static {v6, v2, v7, v1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #versionList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    check-cast v6, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    .restart local v6       #versionList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v6, :cond_0

    .line 922
    const/4 v6, 0x0

    .line 924
    .end local v6           #versionList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    return-object v6

    .line 926
    .end local v1           #genericType:Ljava/lang/reflect/Type;
    .end local v2           #jsonRec:Ljava/lang/String;
    .end local v3           #jsonSend:Ljava/lang/String;
    .end local v4           #paramObj:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 927
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "getPendingLegalDocsID (%s)"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v5, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v0, v8}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v7

    throw v7
.end method

.method public getSettingForProductOption(Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WSetting;
    .locals 13
    .parameter "setting"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 717
    const-string v8, "%s/Services/SimpleSettings.svc/SimpleSettings/GetSetting/"

    new-array v9, v11, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 719
    .local v7, url:Ljava/lang/String;
    :try_start_0
    const-string v5, ""

    .line 720
    .local v5, paramObj:Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    .end local v5           #paramObj:Ljava/lang/String;
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 721
    .local v5, paramObj:Lorg/json/JSONObject;
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "key"

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 722
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 723
    .local v4, jsonSend:Ljava/lang/String;
    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v7, v8, v4}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 725
    .local v3, jsonRec:Ljava/lang/String;
    new-instance v6, Lcom/htc/cscore/restapi/proxy/WebClasses$WSetting;

    invoke-direct {v6}, Lcom/htc/cscore/restapi/proxy/WebClasses$WSetting;-><init>()V

    .line 726
    .local v6, settingList:Lcom/htc/cscore/restapi/proxy/WebClasses$WSetting;
    new-instance v8, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$7;

    invoke-direct {v8, p0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$7;-><init>(Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)V

    invoke-virtual {v8}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$7;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 727
    .local v2, genericType:Ljava/lang/reflect/Type;
    const-class v8, Lcom/htc/cscore/restapi/proxy/WebClasses$WSetting;

    invoke-static {v6, v3, v8, v2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #settingList:Lcom/htc/cscore/restapi/proxy/WebClasses$WSetting;
    check-cast v6, Lcom/htc/cscore/restapi/proxy/WebClasses$WSetting;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    .restart local v6       #settingList:Lcom/htc/cscore/restapi/proxy/WebClasses$WSetting;
    if-nez v6, :cond_0

    .line 730
    const/4 v6, 0x0

    .line 732
    .end local v6           #settingList:Lcom/htc/cscore/restapi/proxy/WebClasses$WSetting;
    :cond_0
    return-object v6

    .line 734
    .end local v2           #genericType:Ljava/lang/reflect/Type;
    .end local v3           #jsonRec:Ljava/lang/String;
    .end local v4           #jsonSend:Ljava/lang/String;
    .end local v5           #paramObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 735
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "getSettingForProductOption (%s)"

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v7, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v1, v9}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v8

    throw v8
.end method

.method public requestBinding(Ljava/lang/String;)Ljava/util/UUID;
    .locals 6
    .parameter "phoneNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    .line 520
    iget-object v3, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->Password:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/cscore/util/CSUtil;->getServerTime(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->getAuthTicket(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, authTicket:Ljava/lang/String;
    new-instance v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WRequestBind;

    invoke-direct {v1}, Lcom/htc/cscore/restapi/proxy/WebClasses$WRequestBind;-><init>()V

    .line 522
    .local v1, requestBind:Lcom/htc/cscore/restapi/proxy/WebClasses$WRequestBind;
    iget-object v3, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->EmailAddress:Ljava/lang/String;

    iput-object v3, v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WRequestBind;->EmailAddress:Ljava/lang/String;

    .line 523
    iget-object v3, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->HandsetDeviceId:Ljava/util/UUID;

    iput-object v3, v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WRequestBind;->HandsetDeviceId:Ljava/util/UUID;

    .line 524
    iput-object p1, v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WRequestBind;->PhoneNumber:Ljava/lang/String;

    .line 526
    invoke-virtual {p0, v1, v0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->RequestBinding(Lcom/htc/cscore/restapi/proxy/WebClasses$WRequestBind;Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    .line 527
    .local v2, retVal:Ljava/util/UUID;
    if-nez v2, :cond_0

    .line 528
    const/4 v2, 0x0

    .line 530
    .end local v2           #retVal:Ljava/util/UUID;
    :cond_0
    return-object v2
.end method

.method public setCredentials(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "emailAddress"
    .parameter "password"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->EmailAddress:Ljava/lang/String;

    .line 198
    iput-object p2, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->Password:Ljava/lang/String;

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->deviceToken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    .line 200
    return-void
.end method

.method public setDeviceToken(Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;)V
    .locals 0
    .parameter "dt"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->deviceToken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    .line 210
    return-void
.end method

.method public setEmailForProductOption(Ljava/lang/Boolean;)V
    .locals 13
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 650
    const-string v8, "%s/Services/Accounts.svc/Accounts/SendEmailAboutProducts/"

    new-array v9, v11, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 653
    .local v7, url:Ljava/lang/String;
    :try_start_0
    const-string v5, ""

    .line 656
    .local v5, paramObj:Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    .end local v5           #paramObj:Ljava/lang/String;
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 657
    .local v5, paramObj:Lorg/json/JSONObject;
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    const-string v9, "SendEmailAboutProducts"

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 659
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 661
    .local v4, jsonSend:Ljava/lang/String;
    sget-object v8, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v7, v8, v4}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 663
    .local v3, jsonRec:Ljava/lang/String;
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    .line 664
    .local v6, retObj:Ljava/lang/String;
    new-instance v8, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$5;

    invoke-direct {v8, p0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$5;-><init>(Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)V

    invoke-virtual {v8}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 665
    .local v2, genericType:Ljava/lang/reflect/Type;
    const-class v8, Ljava/lang/String;

    invoke-static {v6, v3, v8, v2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    return-void

    .line 667
    .end local v2           #genericType:Ljava/lang/reflect/Type;
    .end local v3           #jsonRec:Ljava/lang/String;
    .end local v4           #jsonSend:Ljava/lang/String;
    .end local v5           #paramObj:Lorg/json/JSONObject;
    .end local v6           #retObj:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 668
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "setEmailForProductOption (%s)"

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v7, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v1, v9}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v8

    throw v8
.end method

.method public setLegalDocResponses(Ljava/util/List;Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    .local p1, version:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 820
    const-string v5, "%s/Services/LegalDocs.svc/LegalDocs/Responses/"

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 821
    .local v4, url:Ljava/lang/String;
    new-instance v2, Lcom/htc/cscore/restapi/proxy/WebClasses$WLegalDocsAcceptance;

    invoke-direct {v2}, Lcom/htc/cscore/restapi/proxy/WebClasses$WLegalDocsAcceptance;-><init>()V

    .line 822
    .local v2, legalList:Lcom/htc/cscore/restapi/proxy/WebClasses$WLegalDocsAcceptance;
    iput-object p1, v2, Lcom/htc/cscore/restapi/proxy/WebClasses$WLegalDocsAcceptance;->docIds:Ljava/util/List;

    .line 823
    iput-object p2, v2, Lcom/htc/cscore/restapi/proxy/WebClasses$WLegalDocsAcceptance;->response:Ljava/lang/String;

    .line 826
    :try_start_0
    const-string v3, ""

    .line 828
    .local v3, paramObj:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 830
    .local v3, paramObj:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 832
    .local v1, jsonSend:Ljava/lang/String;
    sget-object v5, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v4, v5, v1}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 837
    return-void

    .line 834
    .end local v1           #jsonSend:Ljava/lang/String;
    .end local v3           #paramObj:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 835
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "setLegalDocResponses (%s)"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v0, v6}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v5

    throw v5
.end method

.method public setSerialNumber(Ljava/lang/String;)V
    .locals 10
    .parameter "sn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 770
    const-string v5, "%s/Services/VirtualDevices.svc/Devices/PhysicalDeviceModel/"

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 773
    .local v4, url:Ljava/lang/String;
    :try_start_0
    const-string v3, ""

    .line 774
    .local v3, paramObj:Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    .end local v3           #paramObj:Ljava/lang/String;
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 775
    .local v3, paramObj:Lorg/json/JSONObject;
    move-object v0, v3

    check-cast v0, Lorg/json/JSONObject;

    move-object v5, v0

    const-string v6, "serialNumber"

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 776
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 778
    .local v2, jsonSend:Ljava/lang/String;
    sget-object v5, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v4, v5, v2}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    return-void

    .line 779
    .end local v2           #jsonSend:Ljava/lang/String;
    .end local v3           #paramObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 780
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "setSerialNumber (%s)"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v1, v6}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v5

    throw v5
.end method

.method public setTellHTCId(Ljava/lang/String;)V
    .locals 10
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 795
    const-string v5, "%s/Services/Accounts.svc/Accounts/SetTellHTCId/"

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 798
    .local v4, url:Ljava/lang/String;
    :try_start_0
    const-string v3, ""

    .line 799
    .local v3, paramObj:Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    .end local v3           #paramObj:Ljava/lang/String;
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 800
    .local v3, paramObj:Lorg/json/JSONObject;
    move-object v0, v3

    check-cast v0, Lorg/json/JSONObject;

    move-object v5, v0

    const-string v6, "TellHTCId"

    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 801
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 803
    .local v2, jsonSend:Ljava/lang/String;
    sget-object v5, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v4, v5, v2}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    return-void

    .line 804
    .end local v2           #jsonSend:Ljava/lang/String;
    .end local v3           #paramObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 805
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "setTellHTCId (%s)"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v1, v6}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v5

    throw v5
.end method

.method public syncMessages(Ljava/lang/String;Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;
    .locals 9
    .parameter "queueName"
    .parameter "setSend"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1038
    const-string v4, "%s/Handset/MessageQueues.svc/MessageQueues/Sync/%s/"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v6, v5, v8

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1040
    .local v3, url:Ljava/lang/String;
    :try_start_0
    new-instance v2, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$StreamablePbReliableMessages;

    invoke-direct {v2, p0, p2}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$StreamablePbReliableMessages;-><init>(Lcom/htc/cscore/restapi/proxy/RestServicesProxy;Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;)V

    .line 1041
    .local v2, outParam:Lcom/htc/cscore/restapi/proxy/RestServicesProxy$StreamablePbReliableMessages;
    new-instance v1, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$StreamablePbReliableMessages;

    invoke-direct {v1, p0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$StreamablePbReliableMessages;-><init>(Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)V

    .line 1042
    .local v1, inParam:Lcom/htc/cscore/restapi/proxy/RestServicesProxy$StreamablePbReliableMessages;
    sget-object v4, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-direct {p0, v3, v4, v2, v1}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->sendAuthenticatedRequestViaStreamables(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Lcom/htc/cscore/restapi/request/JSONCloudRequest$WriteStreamable;Lcom/htc/cscore/restapi/request/JSONCloudRequest$ReadStreamable;)V

    .line 1043
    iget-object v4, v1, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$StreamablePbReliableMessages;->_m:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 1044
    .end local v1           #inParam:Lcom/htc/cscore/restapi/proxy/RestServicesProxy$StreamablePbReliableMessages;
    .end local v2           #outParam:Lcom/htc/cscore/restapi/proxy/RestServicesProxy$StreamablePbReliableMessages;
    :catch_0
    move-exception v0

    .line 1045
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "RestServicesProxy.syncMessages failed (%s)"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v0, v5}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v4

    throw v4
.end method

.method public updateSettingsForProductOption(Lcom/htc/cscore/restapi/proxy/WebClasses$WSettingList;)V
    .locals 9
    .parameter "payload"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 750
    const-string v4, "%s/Services/SimpleSettings.svc/SimpleSettings/UpdateSettingsFromHandset/"

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/cscore/restapi/proxy/ClientRestApi;->ServerUrl:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 753
    .local v3, url:Ljava/lang/String;
    :try_start_0
    const-string v2, ""

    .line 754
    .local v2, paramObj:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 755
    .local v2, paramObj:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 757
    .local v1, jsonSend:Ljava/lang/String;
    sget-object v4, Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;->POST:Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;

    invoke-virtual {p0, v3, v4, v1}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_authenticatedWebRequest(Ljava/lang/String;Lcom/htc/cscore/restapi/request/JSONCloudRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    return-void

    .line 758
    .end local v1           #jsonSend:Ljava/lang/String;
    .end local v2           #paramObj:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 759
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "updateSettingsForProductOption (%s)"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v0, v5}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->_webExceptionToClientException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Boolean;)Lcom/htc/cscore/restapi/exceptions/CSException;

    move-result-object v4

    throw v4
.end method
