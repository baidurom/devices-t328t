.class public Landroid/net/wifi/WifiConfiguration;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiConfiguration$HotspotProfile;,
        Landroid/net/wifi/WifiConfiguration$ProxySettings;,
        Landroid/net/wifi/WifiConfiguration$IpAssignment;,
        Landroid/net/wifi/WifiConfiguration$Status;,
        Landroid/net/wifi/WifiConfiguration$GroupCipher;,
        Landroid/net/wifi/WifiConfiguration$PairwiseCipher;,
        Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;,
        Landroid/net/wifi/WifiConfiguration$EapType;,
        Landroid/net/wifi/WifiConfiguration$Protocol;,
        Landroid/net/wifi/WifiConfiguration$KeyMgmt;,
        Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISABLED_AUTH_FAILURE:I = 0x3

.field public static final DISABLED_DHCP_FAILURE:I = 0x2

.field public static final DISABLED_DNS_FAILURE:I = 0x1

.field public static final DISABLED_UNKNOWN_REASON:I = 0x0

.field public static final INVALID_NETWORK_ID:I = -0x1

.field public static final bssidVarName:Ljava/lang/String; = "bssid"

.field public static final eapol_flagsVarName:Ljava/lang/String; = "eapol_flags"

.field public static final hiddenSSIDVarName:Ljava/lang/String; = "scan_ssid"

.field public static final limitedVarName:Ljava/lang/String; = "limited"

.field public static final phase1VarName:Ljava/lang/String; = "phase1"

.field public static final priorityVarName:Ljava/lang/String; = "priority"

.field public static final pskVarName:Ljava/lang/String; = "psk"

.field public static final ssidVarName:Ljava/lang/String; = "ssid"

.field public static final wapi_as_certVarName:Ljava/lang/String; = "wapi_as_cert"

.field public static final wapi_certVarName:Ljava/lang/String; = "wapi_cert"

.field public static final wapi_pskVarName:Ljava/lang/String; = "wapi_psk"

.field public static final wapi_psk_hexVarName:Ljava/lang/String; = "wapi_psk_hex"

.field public static final wapi_user_certVarName:Ljava/lang/String; = "wapi_user_cert"

.field public static final wapi_user_keyVarName:Ljava/lang/String; = "wapi_user_key"

