.class public final enum Lcom/android/internal/telephony/IccCard$State;
.super Ljava/lang/Enum;
.source "IccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/IccCard$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/IccCard$State;

.field public static final enum ABSENT:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum ICC_EXPIRED:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum IMEI_LOCKED:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum INVALID:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum NOT_READY:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum PUK_PERM_BLOCKED:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum READY:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum RUIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum RUIM_HRPD_LOCKED:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum RUIM_NETWORK1_LOCKED:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum RUIM_NETWORK2_LOCKED:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum RUIM_RUIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum RUIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum SIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum SIM_NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum SIM_SIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum UNKNOWN:Lcom/android/internal/telephony/IccCard$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 289
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .line 290
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "ABSENT"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    .line 291
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "PIN_REQUIRED"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    .line 292
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "PUK_REQUIRED"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    .line 293
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "NETWORK_LOCKED"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 294
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "READY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    .line 296
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "CARD_IO_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

    .line 297
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "SIM_NETWORK_SUBSET_LOCKED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->SIM_NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 298
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "SIM_CORPORATE_LOCKED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->SIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 299
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "SIM_SERVICE_PROVIDER_LOCKED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 300
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "SIM_SIM_LOCKED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->SIM_SIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 301
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "RUIM_NETWORK1_LOCKED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->RUIM_NETWORK1_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 302
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "RUIM_NETWORK2_LOCKED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->RUIM_NETWORK2_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 303
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "RUIM_HRPD_LOCKED"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->RUIM_HRPD_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 304
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "RUIM_CORPORATE_LOCKED"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->RUIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 305
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "RUIM_SERVICE_PROVIDER_LOCKED"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->RUIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 306
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "RUIM_RUIM_LOCKED"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->RUIM_RUIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 308
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "NOT_READY"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    .line 309
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "INVALID"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->INVALID:Lcom/android/internal/telephony/IccCard$State;

    .line 310
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "PERM_DISABLED"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    .line 312
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "ICC_FAIL"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    .line 313
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "IMEI_LOCKED"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 314
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "ICC_EXPIRED"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->ICC_EXPIRED:Lcom/android/internal/telephony/IccCard$State;

    .line 315
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "PUK_PERM_BLOCKED"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->PUK_PERM_BLOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 288
    const/16 v0, 0x18

    new-array v0, v0, [Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->SIM_NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->SIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->SIM_SIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->RUIM_NETWORK1_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->RUIM_NETWORK2_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->RUIM_HRPD_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->RUIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->RUIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->RUIM_RUIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->INVALID:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ICC_EXPIRED:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PUK_PERM_BLOCKED:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->$VALUES:[Lcom/android/internal/telephony/IccCard$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 288
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/IccCard$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 288
    const-class v0, Lcom/android/internal/telephony/IccCard$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccCard$State;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/IccCard$State;
    .locals 1

    .prologue
    .line 288
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->$VALUES:[Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/IccCard$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/IccCard$State;

    return-object v0
.end method


# virtual methods
.method public iccCardExist()Z
    .locals 1

    .prologue
    .line 323
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIccExpired()Z
    .locals 1

    .prologue
    .line 338
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ICC_EXPIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIccFail()Z
    .locals 1

    .prologue
    .line 330
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImeiLocked()Z
    .locals 1

    .prologue
    .line 334
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPinLocked()Z
    .locals 1

    .prologue
    .line 319
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
