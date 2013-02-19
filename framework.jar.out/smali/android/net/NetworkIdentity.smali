.class public Landroid/net/NetworkIdentity;
.super Ljava/lang/Object;
.source "NetworkIdentity.java"


# instance fields
.field final mRoaming:Z

.field final mSubType:I

.field final mSubscriberId:Ljava/lang/String;

.field final mType:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Z)V
    .locals 0
    .parameter "type"
    .parameter "subType"
    .parameter "subscriberId"
    .parameter "roaming"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Landroid/net/NetworkIdentity;->mType:I

    .line 54
    iput p2, p0, Landroid/net/NetworkIdentity;->mSubType:I

    .line 55
    iput-object p3, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    .line 56
    iput-boolean p4, p0, Landroid/net/NetworkIdentity;->mRoaming:Z

    .line 57
    return-void
.end method

.method public static buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;
    .locals 9
    .parameter "context"
    .parameter "state"

    .prologue
    .line 123
    iget-object v8, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    .line 124
    .local v7, type:I
    iget-object v8, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    .line 131
    .local v4, subType:I
    invoke-static {v7}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 132
    const-string/jumbo v8, "phone"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 135
    .local v6, telephony:Landroid/telephony/TelephonyManager;
    const-string v8, "connectivity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 137
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v2

    .line 138
    .local v2, mDualPhoneEnable:Z
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v1

    .line 139
    .local v1, mDualGSMPhoneEnable:Z
    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    .line 140
    :cond_0
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getMobileDataPhoneType(I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/telephony/TelephonyManager;->isNetworkRoamingExt(I)Z

    move-result v3

    .line 147
    .local v3, roaming:Z
    :goto_0
    iget-object v8, p1, Landroid/net/NetworkState;->subscriberId:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 148
    iget-object v5, p1, Landroid/net/NetworkState;->subscriberId:Ljava/lang/String;

    .line 164
    .end local v0           #connectivity:Landroid/net/ConnectivityManager;
    .end local v1           #mDualGSMPhoneEnable:Z
    .end local v2           #mDualPhoneEnable:Z
    .end local v6           #telephony:Landroid/telephony/TelephonyManager;
    .local v5, subscriberId:Ljava/lang/String;
    :goto_1
    new-instance v8, Landroid/net/NetworkIdentity;

    invoke-direct {v8, v7, v4, v5, v3}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Z)V

    return-object v8

    .line 143
    .end local v3           #roaming:Z
    .end local v5           #subscriberId:Ljava/lang/String;
    .restart local v0       #connectivity:Landroid/net/ConnectivityManager;
    .restart local v1       #mDualGSMPhoneEnable:Z
    .restart local v2       #mDualPhoneEnable:Z
    .restart local v6       #telephony:Landroid/telephony/TelephonyManager;
    :cond_1
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    .restart local v3       #roaming:Z
    goto :goto_0

    .line 151
    :cond_2
    if-nez v2, :cond_3

    if-eqz v1, :cond_4

    .line 152
    :cond_3
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getMobileDataPhoneType(I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/telephony/TelephonyManager;->getSubscriberIdExt(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #subscriberId:Ljava/lang/String;
    goto :goto_1

    .line 155
    .end local v5           #subscriberId:Ljava/lang/String;
    :cond_4
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #subscriberId:Ljava/lang/String;
    goto :goto_1

    .line 161
    .end local v0           #connectivity:Landroid/net/ConnectivityManager;
    .end local v1           #mDualGSMPhoneEnable:Z
    .end local v2           #mDualPhoneEnable:Z
    .end local v3           #roaming:Z
    .end local v5           #subscriberId:Ljava/lang/String;
    .end local v6           #telephony:Landroid/telephony/TelephonyManager;
    :cond_5
    const/4 v5, 0x0

    .line 162
    .restart local v5       #subscriberId:Ljava/lang/String;
    const/4 v3, 0x0

    .restart local v3       #roaming:Z
    goto :goto_1
.end method

.method public static scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "subscriberId"

    .prologue
    .line 111
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    if-eqz p0, :cond_1

    const-string/jumbo v0, "valid"

    :goto_1
    move-object p0, v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "null"

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 66
    instance-of v2, p1, Landroid/net/NetworkIdentity;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 67
    check-cast v0, Landroid/net/NetworkIdentity;

    .line 68
    .local v0, ident:Landroid/net/NetworkIdentity;
    iget v2, p0, Landroid/net/NetworkIdentity;->mType:I

    iget v3, v0, Landroid/net/NetworkIdentity;->mType:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/net/NetworkIdentity;->mSubType:I

    iget v3, v0, Landroid/net/NetworkIdentity;->mSubType:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/net/NetworkIdentity;->mRoaming:Z

    iget-boolean v3, v0, Landroid/net/NetworkIdentity;->mRoaming:Z

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 72
    .end local v0           #ident:Landroid/net/NetworkIdentity;
    :cond_0
    return v1
.end method

.method public getRoaming()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Landroid/net/NetworkIdentity;->mRoaming:Z

    return v0
.end method

.method public getSubType()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Landroid/net/NetworkIdentity;->mSubType:I

    return v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Landroid/net/NetworkIdentity;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Landroid/net/NetworkIdentity;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroid/net/NetworkIdentity;->mSubType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 77
    iget v4, p0, Landroid/net/NetworkIdentity;->mType:I

    invoke-static {v4}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, typeName:Ljava/lang/String;
    iget v4, p0, Landroid/net/NetworkIdentity;->mType:I

    invoke-static {v4}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 80
    iget v4, p0, Landroid/net/NetworkIdentity;->mSubType:I

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, subTypeName:Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, scrubSubscriberId:Ljava/lang/String;
    iget-boolean v4, p0, Landroid/net/NetworkIdentity;->mRoaming:Z

    if-eqz v4, :cond_1

    const-string v0, ", ROAMING"

    .line 87
    .local v0, roaming:Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subscriberId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 82
    .end local v0           #roaming:Ljava/lang/String;
    .end local v1           #scrubSubscriberId:Ljava/lang/String;
    .end local v2           #subTypeName:Ljava/lang/String;
    :cond_0
    iget v4, p0, Landroid/net/NetworkIdentity;->mSubType:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #subTypeName:Ljava/lang/String;
    goto :goto_0

    .line 86
    .restart local v1       #scrubSubscriberId:Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method
