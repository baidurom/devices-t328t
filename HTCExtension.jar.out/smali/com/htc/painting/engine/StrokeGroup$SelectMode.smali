.class public final enum Lcom/htc/painting/engine/StrokeGroup$SelectMode;
.super Ljava/lang/Enum;
.source "StrokeGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/engine/StrokeGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SelectMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/painting/engine/StrokeGroup$SelectMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/painting/engine/StrokeGroup$SelectMode;

.field public static final enum Contain:Lcom/htc/painting/engine/StrokeGroup$SelectMode;

.field public static final enum Intersect:Lcom/htc/painting/engine/StrokeGroup$SelectMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1031
    new-instance v0, Lcom/htc/painting/engine/StrokeGroup$SelectMode;

    const-string v1, "Contain"

    invoke-direct {v0, v1, v2}, Lcom/htc/painting/engine/StrokeGroup$SelectMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/painting/engine/StrokeGroup$SelectMode;->Contain:Lcom/htc/painting/engine/StrokeGroup$SelectMode;

    new-instance v0, Lcom/htc/painting/engine/StrokeGroup$SelectMode;

    const-string v1, "Intersect"

    invoke-direct {v0, v1, v3}, Lcom/htc/painting/engine/StrokeGroup$SelectMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/painting/engine/StrokeGroup$SelectMode;->Intersect:Lcom/htc/painting/engine/StrokeGroup$SelectMode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/painting/engine/StrokeGroup$SelectMode;

    sget-object v1, Lcom/htc/painting/engine/StrokeGroup$SelectMode;->Contain:Lcom/htc/painting/engine/StrokeGroup$SelectMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/painting/engine/StrokeGroup$SelectMode;->Intersect:Lcom/htc/painting/engine/StrokeGroup$SelectMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/painting/engine/StrokeGroup$SelectMode;->$VALUES:[Lcom/htc/painting/engine/StrokeGroup$SelectMode;

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
    .line 1031
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/painting/engine/StrokeGroup$SelectMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 1031
    const-class v0, Lcom/htc/painting/engine/StrokeGroup$SelectMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/engine/StrokeGroup$SelectMode;

    return-object v0
.end method

.method public static values()[Lcom/htc/painting/engine/StrokeGroup$SelectMode;
    .locals 1

    .prologue
    .line 1031
    sget-object v0, Lcom/htc/painting/engine/StrokeGroup$SelectMode;->$VALUES:[Lcom/htc/painting/engine/StrokeGroup$SelectMode;

    invoke-virtual {v0}, [Lcom/htc/painting/engine/StrokeGroup$SelectMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/painting/engine/StrokeGroup$SelectMode;

    return-object v0
.end method
