.class final enum Lcom/android/internal/telephony/HtcTelephony$ECaveResult;
.super Ljava/lang/Enum;
.source "HtcTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HtcTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ECaveResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/HtcTelephony$ECaveResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/HtcTelephony$ECaveResult;

.field public static final enum CAVE_NOUIM:Lcom/android/internal/telephony/HtcTelephony$ECaveResult;

.field public static final enum CAVE_RUNFAIL:Lcom/android/internal/telephony/HtcTelephony$ECaveResult;

.field public static final enum CAVE_SUCESS:Lcom/android/internal/telephony/HtcTelephony$ECaveResult;

.field public static final enum CAVE_UNKNOW:Lcom/android/internal/telephony/HtcTelephony$ECaveResult;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    new-instance v0, Lcom/android/internal/telephony/HtcTelephony$ECaveResult;

    const-string v1, "CAVE_SUCESS"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcTelephony$ECaveResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HtcTelephony$ECaveResult;->CAVE_SUCESS:Lcom/android/internal/telephony/HtcTelephony$ECaveResult;

    new-instance v0, Lcom/android/internal/telephony/HtcTelephony$ECaveResult;

    const-string v1, "CAVE_NOUIM"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/HtcTelephony$ECaveResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HtcTelephony$ECaveResult;->CAVE_NOUIM:Lcom/android/internal/telephony/HtcTelephony$ECaveResult;

    new-instance v0, Lcom/android/internal/telephony/HtcTelephony$ECaveResult;

    const-string v1, "CAVE_RUNFAIL"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcTelephony$ECaveResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HtcTelephony$ECaveResult;->CAVE_RUNFAIL:Lcom/android/internal/telephony/HtcTelephony$ECaveResult;

    new-instance v0, Lcom/android/internal/telephony/HtcTelephony$ECaveResult;

    const-string v1, "CAVE_UNKNOW"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/HtcTelephony$ECaveResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HtcTelephony$ECaveResult;->CAVE_UNKNOW:Lcom/android/internal/telephony/HtcTelephony$ECaveResult;

    .line 82
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/telephony/HtcTelephony$ECaveResult;

    sget-object v1, Lcom/android/internal/telephony/HtcTelephony$ECaveResult;->CAVE_SUCESS:Lcom/android/internal/telephony/HtcTelephony$ECaveResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/HtcTelephony$ECaveResult;->CAVE_NOUIM:Lcom/android/internal/telephony/HtcTelephony$ECaveResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/HtcTelephony$ECaveResult;->CAVE_RUNFAIL:Lcom/android/internal/telephony/HtcTelephony$ECaveResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/HtcTelephony$ECaveResult;->CAVE_UNKNOW:Lcom/android/internal/telephony/HtcTelephony$ECaveResult;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/HtcTelephony$ECaveResult;->$VALUES:[Lcom/android/internal/telephony/HtcTelephony$ECaveResult;

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
    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/HtcTelephony$ECaveResult;
    .locals 1
    .parameter "name"

    .prologue
    .line 82
    const-class v0, Lcom/android/internal/telephony/HtcTelephony$ECaveResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HtcTelephony$ECaveResult;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/HtcTelephony$ECaveResult;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/internal/telephony/HtcTelephony$ECaveResult;->$VALUES:[Lcom/android/internal/telephony/HtcTelephony$ECaveResult;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/HtcTelephony$ECaveResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/HtcTelephony$ECaveResult;

    return-object v0
.end method
