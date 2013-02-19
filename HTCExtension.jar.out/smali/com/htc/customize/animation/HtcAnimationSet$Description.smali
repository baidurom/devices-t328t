.class public Lcom/htc/customize/animation/HtcAnimationSet$Description;
.super Ljava/lang/Object;
.source "HtcAnimationSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/customize/animation/HtcAnimationSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Description"
.end annotation


# instance fields
.field public type:I

.field public value:F


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 747
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;
    .locals 6
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 761
    new-instance v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;

    invoke-direct {v0}, Lcom/htc/customize/animation/HtcAnimationSet$Description;-><init>()V

    .line 762
    .local v0, d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    if-nez p0, :cond_1

    .line 763
    iput v4, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    .line 764
    iput v5, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    .line 784
    :cond_0
    iput v4, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    .line 785
    iput v5, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    .line 787
    :goto_0
    return-object v0

    .line 766
    :cond_1
    iget v2, p0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    .line 767
    iget v2, p0, Landroid/util/TypedValue;->data:I

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v1, :cond_2

    const/4 v1, 0x2

    :cond_2
    iput v1, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    .line 770
    iget v1, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v1}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    iput v1, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    goto :goto_0

    .line 772
    :cond_3
    iget v1, p0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 773
    iput v4, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    .line 774
    invoke-virtual {p0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    goto :goto_0

    .line 776
    :cond_4
    iget v1, p0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget v1, p0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 778
    iput v4, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    .line 779
    iget v1, p0, Landroid/util/TypedValue;->data:I

    int-to-float v1, v1

    iput v1, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    goto :goto_0
.end method
