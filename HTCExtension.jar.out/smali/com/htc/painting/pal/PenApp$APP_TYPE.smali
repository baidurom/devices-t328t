.class public final enum Lcom/htc/painting/pal/PenApp$APP_TYPE;
.super Ljava/lang/Enum;
.source "PenApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/pal/PenApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "APP_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/painting/pal/PenApp$APP_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/painting/pal/PenApp$APP_TYPE;

.field public static final enum NORMAL:Lcom/htc/painting/pal/PenApp$APP_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    new-instance v0, Lcom/htc/painting/pal/PenApp$APP_TYPE;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/htc/painting/pal/PenApp$APP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/painting/pal/PenApp$APP_TYPE;->NORMAL:Lcom/htc/painting/pal/PenApp$APP_TYPE;

    .line 112
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/htc/painting/pal/PenApp$APP_TYPE;

    sget-object v1, Lcom/htc/painting/pal/PenApp$APP_TYPE;->NORMAL:Lcom/htc/painting/pal/PenApp$APP_TYPE;

    aput-object v1, v0, v2

    sput-object v0, Lcom/htc/painting/pal/PenApp$APP_TYPE;->$VALUES:[Lcom/htc/painting/pal/PenApp$APP_TYPE;

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
    .line 112
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/painting/pal/PenApp$APP_TYPE;
    .locals 1
    .parameter "name"

    .prologue
    .line 112
    const-class v0, Lcom/htc/painting/pal/PenApp$APP_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/pal/PenApp$APP_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/htc/painting/pal/PenApp$APP_TYPE;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/htc/painting/pal/PenApp$APP_TYPE;->$VALUES:[Lcom/htc/painting/pal/PenApp$APP_TYPE;

    invoke-virtual {v0}, [Lcom/htc/painting/pal/PenApp$APP_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/painting/pal/PenApp$APP_TYPE;

    return-object v0
.end method
