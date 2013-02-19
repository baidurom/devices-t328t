.class final Lcom/htc/fragment/widget/CarouselSkinUtil;
.super Ljava/lang/Object;
.source "CarouselSkinUtil.java"


# static fields
.field public static final INVALID_FIELD:I = -0x1


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDarkPrimaryFontColor(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 5
    .parameter "ctx"

    .prologue
    .line 75
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 76
    .local v0, colors:[I
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "multiply_color"

    const/high16 v4, 0x206

    invoke-static {p0, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 77
    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x206004f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 78
    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-static {}, Lcom/htc/fragment/widget/CarouselTextView;->getStatesSet()[[I

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method static getDarkSecondaryFontColor(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 5
    .parameter "ctx"

    .prologue
    .line 82
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 83
    .local v0, colors:[I
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "multiply_color"

    const/high16 v4, 0x206

    invoke-static {p0, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 84
    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2060050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 85
    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-static {}, Lcom/htc/fragment/widget/CarouselTextView;->getStatesSet()[[I

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method public static getDrawable(Landroid/content/Context;IILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "context"
    .parameter "attr"
    .parameter "resid"
    .parameter "resName"

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 47
    .local v3, res:Landroid/content/res/Resources;
    const/4 v4, -0x1

    if-eq p1, v4, :cond_0

    .line 48
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 49
    .local v2, out:Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 52
    :try_start_0
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 60
    .end local v2           #out:Landroid/util/TypedValue;
    :goto_0
    return-object v4

    .line 53
    .restart local v2       #out:Landroid/util/TypedValue;
    :catch_0
    move-exception v0

    .line 54
    .local v0, eres:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    .line 56
    .end local v0           #eres:Landroid/content/res/Resources$NotFoundException;
    .end local v2           #out:Landroid/util/TypedValue;
    :cond_0
    if-eqz p3, :cond_1

    .line 57
    invoke-static {p0, p3, p2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 58
    .local v1, id:I
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    .line 60
    .end local v1           #id:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getDrawerBackgroundDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "context"

    .prologue
    .line 68
    const v0, 0x201007f

    const v1, 0x2080001

    const-string v2, "common_app_bkg"

    invoke-static {p0, v0, v1, v2}, Lcom/htc/fragment/widget/CarouselSkinUtil;->getDrawable(Landroid/content/Context;IILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static isDefaultNoEditorMode()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public static isTextRequiredInWidget()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method static setDarkShadow(Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 5
    .parameter "text"
    .parameter "ctx"

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 91
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x3dcccccd

    const v2, 0x20e000e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x20e000f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x2060047

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 95
    return-void
.end method
