.class public final Lcom/htc/fm/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final FMSeekBar:[I = null

.field public static final FMSeekBar_length:I = 0x0

.field public static final FMSeekBar_lineIndicator:I = 0x1

.field public static final FMSeekBar_triangleIndicator:I = 0x2

.field public static final FreqRollBar:[I = null

.field public static final FreqRollBar_switchers:I = 0x0

.field public static final Screen:[I = null

.field public static final Screen_resolution:I = 0x0

.field public static final SignalBar:[I = null

.field public static final SignalBar_maxCount:I = 0x0

.field public static final SignalBar_mirror:I = 0x4

.field public static final SignalBar_offResID:I = 0x3

.field public static final SignalBar_onResID:I = 0x2

.field public static final SignalBar_space:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2862
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/fm/R$styleable;->FMSeekBar:[I

    .line 2909
    new-array v0, v3, [I

    const v1, 0x7f010004

    aput v1, v0, v2

    sput-object v0, Lcom/htc/fm/R$styleable;->FreqRollBar:[I

    .line 2932
    new-array v0, v3, [I

    const/high16 v1, 0x7f01

    aput v1, v0, v2

    sput-object v0, Lcom/htc/fm/R$styleable;->Screen:[I

    .line 2972
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/fm/R$styleable;->SignalBar:[I

    return-void

    .line 2862
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
    .end array-data

    .line 2972
    :array_1
    .array-data 0x4
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
        0x9t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2847
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
