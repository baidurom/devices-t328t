.class final enum Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;
.super Ljava/lang/Enum;
.source "ContinuousClickTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TouchState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;

.field public static final enum IDLE:Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;

.field public static final enum PRESSED:Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;->IDLE:Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;

    .line 16
    new-instance v0, Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;

    const-string v1, "PRESSED"

    invoke-direct {v0, v1, v3}, Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;->PRESSED:Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;

    .line 14
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;

    sget-object v1, Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;->IDLE:Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;->PRESSED:Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;->$VALUES:[Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;
    .locals 1
    .parameter "name"

    .prologue
    .line 14
    const-class v0, Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;

    return-object v0
.end method

.method public static values()[Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;->$VALUES:[Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;

    invoke-virtual {v0}, [Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/painting/penmenu15/view/ContinuousClickTouchListener$TouchState;

    return-object v0
.end method
