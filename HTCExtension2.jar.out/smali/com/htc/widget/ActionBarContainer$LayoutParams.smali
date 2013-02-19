.class public Lcom/htc/widget/ActionBarContainer$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "ActionBarContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/ActionBarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final CENTER_PANEL:I = 0x3

.field public static final LEFT_PANEL:I = 0x1

.field public static final RIGHT_PANEL:I = 0x2


# instance fields
.field public panelGravity:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 103
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/widget/ActionBarContainer$LayoutParams;->panelGravity:I

    .line 118
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "gravity"

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 103
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/widget/ActionBarContainer$LayoutParams;->panelGravity:I

    .line 124
    iput p3, p0, Lcom/htc/widget/ActionBarContainer$LayoutParams;->panelGravity:I

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrSet"

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/widget/ActionBarContainer$LayoutParams;->panelGravity:I

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "lparams"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/widget/ActionBarContainer$LayoutParams;->panelGravity:I

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;I)V
    .locals 1
    .parameter "lparams"
    .parameter "gravity"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/widget/ActionBarContainer$LayoutParams;->panelGravity:I

    .line 136
    iput p2, p0, Lcom/htc/widget/ActionBarContainer$LayoutParams;->panelGravity:I

    .line 137
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "output"

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " viewWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " viewHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " panelGravity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/ActionBarContainer$LayoutParams;->panelGravity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
