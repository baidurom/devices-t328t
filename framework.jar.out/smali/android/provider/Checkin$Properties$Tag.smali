.class public final enum Landroid/provider/Checkin$Properties$Tag;
.super Ljava/lang/Enum;
.source "Checkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Checkin$Properties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/provider/Checkin$Properties$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/provider/Checkin$Properties$Tag;

.field public static final enum DESIRED_BUILD:Landroid/provider/Checkin$Properties$Tag;

.field public static final enum MARKET_CHECKIN:Landroid/provider/Checkin$Properties$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 192
    new-instance v0, Landroid/provider/Checkin$Properties$Tag;

    const-string v1, "DESIRED_BUILD"

    invoke-direct {v0, v1, v2}, Landroid/provider/Checkin$Properties$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Properties$Tag;->DESIRED_BUILD:Landroid/provider/Checkin$Properties$Tag;

    .line 193
    new-instance v0, Landroid/provider/Checkin$Properties$Tag;

    const-string v1, "MARKET_CHECKIN"

    invoke-direct {v0, v1, v3}, Landroid/provider/Checkin$Properties$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Checkin$Properties$Tag;->MARKET_CHECKIN:Landroid/provider/Checkin$Properties$Tag;

    .line 191
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/provider/Checkin$Properties$Tag;

    sget-object v1, Landroid/provider/Checkin$Properties$Tag;->DESIRED_BUILD:Landroid/provider/Checkin$Properties$Tag;

    aput-object v1, v0, v2

    sget-object v1, Landroid/provider/Checkin$Properties$Tag;->MARKET_CHECKIN:Landroid/provider/Checkin$Properties$Tag;

    aput-object v1, v0, v3

    sput-object v0, Landroid/provider/Checkin$Properties$Tag;->$VALUES:[Landroid/provider/Checkin$Properties$Tag;

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
    .line 191
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/provider/Checkin$Properties$Tag;
    .locals 1
    .parameter "name"

    .prologue
    .line 191
    const-class v0, Landroid/provider/Checkin$Properties$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/provider/Checkin$Properties$Tag;

    return-object v0
.end method

.method public static values()[Landroid/provider/Checkin$Properties$Tag;
    .locals 1

    .prologue
    .line 191
    sget-object v0, Landroid/provider/Checkin$Properties$Tag;->$VALUES:[Landroid/provider/Checkin$Properties$Tag;

    invoke-virtual {v0}, [Landroid/provider/Checkin$Properties$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/provider/Checkin$Properties$Tag;

    return-object v0
.end method
