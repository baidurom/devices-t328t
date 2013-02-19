.class public final enum Lcom/htc/painting/penmenu/menu/OptionPanel$State;
.super Ljava/lang/Enum;
.source "OptionPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu/menu/OptionPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/painting/penmenu/menu/OptionPanel$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/painting/penmenu/menu/OptionPanel$State;

.field public static final enum FULL:Lcom/htc/painting/penmenu/menu/OptionPanel$State;

.field public static final enum SHRINK:Lcom/htc/painting/penmenu/menu/OptionPanel$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/htc/painting/penmenu/menu/OptionPanel$State;

    const-string v1, "SHRINK"

    invoke-direct {v0, v1, v2}, Lcom/htc/painting/penmenu/menu/OptionPanel$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/painting/penmenu/menu/OptionPanel$State;->SHRINK:Lcom/htc/painting/penmenu/menu/OptionPanel$State;

    new-instance v0, Lcom/htc/painting/penmenu/menu/OptionPanel$State;

    const-string v1, "FULL"

    invoke-direct {v0, v1, v3}, Lcom/htc/painting/penmenu/menu/OptionPanel$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/painting/penmenu/menu/OptionPanel$State;->FULL:Lcom/htc/painting/penmenu/menu/OptionPanel$State;

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/painting/penmenu/menu/OptionPanel$State;

    sget-object v1, Lcom/htc/painting/penmenu/menu/OptionPanel$State;->SHRINK:Lcom/htc/painting/penmenu/menu/OptionPanel$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/painting/penmenu/menu/OptionPanel$State;->FULL:Lcom/htc/painting/penmenu/menu/OptionPanel$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/painting/penmenu/menu/OptionPanel$State;->$VALUES:[Lcom/htc/painting/penmenu/menu/OptionPanel$State;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/painting/penmenu/menu/OptionPanel$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 30
    const-class v0, Lcom/htc/painting/penmenu/menu/OptionPanel$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu/menu/OptionPanel$State;

    return-object v0
.end method

.method public static values()[Lcom/htc/painting/penmenu/menu/OptionPanel$State;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/htc/painting/penmenu/menu/OptionPanel$State;->$VALUES:[Lcom/htc/painting/penmenu/menu/OptionPanel$State;

    invoke-virtual {v0}, [Lcom/htc/painting/penmenu/menu/OptionPanel$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/painting/penmenu/menu/OptionPanel$State;

    return-object v0
.end method
