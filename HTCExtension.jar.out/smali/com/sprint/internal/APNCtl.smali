.class public Lcom/sprint/internal/APNCtl;
.super Ljava/lang/Object;
.source "APNCtl.java"


# static fields
.field protected static final Disable:Ljava/lang/String; = "0"

.field protected static final Enable:Ljava/lang/String; = "1"

.field private static final LOG_TAG:Ljava/lang/String; = "APNCtl"

.field public static PDNReset:Z

.field private static me:Lcom/sprint/internal/APNCtl;


# instance fields
.field private final APN_DATA:I

.field private final APN_NAME_TYPE:I

.field private final APN_NI:I

.field private final AUTHENTICATION_TYPE:I

.field private CMD_APNStructure:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sprint/internal/APNStructure;",
            ">;"
        }
    .end annotation
.end field

.field private final INACTIVITY_TIMER:I

.field private final PASSWORD:I

.field private final PDN_TYPE:I

.field private QUERY_APNStructure:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sprint/internal/APNStructure;",
            ">;"
        }
    .end annotation
.end field

.field private final RAT_TYPE:I

.field private final STRING_EHRPD:Ljava/lang/String;

.field private final STRING_LTE:Ljava/lang/String;

.field private final STRING_THREEGPP:Ljava/lang/String;

.field private final USERNAME:I

.field private mContext:Landroid/content/Context;

