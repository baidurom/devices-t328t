.class public Lcom/htc/text/method/HtcLinkMovementMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "HtcLinkMovementMethod.java"


# static fields
.field private static final TOUCH_SLOP:I = 0x10

.field private static sBackgroundColor:I

.field private static sDownEvent:Landroid/view/MotionEvent;

.field private static sDownView:Landroid/widget/TextView;

.field private static sForegroundColor:I

.field private static sInstance:Lcom/htc/text/method/HtcLinkMovementMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 150
    sput-object v0, Lcom/htc/text/method/HtcLinkMovementMethod;->sDownEvent:Landroid/view/MotionEvent;

    .line 151
    sput-object v0, Lcom/htc/text/method/HtcLinkMovementMethod;->sDownView:Landroid/widget/TextView;

    .line 152
    const/4 v0, -0x1

    sput v0, Lcom/htc/text/method/HtcLinkMovementMethod;->sForegroundColor:I

    .line 153
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2060017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/htc/text/method/HtcLinkMovementMethod;->sBackgroundColor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/htc/text/method/HtcLinkMovementMethod;->sInstance:Lcom/htc/text/method/HtcLinkMovementMethod;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lcom/htc/text/method/HtcLinkMovementMethod;

    invoke-direct {v0}, Lcom/htc/text/method/HtcLinkMovementMethod;-><init>()V

    sput-object v0, Lcom/htc/text/method/HtcLinkMovementMethod;->sInstance:Lcom/htc/text/method/HtcLinkMovementMethod;

    .line 136
    :cond_0
    sget-object v0, Lcom/htc/text/method/HtcLinkMovementMethod;->sInstance:Lcom/htc/text/method/HtcLinkMovementMethod;

    return-object v0
.end method

.method public static getInstance(II)Landroid/text/method/MovementMethod;
    .locals 1
    .parameter "highlight_fg_color"
    .parameter "highlight_bg_color"

    .prologue
    .line 140
    sget-object v0, Lcom/htc/text/method/HtcLinkMovementMethod;->sInstance:Lcom/htc/text/method/HtcLinkMovementMethod;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcom/htc/text/method/HtcLinkMovementMethod;

    invoke-direct {v0}, Lcom/htc/text/method/HtcLinkMovementMethod;-><init>()V

    sput-object v0, Lcom/htc/text/method/HtcLinkMovementMethod;->sInstance:Lcom/htc/text/method/HtcLinkMovementMethod;

    .line 143
    :cond_0
    sput p0, Lcom/htc/text/method/HtcLinkMovementMethod;->sForegroundColor:I

    .line 144
    sput p1, Lcom/htc/text/method/HtcLinkMovementMethod;->sBackgroundColor:I

    .line 146
    sget-object v0, Lcom/htc/text/method/HtcLinkMovementMethod;->sInstance:Lcom/htc/text/method/HtcLinkMovementMethod;

    return-object v0
.end method

