.class public final enum Lcom/android/internal/telephony/DataPhone$IPVersion;
.super Ljava/lang/Enum;
.source "DataPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IPVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/DataPhone$IPVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/DataPhone$IPVersion;

.field public static final enum IPV4:Lcom/android/internal/telephony/DataPhone$IPVersion;

.field public static final enum IPV6:Lcom/android/internal/telephony/DataPhone$IPVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-instance v0, Lcom/android/internal/telephony/DataPhone$IPVersion;

    const-string v1, "IPV4"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataPhone$IPVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataPhone$IPVersion;->IPV4:Lcom/android/internal/telephony/DataPhone$IPVersion;

    new-instance v0, Lcom/android/internal/telephony/DataPhone$IPVersion;

    const-string v1, "IPV6"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/DataPhone$IPVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataPhone$IPVersion;->IPV6:Lcom/android/internal/telephony/DataPhone$IPVersion;

    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/telephony/DataPhone$IPVersion;

    sget-object v1, Lcom/android/internal/telephony/DataPhone$IPVersion;->IPV4:Lcom/android/internal/telephony/DataPhone$IPVersion;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/DataPhone$IPVersion;->IPV6:Lcom/android/internal/telephony/DataPhone$IPVersion;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/DataPhone$IPVersion;->$VALUES:[Lcom/android/internal/telephony/DataPhone$IPVersion;

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
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/DataPhone$IPVersion;
    .locals 1
    .parameter "name"

    .prologue
    .line 70
    const-class v0, Lcom/android/internal/telephony/DataPhone$IPVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataPhone$IPVersion;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/DataPhone$IPVersion;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/internal/telephony/DataPhone$IPVersion;->$VALUES:[Lcom/android/internal/telephony/DataPhone$IPVersion;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/DataPhone$IPVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/DataPhone$IPVersion;

    return-object v0
.end method
