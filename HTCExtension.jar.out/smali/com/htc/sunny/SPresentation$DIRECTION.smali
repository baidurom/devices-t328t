.class public final enum Lcom/htc/sunny/SPresentation$DIRECTION;
.super Ljava/lang/Enum;
.source "SPresentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny/SPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DIRECTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/sunny/SPresentation$DIRECTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/sunny/SPresentation$DIRECTION;

.field public static final enum D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

.field public static final enum D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

.field public static final enum D_UNKNOWN:Lcom/htc/sunny/SPresentation$DIRECTION;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 140
    new-instance v0, Lcom/htc/sunny/SPresentation$DIRECTION;

    const-string v1, "D_UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny/SPresentation$DIRECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny/SPresentation$DIRECTION;->D_UNKNOWN:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 141
    new-instance v0, Lcom/htc/sunny/SPresentation$DIRECTION;

    const-string v1, "D_L2R"

    invoke-direct {v0, v1, v3}, Lcom/htc/sunny/SPresentation$DIRECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 142
    new-instance v0, Lcom/htc/sunny/SPresentation$DIRECTION;

    const-string v1, "D_R2L"

    invoke-direct {v0, v1, v4}, Lcom/htc/sunny/SPresentation$DIRECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 139
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_UNKNOWN:Lcom/htc/sunny/SPresentation$DIRECTION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/sunny/SPresentation$DIRECTION;->$VALUES:[Lcom/htc/sunny/SPresentation$DIRECTION;

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
    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/sunny/SPresentation$DIRECTION;
    .locals 1
    .parameter "name"

    .prologue
    .line 139
    const-class v0, Lcom/htc/sunny/SPresentation$DIRECTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny/SPresentation$DIRECTION;

    return-object v0
.end method

.method public static values()[Lcom/htc/sunny/SPresentation$DIRECTION;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/htc/sunny/SPresentation$DIRECTION;->$VALUES:[Lcom/htc/sunny/SPresentation$DIRECTION;

    invoke-virtual {v0}, [Lcom/htc/sunny/SPresentation$DIRECTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/sunny/SPresentation$DIRECTION;

    return-object v0
.end method
