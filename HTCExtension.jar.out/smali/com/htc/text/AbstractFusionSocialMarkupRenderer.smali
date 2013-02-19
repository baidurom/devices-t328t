.class public abstract Lcom/htc/text/AbstractFusionSocialMarkupRenderer;
.super Lcom/htc/text/AbstractSocialMarkupRenderer;
.source "AbstractFusionSocialMarkupRenderer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/htc/text/AbstractSocialMarkupRenderer;-><init>(Landroid/content/Context;)V

    .line 10
    return-void
.end method


# virtual methods
.method protected abstract getAlternativeFontSizeInPixel()I
.end method

.method protected getEmphasisTextFontColor()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/htc/text/AbstractFusionSocialMarkupRenderer;->NOCOLOR:I

    return v0
.end method

.method protected getPlurkQualifierDrawableYDim()F
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/htc/text/AbstractFusionSocialMarkupRenderer;->getAlternativeFontSizeInPixel()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method protected getPlurkQualifierFontSizeInPixel()I
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/htc/text/AbstractFusionSocialMarkupRenderer;->getAlternativeFontSizeInPixel()I

    move-result v0

    return v0
.end method

.method protected getPrimaryLinkFontSizeInPixel()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method protected getPrimaryTextFontSizeInPixel()I
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method protected getProfileFontColor()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/htc/text/AbstractFusionSocialMarkupRenderer;->NOCOLOR:I

    return v0
.end method

.method protected getProfileFontSizeInPixel()I
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method protected getSecondaryLinkFontSizeInPixel()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method protected getSecondaryTextFontColor()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lcom/htc/text/AbstractFusionSocialMarkupRenderer;->NOCOLOR:I

    return v0
.end method

.method protected getSecondaryTextFontSizeInPixel()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method protected isSpanClickable()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method