.field public static final wepKeyVarNames:[Ljava/lang/String; = null

.field public static final wepTxKeyIdxVarName:Ljava/lang/String; = "wep_tx_keyidx"


# instance fields
.field public BSSID:Ljava/lang/String;

.field public SSID:Ljava/lang/String;

.field public allowedAuthAlgorithms:Ljava/util/BitSet;

.field public allowedGroupCiphers:Ljava/util/BitSet;

.field public allowedKeyManagement:Ljava/util/BitSet;

.field public allowedPairwiseCiphers:Ljava/util/BitSet;

.field public allowedProtocols:Ljava/util/BitSet;

.field public anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public caCert:Ljava/lang/String;

.field public ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public clientCert:Ljava/lang/String;

.field public client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public disableReason:I

.field public eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public eapol_flags:I

.field public enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public hiddenSSID:Z

.field public identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

.field public limited:I

.field public linkProperties:Landroid/net/LinkProperties;

.field mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

.field public networkId:I

.field public pac_file:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public phase1:Ljava/lang/String;

.field public phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public preSharedKey:Ljava/lang/String;

.field public priority:I

.field public privateKey:Ljava/lang/String;

.field public privateKeyPasswd:Ljava/lang/String;

.field public private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

.field public private_key_password:Ljava/lang/String;

.field public proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

.field public status:I

.field public wapi_as_cert:Ljava/lang/String;

.field public wapi_cert:Ljava/lang/String;

.field public wapi_psk:Ljava/lang/String;

.field public wapi_psk_hex:Ljava/lang/String;

.field public wapi_user_cert:Ljava/lang/String;

.field public wapi_user_key:Ljava/lang/String;

.field public wepKeys:[Ljava/lang/String;

.field public wepTxKeyIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "wep_key0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "wep_key1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "wep_key2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "wep_key3"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    .line 900
    new-instance v0, Landroid/net/wifi/WifiConfiguration$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 478
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v5, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v6, "eap"

    invoke-direct {v5, p0, v6, v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 86
    new-instance v5, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string/jumbo v6, "phase2"

    invoke-direct {v5, p0, v6, v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 88
    new-instance v5, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string/jumbo v6, "identity"

    invoke-direct {v5, p0, v6, v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 90
    new-instance v5, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v6, "anonymous_identity"

    invoke-direct {v5, p0, v6, v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 92
    new-instance v5, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string/jumbo v6, "password"

    invoke-direct {v5, p0, v6, v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 94
    new-instance v5, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v6, "client_cert"

    invoke-direct {v5, p0, v6, v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 96
    new-instance v5, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string/jumbo v6, "private_key"

    invoke-direct {v5, p0, v6, v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 98
    new-instance v5, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v6, "ca_cert"

    invoke-direct {v5, p0, v6, v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 101
    new-instance v5, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string/jumbo v6, "pac_file"

    invoke-direct {v5, p0, v6, v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->pac_file:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 118
    const/16 v5, 0x9

    new-array v5, v5, [Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v6, v5, v9

    const/4 v6, 0x1

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v7, v5, v6

    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v6, v5, v11

    const/4 v6, 0x5

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v7, v5, v6

    const/4 v6, 0x6

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v7, v5, v6

    const/4 v6, 0x7

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v7, v5, v6

    const/16 v6, 0x8

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->pac_file:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v7, v5, v6

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 479
    iput v10, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 480
    iput-object v8, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 481
    iput-object v8, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 482
    iput v9, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 483
    iput-boolean v9, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 484
    iput v9, p0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 485
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 486
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 487
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 488
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 489
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 490
    new-array v5, v11, [Ljava/lang/String;

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 491
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 492
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v8, v5, v2

    .line 491
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 493
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .local v0, arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 494
    .local v1, field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 493
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 497
    .end local v1           #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    :cond_1
    iput-object v8, p0, Landroid/net/wifi/WifiConfiguration;->wapi_psk:Ljava/lang/String;

    .line 498
    iput-object v8, p0, Landroid/net/wifi/WifiConfiguration;->wapi_psk_hex:Ljava/lang/String;

    .line 499
    iput-object v8, p0, Landroid/net/wifi/WifiConfiguration;->wapi_cert:Ljava/lang/String;

    .line 500
    iput-object v8, p0, Landroid/net/wifi/WifiConfiguration;->wapi_user_cert:Ljava/lang/String;

    .line 501
    iput-object v8, p0, Landroid/net/wifi/WifiConfiguration;->wapi_user_key:Ljava/lang/String;

    .line 502
    iput-object v8, p0, Landroid/net/wifi/WifiConfiguration;->wapi_as_cert:Ljava/lang/String;

    .line 503
    iput v10, p0, Landroid/net/wifi/WifiConfiguration;->eapol_flags:I

    .line 504
    new-instance v5, Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-direct {v5, p0}, Landroid/net/wifi/WifiConfiguration$HotspotProfile;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    .line 506
    sget-object v5, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 507
    sget-object v5, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 508
    new-instance v5, Landroid/net/LinkProperties;

    invoke-direct {v5}, Landroid/net/LinkProperties;-><init>()V

    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 510
    iput v9, p0, Landroid/net/wifi/WifiConfiguration;->limited:I

    .line 512
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5
    .parameter "source"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 677
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v1, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v2, "eap"

    invoke-direct {v1, p0, v2, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 86
    new-instance v1, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string/jumbo v2, "phase2"

    invoke-direct {v1, p0, v2, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 88
    new-instance v1, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string/jumbo v2, "identity"

    invoke-direct {v1, p0, v2, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 90
    new-instance v1, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v2, "anonymous_identity"

    invoke-direct {v1, p0, v2, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 92
    new-instance v1, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string/jumbo v2, "password"

    invoke-direct {v1, p0, v2, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 94
    new-instance v1, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v2, "client_cert"

    invoke-direct {v1, p0, v2, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 96
    new-instance v1, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string/jumbo v2, "private_key"

    invoke-direct {v1, p0, v2, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 98
    new-instance v1, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v2, "ca_cert"

    invoke-direct {v1, p0, v2, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 101
    new-instance v1, Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string/jumbo v2, "pac_file"

    invoke-direct {v1, p0, v2, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->pac_file:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 118
    const/16 v1, 0x9

    new-array v1, v1, [Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v3, v1, v2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v2, v1, v4

    const/4 v2, 0x5

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->pac_file:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aput-object v3, v1, v2

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .line 678
    if-eqz p1, :cond_4

    .line 679
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 680
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 681
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 682
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 683
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 684
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 686
    new-array v1, v4, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 687
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 688
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 687
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 690
    :cond_0
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 691
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 692
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 693
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 694
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 695
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 696
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 697
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 700
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->limited:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->limited:I

    .line 703
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 704
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aget-object v1, v1, v0

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 703
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 707
    :cond_1
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wapi_psk:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_psk:Ljava/lang/String;

    .line 708
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wapi_psk_hex:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_psk_hex:Ljava/lang/String;

    .line 709
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wapi_cert:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_cert:Ljava/lang/String;

    .line 710
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wapi_user_cert:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_user_cert:Ljava/lang/String;

    .line 711
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wapi_user_key:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_user_key:Ljava/lang/String;

    .line 712
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wapi_as_cert:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wapi_as_cert:Ljava/lang/String;

    .line 713
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->eapol_flags:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->eapol_flags:I

    .line 715
    new-instance v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiConfiguration$HotspotProfile;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    .line 716
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-boolean v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    iput-boolean v2, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    .line 717
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->BSSID:Ljava/lang/String;

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->BSSID:Ljava/lang/String;

    .line 718
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    .line 719
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    .line 720
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    iput v2, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    .line 721
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 722
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 721
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 723
    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 724
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 723
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 725
    :cond_3
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    iput v2, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    .line 726
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    iput v2, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    .line 727
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    iput v2, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    .line 728
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    iput v2, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    .line 729
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    .line 730
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxDhcpClients:I

    iput v2, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxDhcpClients:I

    .line 731
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    .line 732
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    .line 734
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr1:Ljava/lang/String;

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr1:Ljava/lang/String;

    .line 735
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr2:Ljava/lang/String;

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr2:Ljava/lang/String;

    .line 736
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    iput v2, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    .line 738
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 739
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 740
    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 742
    .end local v0           #i:I
    :cond_4
    return-void
.end method

.method static synthetic access$100(Landroid/os/Parcel;)Ljava/util/BitSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-static {p0}, Landroid/net/wifi/WifiConfiguration;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method private static readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    .locals 4
    .parameter "src"

    .prologue
    .line 633
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 635
    .local v0, cardinality:I
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    .line 636
    .local v2, set:Ljava/util/BitSet;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 637
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 636
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 639
    :cond_0
    return-object v2
.end method

.method private static writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V
    .locals 2
    .parameter "dest"
    .parameter "set"

    .prologue
    .line 643
    const/4 v0, -0x1

    .line 645
    .local v0, nextSetBit:I
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 647
    :goto_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 648
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 649
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 673
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthType()I
    .locals 6

    .prologue
    const/4 v4, 0x5

    const/4 v1, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    .line 653
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 668
    :goto_0
    return v0

    .line 655
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 656
    goto :goto_0

    .line 657
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 658
    goto :goto_0

    .line 659
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    .line 660
    goto :goto_0

    .line 662
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v4

    .line 663
    goto :goto_0

    .line 664
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 665
    const/4 v0, 0x6

    goto :goto_0

    .line 668
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    return-object v0
.end method

.method public setWifiApProfile(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 877
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    .line 878
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget-boolean v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    .line 879
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    .line 880
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    .line 881
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    .line 882
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    .line 883
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    .line 884
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxDhcpClients:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxDhcpClients:I

    .line 885
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    .line 886
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    .line 887
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    .line 888
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr1:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr1:Ljava/lang/String;

    .line 889
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr2:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr2:Ljava/lang/String;

    .line 892
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    .prologue
    const/16 v14, 0xa

    .line 527
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 528
    .local v9, sbuf:Ljava/lang/StringBuilder;
    iget v11, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v11, :cond_2

    .line 529
    const-string v11, "* "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    :cond_0
    :goto_0
    const-string v11, "ID: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " SSID: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " BSSID: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " PRIO: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 536
    const-string v11, " KeyMgmt:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    const/4 v5, 0x0

    .local v5, k:I
    :goto_1
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->size()I

    move-result v11

    if-ge v5, v11, :cond_4

    .line 538
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v11, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 539
    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    sget-object v11, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    array-length v11, v11

    if-ge v5, v11, :cond_3

    .line 541
    sget-object v11, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v11, v11, v5

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 530
    .end local v5           #k:I
    :cond_2
    iget v11, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 531
    const-string v11, "- DSBLE: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 543
    .restart local v5       #k:I
    :cond_3
    const-string v11, "??"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 547
    :cond_4
    const-string v11, " Protocols:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    const/4 v7, 0x0

    .local v7, p:I
    :goto_3
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->size()I

    move-result v11

    if-ge v7, v11, :cond_7

    .line 549
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v11, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 550
    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    sget-object v11, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    array-length v11, v11

    if-ge v7, v11, :cond_6

    .line 552
    sget-object v11, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    aget-object v11, v11, v7

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    :cond_5
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 554
    :cond_6
    const-string v11, "??"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 558
    :cond_7
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 559
    const-string v11, " AuthAlgorithms:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    const/4 v0, 0x0

    .local v0, a:I
    :goto_5
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->size()I

    move-result v11

    if-ge v0, v11, :cond_a

    .line 561
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v11, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 562
    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    sget-object v11, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    array-length v11, v11

    if-ge v0, v11, :cond_9

    .line 564
    sget-object v11, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    aget-object v11, v11, v0

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    :cond_8
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 566
    :cond_9
    const-string v11, "??"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 570
    :cond_a
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 571
    const-string v11, " PairwiseCiphers:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    const/4 v8, 0x0

    .local v8, pc:I
    :goto_7
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->size()I

    move-result v11

    if-ge v8, v11, :cond_d

    .line 573
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v11, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 574
    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    sget-object v11, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    array-length v11, v11

    if-ge v8, v11, :cond_c

    .line 576
    sget-object v11, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    aget-object v11, v11, v8

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    :cond_b
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 578
    :cond_c
    const-string v11, "??"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 582
    :cond_d
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 583
    const-string v11, " GroupCiphers:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    const/4 v3, 0x0

    .local v3, gc:I
    :goto_9
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->size()I

    move-result v11

    if-ge v3, v11, :cond_10

    .line 585
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v11, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 586
    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    sget-object v11, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    array-length v11, v11

    if-ge v3, v11, :cond_f

    .line 588
    sget-object v11, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    aget-object v11, v11, v3

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    :cond_e
    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 590
    :cond_f
    const-string v11, "??"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 594
    :cond_10
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " PSK: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v11, :cond_11

    .line 596
    const/16 v11, 0x2a

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 600
    :cond_11
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 601
    const-string v11, " Limited: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Landroid/net/wifi/WifiConfiguration;->limited:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 604
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .local v1, arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_b
    if-ge v4, v6, :cond_13

    aget-object v2, v1, v4

    .line 605
    .local v2, field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v10

    .line 607
    .local v10, value:Ljava/lang/String;
    if-eqz v10, :cond_12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 609
    .end local v2           #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v10           #value:Ljava/lang/String;
    :cond_13
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 610
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IP assignment: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    const-string v11, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Proxy settings: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    const-string v11, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    iget-object v11, p0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v11}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    const-string v11, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 9
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 746
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 747
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 748
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 749
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 750
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 751
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 752
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v1, v3

    .line 753
    .local v5, wepKey:Ljava/lang/String;
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 752
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 754
    .end local v5           #wepKey:Ljava/lang/String;
    :cond_0
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 755
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 756
    iget-boolean v6, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v6, :cond_1

    move v6, v7

    :goto_1
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 758
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-static {p1, v6}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 759
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-static {p1, v6}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 760
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-static {p1, v6}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 761
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-static {p1, v6}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 762
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-static {p1, v6}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 764
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .local v1, arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_2

    aget-object v2, v1, v3

    .line 765
    .local v2, field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 764
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v2           #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .local v1, arr$:[Ljava/lang/String;
    :cond_1
    move v6, v8

    .line 756
    goto :goto_1

    .line 768
    .local v1, arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    :cond_2
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->phase1:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 769
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->wapi_psk:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 770
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->wapi_psk_hex:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 771
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->wapi_cert:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 772
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->wapi_user_cert:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 773
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->wapi_user_key:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 774
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->wapi_as_cert:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 775
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->eapol_flags:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 777
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 778
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 779
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1, v6, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 782
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->limited:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 786
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 787
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-boolean v6, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    if-eqz v6, :cond_3

    :goto_3
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 788
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 789
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 790
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 791
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 792
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v1, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v4, :cond_4

    aget-object v0, v1, v3

    .line 793
    .local v0, ap:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 792
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .end local v0           #ap:Ljava/lang/String;
    .local v1, arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    :cond_3
    move v7, v8

    .line 787
    goto :goto_3

    .line 794
    .local v1, arr$:[Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v1, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    array-length v4, v1

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v4, :cond_5

    aget-object v0, v1, v3

    .line 795
    .restart local v0       #ap:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 794
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 796
    .end local v0           #ap:Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 797
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 798
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 799
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 800
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 801
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxDhcpClients:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 802
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 803
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 805
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr1:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 806
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr2:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 807
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->mWifiApProfile:Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 809
    return-void
.end method
