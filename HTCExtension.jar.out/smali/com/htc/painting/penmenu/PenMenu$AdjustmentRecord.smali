.class Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;
.super Ljava/lang/Object;
.source "PenMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu/PenMenu;
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
    .line 3134
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;->origX:F

    .line 3136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;->origY:F

    .line 3137
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/MotionEvent;Lcom/htc/painting/penmenu/PenMenu$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3130
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;-><init>(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static restoreEvent(Landroid/view/MotionEvent;Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;)V
    .locals 2
    .parameter "event"
    .parameter "record"

    .prologue
    .line 3140
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 3141
    iget v0, p1, Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;->origX:F

    iget v1, p1, Lcom/htc/painting/penmenu/PenMenu$AdjustmentRecord;->origY:F

    invoke-virtual {p0, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 3143
    :cond_0
    return-void
.end method