.method private static removeHighlightSpans(Landroid/text/Spannable;)V
    .locals 9
    .parameter "buffer"

    .prologue
    const/4 v8, 0x0

    .line 114
    if-eqz p0, :cond_1

    .line 115
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v6

    const-class v7, Landroid/text/style/BackgroundColorSpan;

    invoke-interface {p0, v8, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/BackgroundColorSpan;

    .line 116
    .local v1, back_span:[Landroid/text/style/BackgroundColorSpan;
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v6

    const-class v7, Landroid/text/style/ForegroundColorSpan;

    invoke-interface {p0, v8, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ForegroundColorSpan;

    .line 117
    .local v2, fore_span:[Landroid/text/style/ForegroundColorSpan;
    move-object v0, v1

    .local v0, arr$:[Landroid/text/style/BackgroundColorSpan;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v3, v0, v4

    .line 118
    .local v3, hl:Landroid/text/style/BackgroundColorSpan;
    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 117
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 120
    .end local v3           #hl:Landroid/text/style/BackgroundColorSpan;
    :cond_0
    move-object v0, v2

    .local v0, arr$:[Landroid/text/style/ForegroundColorSpan;
    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v3, v0, v4

    .line 121
    .local v3, hl:Landroid/text/style/ForegroundColorSpan;
    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 120
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 125
    .end local v0           #arr$:[Landroid/text/style/ForegroundColorSpan;
    .end local v1           #back_span:[Landroid/text/style/BackgroundColorSpan;
    .end local v2           #fore_span:[Landroid/text/style/ForegroundColorSpan;
    .end local v3           #hl:Landroid/text/style/ForegroundColorSpan;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    return-void
.end method

.method private reset(Landroid/text/Spannable;)V
    .locals 2
    .parameter "buffer"

    .prologue
    const/4 v1, 0x0

    .line 95
    sget-object v0, Lcom/htc/text/method/HtcLinkMovementMethod;->sDownView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/htc/text/method/HtcLinkMovementMethod;->sDownView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 97
    invoke-static {p1}, Lcom/htc/text/method/HtcLinkMovementMethod;->removeHighlightSpans(Landroid/text/Spannable;)V

    .line 98
    sput-object v1, Lcom/htc/text/method/HtcLinkMovementMethod;->sDownView:Landroid/widget/TextView;

    .line 100
    :cond_0
    sput-object v1, Lcom/htc/text/method/HtcLinkMovementMethod;->sDownEvent:Landroid/view/MotionEvent;

    .line 101
    invoke-static {p1}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 102
    return-void
.end method

.method private static setHighlightSpans(Landroid/text/Spannable;II)V
    .locals 3
    .parameter "buffer"
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v2, 0x21

    .line 105
    if-eqz p0, :cond_0

    .line 106
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    sget v1, Lcom/htc/text/method/HtcLinkMovementMethod;->sBackgroundColor:I

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-interface {p0, v0, p1, p2, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 108
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    sget v1, Lcom/htc/text/method/HtcLinkMovementMethod;->sForegroundColor:I

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p0, v0, p1, p2, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 111
    :cond_0
    return-void
.end method


# virtual methods
.method public canSelectArbitrarily()Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 15
    .parameter "widget"
    .parameter "buffer"
    .parameter "event"

    .prologue
    .line 24
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 26
    .local v1, action:I
    sget-object v13, Lcom/htc/text/method/HtcLinkMovementMethod;->sDownView:Landroid/widget/TextView;

    if-eqz v13, :cond_0

    sget-object v13, Lcom/htc/text/method/HtcLinkMovementMethod;->sDownView:Landroid/widget/TextView;

    move-object/from16 v0, p1

    if-eq v13, v0, :cond_0

    .line 27
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/htc/text/method/HtcLinkMovementMethod;->reset(Landroid/text/Spannable;)V

    .line 28
    const/4 v13, 0x0

    .line 91
    :goto_0
    return v13

    .line 30
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v13

    if-nez v13, :cond_1

    .line 31
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/htc/text/method/HtcLinkMovementMethod;->reset(Landroid/text/Spannable;)V

    .line 32
    const/4 v13, 0x0

    goto :goto_0

    .line 34
    :cond_1
    const/4 v13, 0x1

    if-eq v1, v13, :cond_2

    if-nez v1, :cond_6

    .line 35
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    float-to-int v11, v13

    .line 36
    .local v11, x:I
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v12, v13

    .line 38
    .local v12, y:I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v13

    sub-int/2addr v11, v13

    .line 39
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v13

    sub-int/2addr v12, v13

    .line 41
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v13

    add-int/2addr v11, v13

    .line 42
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v13

    add-int/2addr v12, v13

    .line 44
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .line 45
    .local v5, layout:Landroid/text/Layout;
    invoke-virtual {v5, v12}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v6

    .line 46
    .local v6, line:I
    int-to-float v13, v11

    invoke-virtual {v5, v6, v13}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v9

    .line 48
    .local v9, off:I
    const-class v13, Landroid/text/style/ClickableSpan;

    move-object/from16 v0, p2

    invoke-interface {v0, v9, v9, v13}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/ClickableSpan;

    .line 50
    .local v7, link:[Landroid/text/style/ClickableSpan;
    array-length v13, v7

    if-eqz v13, :cond_9

    .line 51
    const/4 v13, 0x1

    if-ne v1, v13, :cond_7

    sget-object v13, Lcom/htc/text/method/HtcLinkMovementMethod;->sDownEvent:Landroid/view/MotionEvent;

    if-eqz v13, :cond_7

    sget-object v13, Lcom/htc/text/method/HtcLinkMovementMethod;->sDownView:Landroid/widget/TextView;

    move-object/from16 v0, p1

    if-ne v13, v0, :cond_7

    .line 52
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    sget-object v14, Lcom/htc/text/method/HtcLinkMovementMethod;->sDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v14}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    sub-float v3, v13, v14

    .line 53
    .local v3, dx:F
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    sget-object v14, Lcom/htc/text/method/HtcLinkMovementMethod;->sDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v14}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    sub-float v4, v13, v14

    .line 55
    .local v4, dy:F
    const/16 v10, 0x10

    .line 56
    .local v10, slop:I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 57
    .local v2, context:Landroid/content/Context;
    if-eqz v2, :cond_3

    .line 58
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v10

    .line 61
    :cond_3
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v13

    int-to-float v14, v10

    cmpg-float v13, v13, v14

    if-gez v13, :cond_4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v13

    int-to-float v14, v10

    cmpg-float v13, v13, v14

    if-gez v13, :cond_4

    const/4 v8, 0x1

    .line 63
    .local v8, notScrolling:Z
    :goto_1
    if-eqz v8, :cond_5

    .line 64
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 65
    invoke-static/range {p2 .. p2}, Lcom/htc/text/method/HtcLinkMovementMethod;->removeHighlightSpans(Landroid/text/Spannable;)V

    .line 66
    const/4 v13, 0x0

    aget-object v13, v7, v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 67
    const/4 v13, 0x0

    sput-object v13, Lcom/htc/text/method/HtcLinkMovementMethod;->sDownView:Landroid/widget/TextView;

    .line 68
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 61
    .end local v8           #notScrolling:Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 70
    .restart local v8       #notScrolling:Z
    :cond_5
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/htc/text/method/HtcLinkMovementMethod;->reset(Landroid/text/Spannable;)V

    .line 91
    .end local v2           #context:Landroid/content/Context;
    .end local v3           #dx:F
    .end local v4           #dy:F
    .end local v5           #layout:Landroid/text/Layout;
    .end local v6           #line:I
    .end local v7           #link:[Landroid/text/style/ClickableSpan;
    .end local v8           #notScrolling:Z
    .end local v9           #off:I
    .end local v10           #slop:I
    .end local v11           #x:I
    .end local v12           #y:I
    :cond_6
    :goto_2
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 72
    .restart local v5       #layout:Landroid/text/Layout;
    .restart local v6       #line:I
    .restart local v7       #link:[Landroid/text/style/ClickableSpan;
    .restart local v9       #off:I
    .restart local v11       #x:I
    .restart local v12       #y:I
    :cond_7
    if-nez v1, :cond_8

    .line 74
    sput-object p1, Lcom/htc/text/method/HtcLinkMovementMethod;->sDownView:Landroid/widget/TextView;

    .line 75
    invoke-static/range {p3 .. p3}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v13

    sput-object v13, Lcom/htc/text/method/HtcLinkMovementMethod;->sDownEvent:Landroid/view/MotionEvent;

    .line 80
    const/4 v13, 0x0

    aget-object v13, v7, v13

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    const/4 v14, 0x0

    aget-object v14, v7, v14

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-static {v0, v13, v14}, Lcom/htc/text/method/HtcLinkMovementMethod;->setHighlightSpans(Landroid/text/Spannable;II)V

    .line 82
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 84
    :cond_8
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/htc/text/method/HtcLinkMovementMethod;->reset(Landroid/text/Spannable;)V

    goto :goto_2

    .line 87
    :cond_9
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/htc/text/method/HtcLinkMovementMethod;->reset(Landroid/text/Spannable;)V

    goto :goto_2
.end method
