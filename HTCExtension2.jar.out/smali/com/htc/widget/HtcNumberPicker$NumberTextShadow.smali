.class Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;
.super Ljava/lang/Object;
.source "HtcNumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumberTextShadow"
.end annotation


# instance fields
.field private dx:F

.field private dy:F

.field private radius:F

.field private shadowColor:I

.field final synthetic this$0:Lcom/htc/widget/HtcNumberPicker;


# direct methods
.method public constructor <init>(Lcom/htc/widget/HtcNumberPicker;FFFI)V
    .locals 0
    .parameter
    .parameter "r"
    .parameter "x"
    .parameter "y"
    .parameter "c"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->this$0:Lcom/htc/widget/HtcNumberPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput p2, p0, Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->radius:F

    .line 200
    iput p3, p0, Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->dx:F

    .line 201
    iput p4, p0, Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->dy:F

    .line 202
    iput p5, p0, Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->shadowColor:I

    .line 203
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 194
    iget v0, p0, Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->dx:F

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 194
    iget v0, p0, Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->dy:F

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 194
    iget v0, p0, Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->shadowColor:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 194
    iget v0, p0, Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->radius:F

    return v0
.end method
