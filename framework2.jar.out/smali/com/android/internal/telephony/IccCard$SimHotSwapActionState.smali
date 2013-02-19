.class public final enum Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;
.super Ljava/lang/Enum;
.source "IccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SimHotSwapActionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

.field public static final enum ACTION_INIT:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

.field public static final enum ACTION_OFF:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

.field public static final enum ACTION_ON:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 213
    new-instance v0, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    const-string v1, "ACTION_INIT"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;->ACTION_INIT:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    new-instance v0, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    const-string v1, "ACTION_ON"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;->ACTION_ON:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    new-instance v0, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    const-string v1, "ACTION_OFF"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;->ACTION_OFF:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    .line 212
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    sget-object v1, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;->ACTION_INIT:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;->ACTION_ON:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;->ACTION_OFF:Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;->$VALUES:[Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

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
    .line 212
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;
    .locals 1
    .parameter "name"

    .prologue
    .line 212
    const-class v0, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;->$VALUES:[Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/IccCard$SimHotSwapActionState;

    return-object v0
.end method
