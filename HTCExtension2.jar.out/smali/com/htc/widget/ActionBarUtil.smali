.class public Lcom/htc/widget/ActionBarUtil;
.super Ljava/lang/Object;
.source "ActionBarUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/ActionBarUtil$AnimateImageView;,
        Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 276
    return-void
.end method

.method public static createAnimateImageView(Landroid/content/Context;II)Landroid/widget/ImageView;
    .locals 1
    .parameter "context"
    .parameter "leftPadding"
    .parameter "rightPadding"

    .prologue
    .line 272
    new-instance v0, Lcom/htc/widget/ActionBarUtil$AnimateImageView;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/widget/ActionBarUtil$AnimateImageView;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method public static createAnimateLayout(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;I)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "context"
    .parameter "primaryView"
    .parameter "secondaryView"
    .parameter "textOffset"

    .prologue
    .line 37
    new-instance v0, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/htc/widget/ActionBarUtil$AnimateTextLayout;-><init>(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;I)V

    return-object v0
.end method
