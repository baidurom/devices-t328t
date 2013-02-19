.class public Landroid/net/NetworkTemplate;
.super Ljava/lang/Object;
.source "NetworkTemplate.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private static final DATA_USAGE_NETWORK_TYPES:[I = null

.field public static final MATCH_ETHERNET:I = 0x5

.field public static final MATCH_MOBILE_3G_LOWER:I = 0x2

.field public static final MATCH_MOBILE_4G:I = 0x3

.field public static final MATCH_MOBILE_ALL:I = 0x1

.field public static final MATCH_MOBILE_CDMA:I = 0x7

.field public static final MATCH_MOBILE_GSM:I = 0x8

.field public static final MATCH_MOBILE_SUB_GSM:I = 0x9

.field public static final MATCH_WIFI:I = 0x4

.field public static final MATCH_WIMAX:I = 0x6


# instance fields
.field private final mMatchRule:I

.field private final mSubscriberId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    sput-object v0, Landroid/net/NetworkTemplate;->DATA_USAGE_NETWORK_TYPES:[I

    .line 434
    new-instance v0, Landroid/net/NetworkTemplate$1;

    invoke-direct {v0}, Landroid/net/NetworkTemplate$1;-><init>()V

    sput-object v0, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "matchRule"
    .parameter "subscriberId"

    .prologue
    .line 167
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput p1, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    .line 169
    iput-object p2, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    .line 170
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 172
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    .line 175
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/NetworkTemplate$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static buildTemplateEthernet()Landroid/net/NetworkTemplate;
    .locals 3

    .prologue
    .line 124
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 2
    .parameter "subscriberId"

    .prologue
    .line 99
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 2
    .parameter "subscriberId"

    .prologue
    .line 108
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 2
    .parameter "subscriberId"

    .prologue
    .line 90
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateMobileCdma(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 2
    .parameter "subscriberId"

    .prologue
    .line 143
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateMobileGsm(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 2
    .parameter "subscriberId"

    .prologue
    .line 151
    new-instance v0, Landroid/net/NetworkTemplate;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateMobileSubGsm(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 2
    .parameter "subscriberId"

    .prologue
    .line 159
    new-instance v0, Landroid/net/NetworkTemplate;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateWifi()Landroid/net/NetworkTemplate;
    .locals 3

    .prologue
    .line 116
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateWimax()Landroid/net/NetworkTemplate;
    .locals 3

    .prologue
    .line 133
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method private static getMatchRuleName(I)Ljava/lang/String;
    .locals 1
    .parameter "matchRule"

    .prologue
    .line 406
    packed-switch p0, :pswitch_data_0

    .line 430
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 408
    :pswitch_0
    const-string v0, "MOBILE_3G_LOWER"

    goto :goto_0

    .line 410
    :pswitch_1
    const-string v0, "MOBILE_4G"

    goto :goto_0

    .line 412
    :pswitch_2
    const-string v0, "MOBILE_ALL"

    goto :goto_0

    .line 414
    :pswitch_3
    const-string v0, "WIFI"

    goto :goto_0

    .line 416
    :pswitch_4
    const-string v0, "ETHERNET"

    goto :goto_0

    .line 419
    :pswitch_5
    const-string v0, "WIMAX"

    goto :goto_0

    .line 423
    :pswitch_6
    const-string v0, "MOBILE_CDMA"

    goto :goto_0

    .line 425
    :pswitch_7
    const-string v0, "MOBILE_GSM"

    goto :goto_0

    .line 427
    :pswitch_8
    const-string v0, "MOBILE_SUB_GSM"

    goto :goto_0

    .line 406
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private matchesEthernet(Landroid/net/NetworkIdentity;)Z
    .locals 2
    .parameter "ident"

    .prologue
    .line 336
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 337
    const/4 v0, 0x1

    .line 339
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private matchesMobile(Landroid/net/NetworkIdentity;)Z
    .locals 2
    .parameter "ident"

    .prologue
    .line 265
    sget-object v0, Landroid/net/NetworkTemplate;->DATA_USAGE_NETWORK_TYPES:[I

    iget v1, p1, Landroid/net/NetworkIdentity;->mType:I

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private matchesMobile3gLower(Landroid/net/NetworkIdentity;)Z
    .locals 1
    .parameter "ident"

    .prologue
    .line 287
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobile(Landroid/net/NetworkIdentity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget v0, p1, Landroid/net/NetworkIdentity;->mSubType:I

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 296
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 293
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private matchesMobile4g(Landroid/net/NetworkIdentity;)Z
    .locals 1
    .parameter "ident"

    .prologue
    .line 312
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobile(Landroid/net/NetworkIdentity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget v0, p1, Landroid/net/NetworkIdentity;->mSubType:I

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 319
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 316
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 314
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private matchesMobileCdma(Landroid/net/NetworkIdentity;)Z
    .locals 2
    .parameter "ident"

    .prologue
    .line 360
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 366
    sget-object v0, Landroid/net/NetworkTemplate;->DATA_USAGE_NETWORK_TYPES:[I

    iget v1, p1, Landroid/net/NetworkIdentity;->mType:I

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    .line 369
    :goto_0
    return v0

    .line 364
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 369
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 361
    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private matchesMobileGsm(Landroid/net/NetworkIdentity;)Z
    .locals 2
    .parameter "ident"

    .prologue
    .line 376
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 382
    sget-object v0, Landroid/net/NetworkTemplate;->DATA_USAGE_NETWORK_TYPES:[I

    iget v1, p1, Landroid/net/NetworkIdentity;->mType:I

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    .line 385
    :goto_0
    return v0

    .line 380
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 385
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 377
    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private matchesMobileSubGsm(Landroid/net/NetworkIdentity;)Z
    .locals 2
    .parameter "ident"

    .prologue
    .line 392
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 398
    sget-object v0, Landroid/net/NetworkTemplate;->DATA_USAGE_NETWORK_TYPES:[I

    iget v1, p1, Landroid/net/NetworkIdentity;->mType:I

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    .line 401
    :goto_0
    return v0

    .line 396
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 401
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 393
    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private matchesWifi(Landroid/net/NetworkIdentity;)Z
    .locals 2
    .parameter "ident"

    .prologue
    const/4 v0, 0x1

    .line 326
    iget v1, p1, Landroid/net/NetworkIdentity;->mType:I

    if-ne v1, v0, :cond_0

    .line 329
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private matchesWimax(Landroid/net/NetworkIdentity;)Z
    .locals 2
    .parameter "ident"

    .prologue
    .line 347
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 348
    const/4 v0, 0x1

    .line 350
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 202
    instance-of v2, p1, Landroid/net/NetworkTemplate;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 203
    check-cast v0, Landroid/net/NetworkTemplate;

    .line 204
    .local v0, other:Landroid/net/NetworkTemplate;
    iget v2, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    iget v3, v0, Landroid/net/NetworkTemplate;->mMatchRule:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 207
    .end local v0           #other:Landroid/net/NetworkTemplate;
    :cond_0
    return v1
.end method

.method public getMatchRule()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    return v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 197
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public matches(Landroid/net/NetworkIdentity;)Z
    .locals 2
    .parameter "ident"

    .prologue
    .line 224
    iget v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    packed-switch v0, :pswitch_data_0

    .line 248
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown network template"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobile(Landroid/net/NetworkIdentity;)Z

    move-result v0

    .line 245
    :goto_0
    return v0

    .line 228
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobile3gLower(Landroid/net/NetworkIdentity;)Z

    move-result v0

    goto :goto_0

    .line 230
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobile4g(Landroid/net/NetworkIdentity;)Z

    move-result v0

    goto :goto_0

    .line 232
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesWifi(Landroid/net/NetworkIdentity;)Z

    move-result v0

    goto :goto_0

    .line 234
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesEthernet(Landroid/net/NetworkIdentity;)Z

    move-result v0

    goto :goto_0

    .line 237
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesWimax(Landroid/net/NetworkIdentity;)Z

    move-result v0

    goto :goto_0

    .line 241
    :pswitch_6
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobileCdma(Landroid/net/NetworkIdentity;)Z

    move-result v0

    goto :goto_0

    .line 243
    :pswitch_7
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobileGsm(Landroid/net/NetworkIdentity;)Z

    move-result v0

    goto :goto_0

    .line 245
    :pswitch_8
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobileSubGsm(Landroid/net/NetworkIdentity;)Z

    move-result v0

    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 190
    iget-object v1, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, scrubSubscriberId:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkTemplate: matchRule="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    invoke-static {v2}, Landroid/net/NetworkTemplate;->getMatchRuleName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", subscriberId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 179
    iget v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    return-void
.end method
