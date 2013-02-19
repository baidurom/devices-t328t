.class public Lcom/htc/app/admin/VpnConfigInfo;
.super Ljava/lang/Object;
.source "VpnConfigInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/app/admin/VpnConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_IPSEC_HYBRID_RSA:I = 0x5

.field public static final TYPE_IPSEC_XAUTH_PSK:I = 0x3

.field public static final TYPE_IPSEC_XAUTH_RSA:I = 0x4

.field public static final TYPE_L2TP_IPSEC_PSK:I = 0x1

.field public static final TYPE_L2TP_IPSEC_RSA:I = 0x2

.field public static final TYPE_MAX:I = 0x6

.field public static final TYPE_PPTP:I


# instance fields
.field private mConfigId:Ljava/lang/String;

.field private mDnsServers:Ljava/lang/String;

.field private mIpsecCaCert:Ljava/lang/String;

.field private mIpsecIdentifier:Ljava/lang/String;

.field private mIpsecSecret:Ljava/lang/String;

.field private mIpsecUserCert:Ljava/lang/String;

.field private mL2tpSecret:Ljava/lang/String;

.field private mMPPE:Z

.field private mPassword:Ljava/lang/String;

.field private mRoutes:Ljava/lang/String;

.field private mSearchDomains:Ljava/lang/String;

.field private mServerAddress:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;

.field private mVpnName:Ljava/lang/String;

.field private mVpnType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 442
    new-instance v0, Lcom/htc/app/admin/VpnConfigInfo$1;

    invoke-direct {v0}, Lcom/htc/app/admin/VpnConfigInfo$1;-><init>()V

    sput-object v0, Lcom/htc/app/admin/VpnConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 452
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mConfigId:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnName:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnType:I

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mServerAddress:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mUserName:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mPassword:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mDnsServers:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mSearchDomains:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mRoutes:Ljava/lang/String;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mMPPE:Z

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mL2tpSecret:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecIdentifier:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecSecret:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecUserCert:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecCaCert:Ljava/lang/String;

    .line 453
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 455
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mConfigId:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnName:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnType:I

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mServerAddress:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mUserName:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mPassword:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mDnsServers:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mSearchDomains:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mRoutes:Ljava/lang/String;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mMPPE:Z

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mL2tpSecret:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecIdentifier:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecSecret:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecUserCert:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecCaCert:Ljava/lang/String;

    .line 456
    invoke-virtual {p0, p1}, Lcom/htc/app/admin/VpnConfigInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 457
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/app/admin/VpnConfigInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/htc/app/admin/VpnConfigInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x0

    return v0
.end method

.method public getConfigId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mConfigId:Ljava/lang/String;

    return-object v0
.end method

.method public getDnsServers()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mDnsServers:Ljava/lang/String;

    return-object v0
.end method

.method public getIpsecCaCert()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecCaCert:Ljava/lang/String;

    return-object v0
.end method

.method public getIpsecIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getIpsecUserCert()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecUserCert:Ljava/lang/String;

    return-object v0
.end method

.method public getL2tpSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mL2tpSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getPPPencryption()Z
    .locals 1

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mMPPE:Z

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getRoutes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mRoutes:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchDomains()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mSearchDomains:Ljava/lang/String;

    return-object v0
.end method

.method public getServerAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mServerAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getVpnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnName:Ljava/lang/String;

    return-object v0
.end method

.method public getVpnType()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnType:I

    return v0
.end method

.method public gsetIPSecPreSharedkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecSecret:Ljava/lang/String;

    return-object v0
.end method

.method readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 424
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mConfigId:Ljava/lang/String;

    .line 425
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnName:Ljava/lang/String;

    .line 426
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnType:I

    .line 427
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mServerAddress:Ljava/lang/String;

    .line 428
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mUserName:Ljava/lang/String;

    .line 429
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mPassword:Ljava/lang/String;

    .line 430
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mDnsServers:Ljava/lang/String;

    .line 431
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mSearchDomains:Ljava/lang/String;

    .line 432
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mRoutes:Ljava/lang/String;

    .line 433
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mMPPE:Z

    .line 435
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mL2tpSecret:Ljava/lang/String;

    .line 436
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecIdentifier:Ljava/lang/String;

    .line 437
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecSecret:Ljava/lang/String;

    .line 438
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecUserCert:Ljava/lang/String;

    .line 439
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecCaCert:Ljava/lang/String;

    .line 440
    return-void
.end method

.method public setConfigId(Ljava/lang/String;)V
    .locals 0
    .parameter "configId"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mConfigId:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setDnsServers(Ljava/lang/String;)V
    .locals 0
    .parameter "dnsServers"

    .prologue
    .line 260
    iput-object p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mDnsServers:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public setIPSecPreSharedkey(Ljava/lang/String;)V
    .locals 0
    .parameter "ipsecSecret"

    .prologue
    .line 356
    iput-object p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecSecret:Ljava/lang/String;

    .line 357
    return-void
.end method

