.class Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;
.super Ljava/lang/Object;
.source "AbsSpinner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/AbsSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeWidthHeightRunnable"
.end annotation


# static fields
.field private static final DURATION:I = 0xc8

.field private static final MOVE_MODE:I = 0x1

.field private static final STOP_MODE:I


# instance fields
.field private mDistance:I

.field private mMode:I

.field private mMovedDistance:I

.field private mStartTime:J

.field private mTargetWidthHeight:I

.field final synthetic this$0:Lcom/htc/widget/AbsSpinner;


# direct methods
.method private constructor <init>(Lcom/htc/widget/AbsSpinner;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 908
    iput-object p1, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 911
    iput v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->mMode:I

    .line 914
    iput v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->mDistance:I

    .line 915
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->mStartTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/AbsSpinner;Lcom/htc/widget/AbsSpinner$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 908
    invoke-direct {p0, p1}, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;-><init>(Lcom/htc/widget/AbsSpinner;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 908
    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->end()V

    return-void
.end method

.method private changeWidthHeight(I)V
    .locals 2
    .parameter "step"

    .prologue
    .line 991
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    iget-object v1, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    #getter for: Lcom/htc/widget/AbsSpinner;->mAnimationWidthHeight:I
    invoke-static {v1}, Lcom/htc/widget/AbsSpinner;->access$400(Lcom/htc/widget/AbsSpinner;)I

    move-result v1

    add-int/2addr v1, p1

    #setter for: Lcom/htc/widget/AbsSpinner;->mAnimationWidthHeight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AbsSpinner;->access$402(Lcom/htc/widget/AbsSpinner;I)I

    .line 992
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/AbsSpinner;->requestLayout()V

    .line 993
    return-void
.end method

.method private end()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 996
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0, p0}, Lcom/htc/widget/AbsSpinner;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 997
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    #setter for: Lcom/htc/widget/AbsSpinner;->mChangeWidthHeightAnimation:Z
    invoke-static {v0, v2}, Lcom/htc/widget/AbsSpinner;->access$302(Lcom/htc/widget/AbsSpinner;Z)Z

    .line 998
    iput v2, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->mMode:I

    .line 999
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    #getter for: Lcom/htc/widget/AbsSpinner;->mIsDragBinGridView:Z
    invoke-static {v0}, Lcom/htc/widget/AbsSpinner;->access$500(Lcom/htc/widget/AbsSpinner;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    iget-object v1, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v1}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/AbsSpinner;->setShrinkedPosition(I)V

    .line 1001
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    iget-object v1, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v1}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/AbsSpinner;->setExpandedPosition(I)V

    .line 1006
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    iget v1, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->mTargetWidthHeight:I

    #setter for: Lcom/htc/widget/AbsSpinner;->mAnimationWidthHeight:I
    invoke-static {v0, v1}, Lcom/htc/widget/AbsSpinner;->access$402(Lcom/htc/widget/AbsSpinner;I)I

    .line 1007
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/AbsSpinner;->requestLayout()V

    .line 1008
    return-void

    .line 1003
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0, v1}, Lcom/htc/widget/AbsSpinner;->setShrinkedPosition(I)V

    .line 1004
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0, v1}, Lcom/htc/widget/AbsSpinner;->setExpandedPosition(I)V

    goto :goto_0
.end method

.method private getTargetDistance()I
    .locals 9

    .prologue
    const-wide/16 v7, 0xc8

    .line 977
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 978
    .local v0, now:J
    const/4 v2, 0x0

    .line 980
    .local v2, targetDistance:I
    iget-wide v3, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->mStartTime:J

    sub-long v3, v0, v3

    cmp-long v3, v3, v7

    if-ltz v3, :cond_0

    .line 981
    iget v2, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->mDistance:I

    .line 985
    :goto_0
    return v2

    .line 983
    :cond_0
    iget-wide v3, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->mStartTime:J

    sub-long v3, v0, v3

    iget v5, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->mDistance:I

    int-to-long v5, v5

    mul-long/2addr v3, v5

    div-long/2addr v3, v7

    long-to-int v2, v3

    goto :goto_0
.end method

.method private startCommon()V
    .locals 2

    .prologue
    .line 947
    iget v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 948
    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->end()V

    .line 949
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0, p0}, Lcom/htc/widget/AbsSpinner;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 950
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 958
    iget v2, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->mMode:I

    if-nez v2, :cond_0

    .line 959
    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->end()V

    .line 974
    :goto_0
    return-void

    .line 963
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->getTargetDistance()I

    move-result v1

    .line 964
    .local v1, targetDistance:I
    iget v2, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->mDistance:I

    if-ne v1, v2, :cond_1

    .line 965
    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->end()V

    goto :goto_0

    .line 969
    :cond_1
    iget v2, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->mMovedDistance:I

    sub-int v0, v1, v2

    .line 970
    .local v0, step:I
    invoke-direct {p0, v0}, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->changeWidthHeight(I)V

    .line 971
    iput v1, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->mMovedDistance:I

    .line 972
    iget-object v2, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v2, p0}, Lcom/htc/widget/AbsSpinner;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public start(II)V
    .locals 3
    .parameter "orgWidthHeight"
    .parameter "targetWidthHeight"

    .prologue
    const/4 v2, 0x1

    .line 926
    iput p2, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->mTargetWidthHeight:I

    .line 927
    if-ne p1, p2, :cond_0

    .line 929
    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->end()V

    .line 943
    :goto_0
    return-void

    .line 932
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->mStartTime:J

    .line 934
    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->startCommon()V

    .line 936
    iput v2, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->mMode:I

    .line 937
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->mMovedDistance:I

    .line 938
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    #setter for: Lcom/htc/widget/AbsSpinner;->mChangeWidthHeightAnimation:Z
    invoke-static {v0, v2}, Lcom/htc/widget/AbsSpinner;->access$302(Lcom/htc/widget/AbsSpinner;Z)Z

    .line 939
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    #setter for: Lcom/htc/widget/AbsSpinner;->mAnimationWidthHeight:I
    invoke-static {v0, p1}, Lcom/htc/widget/AbsSpinner;->access$402(Lcom/htc/widget/AbsSpinner;I)I

    .line 940
    sub-int v0, p2, p1

    iput v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->mDistance:I

    .line 942
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthHeightRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0, p0}, Lcom/htc/widget/AbsSpinner;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
