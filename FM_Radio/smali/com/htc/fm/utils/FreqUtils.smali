.class public Lcom/htc/fm/utils/FreqUtils;
.super Ljava/lang/Object;
.source "FreqUtils.java"


# static fields
.field public static FREQUENCY_END:I

.field public static FREQUENCY_START:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const v0, 0x155cc

    sput v0, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_START:I

    .line 13
    const v0, 0x1a5e0

    sput v0, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_END:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFreq(I)Ljava/lang/String;
    .locals 7
    .parameter "freq"

    .prologue
    .line 23
    const-string v0, "%1$3.1f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    int-to-double v3, p0

    const-wide/high16 v5, 0x4059

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4024

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
