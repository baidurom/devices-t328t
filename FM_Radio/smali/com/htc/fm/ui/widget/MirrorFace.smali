.class public Lcom/htc/fm/ui/widget/MirrorFace;
.super Landroid/widget/LinearLayout;
.source "MirrorFace.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Lcom/htc/fm/ui/helper/RollBar;


# static fields
.field private static final TAG:Ljava/lang/String; = "FMRadio_MirrorFace"


# instance fields
.field private dfdepthZ:F

.field private dfoffsetY:F

.field dfrotation:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

.field dfrotation2:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

.field dfrotation3:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

.field dfrotation4:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

.field private fddepthZ:F

.field private fdoffsetY:F

.field fdrotation:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

.field fdrotation2:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

.field fdrotation3:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

.field fdrotation4:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

.field private fudepthZ:F

.field private fuoffsetY:F

.field furotation:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

.field furotation2:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

.field furotation3:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

.field furotation4:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

.field private mImageIds:[I

.field private mImageIds2:[I

.field private mImageIds3:[I

.field private mImageIds4:[I

.field private mSwitcherReverse:Landroid/widget/ImageSwitcher;

.field private mSwitcherReverse2:Landroid/widget/ImageSwitcher;

.field private mSwitcherReverse3:Landroid/widget/ImageSwitcher;

.field private mSwitcherReverse4:Landroid/widget/ImageSwitcher;

.field private mcontext:Landroid/content/Context;

.field mforwordcurrentindex:I

.field mforwordcurrentindex2:I

.field mforwordcurrentindex3:I

.field mforwordcurrentindex4:I

.field mfreq:I

.field private rotatetime:I

.field private rotatetime2:I

.field private rotatetime3:I

.field private rotatetime4:I

.field private ufdepthZ:F

.field private ufoffsetY:F

.field ufrotation:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

.field ufrotation2:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

.field ufrotation3:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

.field ufrotation4:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/16 v1, 0xa

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 282
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mImageIds:[I

    .line 284
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mImageIds2:[I

    .line 286
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mImageIds3:[I

    .line 288
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mImageIds4:[I

    .line 58
    iput-object p1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mcontext:Landroid/content/Context;

    .line 59
    const-string v0, "FMRadio_MirrorFace"

    const-string v1, "[MirrorFace] constructor "

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void

    .line 282
    nop

    :array_0
    .array-data 0x4
        0x8t 0x0t 0x2t 0x7ft
        0xat 0x0t 0x2t 0x7ft
        0xct 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x14t 0x0t 0x2t 0x7ft
        0x16t 0x0t 0x2t 0x7ft
        0x18t 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x2t 0x7ft
    .end array-data

    .line 284
    :array_1
    .array-data 0x4
        0x8t 0x0t 0x2t 0x7ft
        0xat 0x0t 0x2t 0x7ft
        0xct 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x14t 0x0t 0x2t 0x7ft
        0x16t 0x0t 0x2t 0x7ft
        0x18t 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x2t 0x7ft
    .end array-data

    .line 286
    :array_2
    .array-data 0x4
        0x8t 0x0t 0x2t 0x7ft
        0xat 0x0t 0x2t 0x7ft
        0xct 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x14t 0x0t 0x2t 0x7ft
        0x16t 0x0t 0x2t 0x7ft
        0x18t 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x2t 0x7ft
    .end array-data

    .line 288
    :array_3
    .array-data 0x4
        0x1bt 0x0t 0x2t 0x7ft
        0xat 0x0t 0x2t 0x7ft
        0xct 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x14t 0x0t 0x2t 0x7ft
        0x16t 0x0t 0x2t 0x7ft
        0x18t 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attributeset"

    .prologue
    const/16 v1, 0xa

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 282
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mImageIds:[I

    .line 284
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mImageIds2:[I

    .line 286
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mImageIds3:[I

    .line 288
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mImageIds4:[I

    .line 65
    iput-object p1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mcontext:Landroid/content/Context;

    .line 66
    return-void

    .line 282
    :array_0
    .array-data 0x4
        0x8t 0x0t 0x2t 0x7ft
        0xat 0x0t 0x2t 0x7ft
        0xct 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x14t 0x0t 0x2t 0x7ft
        0x16t 0x0t 0x2t 0x7ft
        0x18t 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x2t 0x7ft
    .end array-data

    .line 284
    :array_1
    .array-data 0x4
        0x8t 0x0t 0x2t 0x7ft
        0xat 0x0t 0x2t 0x7ft
        0xct 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x14t 0x0t 0x2t 0x7ft
        0x16t 0x0t 0x2t 0x7ft
        0x18t 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x2t 0x7ft
    .end array-data

    .line 286
    :array_2
    .array-data 0x4
        0x8t 0x0t 0x2t 0x7ft
        0xat 0x0t 0x2t 0x7ft
        0xct 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x14t 0x0t 0x2t 0x7ft
        0x16t 0x0t 0x2t 0x7ft
        0x18t 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x2t 0x7ft
    .end array-data

    .line 288
    :array_3
    .array-data 0x4
        0x1bt 0x0t 0x2t 0x7ft
        0xat 0x0t 0x2t 0x7ft
        0xct 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x14t 0x0t 0x2t 0x7ft
        0x16t 0x0t 0x2t 0x7ft
        0x18t 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x2t 0x7ft
    .end array-data
.end method


# virtual methods
.method public OnCreate(ZI)V
    .locals 10
    .parameter "bIsPortrait"
    .parameter "freq"

    .prologue
    .line 110
    const/16 v0, 0x46

    iput v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->rotatetime:I

    .line 111
    const/16 v0, 0x46

    iput v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->rotatetime2:I

    .line 112
    const/16 v0, 0x46

    iput v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->rotatetime3:I

    .line 113
    const/16 v0, 0x46

    iput v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->rotatetime4:I

    .line 115
    const v0, 0x7f050018

    invoke-virtual {p0, v0}, Lcom/htc/fm/ui/widget/MirrorFace;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse:Landroid/widget/ImageSwitcher;

    .line 116
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 120
    const v0, 0x7f050017

    invoke-virtual {p0, v0}, Lcom/htc/fm/ui/widget/MirrorFace;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse2:Landroid/widget/ImageSwitcher;

    .line 121
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse2:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 125
    const v0, 0x7f050016

    invoke-virtual {p0, v0}, Lcom/htc/fm/ui/widget/MirrorFace;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse3:Landroid/widget/ImageSwitcher;

    .line 126
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse3:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 130
    const v0, 0x7f050015

    invoke-virtual {p0, v0}, Lcom/htc/fm/ui/widget/MirrorFace;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse4:Landroid/widget/ImageSwitcher;

    .line 131
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse4:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 137
    const/4 v3, 0x0

    .line 138
    .local v3, upCenterX:F
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse4:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0}, Landroid/widget/ImageSwitcher;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    .line 140
    .local v4, upCenterY:F
    new-instance v0, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c

    iget v5, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fddepthZ:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdrotation:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    .line 141
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdrotation:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setDuration(J)V

    .line 142
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdrotation:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setFillAfter(Z)V

    .line 143
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdrotation:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 145
    new-instance v0, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c

    iget v5, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fddepthZ:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdrotation2:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    .line 146
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdrotation2:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setDuration(J)V

    .line 147
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdrotation2:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setFillAfter(Z)V

    .line 148
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdrotation2:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 150
    new-instance v0, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c

    iget v5, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fddepthZ:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdrotation3:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    .line 151
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdrotation3:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setDuration(J)V

    .line 152
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdrotation3:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setFillAfter(Z)V

    .line 153
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdrotation3:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 155
    new-instance v0, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c

    iget v5, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fddepthZ:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdrotation4:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    .line 156
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdrotation4:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setDuration(J)V

    .line 157
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdrotation4:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setFillAfter(Z)V

    .line 158
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdrotation4:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 160
    new-instance v0, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    const/high16 v1, 0x42b4

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufdepthZ:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufrotation:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    .line 161
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufrotation:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setDuration(J)V

    .line 162
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufrotation:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setFillAfter(Z)V

    .line 163
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufrotation:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 165
    new-instance v0, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    const/high16 v1, 0x42b4

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufdepthZ:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufrotation2:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    .line 166
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufrotation2:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setDuration(J)V

    .line 167
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufrotation2:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setFillAfter(Z)V

    .line 168
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufrotation2:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 170
    new-instance v0, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    const/high16 v1, 0x42b4

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufdepthZ:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufrotation3:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    .line 171
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufrotation3:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setDuration(J)V

    .line 172
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufrotation3:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setFillAfter(Z)V

    .line 173
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufrotation3:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 175
    new-instance v0, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    const/high16 v1, 0x42b4

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufdepthZ:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufrotation4:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    .line 176
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufrotation4:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setDuration(J)V

    .line 177
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufrotation4:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setFillAfter(Z)V

    .line 178
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufrotation4:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 180
    new-instance v0, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42b4

    iget v5, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fudepthZ:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fuoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->furotation:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    .line 181
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->furotation:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setDuration(J)V

    .line 182
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->furotation:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setFillAfter(Z)V

    .line 183
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->furotation:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 185
    new-instance v0, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42b4

    iget v5, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fudepthZ:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fuoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->furotation2:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    .line 186
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->furotation2:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setDuration(J)V

    .line 187
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->furotation2:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setFillAfter(Z)V

    .line 188
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->furotation2:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 190
    new-instance v0, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42b4

    iget v5, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fudepthZ:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fuoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->furotation3:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    .line 191
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->furotation3:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setDuration(J)V

    .line 192
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->furotation3:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setFillAfter(Z)V

    .line 193
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->furotation3:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 195
    new-instance v0, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42b4

    iget v5, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fudepthZ:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fuoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->furotation4:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    .line 196
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->furotation4:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setDuration(J)V

    .line 197
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->furotation4:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setFillAfter(Z)V

    .line 198
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->furotation4:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 200
    new-instance v0, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    const/high16 v1, -0x3d4c

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfdepthZ:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfrotation:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    .line 201
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfrotation:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setDuration(J)V

    .line 202
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfrotation:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setFillAfter(Z)V

    .line 203
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfrotation:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 205
    new-instance v0, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    const/high16 v1, -0x3d4c

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfdepthZ:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfrotation2:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    .line 206
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfrotation2:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setDuration(J)V

    .line 207
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfrotation2:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setFillAfter(Z)V

    .line 208
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfrotation2:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 210
    new-instance v0, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    const/high16 v1, -0x3d4c

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfdepthZ:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfrotation3:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    .line 211
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfrotation3:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setDuration(J)V

    .line 212
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfrotation3:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setFillAfter(Z)V

    .line 213
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfrotation3:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 215
    new-instance v0, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    const/high16 v1, -0x3d4c

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfdepthZ:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfrotation4:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    .line 216
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfrotation4:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setDuration(J)V

    .line 217
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfrotation4:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setFillAfter(Z)V

    .line 218
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfrotation4:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 220
    iput p2, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mfreq:I

    .line 221
    iget v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mfreq:I

    div-int/lit16 v8, v0, 0x3e8

    .line 222
    .local v8, p1:I
    iget v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mfreq:I

    rem-int/lit16 v9, v0, 0x3e8

    .line 228
    .local v9, r:I
    div-int/lit8 v0, v9, 0x64

    iput v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mforwordcurrentindex:I

    .line 230
    rem-int/lit8 v0, v8, 0xa

    iput v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mforwordcurrentindex2:I

    .line 231
    div-int/lit8 v0, v8, 0xa

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mforwordcurrentindex3:I

    .line 232
    div-int/lit8 v0, v8, 0x64

    iput v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mforwordcurrentindex4:I

    .line 234
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfrotation:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 235
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->furotation:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 237
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse2:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfrotation2:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 238
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse2:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->furotation2:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 240
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse3:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfrotation3:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 241
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse3:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->furotation3:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 243
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse4:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfrotation4:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 244
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse4:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->furotation4:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 246
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mImageIds:[I

    iget v2, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mforwordcurrentindex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 247
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse2:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mImageIds2:[I

    iget v2, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mforwordcurrentindex2:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 248
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse3:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mImageIds3:[I

    iget v2, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mforwordcurrentindex3:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 249
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse4:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mImageIds4:[I

    iget v2, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mforwordcurrentindex4:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 251
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->rotatetime:I

    .line 252
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->rotatetime2:I

    .line 253
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->rotatetime3:I

    .line 254
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->rotatetime4:I

    .line 280
    return-void
.end method

.method public RotateSwitcher(IIII)Z
    .locals 5
    .parameter "SWITCHER"
    .parameter "forwordcurrentindex"
    .parameter "duration"
    .parameter "InterpolatorType"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 319
    if-nez p1, :cond_1

    .line 320
    const-string v2, "FMRadio_MirrorFace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MirrorFace] RotateSwitcher SWITCHER: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mforwordcurrentindex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mforwordcurrentindex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " forwordcurrentindex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget v2, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mforwordcurrentindex:I

    if-eq v2, p2, :cond_0

    .line 322
    iput p2, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mforwordcurrentindex:I

    .line 323
    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufrotation:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setDuration(J)V

    .line 324
    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdrotation:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setDuration(J)V

    .line 325
    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfrotation:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setDuration(J)V

    .line 326
    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->furotation:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setDuration(J)V

    .line 327
    invoke-virtual {p0, p1, p4}, Lcom/htc/fm/ui/widget/MirrorFace;->setSwitcherInterpolatorType(II)V

    .line 328
    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse:Landroid/widget/ImageSwitcher;

    iget-object v2, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mImageIds:[I

    iget v3, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mforwordcurrentindex:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 329
    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse:Landroid/widget/ImageSwitcher;

    iget-object v2, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mImageIds:[I

    iget v3, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mforwordcurrentindex:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 383
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 332
    goto :goto_0

    .line 335
    :cond_1
    if-ne p1, v0, :cond_3

    .line 336
    const-string v2, "FMRadio_MirrorFace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MirrorFace] RotateSwitcher SWITCHER: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mforwordcurrentindex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mforwordcurrentindex2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " forwordcurrentindex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget v2, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mforwordcurrentindex2:I

    if-eq v2, p2, :cond_2

    .line 338
    iput p2, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mforwordcurrentindex2:I

    .line 339
    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufrotation2:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setDuration(J)V

    .line 340
    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdrotation2:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setDuration(J)V

    .line 341
    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfrotation2:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setDuration(J)V

    .line 342
    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->furotation2:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setDuration(J)V

    .line 343
    invoke-virtual {p0, p1, p4}, Lcom/htc/fm/ui/widget/MirrorFace;->setSwitcherInterpolatorType(II)V

    .line 344
    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse2:Landroid/widget/ImageSwitcher;

    iget-object v2, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mImageIds2:[I

    iget v3, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mforwordcurrentindex2:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 345
    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse2:Landroid/widget/ImageSwitcher;

    iget-object v2, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mImageIds2:[I

    iget v3, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mforwordcurrentindex2:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 348
    goto :goto_0

    .line 351
    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    .line 352
    const-string v2, "FMRadio_MirrorFace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MirrorFace] RotateSwitcher SWITCHER: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mforwordcurrentindex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mforwordcurrentindex3:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " forwordcurrentindex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget v2, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mforwordcurrentindex3:I

    if-eq v2, p2, :cond_4

    .line 354
    iput p2, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mforwordcurrentindex3:I

    .line 355
    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufrotation3:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setDuration(J)V

    .line 356
    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdrotation3:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setDuration(J)V

    .line 357
    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfrotation3:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setDuration(J)V

    .line 358
    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->furotation3:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setDuration(J)V

    .line 359
    invoke-virtual {p0, p1, p4}, Lcom/htc/fm/ui/widget/MirrorFace;->setSwitcherInterpolatorType(II)V

    .line 360
    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse3:Landroid/widget/ImageSwitcher;

    iget-object v2, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mImageIds3:[I

    iget v3, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mforwordcurrentindex3:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 361
    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse3:Landroid/widget/ImageSwitcher;

    iget-object v2, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mImageIds3:[I

    iget v3, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mforwordcurrentindex3:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 364
    goto/16 :goto_0

    .line 367
    :cond_5
    const/4 v2, 0x3

    if-ne p1, v2, :cond_7

    .line 368
    const-string v2, "FMRadio_MirrorFace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MirrorFace] RotateSwitcher SWITCHER: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mforwordcurrentindex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mforwordcurrentindex4:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " forwordcurrentindex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget v2, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mforwordcurrentindex4:I

    if-eq v2, p2, :cond_6

    .line 370
    iput p2, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mforwordcurrentindex4:I

    .line 371
    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufrotation4:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setDuration(J)V

    .line 372
    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdrotation4:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setDuration(J)V

    .line 373
    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfrotation4:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setDuration(J)V

    .line 374
    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->furotation4:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setDuration(J)V

    .line 375
    invoke-virtual {p0, p1, p4}, Lcom/htc/fm/ui/widget/MirrorFace;->setSwitcherInterpolatorType(II)V

    .line 376
    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse4:Landroid/widget/ImageSwitcher;

    iget-object v2, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mImageIds4:[I

    iget v3, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mforwordcurrentindex4:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 377
    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse4:Landroid/widget/ImageSwitcher;

    iget-object v2, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mImageIds4:[I

    iget v3, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mforwordcurrentindex4:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 380
    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 383
    goto/16 :goto_0
.end method

.method public SetXasisRotationAngle(IFF)V
    .locals 0
    .parameter "direction"
    .parameter "DepthZ"
    .parameter "OffsetY"

    .prologue
    .line 89
    packed-switch p1, :pswitch_data_0

    .line 107
    :goto_0
    return-void

    .line 91
    :pswitch_0
    iput p2, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufdepthZ:F

    .line 92
    iput p3, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufoffsetY:F

    goto :goto_0

    .line 95
    :pswitch_1
    iput p2, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fddepthZ:F

    .line 96
    iput p3, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdoffsetY:F

    goto :goto_0

    .line 99
    :pswitch_2
    iput p2, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfdepthZ:F

    .line 100
    iput p3, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfoffsetY:F

    goto :goto_0

    .line 103
    :pswitch_3
    iput p2, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fudepthZ:F

    .line 104
    iput p3, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fuoffsetY:F

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public makeView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 69
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mcontext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 70
    .local v0, i:Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 71
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 73
    return-object v0
.end method

.method public setFreq(I)V
    .locals 2
    .parameter "freq"

    .prologue
    .line 452
    iget v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mfreq:I

    if-eq v0, p1, :cond_1

    .line 453
    iget v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mfreq:I

    if-ge v0, p1, :cond_0

    .line 454
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfrotation:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 455
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->furotation:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 457
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse2:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfrotation2:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 458
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse2:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->furotation2:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 460
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse3:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfrotation3:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 461
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse3:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->furotation3:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 463
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse4:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfrotation4:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 464
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse4:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->furotation4:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 478
    :goto_0
    iput p1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mfreq:I

    .line 484
    :goto_1
    return-void

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufrotation:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 467
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdrotation:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 469
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse2:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufrotation2:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 470
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse2:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdrotation2:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 472
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse3:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufrotation3:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 473
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse3:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdrotation3:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 475
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse4:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufrotation4:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 476
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse4:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdrotation4:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 480
    :cond_1
    const-string v0, "FMRadio_MirrorFace"

    const-string v1, "[setFreq] Don\'t have to update"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setRotateDirection(Z)V
    .locals 2
    .parameter "bIsIncrease"

    .prologue
    .line 291
    if-eqz p1, :cond_0

    .line 292
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfrotation:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 293
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->furotation:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 295
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse2:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfrotation2:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 296
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse2:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->furotation2:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 298
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse3:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfrotation3:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 299
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse3:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->furotation3:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 301
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse4:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfrotation4:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 302
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse4:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->furotation4:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 316
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufrotation:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 305
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdrotation:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 307
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse2:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufrotation2:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 308
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse2:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdrotation2:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 310
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse3:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufrotation3:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 311
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse3:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdrotation3:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 313
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse4:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufrotation4:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 314
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->mSwitcherReverse4:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdrotation4:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public setRotateTime(IIII)V
    .locals 0
    .parameter "Rotatetime"
    .parameter "Rotatetime2"
    .parameter "Rotatetime3"
    .parameter "Rotatetime4"

    .prologue
    .line 77
    iput p1, p0, Lcom/htc/fm/ui/widget/MirrorFace;->rotatetime:I

    .line 78
    iput p2, p0, Lcom/htc/fm/ui/widget/MirrorFace;->rotatetime2:I

    .line 79
    iput p3, p0, Lcom/htc/fm/ui/widget/MirrorFace;->rotatetime3:I

    .line 80
    iput p4, p0, Lcom/htc/fm/ui/widget/MirrorFace;->rotatetime4:I

    .line 81
    return-void
.end method

.method public setSwitcherInterpolatorType(II)V
    .locals 3
    .parameter "Switcher"
    .parameter "InterpolatorType"

    .prologue
    const/high16 v2, 0x4000

    .line 387
    packed-switch p2, :pswitch_data_0

    .line 448
    :goto_0
    return-void

    .line 389
    :pswitch_0
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 391
    :pswitch_1
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufrotation:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 392
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdrotation:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 393
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfrotation:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 394
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->furotation:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 397
    :pswitch_2
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufrotation2:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 398
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdrotation2:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 399
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfrotation2:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 400
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->furotation2:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 403
    :pswitch_3
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufrotation3:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 404
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdrotation3:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 405
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfrotation3:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 406
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->furotation3:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 409
    :pswitch_4
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufrotation4:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 410
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdrotation4:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 411
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfrotation4:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 412
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->furotation4:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_0

    .line 419
    :pswitch_5
    packed-switch p1, :pswitch_data_2

    goto/16 :goto_0

    .line 421
    :pswitch_6
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufrotation:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 422
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdrotation:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 423
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfrotation:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 424
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->furotation:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_0

    .line 427
    :pswitch_7
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufrotation2:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 428
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdrotation2:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 429
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfrotation2:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 430
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->furotation2:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_0

    .line 433
    :pswitch_8
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufrotation3:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 434
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdrotation3:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 435
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfrotation3:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 436
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->furotation3:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_0

    .line 439
    :pswitch_9
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->ufrotation4:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 440
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->fdrotation4:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 441
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->dfrotation4:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 442
    iget-object v0, p0, Lcom/htc/fm/ui/widget/MirrorFace;->furotation4:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_0

    .line 387
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
    .end packed-switch

    .line 389
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 419
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
