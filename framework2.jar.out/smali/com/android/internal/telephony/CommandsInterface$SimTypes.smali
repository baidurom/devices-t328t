.class public final enum Lcom/android/internal/telephony/CommandsInterface$SimTypes;
.super Ljava/lang/Enum;
.source "CommandsInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CommandsInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SimTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/CommandsInterface$SimTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/CommandsInterface$SimTypes;

.field public static final enum RIL_2G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

.field public static final enum RIL_3G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

.field public static final enum RIL_DBDM_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

.field public static final enum RIL_DUAL_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

.field public static final enum RIL_NO_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

.field public static final enum RIL_RUIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

.field public static final enum RIL_SIM_FAIL:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

.field public static final enum RIL_TESTSIM_2G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

.field public static final enum RIL_TESTSIM_3G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

.field public static final enum RIL_TITAN_LITE_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

.field public static final enum RIL_WIBRO_ONLY_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 142
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    const-string v1, "RIL_NO_SIM_CARD"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_NO_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    .line 143
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    const-string v1, "RIL_2G_SIM_CARD"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_2G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    .line 144
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    const-string v1, "RIL_3G_SIM_CARD"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_3G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    .line 145
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    const-string v1, "RIL_TITAN_LITE_SIM_CARD"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_TITAN_LITE_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    .line 146
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    const-string v1, "RIL_DBDM_SIM_CARD"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_DBDM_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    .line 147
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    const-string v1, "RIL_WIBRO_ONLY_SIM_CARD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_WIBRO_ONLY_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    .line 148
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    const-string v1, "RIL_SIM_FAIL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_SIM_FAIL:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    .line 149
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    const-string v1, "RIL_RUIM_CARD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_RUIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    .line 150
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    const-string v1, "RIL_DUAL_CARD"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_DUAL_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    .line 151
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    const-string v1, "RIL_TESTSIM_2G_SIM_CARD"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_TESTSIM_2G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    .line 152
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    const-string v1, "RIL_TESTSIM_3G_SIM_CARD"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_TESTSIM_3G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    .line 141
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_NO_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_2G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_3G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_TITAN_LITE_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_DBDM_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_WIBRO_ONLY_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_SIM_FAIL:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_RUIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_DUAL_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_TESTSIM_2G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_TESTSIM_3G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->$VALUES:[Lcom/android/internal/telephony/CommandsInterface$SimTypes;

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
    .line 141
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/CommandsInterface$SimTypes;
    .locals 1
    .parameter "name"

    .prologue
    .line 141
    const-class v0, Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/CommandsInterface$SimTypes;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->$VALUES:[Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/CommandsInterface$SimTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    return-object v0
.end method
