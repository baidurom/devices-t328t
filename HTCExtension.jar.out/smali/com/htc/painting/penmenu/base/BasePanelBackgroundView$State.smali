.class final enum Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;
.super Ljava/lang/Enum;
.source "BasePanelBackgroundView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu/base/BasePanelBackgroundView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;

.field public static final enum HIGHLIGHT:Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;

.field public static final enum NORMAL:Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;

    const-string v1, "HIGHLIGHT"

    invoke-direct {v0, v1, v2}, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;->HIGHLIGHT:Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;

    .line 46
    new-instance v0, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;->NORMAL:Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;

    sget-object v1, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;->HIGHLIGHT:Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;->NORMAL:Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;->$VALUES:[Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 44
    const-class v0, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;

    return-object v0
.end method

.method public static values()[Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;->$VALUES:[Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;

    invoke-virtual {v0}, [Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/painting/penmenu/base/BasePanelBackgroundView$State;

    return-object v0
.end method
