.class public final enum Lcom/htc/widget/HtcAdapterView2$ListStyle;
.super Ljava/lang/Enum;
.source "HtcAdapterView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcAdapterView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ListStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/widget/HtcAdapterView2$ListStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/widget/HtcAdapterView2$ListStyle;

.field public static final enum HORZ_STYLE_:Lcom/htc/widget/HtcAdapterView2$ListStyle;

.field public static final enum VERT_STYLE_:Lcom/htc/widget/HtcAdapterView2$ListStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    new-instance v0, Lcom/htc/widget/HtcAdapterView2$ListStyle;

    const-string v1, "VERT_STYLE_"

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcAdapterView2$ListStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/widget/HtcAdapterView2$ListStyle;->VERT_STYLE_:Lcom/htc/widget/HtcAdapterView2$ListStyle;

    .line 88
    new-instance v0, Lcom/htc/widget/HtcAdapterView2$ListStyle;

    const-string v1, "HORZ_STYLE_"

    invoke-direct {v0, v1, v3}, Lcom/htc/widget/HtcAdapterView2$ListStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/widget/HtcAdapterView2$ListStyle;->HORZ_STYLE_:Lcom/htc/widget/HtcAdapterView2$ListStyle;

    .line 86
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/widget/HtcAdapterView2$ListStyle;

    sget-object v1, Lcom/htc/widget/HtcAdapterView2$ListStyle;->VERT_STYLE_:Lcom/htc/widget/HtcAdapterView2$ListStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/widget/HtcAdapterView2$ListStyle;->HORZ_STYLE_:Lcom/htc/widget/HtcAdapterView2$ListStyle;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/widget/HtcAdapterView2$ListStyle;->$VALUES:[Lcom/htc/widget/HtcAdapterView2$ListStyle;

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
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/widget/HtcAdapterView2$ListStyle;
    .locals 1
    .parameter "name"

    .prologue
    .line 86
    const-class v0, Lcom/htc/widget/HtcAdapterView2$ListStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcAdapterView2$ListStyle;

    return-object v0
.end method

.method public static values()[Lcom/htc/widget/HtcAdapterView2$ListStyle;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/htc/widget/HtcAdapterView2$ListStyle;->$VALUES:[Lcom/htc/widget/HtcAdapterView2$ListStyle;

    invoke-virtual {v0}, [Lcom/htc/widget/HtcAdapterView2$ListStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/widget/HtcAdapterView2$ListStyle;

    return-object v0
.end method
