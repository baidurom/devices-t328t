.class public Lcom/htc/telephony/HtcTelephonyManager;
.super Ljava/lang/Object;
.source "HtcTelephonyManager.java"


# static fields
.field public static final SECTOR_ID_NETWORK_EHRPD:I = 0x0

.field public static final SECTOR_ID_NETWORK_LTE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HtcTelephonyManager"

.field private static sInstance:Lcom/htc/telephony/HtcTelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/htc/telephony/HtcTelephonyManager;

    invoke-direct {v0}, Lcom/htc/telephony/HtcTelephonyManager;-><init>()V

    sput-object v0, Lcom/htc/telephony/HtcTelephonyManager;->sInstance:Lcom/htc/telephony/HtcTelephonyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static getDefault()Lcom/htc/telephony/HtcTelephonyManager;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/htc/telephony/HtcTelephonyManager;->sInstance:Lcom/htc/telephony/HtcTelephonyManager;

    return-object v0
.end method

.method private getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;
    .locals 1

    .prologue
    .line 48
    const-string v0, "htctelephony"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSectorId(I)Ljava/lang/String;
    .locals 3
    .parameter "requestedNetworkType"

    .prologue
    const/4 v1, 0x0

    .line 225
    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getSectorId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 229
    :goto_0
    return-object v1

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 228
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 229
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestGetDOMAIN()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 105
    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetDOMAIN()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 109
    :goto_0
    return-object v1

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 108
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 109
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestGetGID1()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 241
    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetGID1()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 245
    :goto_0
    return-object v1

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 244
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 245
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestGetIMPI()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 90
    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetIMPI()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 94
    :goto_0
    return-object v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 93
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 94
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestGetIMPU()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 120
    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetIMPU()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 124
    :goto_0
    return-object v1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 123
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 124
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestGetIMSI(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "phonetype"

    .prologue
    const/4 v1, 0x0

    .line 150
    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetIMSI(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 154
    :goto_0
    return-object v1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 153
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 154
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestGetMobileNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "phonetype"

    .prologue
    const/4 v1, 0x0

    .line 166
    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetMobileNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 170
    :goto_0
    return-object v1

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 169
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 170
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestGetPCSCF()Landroid/os/Bundle;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 134
    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetPCSCF()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 138
    :goto_0
    return-object v1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 137
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 138
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestGetPCSCFAddress(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "ifc_name"

    .prologue
    const/4 v1, 0x0

    .line 75
    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetPCSCFAddress(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 79
    :goto_0
    return-object v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 78
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 79
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestGetVolteSipRegFailure()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 60
    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetVolteSipRegFailure()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 64
    :goto_0
    return v1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 63
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 64
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestImsAkaAuthentication(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 189
    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestImsAkaAuthentication(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 193
    :goto_0
    return-object v1

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 192
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 193
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestLtePermanentlyDetached()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 258
    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestLtePermanentlyDetached()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 262
    :goto_0
    return v1

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 261
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 262
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public sendMTRejectMessage(Ljava/lang/String;)Z
    .locals 1
    .parameter "number"

    .prologue
    .line 271
    const/4 v0, 0x1

    return v0
.end method
