.class final Landroid/net/wifi/WifiConfiguration$1;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/WifiConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 901
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiConfiguration;
    .locals 10
    .parameter "in"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 903
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 904
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 905
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 906
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 907
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 908
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 909
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 910
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_0

    .line 911
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v3

    .line 910
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 912
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 913
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 914
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    move v6, v7

    :goto_1
    iput-boolean v6, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 915
    #calls: Landroid/net/wifi/WifiConfiguration;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->access$100(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 916
    #calls: Landroid/net/wifi/WifiConfiguration;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->access$100(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 917
    #calls: Landroid/net/wifi/WifiConfiguration;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->access$100(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 918
    #calls: Landroid/net/wifi/WifiConfiguration;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->access$100(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 919
    #calls: Landroid/net/wifi/WifiConfiguration;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->access$100(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 921
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .local v0, arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    .line 922
    .local v2, field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 921
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v0           #arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v2           #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    move v6, v8

    .line 914
    goto :goto_1

    .line 925
    .restart local v0       #arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->phase1:Ljava/lang/String;

    .line 926
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->wapi_psk:Ljava/lang/String;

    .line 927
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->wapi_psk_hex:Ljava/lang/String;

    .line 928
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->wapi_cert:Ljava/lang/String;

    .line 929
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->wapi_user_cert:Ljava/lang/String;

    .line 930
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->wapi_user_key:Ljava/lang/String;

    .line 931
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->wapi_as_cert:Ljava/lang/String;

    .line 932
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->eapol_flags:I

    .line 934
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->valueOf(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 935
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->valueOf(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 936
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/LinkProperties;

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 939
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->limited:I

    .line 943
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    .line 944
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3

    :goto_3
    iput-boolean v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    .line 945
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->BSSID:Ljava/lang/String;

    .line 946
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    .line 947
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    .line 948
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    .line 949
    const/4 v3, 0x0

    :goto_4
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_4

    .line 950
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 949
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    move v7, v8

    .line 944
    goto :goto_3

    .line 951
    :cond_4
    const/4 v3, 0x0

    :goto_5
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_5

    .line 952
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 951
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 953
    :cond_5
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    .line 954
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    .line 955
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    .line 956
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    .line 957
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    .line 958
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxDhcpClients:I

    .line 959
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    .line 960
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    .line 962
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr1:Ljava/lang/String;

    .line 963
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr2:Ljava/lang/String;

    .line 964
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    .line 966
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 901
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "size"

    .prologue
    .line 970
    new-array v0, p1, [Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 901
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiConfiguration$1;->newArray(I)[Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method
