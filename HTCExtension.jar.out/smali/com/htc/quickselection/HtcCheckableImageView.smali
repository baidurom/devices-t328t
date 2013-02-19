.class public Lcom/htc/quickselection/HtcCheckableImageView;
.super Landroid/widget/CheckedTextView;
.source "HtcCheckableImageView.java"


# static fields
.field private static final THEMEABLE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "1."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/quickselection/HtcCheckableImageView;->THEMEABLE:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/quickselection/HtcCheckableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/quickselection/HtcCheckableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->myInit()V

    .line 68
    return-void
.end method

.method private getSkinPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method myInit()V
    .locals 4

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getPaddingLeft()I

    move-result v1

    .line 73
    .local v1, left:I
    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getPaddingTop()I

    move-result v3

    .line 74
    .local v3, top:I
    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getPaddingRight()I

    move-result v2

    .line 75
    .local v2, right:I
    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getPaddingBottom()I

    move-result v0

    .line 100
    .local v0, bottom:I
    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/htc/quickselection/HtcCheckableImageView;->setPadding(IIII)V

    .line 101
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 125
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    .line 131
    .local v9, ret:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 175
    :goto_0
    :pswitch_0
    return v9

    .line 136
    :pswitch_1
    const/high16 v3, 0x3f80

    .local v3, mFromY:F
    move v1, v3

    .line 137
    .local v1, mFromX:F
    const v4, 0x3f4ccccd

    .local v4, mToY:F
    move v2, v4

    .line 138
    .local v2, mToX:F
    const/high16 v8, 0x3f00

    .local v8, mPivotYValue:F
    move v6, v8

    .line 139
    .local v6, mPivotXValue:F
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 140
    .local v0, mAm:Landroid/view/animation/Animation;
    const-wide/16 v10, 0x32

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 141
    invoke-virtual {p0, v0}, Lcom/htc/quickselection/HtcCheckableImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 161
    invoke-virtual {p0, v0}, Lcom/htc/quickselection/HtcCheckableImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
