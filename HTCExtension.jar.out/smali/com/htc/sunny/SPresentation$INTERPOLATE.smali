.class public final enum Lcom/htc/sunny/SPresentation$INTERPOLATE;
.super Ljava/lang/Enum;
.source "SPresentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny/SPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "INTERPOLATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/sunny/SPresentation$INTERPOLATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/sunny/SPresentation$INTERPOLATE;

.field public static final enum EASEINOUT_CUBIC:Lcom/htc/sunny/SPresentation$INTERPOLATE;

.field public static final enum EASEOUT_CUBIC:Lcom/htc/sunny/SPresentation$INTERPOLATE;

.field public static final enum LINEAR:Lcom/htc/sunny/SPresentation$INTERPOLATE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 267
    new-instance v0, Lcom/htc/sunny/SPresentation$INTERPOLATE;

    const-string v1, "LINEAR"

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny/SPresentation$INTERPOLATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny/SPresentation$INTERPOLATE;->LINEAR:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    .line 268
    new-instance v0, Lcom/htc/sunny/SPresentation$INTERPOLATE;

    const-string v1, "EASEOUT_CUBIC"

    invoke-direct {v0, v1, v3}, Lcom/htc/sunny/SPresentation$INTERPOLATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny/SPresentation$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    .line 269
    new-instance v0, Lcom/htc/sunny/SPresentation$INTERPOLATE;

    const-string v1, "EASEINOUT_CUBIC"

    invoke-direct {v0, v1, v4}, Lcom/htc/sunny/SPresentation$INTERPOLATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny/SPresentation$INTERPOLATE;->EASEINOUT_CUBIC:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    .line 266
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/sunny/SPresentation$INTERPOLATE;

    sget-object v1, Lcom/htc/sunny/SPresentation$INTERPOLATE;->LINEAR:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/sunny/SPresentation$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/sunny/SPresentation$INTERPOLATE;->EASEINOUT_CUBIC:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/sunny/SPresentation$INTERPOLATE;->$VALUES:[Lcom/htc/sunny/SPresentation$INTERPOLATE;

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
    .line 266
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/sunny/SPresentation$INTERPOLATE;
    .locals 1
    .parameter "name"

    .prologue
    .line 266
    const-class v0, Lcom/htc/sunny/SPresentation$INTERPOLATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny/SPresentation$INTERPOLATE;

    return-object v0
.end method

.method public static values()[Lcom/htc/sunny/SPresentation$INTERPOLATE;
    .locals 1

    .prologue
    .line 266
    sget-object v0, Lcom/htc/sunny/SPresentation$INTERPOLATE;->$VALUES:[Lcom/htc/sunny/SPresentation$INTERPOLATE;

    invoke-virtual {v0}, [Lcom/htc/sunny/SPresentation$INTERPOLATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/sunny/SPresentation$INTERPOLATE;

    return-object v0
.end method
