.class public Lcom/htc/widget/HtcGridViewElement;
.super Landroid/widget/FrameLayout;
.source "HtcGridViewElement.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field animGallery:Landroid/animation/ObjectAnimator;

.field animOverlay:Landroid/animation/ObjectAnimator;

.field animSetXYA:Landroid/animation/AnimatorSet;

.field gallery:Landroid/widget/ImageView;

.field private mChecked:Z

.field private mContext:Landroid/content/Context;

.field overlay:Landroid/widget/ImageView;

.field pvhBiggerA:Landroid/animation/PropertyValuesHolder;

.field pvhBiggerX:Landroid/animation/PropertyValuesHolder;

.field pvhBiggerY:Landroid/animation/PropertyValuesHolder;

.field pvhSmallerA:Landroid/animation/PropertyValuesHolder;

.field pvhSmallerX:Landroid/animation/PropertyValuesHolder;

.field pvhSmallerY:Landroid/animation/PropertyValuesHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x2

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcGridViewElement;->mChecked:Z

    .line 27
    const-string v0, "scaleX"

    new-array v1, v2, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcGridViewElement;->pvhBiggerX:Landroid/animation/PropertyValuesHolder;

    .line 28
    const-string v0, "scaleY"

    new-array v1, v2, [F

    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcGridViewElement;->pvhBiggerY:Landroid/animation/PropertyValuesHolder;

    .line 29
    const-string v0, "alpha"

    new-array v1, v2, [F

    fill-array-data v1, :array_2

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcGridViewElement;->pvhBiggerA:Landroid/animation/PropertyValuesHolder;

    .line 31
    const-string v0, "scaleX"

    new-array v1, v2, [F

    fill-array-data v1, :array_3

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcGridViewElement;->pvhSmallerX:Landroid/animation/PropertyValuesHolder;

    .line 32
    const-string v0, "scaleY"

    new-array v1, v2, [F

    fill-array-data v1, :array_4

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcGridViewElement;->pvhSmallerY:Landroid/animation/PropertyValuesHolder;

    .line 33
    const-string v0, "alpha"

    new-array v1, v2, [F

    fill-array-data v1, :array_5

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcGridViewElement;->pvhSmallerA:Landroid/animation/PropertyValuesHolder;

    .line 37
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcGridViewElement;->animSetXYA:Landroid/animation/AnimatorSet;

    .line 42
    iput-object p1, p0, Lcom/htc/widget/HtcGridViewElement;->mContext:Landroid/content/Context;

    .line 43
    return-void

    .line 27
    nop

    :array_0
    .array-data 0x4
        0x9at 0x99t 0x59t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 28
    :array_1
    .array-data 0x4
        0x9at 0x99t 0x59t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 29
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 31
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x9at 0x99t 0x59t 0x3ft
    .end array-data

    .line 32
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x9at 0x99t 0x59t 0x3ft
    .end array-data

    .line 33
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x2

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcGridViewElement;->mChecked:Z

    .line 27
    const-string v0, "scaleX"

    new-array v1, v2, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcGridViewElement;->pvhBiggerX:Landroid/animation/PropertyValuesHolder;

    .line 28
    const-string v0, "scaleY"

    new-array v1, v2, [F

    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcGridViewElement;->pvhBiggerY:Landroid/animation/PropertyValuesHolder;

    .line 29
    const-string v0, "alpha"

    new-array v1, v2, [F

    fill-array-data v1, :array_2

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcGridViewElement;->pvhBiggerA:Landroid/animation/PropertyValuesHolder;

    .line 31
    const-string v0, "scaleX"

    new-array v1, v2, [F

    fill-array-data v1, :array_3

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcGridViewElement;->pvhSmallerX:Landroid/animation/PropertyValuesHolder;

    .line 32
    const-string v0, "scaleY"

    new-array v1, v2, [F

    fill-array-data v1, :array_4

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcGridViewElement;->pvhSmallerY:Landroid/animation/PropertyValuesHolder;

    .line 33
    const-string v0, "alpha"

    new-array v1, v2, [F

    fill-array-data v1, :array_5

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcGridViewElement;->pvhSmallerA:Landroid/animation/PropertyValuesHolder;

    .line 37
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcGridViewElement;->animSetXYA:Landroid/animation/AnimatorSet;

    .line 48
    iput-object p1, p0, Lcom/htc/widget/HtcGridViewElement;->mContext:Landroid/content/Context;

    .line 50
    return-void

    .line 27
    nop

    :array_0
    .array-data 0x4
        0x9at 0x99t 0x59t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 28
    :array_1
    .array-data 0x4
        0x9at 0x99t 0x59t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 29
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 31
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x9at 0x99t 0x59t 0x3ft
    .end array-data

    .line 32
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x9at 0x99t 0x59t 0x3ft
    .end array-data

    .line 33
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcGridViewElement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/htc/widget/HtcGridViewElement;->mChecked:Z

    return v0
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/widget/HtcGridViewElement;->mChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 3
    .parameter "checked"

    .prologue
    const v2, 0x3f59999a

    const/high16 v1, 0x3f80

    .line 148
    const v0, 0x20200d5

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcGridViewElement;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/HtcGridViewElement;->gallery:Landroid/widget/ImageView;

    .line 149
    const v0, 0x20200f4

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcGridViewElement;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/HtcGridViewElement;->overlay:Landroid/widget/ImageView;

    .line 150
    if-eqz p1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/htc/widget/HtcGridViewElement;->gallery:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 152
    iget-object v0, p0, Lcom/htc/widget/HtcGridViewElement;->gallery:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 153
    iget-object v0, p0, Lcom/htc/widget/HtcGridViewElement;->gallery:Landroid/widget/ImageView;

    const/high16 v1, 0x3f00

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 154
    iget-object v0, p0, Lcom/htc/widget/HtcGridViewElement;->overlay:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    const v0, -0xd0d0d01

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcGridViewElement;->setBackgroundColor(I)V

    .line 164
    :goto_0
    iget-boolean v0, p0, Lcom/htc/widget/HtcGridViewElement;->mChecked:Z

    if-ne v0, p1, :cond_1

    .line 170
    :goto_1
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcGridViewElement;->gallery:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 158
    iget-object v0, p0, Lcom/htc/widget/HtcGridViewElement;->gallery:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 159
    iget-object v0, p0, Lcom/htc/widget/HtcGridViewElement;->gallery:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 160
    iget-object v0, p0, Lcom/htc/widget/HtcGridViewElement;->overlay:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcGridViewElement;->setBackgroundColor(I)V

    goto :goto_0

    .line 168
    :cond_1
    iput-boolean p1, p0, Lcom/htc/widget/HtcGridViewElement;->mChecked:Z

    goto :goto_1
.end method

.method public toggle()V
    .locals 6

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    const v0, 0x20200d5

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcGridViewElement;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/HtcGridViewElement;->gallery:Landroid/widget/ImageView;

    .line 67
    const v0, 0x20200f4

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcGridViewElement;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/HtcGridViewElement;->overlay:Landroid/widget/ImageView;

    .line 70
    iget-boolean v0, p0, Lcom/htc/widget/HtcGridViewElement;->mChecked:Z

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/htc/widget/HtcGridViewElement;->gallery:Landroid/widget/ImageView;

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    iget-object v2, p0, Lcom/htc/widget/HtcGridViewElement;->pvhBiggerX:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/htc/widget/HtcGridViewElement;->pvhBiggerY:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/htc/widget/HtcGridViewElement;->pvhBiggerA:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcGridViewElement;->animGallery:Landroid/animation/ObjectAnimator;

    .line 73
    iget-object v0, p0, Lcom/htc/widget/HtcGridViewElement;->animGallery:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/htc/widget/HtcGridViewElement$1;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcGridViewElement$1;-><init>(Lcom/htc/widget/HtcGridViewElement;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 138
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcGridViewElement;->animGallery:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 141
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcGridViewElement;->gallery:Landroid/widget/ImageView;

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    iget-object v2, p0, Lcom/htc/widget/HtcGridViewElement;->pvhSmallerX:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/htc/widget/HtcGridViewElement;->pvhSmallerY:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/htc/widget/HtcGridViewElement;->pvhSmallerA:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcGridViewElement;->animGallery:Landroid/animation/ObjectAnimator;

    .line 106
    iget-object v0, p0, Lcom/htc/widget/HtcGridViewElement;->animGallery:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/htc/widget/HtcGridViewElement$2;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcGridViewElement$2;-><init>(Lcom/htc/widget/HtcGridViewElement;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method
