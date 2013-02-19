.class public Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;
.super Lcom/htc/painting/penmenu15/view/PenTypeAdapter;
.source "PenHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PenMenuNew"


# instance fields
.field private final MAX_SIZE:I

.field private mDisapearingIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mHistoryComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/htc/painting/penmenu15/core/PenRepresentation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;Landroid/graphics/drawable/Drawable$Callback;IIII)V
    .locals 9
    .parameter
    .parameter "ctx"
    .parameter "cb"
    .parameter "size"
    .parameter "includeSet"
    .parameter "excludeSet"
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
            "IIII)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, types:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/core/PenRepresentation;>;"
    or-int/lit8 v0, p6, 0x1

    or-int/lit8 v5, v0, 0x10

    const/16 v6, 0x24

    mul-int/lit8 v7, p4, 0x24

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;-><init>(Ljava/util/List;Landroid/content/Context;Landroid/graphics/drawable/Drawable$Callback;IIIII)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;->mDisapearingIcons:Ljava/util/List;

    .line 107
    new-instance v0, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$1;

    invoke-direct {v0, p0}, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$1;-><init>(Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;)V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;->mHistoryComparator:Ljava/util/Comparator;

    .line 37
    iput p4, p0, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;->MAX_SIZE:I

    .line 38
    invoke-direct {p0, p2}, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;->clonePenTypes(Landroid/content/Context;)V

    .line 39
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;->setupSelectedAnimation()V

    .line 40
    return-void
.end method

