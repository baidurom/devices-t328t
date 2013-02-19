.class Lcom/htc/widget/HtcFadingEdgeTextView;
.super Landroid/widget/TextView;
.source "HtcFadingEdgeTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    invoke-virtual {p0}, Lcom/htc/widget/HtcFadingEdgeTextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    if-nez v1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/htc/widget/HtcFadingEdgeTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 31
    .local v0, layout:Landroid/text/Layout;
    invoke-virtual {p0}, Lcom/htc/widget/HtcFadingEdgeTextView;->getLineCount()I

    move-result v1

    if-ne v1, v4, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/htc/widget/HtcFadingEdgeTextView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 32
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcFadingEdgeTextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 37
    .end local v0           #layout:Landroid/text/Layout;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 38
    return-void

    .line 34
    .restart local v0       #layout:Landroid/text/Layout;
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcFadingEdgeTextView;->setHorizontalFadingEdgeEnabled(Z)V

    goto :goto_0
.end method

.method setEnableMarquee(Z)V
    .locals 2
    .parameter "isMarquee"

    .prologue
    const/4 v1, 0x1

    .line 58
    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcFadingEdgeTextView;->setSingleLine(Z)V

    .line 60
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFadingEdgeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 61
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFadingEdgeTextView;->setMarqueeRepeatLimit(I)V

    .line 62
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcFadingEdgeTextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 68
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcFadingEdgeTextView;->setSingleLine(Z)V

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFadingEdgeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFadingEdgeTextView;->setHorizontalFadingEdgeEnabled(Z)V

    goto :goto_0
.end method

.method setTextStyle(I)V
    .locals 9
    .parameter "defStyle"

    .prologue
    const/4 v8, 0x0

    .line 41
    invoke-virtual {p0}, Lcom/htc/widget/HtcFadingEdgeTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 42
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0, v1, p1}, Lcom/htc/widget/HtcFadingEdgeTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 43
    sget-object v6, Lcom/android/internal/R$styleable;->TextView:[I

    invoke-virtual {v1, p1, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    .local v0, appearance:Landroid/content/res/TypedArray;
    const/16 v6, 0x24

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 48
    .local v5, shadowColor:I
    const/16 v6, 0x25

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 49
    .local v2, dx:F
    const/16 v6, 0x26

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 50
    .local v3, dy:F
    const/16 v6, 0x27

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 52
    .local v4, r:F
    if-eqz v5, :cond_0

    .line 53
    invoke-virtual {p0, v4, v2, v3, v5}, Lcom/htc/widget/HtcFadingEdgeTextView;->setShadowLayer(FFFI)V

    .line 55
    :cond_0
    return-void
.end method
