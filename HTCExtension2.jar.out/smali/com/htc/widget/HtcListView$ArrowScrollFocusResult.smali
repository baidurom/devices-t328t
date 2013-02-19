.class Lcom/htc/widget/HtcListView$ArrowScrollFocusResult;
.super Ljava/lang/Object;
.source "HtcListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrowScrollFocusResult"
.end annotation


# instance fields
.field private mAmountToScroll:I

.field private mSelectedPosition:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2949
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/HtcListView$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2949
    invoke-direct {p0}, Lcom/htc/widget/HtcListView$ArrowScrollFocusResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmountToScroll()I
    .locals 1

    .prologue
    .line 2966
    iget v0, p0, Lcom/htc/widget/HtcListView$ArrowScrollFocusResult;->mAmountToScroll:I

    return v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .prologue
    .line 2962
    iget v0, p0, Lcom/htc/widget/HtcListView$ArrowScrollFocusResult;->mSelectedPosition:I

    return v0
.end method

.method populate(II)V
    .locals 0
    .parameter "selectedPosition"
    .parameter "amountToScroll"

    .prologue
    .line 2957
    iput p1, p0, Lcom/htc/widget/HtcListView$ArrowScrollFocusResult;->mSelectedPosition:I

    .line 2958
    iput p2, p0, Lcom/htc/widget/HtcListView$ArrowScrollFocusResult;->mAmountToScroll:I

    .line 2959
    return-void
.end method