.method private clonePenTypes(Landroid/content/Context;)V
    .locals 10
    .parameter "ctx"

    .prologue
    .line 57
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v5, types:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/painting/penmenu15/core/PenRepresentation;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 59
    .local v2, now:J
    iget-object v6, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mPenTypes:Ljava/util/List;

    if-eqz v6, :cond_2

    .line 60
    iget-object v6, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mPenTypes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/penmenu15/core/PenRepresentation;

    .line 61
    .local v4, pen:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    invoke-virtual {p0, v4}, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;->belongToThisAdapter(Lcom/htc/painting/penmenu15/core/PenRepresentation;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 62
    invoke-interface {v4}, Lcom/htc/painting/penmenu15/core/PenRepresentation;->getLastUsedTime()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 63
    invoke-interface {v4, v2, v3}, Lcom/htc/painting/penmenu15/core/PenRepresentation;->markLastUsed(J)V

    .line 66
    :cond_1
    invoke-interface {v4, p1}, Lcom/htc/painting/penmenu15/core/PenRepresentation;->clone(Landroid/content/Context;)Lcom/htc/painting/penmenu15/core/PenRepresentation;

    move-result-object v1

    .line 67
    .local v1, newCopy:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #newCopy:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    .end local v4           #pen:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    :cond_2
    iput-object v5, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mPenTypes:Ljava/util/List;

    .line 72
    return-void
.end method

.method private getEnterTransitionAnim(Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;)Landroid/view/animation/Animation;
    .locals 7
    .parameter "to"

    .prologue
    const/4 v5, 0x0

    .line 258
    const/4 v1, 0x0

    .line 259
    .local v1, transit:Landroid/view/animation/Animation;
    iget-object v3, p1, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;->mDrawable:Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;->getIntrinsicWidth()I

    move-result v2

    .line 260
    .local v2, width:I
    iget-object v3, p1, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;->mDrawable:Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;->getIntrinsicHeight()I

    move-result v0

    .line 261
    .local v0, height:I
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1           #transit:Landroid/view/animation/Animation;
    const/high16 v3, -0x4080

    int-to-float v4, v2

    mul-float/2addr v3, v4

    invoke-direct {v1, v3, v5, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 264
    .restart local v1       #transit:Landroid/view/animation/Animation;
    invoke-virtual {v1, v2, v0, v2, v0}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 265
    const-wide/16 v3, 0x64

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 266
    const-string v3, "Animation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/painting/penmenu15/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-object v1
.end method

.method private getExitTransitionAnim(Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;)Landroid/view/animation/Animation;
    .locals 7
    .parameter "from"

    .prologue
    const/4 v5, 0x0

    .line 271
    const/4 v1, 0x0

    .line 272
    .local v1, transit:Landroid/view/animation/Animation;
    iget-object v3, p1, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;->mDrawable:Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;->getIntrinsicWidth()I

    move-result v2

    .line 273
    .local v2, width:I
    iget-object v3, p1, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;->mDrawable:Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;

    invoke-virtual {v3}, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;->getIntrinsicHeight()I

    move-result v0

    .line 274
    .local v0, height:I
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1           #transit:Landroid/view/animation/Animation;
    const/high16 v3, -0x4080

    int-to-float v4, v2

    mul-float/2addr v3, v4

    invoke-direct {v1, v5, v3, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 277
    .restart local v1       #transit:Landroid/view/animation/Animation;
    invoke-virtual {v1, v2, v0, v2, v0}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 278
    const-wide/16 v3, 0x64

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 279
    const-string v3, "Animation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/painting/penmenu15/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-object v1
.end method

.method private getMovingTransitionAnim(Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;)Landroid/view/animation/Animation;
    .locals 6
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x148

    .line 285
    const/4 v1, 0x0

    .line 286
    .local v1, transit:Landroid/view/animation/Animation;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget v2, p1, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;->mDegree:I

    iget v3, p2, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;->mDegree:I

    if-eq v2, v3, :cond_0

    .line 287
    iget v2, p1, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;->mDegree:I

    iget v3, p2, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;->mDegree:I

    sub-int v0, v2, v3

    .line 288
    .local v0, delta:I
    new-instance v1, Landroid/view/animation/RotateAnimation;

    .end local v1           #transit:Landroid/view/animation/Animation;
    mul-int/lit8 v2, v0, -0x1

    int-to-float v2, v2

    invoke-direct {v1, v2, v5, v5, v5}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    .line 294
    .restart local v1       #transit:Landroid/view/animation/Animation;
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/view/animation/RotateAnimation;->initialize(IIII)V

    .line 295
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 297
    .end local v0           #delta:I
    :cond_0
    return-object v1
.end method

.method private getOldRecordFor(Lcom/htc/painting/penmenu15/core/PenRepresentation;Ljava/util/List;)Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;
    .locals 4
    .parameter "pen"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/painting/penmenu15/core/PenRepresentation;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;",
            ">;)",
            "Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;"
        }
    .end annotation

    .prologue
    .local p2, oldPositionData:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;>;"
    const/4 v2, 0x0

    .line 238
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move-object v1, v2

    .line 253
    :cond_1
    :goto_0
    return-object v1

    .line 242
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 243
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;

    .line 244
    .local v1, row:Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;
    iget-object v3, v1, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;->mPen:Lcom/htc/painting/penmenu15/core/PenRepresentation;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #row:Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;
    :cond_3
    move-object v1, v2

    .line 253
    goto :goto_0
.end method

.method private setOffsetForAnimations(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/animation/Animation;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/animation/Animation;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/animation/Animation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, leavingAnims:Ljava/util/List;,"Ljava/util/List<Landroid/view/animation/Animation;>;"
    .local p2, movingAnims:Ljava/util/List;,"Ljava/util/List<Landroid/view/animation/Animation;>;"
    .local p3, enteringAnims:Ljava/util/List;,"Ljava/util/List<Landroid/view/animation/Animation;>;"
    const-wide/16 v4, 0x0

    .line 221
    .local v4, leavingOffset:J
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 222
    .local v0, anim:Landroid/view/animation/Animation;
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    goto :goto_0

    .line 225
    .end local v0           #anim:Landroid/view/animation/Animation;
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    int-to-long v8, v8

    cmp-long v8, v8, v4

    if-nez v8, :cond_1

    move-wide v6, v4

    .line 226
    .local v6, movingOffset:J
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 227
    .restart local v0       #anim:Landroid/view/animation/Animation;
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    goto :goto_2

    .line 225
    .end local v0           #anim:Landroid/view/animation/Animation;
    .end local v6           #movingOffset:J
    :cond_1
    const-wide/16 v6, 0x64

    goto :goto_1

    .line 231
    .restart local v6       #movingOffset:J
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_3

    move-wide v1, v6

    .line 232
    .local v1, enterOffset:J
    :goto_3
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 233
    .restart local v0       #anim:Landroid/view/animation/Animation;
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    goto :goto_4

    .line 231
    .end local v0           #anim:Landroid/view/animation/Animation;
    .end local v1           #enterOffset:J
    :cond_3
    const-wide/16 v8, 0xc8

    add-long v1, v6, v8

    goto :goto_3

    .line 235
    .restart local v1       #enterOffset:J
    :cond_4
    return-void
.end method

.method private setupSelectedAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x148

    .line 45
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, 0x4334

    invoke-direct {v0, v1, v3, v3, v3}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    .line 50
    .local v0, anim:Landroid/view/animation/RotateAnimation;
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/animation/RotateAnimation;->initialize(IIII)V

    .line 51
    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mSelectedAnimation:Landroid/view/animation/Animation;

    .line 52
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mSelectedAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 53
    return-void
.end method

.method private sort(Ljava/util/List;)V
    .locals 2
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
    .line 126
    .local p1, pens:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/core/PenRepresentation;>;"
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mPenTypes:Ljava/util/List;

    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;->mHistoryComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 127
    return-void
.end method


# virtual methods
.method public addPenToPenHistory(Lcom/htc/painting/penmenu15/core/PenRepresentation;)V
    .locals 4
    .parameter "pen"

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->addPen(Lcom/htc/painting/penmenu15/core/PenRepresentation;)V

    .line 94
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mPenTypes:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;->sort(Ljava/util/List;)V

    .line 96
    :goto_0
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mPenTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;->MAX_SIZE:I

    add-int/lit8 v2, v2, 0x1

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;->MAX_SIZE:I

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mPenTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;->getItem(I)Lcom/htc/painting/penmenu15/core/PenRepresentation;

    move-result-object v0

    .line 98
    .local v0, ipen:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    const-string v1, "PenMenuNew"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " remove:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mPenTypes:Ljava/util/List;

    iget-object v2, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mPenTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 102
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mDrawables:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 105
    .end local v0           #ipen:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    :cond_0
    return-void
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
    .line 157
    invoke-super {p0}, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->getAllDrawables()Ljava/util/List;

    move-result-object v0

    .line 158
    .local v0, drawables:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;>;"
    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;->mDisapearingIcons:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;

    .line 159
    .local v2, leavingD:Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;
    invoke-virtual {v2}, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    .end local v2           #leavingD:Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;
    :cond_1
    return-object v0
.end method

.method protected getCount()I
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mPenTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;->MAX_SIZE:I

    if-ge v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mPenTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 83
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;->MAX_SIZE:I

    goto :goto_0
.end method

.method public getPenPositionData()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v7, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;>;"
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mPenTypes:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mPenTypes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mDrawables:Ljava/util/Map;

    if-nez v4, :cond_1

    .line 324
    :cond_0
    return-object v7

    .line 309
    :cond_1
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;->getCount()I

    move-result v6

    .line 310
    .local v6, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v6, :cond_0

    .line 311
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mPenTypes:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/penmenu15/core/PenRepresentation;

    .line 312
    .local v2, pen:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mDrawables:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;

    .line 313
    .local v1, drawable:Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;
    const/4 v0, 0x0

    .line 314
    .local v0, oneRow:Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;
    if-eqz v1, :cond_2

    .line 315
    new-instance v0, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;

    .end local v0           #oneRow:Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;
    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;->getDegree()I

    move-result v4

    iget v5, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mEndAngle:I

    if-le v4, v5, :cond_3

    iget v4, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mEndAngle:I

    :goto_1
    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;-><init>(Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;Lcom/htc/painting/penmenu15/core/PenRepresentation;IILcom/htc/painting/penmenu15/view/PenHistoryAdapter$1;)V

    .line 320
    .restart local v0       #oneRow:Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 315
    .end local v0           #oneRow:Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;
    :cond_3
    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;->getDegree()I

    move-result v4

    goto :goto_1
.end method

.method public getPens()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu15/core/PenRepresentation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mPenTypes:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedRepresentation()Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;
    .locals 2

    .prologue
    .line 136
    iget v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mSelection:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mSelection:I

    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 137
    :cond_0
    const/4 v0, 0x0

    .line 139
    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mSelection:I

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;->getRepresentation(I)Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;

    move-result-object v0

    goto :goto_0
.end method

.method public playTransitionAnimation(Ljava/util/List;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, oldPositionData:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;>;"
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mPenTypes:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mPenTypes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 175
    .local v12, oldDataCopy:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v10, leavingAnim:Ljava/util/List;,"Ljava/util/List<Landroid/view/animation/Animation;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v11, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 177
    .local v11, movingAnim:Ljava/util/List;,"Ljava/util/List<Landroid/view/animation/Animation;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v9, enteringAnim:Ljava/util/List;,"Ljava/util/List<Landroid/view/animation/Animation;>;"
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;->getCount()I

    move-result v7

    .line 181
    .local v7, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v7, :cond_5

    .line 182
    invoke-virtual {p0, v3}, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;->getRepresentation(I)Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;

    move-result-object v1

    .line 183
    .local v1, drawable:Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/PenTypeAdapter;->mPenTypes:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/penmenu15/core/PenRepresentation;

    .line 184
    .local v2, pen:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 185
    new-instance v0, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;->getDegree()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;-><init>(Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;Lcom/htc/painting/penmenu15/core/PenRepresentation;IILcom/htc/painting/penmenu15/view/PenHistoryAdapter$1;)V

    .line 187
    .local v0, dataNow:Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;
    invoke-direct {p0, v2, p1}, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;->getOldRecordFor(Lcom/htc/painting/penmenu15/core/PenRepresentation;Ljava/util/List;)Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;

    move-result-object v8

    .line 188
    .local v8, dataBefore:Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;
    const/4 v6, 0x0

    .line 189
    .local v6, anim:Landroid/view/animation/Animation;
    if-eqz v0, :cond_4

    if-nez v8, :cond_4

    .line 190
    invoke-direct {p0, v0}, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;->getEnterTransitionAnim(Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;)Landroid/view/animation/Animation;

    move-result-object v6

    .line 191
    if-eqz v6, :cond_2

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_2
    :goto_2
    invoke-virtual {v1, v6}, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;->setAnimation(Landroid/view/animation/Animation;)V

    .line 197
    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;->start()V

    .line 199
    invoke-interface {v12, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 181
    .end local v0           #dataNow:Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;
    .end local v6           #anim:Landroid/view/animation/Animation;
    .end local v8           #dataBefore:Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 192
    .restart local v0       #dataNow:Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;
    .restart local v6       #anim:Landroid/view/animation/Animation;
    .restart local v8       #dataBefore:Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;
    :cond_4
    if-eqz v0, :cond_2

    if-eqz v8, :cond_2

    .line 193
    invoke-direct {p0, v8, v0}, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;->getMovingTransitionAnim(Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;)Landroid/view/animation/Animation;

    move-result-object v6

    .line 194
    if-eqz v6, :cond_2

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 204
    .end local v0           #dataNow:Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;
    .end local v1           #drawable:Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;
    .end local v2           #pen:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    .end local v6           #anim:Landroid/view/animation/Animation;
    .end local v8           #dataBefore:Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;
    :cond_5
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    .line 205
    .local v13, oldDataCount:I
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;->mDisapearingIcons:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 206
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v13, :cond_7

    .line 207
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;

    .line 208
    .restart local v8       #dataBefore:Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;
    invoke-direct {p0, v8}, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;->getExitTransitionAnim(Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;)Landroid/view/animation/Animation;

    move-result-object v6

    .line 209
    .restart local v6       #anim:Landroid/view/animation/Animation;
    iget-object v4, v8, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;->mDrawable:Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;

    invoke-virtual {v4, v6}, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;->setAnimation(Landroid/view/animation/Animation;)V

    .line 210
    iget-object v4, v8, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;->mDrawable:Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;

    invoke-virtual {v4}, Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;->start()V

    .line 211
    if-eqz v6, :cond_6

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_6
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;->mDisapearingIcons:Ljava/util/List;

    iget-object v5, v8, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;->mDrawable:Lcom/htc/painting/penmenu15/drawable/CircularIconDrawable;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 216
    .end local v6           #anim:Landroid/view/animation/Animation;
    .end local v8           #dataBefore:Lcom/htc/painting/penmenu15/view/PenHistoryAdapter$PenPositionData;
    :cond_7
    invoke-direct {p0, v10, v11, v9}, Lcom/htc/painting/penmenu15/view/PenHistoryAdapter;->setOffsetForAnimations(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0
.end method
