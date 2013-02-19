.class public final enum Lcom/htc/painting/penmenu/PenMenu$DockCorner;
.super Ljava/lang/Enum;
.source "PenMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu/PenMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DockCorner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/painting/penmenu/PenMenu$DockCorner;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/painting/penmenu/PenMenu$DockCorner;

.field public static final enum LEFT_BOTTOM:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

.field public static final enum LEFT_TOP:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

.field public static final enum RIGHT_BOTTOM:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

.field public static final enum RIGHT_TOP:Lcom/htc/painting/penmenu/PenMenu$DockCorner;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3662
    new-instance v0, Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    const-string v1, "LEFT_BOTTOM"

    invoke-direct {v0, v1, v2}, Lcom/htc/painting/penmenu/PenMenu$DockCorner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->LEFT_BOTTOM:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    new-instance v0, Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    const-string v1, "RIGHT_BOTTOM"

    invoke-direct {v0, v1, v3}, Lcom/htc/painting/penmenu/PenMenu$DockCorner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->RIGHT_BOTTOM:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    new-instance v0, Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    const-string v1, "RIGHT_TOP"

    invoke-direct {v0, v1, v4}, Lcom/htc/painting/penmenu/PenMenu$DockCorner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->RIGHT_TOP:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    new-instance v0, Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    const-string v1, "LEFT_TOP"

    invoke-direct {v0, v1, v5}, Lcom/htc/painting/penmenu/PenMenu$DockCorner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->LEFT_TOP:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    .line 3661
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    sget-object v1, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->LEFT_BOTTOM:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->RIGHT_BOTTOM:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->RIGHT_TOP:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->LEFT_TOP:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->$VALUES:[Lcom/htc/painting/penmenu/PenMenu$DockCorner;

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
    .line 3661
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/painting/penmenu/PenMenu$DockCorner;
    .locals 1
    .parameter "name"

    .prologue
    .line 3661
    const-class v0, Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    return-object v0
.end method

.method public static values()[Lcom/htc/painting/penmenu/PenMenu$DockCorner;
    .locals 1

    .prologue
    .line 3661
    sget-object v0, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->$VALUES:[Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    invoke-virtual {v0}, [Lcom/htc/painting/penmenu/PenMenu$DockCorner;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    return-object v0
.end method