.method public setIPSec_HybridRSK_VPN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "vpnName"
    .parameter "serverAddress"
    .parameter "ipsecCaCert"

    .prologue
    .line 153
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnType:I

    .line 154
    iput-object p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnName:Ljava/lang/String;

    .line 155
    iput-object p2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mServerAddress:Ljava/lang/String;

    .line 156
    iput-object p3, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecCaCert:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setIPSec_XauthPSK_VPN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "vpnName"
    .parameter "serverAddress"
    .parameter "ipsecIdentifier"
    .parameter "IPSecPreSharedKey"

    .prologue
    .line 124
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnType:I

    .line 125
    iput-object p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnName:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mServerAddress:Ljava/lang/String;

    .line 127
    iput-object p3, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecIdentifier:Ljava/lang/String;

    .line 128
    iput-object p4, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecSecret:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setIPSec_XauthRSK_VPN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "vpnName"
    .parameter "serverAddress"
    .parameter "ipsecUserCert"
    .parameter "ipsecCaCert"

    .prologue
    .line 139
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnType:I

    .line 140
    iput-object p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnName:Ljava/lang/String;

    .line 141
    iput-object p2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mServerAddress:Ljava/lang/String;

    .line 142
    iput-object p3, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecUserCert:Ljava/lang/String;

    .line 143
    iput-object p4, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecCaCert:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setIpsecCaCert(Ljava/lang/String;)V
    .locals 0
    .parameter "ipsecCaCert"

    .prologue
    .line 388
    iput-object p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecCaCert:Ljava/lang/String;

    .line 389
    return-void
.end method

.method public setIpsecIdentifier(Ljava/lang/String;)V
    .locals 0
    .parameter "ipsecIdentifier"

    .prologue
    .line 340
    iput-object p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecIdentifier:Ljava/lang/String;

    .line 341
    return-void
.end method

.method public setIpsecUserCert(Ljava/lang/String;)V
    .locals 0
    .parameter "ipsecUserCert"

    .prologue
    .line 372
    iput-object p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecUserCert:Ljava/lang/String;

    .line 373
    return-void
.end method

.method public setL2TP_IPSecPSK_VPN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "vpnName"
    .parameter "serverAddress"
    .parameter "l2tpSecret"
    .parameter "ipsecIdentifier"
    .parameter "IPSecPreSharedKey"

    .prologue
    .line 91
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnType:I

    .line 92
    iput-object p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnName:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mServerAddress:Ljava/lang/String;

    .line 94
    iput-object p3, p0, Lcom/htc/app/admin/VpnConfigInfo;->mL2tpSecret:Ljava/lang/String;

    .line 95
    iput-object p4, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecIdentifier:Ljava/lang/String;

    .line 96
    iput-object p5, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecSecret:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setL2TP_IPSecRSK_VPN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "vpnName"
    .parameter "serverAddress"
    .parameter "l2tpSecret"
    .parameter "ipsecUserCert"
    .parameter "ipsecCaCert"

    .prologue
    .line 108
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnType:I

    .line 109
    iput-object p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnName:Ljava/lang/String;

    .line 110
    iput-object p2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mServerAddress:Ljava/lang/String;

    .line 111
    iput-object p3, p0, Lcom/htc/app/admin/VpnConfigInfo;->mL2tpSecret:Ljava/lang/String;

    .line 112
    iput-object p4, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecUserCert:Ljava/lang/String;

    .line 113
    iput-object p5, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecCaCert:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setL2tpSecret(Ljava/lang/String;)V
    .locals 0
    .parameter "l2tpSecret"

    .prologue
    .line 324
    iput-object p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mL2tpSecret:Ljava/lang/String;

    .line 325
    return-void
.end method

.method public setPPPencryption(Z)V
    .locals 0
    .parameter "useMPPE"

    .prologue
    .line 308
    iput-boolean p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mMPPE:Z

    .line 309
    return-void
.end method

.method public setPPTP_VPN(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "vpnName"
    .parameter "serverAddress"
    .parameter "usePPPencryption"

    .prologue
    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnType:I

    .line 77
    iput-object p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnName:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mServerAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mServerAddress:Ljava/lang/String;

    .line 79
    iput-boolean p3, p0, Lcom/htc/app/admin/VpnConfigInfo;->mMPPE:Z

    .line 80
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 244
    iput-object p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mPassword:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public setRoutes(Ljava/lang/String;)V
    .locals 0
    .parameter "routes"

    .prologue
    .line 292
    iput-object p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mRoutes:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public setSearchDomains(Ljava/lang/String;)V
    .locals 0
    .parameter "searchDomains"

    .prologue
    .line 276
    iput-object p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mSearchDomains:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public setServerAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "serverAddress"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mServerAddress:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .parameter "userName"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mUserName:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public setVpnName(Ljava/lang/String;)V
    .locals 0
    .parameter "vpnName"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnName:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setVpnOption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "searchDomains"
    .parameter "dnsServers"
    .parameter "fowardRoutes"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mSearchDomains:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mDnsServers:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/htc/app/admin/VpnConfigInfo;->mRoutes:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setVpnType(I)V
    .locals 0
    .parameter "vpnType"

    .prologue
    .line 196
    iput p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnType:I

    .line 197
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 461
    .local v0, ret:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/htc/app/admin/VpnConfigInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mConfigId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " server="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mServerAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " username="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mUserName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " password="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " dnsServers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mDnsServers:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " searchDomains="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mSearchDomains:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " routes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mRoutes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mppe="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mMPPE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " l2tpSecret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mL2tpSecret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ipsecIdentifier="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ipsecSecret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecSecret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ipsecUserCert="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecUserCert:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ipsecCaCert="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecCaCert:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mConfigId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 406
    iget v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mServerAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mDnsServers:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mSearchDomains:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mRoutes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 413
    iget-boolean v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mMPPE:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 415
    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mL2tpSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecUserCert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecCaCert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 421
    return-void
.end method