.field mPhoneMgr:Lcom/htc/service/HtcTelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/internal/APNCtl;->me:Lcom/sprint/internal/APNCtl;

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sprint/internal/APNCtl;->PDNReset:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "aContext"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v1, 0x0

    iput v1, p0, Lcom/sprint/internal/APNCtl;->APN_DATA:I

    .line 26
    const/4 v1, 0x1

    iput v1, p0, Lcom/sprint/internal/APNCtl;->APN_NAME_TYPE:I

    .line 27
    const/4 v1, 0x2

    iput v1, p0, Lcom/sprint/internal/APNCtl;->APN_NI:I

    .line 28
    const/4 v1, 0x3

    iput v1, p0, Lcom/sprint/internal/APNCtl;->PDN_TYPE:I

    .line 29
    const/4 v1, 0x4

    iput v1, p0, Lcom/sprint/internal/APNCtl;->INACTIVITY_TIMER:I

    .line 30
    const/4 v1, 0x5

    iput v1, p0, Lcom/sprint/internal/APNCtl;->RAT_TYPE:I

    .line 31
    const/4 v1, 0x6

    iput v1, p0, Lcom/sprint/internal/APNCtl;->AUTHENTICATION_TYPE:I

    .line 32
    const/4 v1, 0x7

    iput v1, p0, Lcom/sprint/internal/APNCtl;->USERNAME:I

    .line 33
    const/16 v1, 0x8

    iput v1, p0, Lcom/sprint/internal/APNCtl;->PASSWORD:I

    .line 35
    const-string v1, "LTE"

    iput-object v1, p0, Lcom/sprint/internal/APNCtl;->STRING_LTE:Ljava/lang/String;

    .line 36
    const-string v1, "EHRPD"

    iput-object v1, p0, Lcom/sprint/internal/APNCtl;->STRING_EHRPD:Ljava/lang/String;

    .line 37
    const-string v1, "3GPP"

    iput-object v1, p0, Lcom/sprint/internal/APNCtl;->STRING_THREEGPP:Ljava/lang/String;

    .line 55
    const-string v1, "APNCtl"

    const-string v2, "APNCtl constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iput-object p1, p0, Lcom/sprint/internal/APNCtl;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {p0}, Lcom/sprint/internal/APNCtl;->init_Query()V

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/sprint/internal/APNCtl;->mContext:Landroid/content/Context;

    const-string v2, "htctelephony"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/service/HtcTelephonyManager;

    iput-object v1, p0, Lcom/sprint/internal/APNCtl;->mPhoneMgr:Lcom/htc/service/HtcTelephonyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private GetPDN(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .parameter "rat"
    .parameter "type"

    .prologue
    .line 460
    const/4 v0, 0x0

    .line 462
    .local v0, ResponseArray:[Ljava/lang/String;
    const/4 v4, 0x3

    new-array v3, v4, [Ljava/lang/String;

    .line 464
    .local v3, profile:[Ljava/lang/String;
    const/4 v4, 0x0

    const-string v5, "148"

    aput-object v5, v3, v4

    .line 465
    const/4 v4, 0x1

    aput-object p1, v3, v4

    .line 466
    const/4 v4, 0x2

    aput-object p2, v3, v4

    .line 469
    :try_start_0
    iget-object v4, p0, Lcom/sprint/internal/APNCtl;->mPhoneMgr:Lcom/htc/service/HtcTelephonyManager;

    if-nez v4, :cond_0

    .line 470
    iget-object v4, p0, Lcom/sprint/internal/APNCtl;->mContext:Landroid/content/Context;

    const-string v5, "htctelephony"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/service/HtcTelephonyManager;

    iput-object v4, p0, Lcom/sprint/internal/APNCtl;->mPhoneMgr:Lcom/htc/service/HtcTelephonyManager;

    .line 473
    :cond_0
    iget-object v4, p0, Lcom/sprint/internal/APNCtl;->mPhoneMgr:Lcom/htc/service/HtcTelephonyManager;

    if-eqz v4, :cond_1

    .line 474
    iget-object v4, p0, Lcom/sprint/internal/APNCtl;->mPhoneMgr:Lcom/htc/service/HtcTelephonyManager;

    invoke-virtual {v4, v3}, Lcom/htc/service/HtcTelephonyManager;->getPdnSettings2([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 477
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    .line 478
    const-string v4, "APNCtl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ResponseArray[]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 482
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .line 483
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 485
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    return-object v0
.end method

.method private MapToAPNStructureDisable(Ljava/lang/String;)V
    .locals 3
    .parameter "treenode"

    .prologue
    .line 339
    const/4 v1, 0x0

    .line 342
    .local v1, mAPNStructure:Lcom/sprint/internal/APNStructure;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/sprint/internal/APNCtl;->QUERY_APNStructure:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 343
    iget-object v2, p0, Lcom/sprint/internal/APNCtl;->QUERY_APNStructure:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #mAPNStructure:Lcom/sprint/internal/APNStructure;
    check-cast v1, Lcom/sprint/internal/APNStructure;

    .line 344
    .restart local v1       #mAPNStructure:Lcom/sprint/internal/APNStructure;
    invoke-virtual {v1}, Lcom/sprint/internal/APNStructure;->GetAPNTreeNode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/sprint/internal/APNStructure;->SetAPNData(Ljava/lang/String;)V

    .line 346
    iget-object v2, p0, Lcom/sprint/internal/APNCtl;->CMD_APNStructure:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    :cond_1
    return-void
.end method

.method private ParseToQUERYAPNStructure([[Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "inputArray"
    .parameter "stype"

    .prologue
    .line 297
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 307
    const/4 v1, 0x0

    .line 308
    .local v1, mAPNStructure:Lcom/sprint/internal/APNStructure;
    new-instance v1, Lcom/sprint/internal/APNStructure;

    .end local v1           #mAPNStructure:Lcom/sprint/internal/APNStructure;
    invoke-direct {v1}, Lcom/sprint/internal/APNStructure;-><init>()V

    .line 310
    .restart local v1       #mAPNStructure:Lcom/sprint/internal/APNStructure;
    aget-object v2, p1, v0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/sprint/internal/APNStructure;->SetAPNNameType(Ljava/lang/String;)V

    .line 312
    aget-object v2, p1, v0

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/sprint/internal/APNStructure;->SetAPNTreeNode(Ljava/lang/String;)V

    .line 314
    aget-object v2, p1, v0

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/sprint/internal/APNStructure;->SetAPNData(Ljava/lang/String;)V

    .line 320
    :goto_1
    aget-object v2, p1, v0

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/sprint/internal/APNStructure;->SetAPNNI(Ljava/lang/String;)V

    .line 322
    aget-object v2, p1, v0

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/sprint/internal/APNStructure;->SetPDNType(Ljava/lang/String;)V

    .line 324
    aget-object v2, p1, v0

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/sprint/internal/APNStructure;->SetInactivityTimer(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v1, p2}, Lcom/sprint/internal/APNStructure;->SetRATType(Ljava/lang/String;)V

    .line 328
    aget-object v2, p1, v0

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/sprint/internal/APNStructure;->SetAuthenticationType(Ljava/lang/String;)V

    .line 330
    aget-object v2, p1, v0

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/sprint/internal/APNStructure;->SetUsername(Ljava/lang/String;)V

    .line 332
    aget-object v2, p1, v0

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/sprint/internal/APNStructure;->SetPassword(Ljava/lang/String;)V

    .line 334
    iget-object v2, p0, Lcom/sprint/internal/APNCtl;->QUERY_APNStructure:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    :cond_0
    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/sprint/internal/APNStructure;->SetAPNData(Ljava/lang/String;)V

    goto :goto_1

    .line 336
    .end local v1           #mAPNStructure:Lcom/sprint/internal/APNStructure;
    :cond_1
    return-void
.end method

.method private ParseToStringArray([Ljava/lang/String;)[[Ljava/lang/String;
    .locals 7
    .parameter "inputArray"

    .prologue
    const/4 v6, 0x0

    .line 276
    const/4 v2, 0x0

    .line 277
    .local v2, j:I
    const/4 v3, 0x0

    .line 279
    .local v3, k:I
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    aget-object v5, p1, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    div-int/2addr v4, v5

    aget-object v5, p1, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    filled-new-array {v4, v5}, [I

    move-result-object v4

    const-class v5, Ljava/lang/String;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    .line 281
    .local v0, array:[[Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_1

    .line 282
    aget-object v4, v0, v2

    aget-object v5, p1, v1

    aput-object v5, v4, v3

    .line 283
    add-int/lit8 v3, v3, 0x1

    .line 284
    aget-object v4, p1, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 285
    add-int/lit8 v2, v2, 0x1

    .line 286
    const/4 v3, 0x0

    .line 281
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    :cond_1
    return-object v0
.end method

.method private SetPDN([Ljava/lang/String;)V
    .locals 3
    .parameter "profile"

    .prologue
    .line 445
    :try_start_0
    iget-object v1, p0, Lcom/sprint/internal/APNCtl;->mPhoneMgr:Lcom/htc/service/HtcTelephonyManager;

    if-nez v1, :cond_0

    .line 446
    iget-object v1, p0, Lcom/sprint/internal/APNCtl;->mContext:Landroid/content/Context;

    const-string v2, "htctelephony"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/service/HtcTelephonyManager;

    iput-object v1, p0, Lcom/sprint/internal/APNCtl;->mPhoneMgr:Lcom/htc/service/HtcTelephonyManager;

    .line 449
    :cond_0
    iget-object v1, p0, Lcom/sprint/internal/APNCtl;->mPhoneMgr:Lcom/htc/service/HtcTelephonyManager;

    if-eqz v1, :cond_1

    .line 450
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sprint/internal/APNCtl;->PDNReset:Z

    .line 451
    iget-object v1, p0, Lcom/sprint/internal/APNCtl;->mPhoneMgr:Lcom/htc/service/HtcTelephonyManager;

    invoke-virtual {v1, p1}, Lcom/htc/service/HtcTelephonyManager;->setPdnSettings2([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :cond_1
    :goto_0
    return-void

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sprint/internal/APNCtl;
    .locals 1
    .parameter "aContext"

    .prologue
    .line 48
    sget-object v0, Lcom/sprint/internal/APNCtl;->me:Lcom/sprint/internal/APNCtl;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/sprint/internal/APNCtl;

    invoke-direct {v0, p0}, Lcom/sprint/internal/APNCtl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sprint/internal/APNCtl;->me:Lcom/sprint/internal/APNCtl;

    .line 51
    :cond_0
    sget-object v0, Lcom/sprint/internal/APNCtl;->me:Lcom/sprint/internal/APNCtl;

    return-object v0
.end method


# virtual methods
.method public CheckAPNStructureExist(Ljava/lang/String;)Z
    .locals 7
    .parameter "treenodeindex"

    .prologue
    const/4 v6, 0x0

    .line 422
    const/16 v4, 0x9

    new-array v0, v4, [Ljava/lang/String;

    .line 424
    .local v0, array:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 426
    .local v1, bFind:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/sprint/internal/APNCtl;->QUERY_APNStructure:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 427
    iget-object v4, p0, Lcom/sprint/internal/APNCtl;->QUERY_APNStructure:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sprint/internal/APNStructure;

    .line 428
    .local v3, mAPNStructure:Lcom/sprint/internal/APNStructure;
    invoke-virtual {v3}, Lcom/sprint/internal/APNStructure;->GetAPNTreeNode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 429
    invoke-virtual {v3}, Lcom/sprint/internal/APNStructure;->GetAPNData()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 430
    const-string v4, "1"

    aput-object v4, v0, v6

    .line 431
    const/4 v1, 0x1

    .line 440
    .end local v3           #mAPNStructure:Lcom/sprint/internal/APNStructure;
    :cond_0
    return v1

    .line 433
    .restart local v3       #mAPNStructure:Lcom/sprint/internal/APNStructure;
    :cond_1
    const-string v4, "0"

    aput-object v4, v0, v6

    .line 434
    const/4 v1, 0x0

    .line 426
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public Clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/sprint/internal/APNCtl;->CMD_APNStructure:Ljava/util/List;

    .line 82
    iput-object v0, p0, Lcom/sprint/internal/APNCtl;->QUERY_APNStructure:Ljava/util/List;

    .line 83
    return-void
.end method

.method public GetAPN()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 251
    const/4 v3, 0x0

    .line 252
    .local v3, profile_lte:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, profile_ehrpd:[Ljava/lang/String;
    move-object v4, v5

    .line 253
    check-cast v4, [[Ljava/lang/String;

    .local v4, profile_lte_arrange:[[Ljava/lang/String;
    move-object v2, v5

    .line 254
    check-cast v2, [[Ljava/lang/String;

    .line 259
    .local v2, profile_ehrpd_arrange:[[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v5, Lcom/sprint/internal/PropertyApn;->APN_TYPE_ARRAY:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_0

    .line 260
    const-string v5, "13"

    sget-object v6, Lcom/sprint/internal/PropertyApn;->APN_TYPE_ARRAY:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-direct {p0, v5, v6}, Lcom/sprint/internal/APNCtl;->GetPDN(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 261
    invoke-direct {p0, v3}, Lcom/sprint/internal/APNCtl;->ParseToStringArray([Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v4

    .line 262
    const-string v5, "LTE"

    invoke-direct {p0, v4, v5}, Lcom/sprint/internal/APNCtl;->ParseToQUERYAPNStructure([[Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v5, Lcom/sprint/internal/PropertyApn;->APN_TYPE_ARRAY:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_1

    .line 268
    const-string v5, "14"

    sget-object v6, Lcom/sprint/internal/PropertyApn;->APN_TYPE_ARRAY:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-direct {p0, v5, v6}, Lcom/sprint/internal/APNCtl;->GetPDN(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-direct {p0, v1}, Lcom/sprint/internal/APNCtl;->ParseToStringArray([Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v2

    .line 270
    const-string v5, "EHRPD"

    invoke-direct {p0, v2, v5}, Lcom/sprint/internal/APNCtl;->ParseToQUERYAPNStructure([[Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 272
    :cond_1
    return-void
.end method

.method public InputAPNString(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "InputNode"

    .prologue
    .line 86
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, SplitString:[Ljava/lang/String;
    return-object v0
.end method

.method public ParseAPNStructureToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "treenodeindex"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x5

    .line 352
    const-string v0, ""

    .line 354
    .local v0, ResultString:Ljava/lang/String;
    const/16 v5, 0x9

    new-array v1, v5, [Ljava/lang/String;

    .line 355
    .local v1, array:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 358
    .local v2, bFind:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_0

    .line 359
    const-string v5, ""

    aput-object v5, v1, v3

    .line 358
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 362
    :cond_0
    const/4 v3, 0x0

    :goto_1
    iget-object v5, p0, Lcom/sprint/internal/APNCtl;->QUERY_APNStructure:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 363
    iget-object v5, p0, Lcom/sprint/internal/APNCtl;->QUERY_APNStructure:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sprint/internal/APNStructure;

    .line 364
    .local v4, mAPNStructure:Lcom/sprint/internal/APNStructure;
    invoke-virtual {v4}, Lcom/sprint/internal/APNStructure;->GetAPNTreeNode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 365
    invoke-virtual {v4}, Lcom/sprint/internal/APNStructure;->dumpTheClass()V

    .line 367
    invoke-virtual {v4}, Lcom/sprint/internal/APNStructure;->GetAPNData()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 368
    const-string v5, "1"

    aput-object v5, v1, v8

    .line 369
    const/4 v2, 0x1

    .line 370
    const-string v5, "APNCtl"

    const-string v6, "Enable, add to node."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {v4}, Lcom/sprint/internal/APNStructure;->GetAPNNameType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v9

    .line 379
    invoke-virtual {v4}, Lcom/sprint/internal/APNStructure;->GetAPNNI()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v10

    .line 380
    invoke-virtual {v4}, Lcom/sprint/internal/APNStructure;->GetPDNType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v11

    .line 381
    const/4 v5, 0x4

    invoke-virtual {v4}, Lcom/sprint/internal/APNStructure;->GetInactivityTimer()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 382
    aget-object v5, v1, v7

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 383
    invoke-virtual {v4}, Lcom/sprint/internal/APNStructure;->GetRATType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v7

    .line 388
    :goto_2
    const/4 v5, 0x6

    invoke-virtual {v4}, Lcom/sprint/internal/APNStructure;->GetAuthenticationType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 389
    const/4 v5, 0x7

    invoke-virtual {v4}, Lcom/sprint/internal/APNStructure;->GetUsername()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 390
    const/16 v5, 0x8

    invoke-virtual {v4}, Lcom/sprint/internal/APNStructure;->GetPassword()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 362
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 372
    :cond_2
    const-string v5, "0"

    aput-object v5, v1, v8

    .line 374
    const-string v5, "APNCtl"

    const-string v6, "Disable, skip."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 385
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v7

    .line 386
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sprint/internal/APNStructure;->GetRATType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v7

    goto :goto_2

    .line 393
    .end local v4           #mAPNStructure:Lcom/sprint/internal/APNStructure;
    :cond_4
    if-eqz v2, :cond_6

    .line 394
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 395
    const-string v5, "1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v9, :cond_5

    .line 396
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 399
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 400
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 401
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v11

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 403
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x4

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 404
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 405
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 406
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 407
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x6

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 408
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 409
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x7

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 410
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 411
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x8

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 416
    :cond_5
    :goto_4
    const-string v5, "APNCtl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ResultString: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    return-object v0

    .line 414
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public ReplaceEnabldToDisable([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "array"

    .prologue
    .line 92
    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, p1, v1

    .line 95
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 96
    const-string v1, "APNCtl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReplaceEnabldToDisable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    return-object p1
.end method

.method public ResetPDN()V
    .locals 3

    .prologue
    .line 490
    const-string v1, "APNCtl"

    const-string v2, "ResetPDN()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :try_start_0
    iget-object v1, p0, Lcom/sprint/internal/APNCtl;->mPhoneMgr:Lcom/htc/service/HtcTelephonyManager;

    if-nez v1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/sprint/internal/APNCtl;->mContext:Landroid/content/Context;

    const-string v2, "htctelephony"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/service/HtcTelephonyManager;

    iput-object v1, p0, Lcom/sprint/internal/APNCtl;->mPhoneMgr:Lcom/htc/service/HtcTelephonyManager;

    .line 496
    :cond_0
    iget-object v1, p0, Lcom/sprint/internal/APNCtl;->mPhoneMgr:Lcom/htc/service/HtcTelephonyManager;

    if-eqz v1, :cond_1

    .line 497
    iget-object v1, p0, Lcom/sprint/internal/APNCtl;->mPhoneMgr:Lcom/htc/service/HtcTelephonyManager;

    invoke-virtual {v1}, Lcom/htc/service/HtcTelephonyManager;->resetPdnForSettingsChange2()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    :cond_1
    :goto_0
    return-void

    .line 499
    :catch_0
    move-exception v0

    .line 500
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public SetAPN()I
    .locals 12

    .prologue
    const/16 v11, 0xa

    const/16 v10, 0x9

    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x1

    .line 187
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/sprint/internal/APNCtl;->CMD_APNStructure:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_8

    .line 188
    iget-object v4, p0, Lcom/sprint/internal/APNCtl;->CMD_APNStructure:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprint/internal/APNStructure;

    .line 191
    .local v2, mAPNStructure:Lcom/sprint/internal/APNStructure;
    const/4 v3, 0x0

    .line 192
    .local v3, profile:[Ljava/lang/String;
    const/16 v4, 0xb

    new-array v3, v4, [Ljava/lang/String;

    .line 194
    const/4 v4, 0x0

    const-string v5, "148"

    aput-object v5, v3, v4

    .line 196
    invoke-virtual {v2}, Lcom/sprint/internal/APNStructure;->GetRATType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LTE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 197
    const-string v4, "13"

    aput-object v4, v3, v7

    .line 204
    :cond_0
    :goto_1
    const/4 v4, 0x2

    invoke-virtual {v2}, Lcom/sprint/internal/APNStructure;->GetAPNNameType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 206
    const/4 v4, 0x3

    invoke-virtual {v2}, Lcom/sprint/internal/APNStructure;->GetAPNTreeNode()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 208
    invoke-virtual {v2}, Lcom/sprint/internal/APNStructure;->GetAPNData()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 209
    const-string v4, "true"

    aput-object v4, v3, v8

    .line 214
    :goto_2
    const/4 v4, 0x5

    invoke-virtual {v2}, Lcom/sprint/internal/APNStructure;->GetAPNNI()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 216
    const/4 v4, 0x6

    invoke-virtual {v2}, Lcom/sprint/internal/APNStructure;->GetPDNType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 218
    const/4 v4, 0x7

    invoke-virtual {v2}, Lcom/sprint/internal/APNStructure;->GetInactivityTimer()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 220
    invoke-virtual {v2}, Lcom/sprint/internal/APNStructure;->GetAuthenticationType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 221
    const-string v4, "null"

    aput-object v4, v3, v9

    .line 226
    :goto_3
    invoke-virtual {v2}, Lcom/sprint/internal/APNStructure;->GetUsername()Ljava/lang/String;

    move-result-object v4

    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 227
    const/4 v4, 0x0

    aput-object v4, v3, v10

    .line 232
    :goto_4
    invoke-virtual {v2}, Lcom/sprint/internal/APNStructure;->GetPassword()Ljava/lang/String;

    move-result-object v4

    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 233
    const/4 v4, 0x0

    aput-object v4, v3, v11

    .line 241
    :goto_5
    const/4 v1, 0x0

    .local v1, j:I
    :goto_6
    const/16 v4, 0xb

    if-ge v1, v4, :cond_7

    .line 242
    const-string v4, "APNCtl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "profile[]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 198
    .end local v1           #j:I
    :cond_1
    invoke-virtual {v2}, Lcom/sprint/internal/APNStructure;->GetRATType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "EHRPD"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 199
    const-string v4, "14"

    aput-object v4, v3, v7

    goto/16 :goto_1

    .line 200
    :cond_2
    invoke-virtual {v2}, Lcom/sprint/internal/APNStructure;->GetRATType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "3GPP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 201
    const-string v4, "3"

    aput-object v4, v3, v7

    goto/16 :goto_1

    .line 211
    :cond_3
    const-string v4, "false"

    aput-object v4, v3, v8

    goto/16 :goto_2

    .line 223
    :cond_4
    invoke-virtual {v2}, Lcom/sprint/internal/APNStructure;->GetAuthenticationType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    goto :goto_3

    .line 229
    :cond_5
    invoke-virtual {v2}, Lcom/sprint/internal/APNStructure;->GetUsername()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    goto :goto_4

    .line 235
    :cond_6
    invoke-virtual {v2}, Lcom/sprint/internal/APNStructure;->GetPassword()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v11

    goto :goto_5

    .line 245
    .restart local v1       #j:I
    :cond_7
    invoke-direct {p0, v3}, Lcom/sprint/internal/APNCtl;->SetPDN([Ljava/lang/String;)V

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 247
    .end local v1           #j:I
    .end local v2           #mAPNStructure:Lcom/sprint/internal/APNStructure;
    .end local v3           #profile:[Ljava/lang/String;
    :cond_8
    return v7
.end method

.method public SetApnStructure([Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "InputString"
    .parameter "treeNodeIndex"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, APNStructureNum:I
    const/4 v1, 0x0

    .line 108
    .local v1, SplitRAT:[Ljava/lang/String;
    aget-object v4, p1, v6

    if-eqz v4, :cond_c

    aget-object v4, p1, v6

    const-string v5, "0"

    if-eq v4, v5, :cond_c

    .line 109
    aget-object v4, p1, v7

    const-string v5, "LTE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 110
    const/4 v0, 0x1

    .line 121
    :cond_0
    :goto_0
    new-array v3, v0, [Lcom/sprint/internal/APNStructure;

    .line 123
    .local v3, mAPNStructure:[Lcom/sprint/internal/APNStructure;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_d

    .line 124
    new-instance v4, Lcom/sprint/internal/APNStructure;

    invoke-direct {v4}, Lcom/sprint/internal/APNStructure;-><init>()V

    aput-object v4, v3, v2

    .line 126
    aget-object v4, p1, v6

    if-eqz v4, :cond_1

    .line 127
    aget-object v4, v3, v2

    aget-object v5, p1, v6

    invoke-virtual {v4, v5}, Lcom/sprint/internal/APNStructure;->SetAPNData(Ljava/lang/String;)V

    .line 130
    :cond_1
    aget-object v4, p1, v8

    if-eqz v4, :cond_2

    .line 131
    aget-object v4, v3, v2

    aget-object v5, p1, v8

    invoke-virtual {v4, v5}, Lcom/sprint/internal/APNStructure;->SetAPNNameType(Ljava/lang/String;)V

    .line 134
    :cond_2
    aget-object v4, p1, v9

    if-eqz v4, :cond_3

    .line 135
    aget-object v4, v3, v2

    aget-object v5, p1, v9

    invoke-virtual {v4, v5}, Lcom/sprint/internal/APNStructure;->SetAPNNI(Ljava/lang/String;)V

    .line 143
    :cond_3
    aget-object v4, v3, v2

    const-string v5, "IPv4"

    invoke-virtual {v4, v5}, Lcom/sprint/internal/APNStructure;->SetPDNType(Ljava/lang/String;)V

    .line 146
    aget-object v4, p1, v10

    if-eqz v4, :cond_4

    .line 147
    aget-object v4, v3, v2

    aget-object v5, p1, v10

    invoke-virtual {v4, v5}, Lcom/sprint/internal/APNStructure;->SetInactivityTimer(Ljava/lang/String;)V

    .line 150
    :cond_4
    aget-object v4, p1, v7

    if-eqz v4, :cond_5

    .line 151
    if-le v0, v8, :cond_b

    .line 152
    aget-object v4, v3, v2

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Lcom/sprint/internal/APNStructure;->SetRATType(Ljava/lang/String;)V

    .line 158
    :cond_5
    :goto_2
    const/4 v4, 0x6

    aget-object v4, p1, v4

    if-eqz v4, :cond_6

    .line 159
    aget-object v4, v3, v2

    const/4 v5, 0x6

    aget-object v5, p1, v5

    invoke-virtual {v4, v5}, Lcom/sprint/internal/APNStructure;->SetAuthenticationType(Ljava/lang/String;)V

    .line 162
    :cond_6
    const/4 v4, 0x7

    aget-object v4, p1, v4

    if-eqz v4, :cond_7

    .line 163
    aget-object v4, v3, v2

    const/4 v5, 0x7

    aget-object v5, p1, v5

    invoke-virtual {v4, v5}, Lcom/sprint/internal/APNStructure;->SetUsername(Ljava/lang/String;)V

    .line 166
    :cond_7
    const/16 v4, 0x8

    aget-object v4, p1, v4

    if-eqz v4, :cond_8

    .line 167
    aget-object v4, v3, v2

    const/16 v5, 0x8

    aget-object v5, p1, v5

    invoke-virtual {v4, v5}, Lcom/sprint/internal/APNStructure;->SetPassword(Ljava/lang/String;)V

    .line 170
    :cond_8
    aget-object v4, v3, v2

    invoke-virtual {v4, p2}, Lcom/sprint/internal/APNStructure;->SetAPNTreeNode(Ljava/lang/String;)V

    .line 172
    aget-object v4, v3, v2

    invoke-virtual {v4}, Lcom/sprint/internal/APNStructure;->dumpTheClass()V

    .line 173
    iget-object v4, p0, Lcom/sprint/internal/APNCtl;->CMD_APNStructure:Ljava/util/List;

    aget-object v5, v3, v2

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 111
    .end local v2           #i:I
    .end local v3           #mAPNStructure:[Lcom/sprint/internal/APNStructure;
    :cond_9
    aget-object v4, p1, v7

    const-string v5, "EHRPD"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 112
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 113
    :cond_a
    aget-object v4, p1, v7

    const-string v5, "LTE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_0

    aget-object v4, p1, v7

    const-string v5, "EHRPD"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_0

    .line 116
    new-array v1, v9, [Ljava/lang/String;

    .line 117
    const-string v4, "LTE"

    aput-object v4, v1, v6

    .line 118
    const-string v4, "EHRPD"

    aput-object v4, v1, v8

    .line 119
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 154
    .restart local v2       #i:I
    .restart local v3       #mAPNStructure:[Lcom/sprint/internal/APNStructure;
    :cond_b
    aget-object v4, v3, v2

    aget-object v5, p1, v7

    invoke-virtual {v4, v5}, Lcom/sprint/internal/APNStructure;->SetRATType(Ljava/lang/String;)V

    goto :goto_2

    .line 175
    .end local v2           #i:I
    .end local v3           #mAPNStructure:[Lcom/sprint/internal/APNStructure;
    :cond_c
    aget-object v4, p1, v6

    if-eqz v4, :cond_e

    aget-object v4, p1, v6

    const-string v5, "0"

    if-ne v4, v5, :cond_e

    .line 176
    invoke-direct {p0, p2}, Lcom/sprint/internal/APNCtl;->MapToAPNStructureDisable(Ljava/lang/String;)V

    .line 180
    :cond_d
    :goto_3
    return-void

    .line 178
    :cond_e
    const-string v4, "APNCtl"

    const-string v5, "Command wrong."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public dumpCMDAPNStructure()V
    .locals 3

    .prologue
    .line 516
    const/4 v1, 0x0

    .line 518
    .local v1, mAPNStructure:Lcom/sprint/internal/APNStructure;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/sprint/internal/APNCtl;->CMD_APNStructure:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 519
    iget-object v2, p0, Lcom/sprint/internal/APNCtl;->CMD_APNStructure:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #mAPNStructure:Lcom/sprint/internal/APNStructure;
    check-cast v1, Lcom/sprint/internal/APNStructure;

    .line 520
    .restart local v1       #mAPNStructure:Lcom/sprint/internal/APNStructure;
    invoke-virtual {v1}, Lcom/sprint/internal/APNStructure;->dumpTheClass()V

    .line 518
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 522
    :cond_0
    return-void
.end method

.method public dumpQUERYAPNStructure()V
    .locals 3

    .prologue
    .line 506
    const/4 v1, 0x0

    .line 508
    .local v1, mAPNStructure:Lcom/sprint/internal/APNStructure;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/sprint/internal/APNCtl;->QUERY_APNStructure:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 509
    iget-object v2, p0, Lcom/sprint/internal/APNCtl;->QUERY_APNStructure:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #mAPNStructure:Lcom/sprint/internal/APNStructure;
    check-cast v1, Lcom/sprint/internal/APNStructure;

    .line 510
    .restart local v1       #mAPNStructure:Lcom/sprint/internal/APNStructure;
    invoke-virtual {v1}, Lcom/sprint/internal/APNStructure;->dumpTheClass()V

    .line 508
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 512
    :cond_0
    return-void
.end method

.method public fakeGetAPN_EHRPD()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 552
    const/16 v1, 0xa

    new-array v0, v1, [Ljava/lang/String;

    .line 553
    .local v0, temp:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "9"

    aput-object v2, v0, v1

    .line 554
    const/4 v1, 0x1

    const-string v2, "ota"

    aput-object v2, v0, v1

    .line 555
    const/4 v1, 0x2

    const-string v2, "0"

    aput-object v2, v0, v1

    .line 556
    const/4 v1, 0x3

    const-string v2, "true"

    aput-object v2, v0, v1

    .line 557
    const/4 v1, 0x4

    const-string v2, "ota"

    aput-object v2, v0, v1

    .line 558
    const/4 v1, 0x5

    const-string v2, "IPv4"

    aput-object v2, v0, v1

    .line 559
    const/4 v1, 0x6

    const-string v2, "15"

    aput-object v2, v0, v1

    .line 560
    const/4 v1, 0x7

    aput-object v3, v0, v1

    .line 561
    const/16 v1, 0x8

    aput-object v3, v0, v1

    .line 562
    const/16 v1, 0x9

    aput-object v3, v0, v1

    .line 564
    return-object v0
.end method

.method public fakeGetAPN_LTE()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 526
    const/16 v1, 0x13

    new-array v0, v1, [Ljava/lang/String;

    .line 527
    .local v0, temp:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "9"

    aput-object v2, v0, v1

    .line 528
    const/4 v1, 0x1

    const-string v2, "ota"

    aput-object v2, v0, v1

    .line 529
    const/4 v1, 0x2

    const-string v2, "0"

    aput-object v2, v0, v1

    .line 530
    const/4 v1, 0x3

    const-string v2, "true"

    aput-object v2, v0, v1

    .line 531
    const/4 v1, 0x4

    const-string v2, "ota"

    aput-object v2, v0, v1

    .line 532
    const/4 v1, 0x5

    const-string v2, "IPv4"

    aput-object v2, v0, v1

    .line 533
    const/4 v1, 0x6

    const-string v2, "15"

    aput-object v2, v0, v1

    .line 534
    const/4 v1, 0x7

    aput-object v3, v0, v1

    .line 535
    const/16 v1, 0x8

    aput-object v3, v0, v1

    .line 536
    const/16 v1, 0x9

    aput-object v3, v0, v1

    .line 537
    const/16 v1, 0xa

    const-string v2, "internet"

    aput-object v2, v0, v1

    .line 538
    const/16 v1, 0xb

    const-string v2, "1"

    aput-object v2, v0, v1

    .line 539
    const/16 v1, 0xc

    const-string v2, "true"

    aput-object v2, v0, v1

    .line 540
    const/16 v1, 0xd

    const-string v2, "internet"

    aput-object v2, v0, v1

    .line 541
    const/16 v1, 0xe

    const-string v2, "IPv6"

    aput-object v2, v0, v1

    .line 542
    const/16 v1, 0xf

    const-string v2, "20"

    aput-object v2, v0, v1

    .line 543
    const/16 v1, 0x10

    aput-object v3, v0, v1

    .line 544
    const/16 v1, 0x11

    aput-object v3, v0, v1

    .line 545
    const/16 v1, 0x12

    aput-object v3, v0, v1

    .line 547
    return-object v0
.end method

.method public init_InputCMD()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/internal/APNCtl;->CMD_APNStructure:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/internal/APNCtl;->CMD_APNStructure:Ljava/util/List;

    .line 70
    return-void
.end method

.method public init_Query()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/internal/APNCtl;->QUERY_APNStructure:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/internal/APNCtl;->QUERY_APNStructure:Ljava/util/List;

    .line 76
    invoke-virtual {p0}, Lcom/sprint/internal/APNCtl;->GetAPN()V

    .line 77
    return-void
.end method
