.class public final Lcom/android/internal/telephony/HtcIsimData;
.super Ljava/lang/Object;
.source "HtcIsimData.java"


# static fields
.field public static final ADDRESS_TYPE_FQDN_KEY:Ljava/lang/String; = "address_type_fqdn"

.field public static final ADDRESS_TYPE_IPV4_KEY:Ljava/lang/String; = "address_type_ipv4"

.field public static final ADDRESS_TYPE_IPV6_KEY:Ljava/lang/String; = "address_type_ipv6"

.field public static mAid:Ljava/lang/String;

.field private static mBtid:Ljava/lang/String;

.field public static mCDMA_IMSI:Ljava/lang/String;

.field public static mCDMA_MDN:Ljava/lang/String;

.field public static mDOMAIN:Ljava/lang/String;

.field public static mGSM_IMSI:Ljava/lang/String;

.field public static mGSM_MSISDN:Ljava/lang/String;

.field private static mHasISIM:Z

.field public static mIMPI:Ljava/lang/String;

.field public static mIMPUList:[Ljava/lang/String;

.field private static mIsGBASupported:Z

.field private static mKeyLifetime:Ljava/lang/String;

.field public static mPCSCFList:Landroid/os/Bundle;

.field private static mRand:[B

.field private static mSessionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 57
    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mIMPI:Ljava/lang/String;

    .line 63
    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mDOMAIN:Ljava/lang/String;

    .line 69
    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mIMPUList:[Ljava/lang/String;

    .line 75
    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mPCSCFList:Landroid/os/Bundle;

    .line 82
    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mGSM_IMSI:Ljava/lang/String;

    .line 88
    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mCDMA_IMSI:Ljava/lang/String;

    .line 95
    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mGSM_MSISDN:Ljava/lang/String;

    .line 101
    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mCDMA_MDN:Ljava/lang/String;

    .line 103
    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mAid:Ljava/lang/String;

    .line 105
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/telephony/HtcIsimData;->mSessionId:I

    .line 106
    sput-boolean v2, Lcom/android/internal/telephony/HtcIsimData;->mHasISIM:Z

    .line 107
    sput-boolean v2, Lcom/android/internal/telephony/HtcIsimData;->mIsGBASupported:Z

    .line 108
    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mRand:[B

    .line 109
    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mBtid:Ljava/lang/String;

    .line 110
    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mKeyLifetime:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetBtid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/android/internal/telephony/HtcIsimData;->mBtid:Ljava/lang/String;

    return-object v0
.end method

.method public static GetDOMAIN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/android/internal/telephony/HtcIsimData;->mDOMAIN:Ljava/lang/String;

    return-object v0
.end method

.method public static GetIMPI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/android/internal/telephony/HtcIsimData;->mIMPI:Ljava/lang/String;

    return-object v0
.end method

.method public static GetIMPU()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/android/internal/telephony/HtcIsimData;->mIMPUList:[Ljava/lang/String;

    return-object v0
.end method

.method public static GetIMSI(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "phonetype"

    .prologue
    .line 179
    const-string v1, "gsm"

    .line 180
    .local v1, gsm_type:Ljava/lang/String;
    const-string v0, "cdma"

    .line 181
    .local v0, cdma_type:Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    sget-object v2, Lcom/android/internal/telephony/HtcIsimData;->mGSM_IMSI:Ljava/lang/String;

    .line 186
    :goto_0
    return-object v2

    .line 183
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    sget-object v2, Lcom/android/internal/telephony/HtcIsimData;->mCDMA_IMSI:Ljava/lang/String;

    goto :goto_0

    .line 186
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static GetKeyLifetime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/android/internal/telephony/HtcIsimData;->mKeyLifetime:Ljava/lang/String;

    return-object v0
.end method

.method public static GetMobileNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "phonetype"

    .prologue
    .line 192
    const-string v1, "gsm"

    .line 193
    .local v1, gsm_type:Ljava/lang/String;
    const-string v0, "cdma"

    .line 194
    .local v0, cdma_type:Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    sget-object v2, Lcom/android/internal/telephony/HtcIsimData;->mGSM_MSISDN:Ljava/lang/String;

    .line 199
    :goto_0
    return-object v2

    .line 196
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    sget-object v2, Lcom/android/internal/telephony/HtcIsimData;->mCDMA_MDN:Ljava/lang/String;

    goto :goto_0

    .line 199
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static GetPCSCF()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/android/internal/telephony/HtcIsimData;->mPCSCFList:Landroid/os/Bundle;

    return-object v0
.end method

.method public static GetRand()[B
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/android/internal/telephony/HtcIsimData;->mRand:[B

    return-object v0
.end method

.method public static GetSessionId()I
    .locals 1

    .prologue
    .line 174
    sget v0, Lcom/android/internal/telephony/HtcIsimData;->mSessionId:I

    return v0
.end method

.method public static SetBtid(Ljava/lang/String;)V
    .locals 0
    .parameter "btid"

    .prologue
    .line 306
    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mBtid:Ljava/lang/String;

    .line 307
    return-void
.end method

.method public static SetCDMA_IMSI(Ljava/lang/String;)V
    .locals 0
    .parameter "imsi"

    .prologue
    .line 254
    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mCDMA_IMSI:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public static SetCDMA_MDN(Ljava/lang/String;)V
    .locals 0
    .parameter "mdn"

    .prologue
    .line 272
    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mCDMA_MDN:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public static SetDOMAIN(Ljava/lang/String;)V
    .locals 0
    .parameter "domain"

    .prologue
    .line 218
    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mDOMAIN:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public static SetGSM_IMSI(Ljava/lang/String;)V
    .locals 0
    .parameter "imsi"

    .prologue
    .line 245
    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mGSM_IMSI:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public static SetGSM_MSISDN(Ljava/lang/String;)V
    .locals 0
    .parameter "msisdn"

    .prologue
    .line 263
    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mGSM_MSISDN:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public static SetHasISIM(Z)V
    .locals 0
    .parameter "hasISIM"

    .prologue
    .line 281
    sput-boolean p0, Lcom/android/internal/telephony/HtcIsimData;->mHasISIM:Z

    .line 282
    return-void
.end method

.method public static SetIMPI(Ljava/lang/String;)V
    .locals 0
    .parameter "impi"

    .prologue
    .line 209
    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mIMPI:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public static SetIMPU([Ljava/lang/String;)V
    .locals 0
    .parameter "impu"

    .prologue
    .line 227
    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mIMPUList:[Ljava/lang/String;

    .line 228
    return-void
.end method

.method public static SetIsGBASupported(Z)V
    .locals 0
    .parameter "gbaSupported"

    .prologue
    .line 290
    sput-boolean p0, Lcom/android/internal/telephony/HtcIsimData;->mIsGBASupported:Z

    .line 291
    return-void
.end method

.method public static SetKeyLifetime(Ljava/lang/String;)V
    .locals 0
    .parameter "keyLifetime"

    .prologue
    .line 314
    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mKeyLifetime:Ljava/lang/String;

    .line 315
    return-void
.end method

.method public static SetPCSCF(Landroid/os/Bundle;)V
    .locals 0
    .parameter "pcscf"

    .prologue
    .line 236
    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mPCSCFList:Landroid/os/Bundle;

    .line 237
    return-void
.end method

.method public static SetRand([B)V
    .locals 0
    .parameter "rand"

    .prologue
    .line 298
    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mRand:[B

    .line 299
    return-void
.end method

.method public static SetSessionId(I)V
    .locals 0
    .parameter "sessionId"

    .prologue
    .line 323
    sput p0, Lcom/android/internal/telephony/HtcIsimData;->mSessionId:I

    .line 324
    return-void
.end method

.method public static getAid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    sget-object v0, Lcom/android/internal/telephony/HtcIsimData;->mAid:Ljava/lang/String;

    return-object v0
.end method

.method public static hasISIM()Z
    .locals 1

    .prologue
    .line 134
    sget-boolean v0, Lcom/android/internal/telephony/HtcIsimData;->mHasISIM:Z

    return v0
.end method

.method public static isGBASupported()Z
    .locals 1

    .prologue
    .line 142
    sget-boolean v0, Lcom/android/internal/telephony/HtcIsimData;->mIsGBASupported:Z

    return v0
.end method

.method public static setAid(Ljava/lang/String;)V
    .locals 0
    .parameter "aid"

    .prologue
    .line 333
    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mAid:Ljava/lang/String;

    .line 334
    return-void
.end method
