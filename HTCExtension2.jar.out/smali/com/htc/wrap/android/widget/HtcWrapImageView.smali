.class public Lcom/htc/wrap/android/widget/HtcWrapImageView;
.super Landroid/widget/ImageView;
.source "HtcWrapImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public static setImageBitmapWithoutRelayout(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "obj"
    .parameter "bm"

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmapWithoutRelayout(Landroid/graphics/Bitmap;)V

    .line 122
    return-void
.end method

.method public static setImageDrawableWithoutRelayout(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "obj"
    .parameter "drawable"

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawableWithoutRelayout(Landroid/graphics/drawable/Drawable;)V

    .line 113
    return-void
.end method

.method public static setImageResourceWithoutRelayout(Landroid/widget/ImageView;I)V
    .locals 0
    .parameter "obj"
    .parameter "resId"

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResourceWithoutRelayout(I)V

    .line 90
    return-void
.end method

.method public static setImageURIWithoutRelayout(Landroid/widget/ImageView;Landroid/net/Uri;)V
    .locals 0
    .parameter "obj"
    .parameter "uri"

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageURIWithoutRelayout(Landroid/net/Uri;)V

    .line 104
    return-void
.end method


# virtual methods
.method public setImageBitmapWithoutRelayout(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bm"

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmapWithoutRelayout(Landroid/graphics/Bitmap;)V

    .line 79
    return-void
.end method

.method public setImageDrawableWithoutRelayout(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawableWithoutRelayout(Landroid/graphics/drawable/Drawable;)V

    .line 65
    return-void
.end method

.method public setImageResourceWithoutRelayout(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResourceWithoutRelayout(I)V

    .line 37
    return-void
.end method

.method public setImageURIWithoutRelayout(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURIWithoutRelayout(Landroid/net/Uri;)V

    .line 51
    return-void
.end method
