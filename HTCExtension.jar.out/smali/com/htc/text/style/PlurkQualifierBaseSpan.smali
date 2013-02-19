.class public abstract Lcom/htc/text/style/PlurkQualifierBaseSpan;
.super Landroid/text/style/DynamicDrawableSpan;
.source "PlurkQualifierBaseSpan.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/text/style/DynamicDrawableSpan;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "verticalAlignment"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    .line 15
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 2
    .parameter "canvas"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "paint"

    .prologue
    .line 24
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 25
    move v0, p7

    .line 26
    .local v0, transY:I
    int-to-float v1, v0

    invoke-virtual {p1, p5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 27
    invoke-virtual {p0}, Lcom/htc/text/style/PlurkQualifierBaseSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 28
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 29
    return-void
.end method
