.class public final enum Lcom/htc/painting/penmenu/menu/Menu$State;
.super Ljava/lang/Enum;
.source "Menu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu/menu/Menu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/painting/penmenu/menu/Menu$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/painting/penmenu/menu/Menu$State;

.field public static final enum COLLAPSE:Lcom/htc/painting/penmenu/menu/Menu$State;

.field public static final enum EXPAND:Lcom/htc/painting/penmenu/menu/Menu$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/htc/painting/penmenu/menu/Menu$State;

    const-string v1, "COLLAPSE"

    invoke-direct {v0, v1, v2}, Lcom/htc/painting/penmenu/menu/Menu$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/painting/penmenu/menu/Menu$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Menu$State;

    new-instance v0, Lcom/htc/painting/penmenu/menu/Menu$State;

    const-string v1, "EXPAND"

    invoke-direct {v0, v1, v3}, Lcom/htc/painting/penmenu/menu/Menu$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/painting/penmenu/menu/Menu$State;->EXPAND:Lcom/htc/painting/penmenu/menu/Menu$State;

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/painting/penmenu/menu/Menu$State;

    sget-object v1, Lcom/htc/painting/penmenu/menu/Menu$State;->COLLAPSE:Lcom/htc/painting/penmenu/menu/Menu$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/painting/penmenu/menu/Menu$State;->EXPAND:Lcom/htc/painting/penmenu/menu/Menu$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/painting/penmenu/menu/Menu$State;->$VALUES:[Lcom/htc/painting/penmenu/menu/Menu$State;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/painting/penmenu/menu/Menu$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 37
    const-class v0, Lcom/htc/painting/penmenu/menu/Menu$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu/menu/Menu$State;

    return-object v0
.end method

.method public static values()[Lcom/htc/painting/penmenu/menu/Menu$State;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/htc/painting/penmenu/menu/Menu$State;->$VALUES:[Lcom/htc/painting/penmenu/menu/Menu$State;

    invoke-virtual {v0}, [Lcom/htc/painting/penmenu/menu/Menu$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/painting/penmenu/menu/Menu$State;

    return-object v0
.end method
