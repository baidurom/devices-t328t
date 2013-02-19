.class Lcom/htc/painting/penmenu15/RoundPenMenu$AdjustmentRecord;
.super Ljava/lang/Object;
.source "RoundPenMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu15/RoundPenMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdjustmentRecord"
.end annotation


# instance fields
.field final origX:F

.field final origY:F


# direct methods
.method private constructor <init>(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 1821
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1822
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$AdjustmentRecord;->origX:F

    .line 1823
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/htc/painting/penmenu15/RoundPenMenu$AdjustmentRecord;->origY:F

    .line 1824
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/MotionEvent;Lcom/htc/painting/penmenu15/RoundPenMenu$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1817
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/RoundPenMenu$AdjustmentRecord;-><init>(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static restoreEvent(Landroid/view/MotionEvent;Lcom/htc/painting/penmenu15/RoundPenMenu$AdjustmentRecord;)V
    .locals 2
    .parameter "event"
    .parameter "record"

    .prologue
    .line 1831
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1832
    iget v0, p1, Lcom/htc/painting/penmenu15/RoundPenMenu$AdjustmentRecord;->origX:F

    iget v1, p1, Lcom/htc/painting/penmenu15/RoundPenMenu$AdjustmentRecord;->origY:F

    invoke-virtual {p0, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1834
    :cond_0
    return-void
.end method
