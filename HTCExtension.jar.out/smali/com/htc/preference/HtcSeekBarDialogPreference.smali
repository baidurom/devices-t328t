.class public Lcom/htc/preference/HtcSeekBarDialogPreference;
.super Lcom/htc/preference/HtcDialogPreference;
.source "HtcSeekBarDialogPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SeekBarPreference"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMyIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput-object v1, p0, Lcom/htc/preference/HtcSeekBarDialogPreference;->mContext:Landroid/content/Context;

    .line 45
    iput-object p1, p0, Lcom/htc/preference/HtcSeekBarDialogPreference;->mContext:Landroid/content/Context;

    .line 46
    const v0, 0x109008e

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcSeekBarDialogPreference;->setDialogLayoutResource(I)V

    .line 47
    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcSeekBarDialogPreference;->setPositiveButtonText(I)V

    .line 48
    const/high16 v0, 0x104

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcSeekBarDialogPreference;->setNegativeButtonText(I)V

    .line 51
    invoke-virtual {p0}, Lcom/htc/preference/HtcSeekBarDialogPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/preference/HtcSeekBarDialogPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    .line 52
    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcSeekBarDialogPreference;->setDialogIcon(Landroid/graphics/drawable/Drawable;)V

    .line 53
    return-void
.end method

.method protected static getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "dialogView"

    .prologue
    .line 75
    const v0, 0x10202d9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    return-object v0
.end method

.method private getVolumeProgressDrawable(Landroid/widget/SeekBar;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "seekBar"

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 81
    .local v1, layer:Landroid/graphics/drawable/LayerDrawable;
    iget-object v3, p0, Lcom/htc/preference/HtcSeekBarDialogPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/preference/HtcSeekBarDialogPreference;->mContext:Landroid/content/Context;

    const-string v5, "common_progress_empty"

    const v6, 0x2080189

    invoke-static {v4, v5, v6}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 82
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/ClipDrawable;

    iget-object v3, p0, Lcom/htc/preference/HtcSeekBarDialogPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/preference/HtcSeekBarDialogPreference;->mContext:Landroid/content/Context;

    const-string v5, "common_progress_full"

    const v6, 0x208018a

    invoke-static {v4, v5, v6}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 83
    .local v2, progress:Landroid/graphics/drawable/ClipDrawable;
    const/high16 v3, 0x102

    invoke-virtual {v1, v3, v0}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 84
    const v3, 0x102000d

    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 85
    return-object v1
.end method

.method private getVolumeThumb()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/preference/HtcSeekBarDialogPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/preference/HtcSeekBarDialogPreference;->mContext:Landroid/content/Context;

    const-string v2, "common_progress_button"

    const v3, 0x2080188

    invoke-static {v1, v2, v3}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/htc/preference/HtcDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 59
    const v3, 0x1020006

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 60
    .local v0, iconView:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/htc/preference/HtcSeekBarDialogPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 61
    iget-object v3, p0, Lcom/htc/preference/HtcSeekBarDialogPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    :goto_0
    const v3, 0x10202d9

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 68
    .local v2, sb:Landroid/widget/SeekBar;
    invoke-virtual {p0}, Lcom/htc/preference/HtcSeekBarDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2050001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 69
    .local v1, margin_m:I
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingTop()I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v2, v1, v3, v1, v4}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 70
    invoke-direct {p0, v2}, Lcom/htc/preference/HtcSeekBarDialogPreference;->getVolumeProgressDrawable(Landroid/widget/SeekBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    invoke-direct {p0}, Lcom/htc/preference/HtcSeekBarDialogPreference;->getVolumeThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 72
    return-void

    .line 63
    .end local v1           #margin_m:I
    .end local v2           #sb:Landroid/widget/SeekBar;
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
