.class public final enum Lcom/android/internal/telephony/SimSlotManager$SwitchState;
.super Ljava/lang/Enum;
.source "SimSlotManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SimSlotManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SwitchState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/SimSlotManager$SwitchState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/SimSlotManager$SwitchState;

.field public static final enum DONE:Lcom/android/internal/telephony/SimSlotManager$SwitchState;

.field public static final enum IDLE:Lcom/android/internal/telephony/SimSlotManager$SwitchState;

.field public static final enum SWITCH_SLOT:Lcom/android/internal/telephony/SimSlotManager$SwitchState;

.field public static final enum TURN_OFF_RADIO:Lcom/android/internal/telephony/SimSlotManager$SwitchState;

.field public static final enum TURN_ON_RADIO:Lcom/android/internal/telephony/SimSlotManager$SwitchState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    new-instance v0, Lcom/android/internal/telephony/SimSlotManager$SwitchState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SimSlotManager$SwitchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/SimSlotManager$SwitchState;->IDLE:Lcom/android/internal/telephony/SimSlotManager$SwitchState;

    .line 95
    new-instance v0, Lcom/android/internal/telephony/SimSlotManager$SwitchState;

    const-string v1, "TURN_OFF_RADIO"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/SimSlotManager$SwitchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/SimSlotManager$SwitchState;->TURN_OFF_RADIO:Lcom/android/internal/telephony/SimSlotManager$SwitchState;

    .line 96
    new-instance v0, Lcom/android/internal/telephony/SimSlotManager$SwitchState;

    const-string v1, "SWITCH_SLOT"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/SimSlotManager$SwitchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/SimSlotManager$SwitchState;->SWITCH_SLOT:Lcom/android/internal/telephony/SimSlotManager$SwitchState;

    .line 97
    new-instance v0, Lcom/android/internal/telephony/SimSlotManager$SwitchState;

    const-string v1, "TURN_ON_RADIO"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/SimSlotManager$SwitchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/SimSlotManager$SwitchState;->TURN_ON_RADIO:Lcom/android/internal/telephony/SimSlotManager$SwitchState;

    .line 98
    new-instance v0, Lcom/android/internal/telephony/SimSlotManager$SwitchState;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/SimSlotManager$SwitchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/SimSlotManager$SwitchState;->DONE:Lcom/android/internal/telephony/SimSlotManager$SwitchState;

    .line 93
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/telephony/SimSlotManager$SwitchState;

    sget-object v1, Lcom/android/internal/telephony/SimSlotManager$SwitchState;->IDLE:Lcom/android/internal/telephony/SimSlotManager$SwitchState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/SimSlotManager$SwitchState;->TURN_OFF_RADIO:Lcom/android/internal/telephony/SimSlotManager$SwitchState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/SimSlotManager$SwitchState;->SWITCH_SLOT:Lcom/android/internal/telephony/SimSlotManager$SwitchState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/SimSlotManager$SwitchState;->TURN_ON_RADIO:Lcom/android/internal/telephony/SimSlotManager$SwitchState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/SimSlotManager$SwitchState;->DONE:Lcom/android/internal/telephony/SimSlotManager$SwitchState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/SimSlotManager$SwitchState;->$VALUES:[Lcom/android/internal/telephony/SimSlotManager$SwitchState;

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
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/SimSlotManager$SwitchState;
    .locals 1
    .parameter "name"

    .prologue
    .line 93
    const-class v0, Lcom/android/internal/telephony/SimSlotManager$SwitchState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SimSlotManager$SwitchState;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/SimSlotManager$SwitchState;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/android/internal/telephony/SimSlotManager$SwitchState;->$VALUES:[Lcom/android/internal/telephony/SimSlotManager$SwitchState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/SimSlotManager$SwitchState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/SimSlotManager$SwitchState;

    return-object v0
.end method
