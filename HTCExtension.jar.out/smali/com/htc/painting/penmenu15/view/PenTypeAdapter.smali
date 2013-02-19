.class public Lcom/htc/painting/penmenu15/view/PenTypeAdapter;
.super Ljava/lang/Object;
.source "PenTypeAdapter.java"


# static fields
.field public static final NO_SELECTION:I = -0x80000000


# instance fields
.field protected mBounds:Landroid/graphics/Rect;

.field protected mCB:Landroid/graphics/drawable/Drawable$Callback;

.field private mDividers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu15/drawable/CircularDivider;",
            ">;"
        }
    .end annotation
.end field

.field protected mDrawables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/htc/painting/penmenu15/core/PenRepresentation;",
            "Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;",
            ">;"
        }
    .end annotation
.end field

.field protected mEndAngle:I

.field private mExcludeSet:I

.field private mIncludeSet:I

.field private mInnerRadius:I

.field protected mPenTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu15/core/PenRepresentation;",
            ">;"
        }
    .end annotation
.end field

.field protected mSelectedAnimation:Landroid/view/animation/Animation;

.field protected mSelection:I

.field protected mStartAngle:I

.field protected mState:[I

.field protected mTouched:I


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;Landroid/graphics/drawable/Drawable$Callback;IIIII)V
    .locals 3
    .parameter
    .parameter "ctx"
    .parameter "animCallback"
    .parameter "include"
    .parameter "exclude"
    .parameter "startAngle"
    .parameter "endAngle"
    .parameter "innerRadius"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu15/core/PenRepresentation;",
            ">;",
            "Landroid/content/Context;",
            "Landroid/graphics/drawable/Drawable$Callback;",
            "IIIII)V"
        }
    .end annotation

    .prologue
    .local p1, types:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/core/PenRepresentation;>;"
    const/high16 v2, -0x8000

    const/4 v1, 0x0

    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mPenTypes:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mDrawables:Ljava/util/Map;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mCB:Landroid/graphics/drawable/Drawable$Callback;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mDividers:Ljava/util/List;

    .line 59
    iput v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mStartAngle:I

    .line 64
    const/16 v0, 0xb4

    iput v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mEndAngle:I

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mBounds:Landroid/graphics/Rect;

    .line 76
    iput v2, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mSelection:I

    .line 81
    iput v2, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mTouched:I

    .line 86
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mState:[I

    .line 95
    iput v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mExcludeSet:I

    .line 96
    iput v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mIncludeSet:I

    .line 102
    iput p8, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mInnerRadius:I

    .line 103
    iput p5, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mExcludeSet:I

    .line 104
    iput p4, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mIncludeSet:I

    .line 105
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->setupSelectedAnimation()V

    .line 107
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->addTypesToPenTypes(Ljava/util/List;)V

    .line 109
    iput-object p3, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mCB:Landroid/graphics/drawable/Drawable$Callback;

    .line 111
    iput p6, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mStartAngle:I

    .line 112
    iput p7, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mEndAngle:I

    .line 114
    return-void
.end method

.method private addTypesToPenTypes(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu15/core/PenRepresentation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, types:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/core/PenRepresentation;>;"
    if-eqz p1, :cond_1

    .line 155
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mPenTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 156
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu15/core/PenRepresentation;

    .line 157
    .local v1, penType:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    invoke-virtual {p0, v1}, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->belongToThisAdapter(Lcom/htc/painting/penmenu15/core/PenRepresentation;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    invoke-virtual {p0, v1}, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->addPen(Lcom/htc/painting/penmenu15/core/PenRepresentation;)V

    goto :goto_0

    .line 162
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #penType:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    :cond_1
    return-void
.end method

.method private static removeSelectedState([I)[I
    .locals 8
    .parameter "before"

    .prologue
    .line 269
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v2, copy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object v1, p0

    .local v1, arr$:[I
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget v6, v1, v4

    .line 271
    .local v6, state:I
    const v7, 0x10100a1

    if-eq v6, v7, :cond_0

    const v7, 0x10100a7

    if-eq v6, v7, :cond_0

    .line 273
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 277
    .end local v6           #state:I
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v0, v7, [I

    .line 278
    .local v0, after:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 279
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v0, v3

    .line 278
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 282
    :cond_2
    return-object v0
.end method

.method private resetAllDrawableState()V
    .locals 5

    .prologue
    .line 260
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mState:[I

    invoke-static {v4}, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->removeSelectedState([I)[I

    move-result-object v3

    .line 261
    .local v3, restState:[I
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mDrawables:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 262
    .local v1, drawables:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/drawable/Drawable;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 263
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 265
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private setupSelectedAnimation()V
    .locals 7

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 118
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 124
    .local v0, anim:Landroid/view/animation/Animation;
    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mSelectedAnimation:Landroid/view/animation/Animation;

    .line 125
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mSelectedAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 126
    return-void
.end method


# virtual methods
.method public addDivider(Landroid/content/Context;II)V
    .locals 2
    .parameter "ctx"
    .parameter "dividerRes"
    .parameter "deg"

    .prologue
    .line 363
    new-instance v0, Lcom/htc/painting/penmenu15/drawable/CircularDivider;

    iget v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mInnerRadius:I

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/htc/painting/penmenu15/drawable/CircularDivider;-><init>(Landroid/content/Context;III)V

    .line 364
    .local v0, divider:Lcom/htc/painting/penmenu15/drawable/CircularDivider;
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mDividers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    return-void
.end method

.method protected addPen(Lcom/htc/painting/penmenu15/core/PenRepresentation;)V
    .locals 2
    .parameter "pen"

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->belongToThisAdapter(Lcom/htc/painting/penmenu15/core/PenRepresentation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mPenTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mPenTypes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mDrawables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 139
    :cond_0
    return-void
.end method

.method protected belongToThisAdapter(Lcom/htc/painting/penmenu15/core/PenRepresentation;)Z
    .locals 3
    .parameter "pen"

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 171
    .local v0, belong:Z
    invoke-interface {p1}, Lcom/htc/painting/penmenu15/core/PenRepresentation;->getPenType()Lcom/htc/painting/penmenu15/core/PenType;

    move-result-object v1

    iget v2, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mIncludeSet:I

    invoke-static {v1, v2}, Lcom/htc/painting/penmenu15/PenManager;->inPenSet(Lcom/htc/painting/penmenu15/core/PenType;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/htc/painting/penmenu15/core/PenRepresentation;->getPenType()Lcom/htc/painting/penmenu15/core/PenType;

    move-result-object v1

    iget v2, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mExcludeSet:I

    invoke-static {v1, v2}, Lcom/htc/painting/penmenu15/PenManager;->inPenSet(Lcom/htc/painting/penmenu15/core/PenType;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    const/4 v0, 0x1

    .line 175
    :cond_0
    return v0
.end method

.method public findLocationInItem(FF)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->getCount()I

    move-result v0

    .line 383
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 384
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mPenTypes:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/penmenu15/core/PenRepresentation;

    .line 385
    .local v3, penType:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mDrawables:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;

    .line 386
    .local v1, drawable:Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;->rangeContains(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 392
    .end local v1           #drawable:Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;
    .end local v2           #i:I
    .end local v3           #penType:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    :goto_1
    return v2

    .line 383
    .restart local v1       #drawable:Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;
    .restart local v2       #i:I
    .restart local v3       #penType:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 392
    .end local v1           #drawable:Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;
    .end local v3           #penType:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    :cond_1
    const/high16 v2, -0x8000

    goto :goto_1
.end method

.method public getAllDrawables()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->getCount()I

    move-result v0

    .line 337
    .local v0, count:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 338
    .local v1, drawables:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 339
    invoke-virtual {p0, v2}, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->getRepresentation(I)Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 343
    :cond_0
    return-object v1
.end method

.method protected getCount()I
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mPenTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDividers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu15/drawable/CircularDivider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mDividers:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Lcom/htc/painting/penmenu15/core/PenRepresentation;
    .locals 1
    .parameter "position"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mPenTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu15/core/PenRepresentation;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mPenTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu15/core/PenRepresentation;

    invoke-interface {v0}, Lcom/htc/painting/penmenu15/core/PenRepresentation;->getPenType()Lcom/htc/painting/penmenu15/core/PenType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/core/PenType;->getID()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getRepresentation(I)Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;
    .locals 6
    .parameter "position"

    .prologue
    .line 314
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mPenTypes:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/penmenu15/core/PenRepresentation;

    .line 316
    .local v2, renderPen:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mDrawables:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;

    .line 317
    .local v3, result:Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;
    if-nez v3, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->getSpacingAngle()I

    move-result v0

    .line 319
    .local v0, angle:I
    invoke-interface {v2}, Lcom/htc/painting/penmenu15/core/PenRepresentation;->getOptionIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 320
    .local v1, optionIcon:Landroid/graphics/Bitmap;
    new-instance v3, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;

    .end local v3           #result:Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;
    iget v4, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mStartAngle:I

    mul-int v5, p1, v0

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mInnerRadius:I

    invoke-direct {v3, v1, v4, v5}, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;-><init>(Landroid/graphics/Bitmap;II)V

    .line 323
    .restart local v3       #result:Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 324
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mDrawables:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mCB:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v3, v4}, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 327
    .end local v0           #angle:I
    .end local v1           #optionIcon:Landroid/graphics/Bitmap;
    :cond_0
    return-object v3
.end method

.method public getSelectedRepresentation()Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;
    .locals 2

    .prologue
    .line 301
    iget v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mSelection:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mSelection:I

    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 302
    :cond_0
    const/4 v0, 0x0

    .line 304
    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mSelection:I

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->getRepresentation(I)Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getSelection()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mSelection:I

    return v0
.end method

.method protected getSpacingAngle()I
    .locals 3

    .prologue
    .line 351
    const/4 v0, 0x0

    .line 352
    .local v0, angle:I
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 353
    iget v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mEndAngle:I

    iget v2, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mStartAngle:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    div-int v0, v1, v2

    .line 355
    :cond_0
    return v0
.end method

.method public getTouched()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mTouched:I

    return v0
.end method

.method public notifyDataSetInvalidate()V
    .locals 6

    .prologue
    .line 431
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mPenTypes:Ljava/util/List;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 432
    .local v3, keys:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/core/PenRepresentation;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/penmenu15/core/PenRepresentation;

    .line 433
    .local v2, key:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    iget-object v5, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mDrawables:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;

    .line 434
    .local v0, drawable:Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;
    if-eqz v0, :cond_0

    .line 435
    invoke-interface {v2}, Lcom/htc/painting/penmenu15/core/PenRepresentation;->getOptionIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 436
    .local v4, optionIcon:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_0

    .line 437
    invoke-virtual {v0, v4}, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;->setIcon(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 441
    .end local v0           #drawable:Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;
    .end local v2           #key:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    .end local v4           #optionIcon:Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method public onDrawingBoundsChanged(Landroid/graphics/Rect;)V
    .locals 5
    .parameter "bounds"

    .prologue
    .line 400
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 402
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mDrawables:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 403
    .local v2, drawables:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;

    .line 404
    .local v1, drawable:Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 407
    .end local v1           #drawable:Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;
    :cond_0
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mDividers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu15/drawable/CircularDivider;

    .line 408
    .local v0, divider:Lcom/htc/painting/penmenu15/drawable/CircularDivider;
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Lcom/htc/painting/penmenu15/drawable/CircularDivider;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 410
    .end local v0           #divider:Lcom/htc/painting/penmenu15/drawable/CircularDivider;
    :cond_1
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mDrawables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 449
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mPenTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 450
    return-void
.end method

.method public removePen(Lcom/htc/painting/penmenu15/core/PenRepresentation;)Z
    .locals 2
    .parameter "pen"

    .prologue
    .line 146
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mPenTypes:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 147
    .local v0, removed:Z
    if-eqz v0, :cond_0

    .line 148
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mDrawables:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 150
    :cond_0
    return v0
.end method

.method public setDrawableState([I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mState:[I

    .line 250
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->resetAllDrawableState()V

    .line 251
    iget v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mTouched:I

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_0

    .line 252
    iget v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mTouched:I

    invoke-virtual {p0, v1}, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->getRepresentation(I)Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;

    move-result-object v0

    .line 253
    .local v0, touched:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mState:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;->invalidateSelf()V

    .line 257
    .end local v0           #touched:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 3
    .parameter "ind"

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->getSelectedRepresentation()Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;

    move-result-object v1

    .line 212
    .local v1, oldSelection:Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;
    if-eqz v1, :cond_0

    .line 213
    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;->stop()V

    .line 214
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;->setAnimation(Landroid/view/animation/Animation;)V

    .line 215
    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;->invalidateSelf()V

    .line 218
    :cond_0
    iput p1, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mSelection:I

    .line 219
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->getSelectedRepresentation()Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;

    move-result-object v0

    .line 220
    .local v0, drawable:Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;
    if-eqz v0, :cond_1

    .line 221
    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mSelectedAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;->setAnimation(Landroid/view/animation/Animation;)V

    .line 222
    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;->start()V

    .line 224
    :cond_1
    return-void
.end method

.method public setSelectionState(I[I)V
    .locals 0
    .parameter "selection"
    .parameter "state"

    .prologue
    .line 417
    invoke-virtual {p0, p1}, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->setSelection(I)V

    .line 418
    return-void
.end method

.method public setTouched(I)V
    .locals 0
    .parameter "ind"

    .prologue
    .line 241
    iput p1, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mTouched:I

    .line 242
    return-void
.end method
