.class public Lcom/htc/painting/penmenu15/view/HLColorAdapter;
.super Ljava/lang/Object;
.source "HLColorAdapter.java"


# static fields
.field public static final NO_SELECTION:I = -0x80000000

.field public static final UNHIGHLIGHT_COLOR:I = 0x0

.field public static final UNHIGHLIGHT_INDEX:I = -0xa


# instance fields
.field protected mBounds:Landroid/graphics/Rect;

.field protected mCB:Landroid/graphics/drawable/Drawable$Callback;

.field private mColorIconDistToCenter:I

.field private mColorRadius:I

.field private mContext:Landroid/content/Context;

.field protected mDrawables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;",
            ">;"
        }
    .end annotation
.end field

.field protected mEndAngle:I

.field protected mHLConfig:Lcom/htc/painting/penmenu/highlight/IHighlightConfig15;

.field protected mPressed:I

.field protected mSelection:I

.field protected mStartAngle:I

.field protected mState:[I

.field private mSupportedColors:[I


# direct methods
.method public constructor <init>(Lcom/htc/painting/penmenu/highlight/IHighlightConfig15;Landroid/content/Context;Landroid/graphics/drawable/Drawable$Callback;III)V
    .locals 3
    .parameter "hlConfig"
    .parameter "ctx"
    .parameter "animCallback"
    .parameter "startAngle"
    .parameter "endAngle"
    .parameter "iconDistToCenter"

    .prologue
    const/high16 v2, -0x8000

    const/4 v1, 0x0

    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mSupportedColors:[I

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mDrawables:Ljava/util/Map;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mCB:Landroid/graphics/drawable/Drawable$Callback;

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mBounds:Landroid/graphics/Rect;

    .line 81
    iput v2, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mSelection:I

    .line 86
    iput v2, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mPressed:I

    .line 91
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mState:[I

    .line 93
    iput v1, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mColorRadius:I

    .line 94
    iput v1, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mColorIconDistToCenter:I

    .line 103
    iput p6, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mColorIconDistToCenter:I

    .line 104
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mContext:Landroid/content/Context;

    .line 106
    iput-object p1, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mHLConfig:Lcom/htc/painting/penmenu/highlight/IHighlightConfig15;

    .line 107
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mHLConfig:Lcom/htc/painting/penmenu/highlight/IHighlightConfig15;

    invoke-interface {v0}, Lcom/htc/painting/penmenu/highlight/IHighlightConfig15;->getSupportedColors()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->setSupportedColors([I)V

    .line 109
    iput-object p3, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mCB:Landroid/graphics/drawable/Drawable$Callback;

    .line 111
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20e00e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mColorRadius:I

    .line 113
    iput p4, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mStartAngle:I

    .line 114
    iput p5, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mEndAngle:I

    .line 115
    return-void
.end method

.method private static removeSelectedState([I)[I
    .locals 8
    .parameter "before"

    .prologue
    .line 234
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 235
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

    .line 236
    .local v6, state:I
    const v7, 0x10100a1

    if-eq v6, v7, :cond_0

    const v7, 0x10100a7

    if-eq v6, v7, :cond_0

    .line 238
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 242
    .end local v6           #state:I
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v0, v7, [I

    .line 243
    .local v0, after:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 244
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v0, v3

    .line 243
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 247
    :cond_2
    return-object v0
.end method

.method private resetAllDrawableState()V
    .locals 5

    .prologue
    .line 224
    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mState:[I

    invoke-static {v4}, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->removeSelectedState([I)[I

    move-result-object v3

    .line 225
    .local v3, restState:[I
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mDrawables:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 226
    .local v1, drawables:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;

    .line 227
    .local v0, d:Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->setPressed(Z)V

    .line 228
    invoke-virtual {v0, v3}, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->setState([I)Z

    goto :goto_0

    .line 230
    .end local v0           #d:Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;
    :cond_0
    return-void
.end method

.method private setSupportedColors([I)V
    .locals 3
    .parameter "supportedColors"

    .prologue
    .line 118
    array-length v1, p1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mSupportedColors:[I

    .line 120
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mSupportedColors:[I

    aget v2, p1, v0

    aput v2, v1, v0

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_0
    return-void
.end method


# virtual methods
.method public findLocationInItem(FF)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->getCount()I

    move-result v0

    .line 300
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 301
    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mDrawables:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;

    .line 302
    .local v1, drawable:Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->rangeContains(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 308
    .end local v1           #drawable:Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;
    .end local v2           #i:I
    :goto_1
    return v2

    .line 300
    .restart local v1       #drawable:Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;
    .restart local v2       #i:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    .end local v1           #drawable:Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;
    :cond_1
    const/high16 v2, -0x8000

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mSupportedColors:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Integer;
    .locals 1
    .parameter "position"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mSupportedColors:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mSupportedColors:[I

    aget v0, v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getPressedRepresentation()Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;
    .locals 2

    .prologue
    .line 199
    iget v0, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mPressed:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mPressed:I

    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 200
    :cond_0
    const/4 v0, 0x0

    .line 202
    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mPressed:I

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->getRepresentation(I)Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getRepresentation(I)Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;
    .locals 8
    .parameter "position"

    .prologue
    .line 268
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mSupportedColors:[I

    aget v4, v1, p1

    .line 270
    .local v4, color:I
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mDrawables:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;

    .line 271
    .local v0, result:Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;
    if-nez v0, :cond_1

    .line 273
    const/4 v7, 0x0

    .line 274
    .local v7, angle:I
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 275
    iget v1, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mEndAngle:I

    iget v2, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mStartAngle:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->getCount()I

    move-result v2

    div-int v7, v1, v2

    .line 277
    :cond_0
    new-instance v0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;

    .end local v0           #result:Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mStartAngle:I

    add-int/lit8 v3, p1, 0x1

    mul-int/2addr v3, v7

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mColorIconDistToCenter:I

    iget v5, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mColorRadius:I

    sget-object v6, Lcom/htc/painting/penmenu15/PenMenuConfiguration;->RES_HIGHLIGHT_FRAMES:[I

    invoke-direct/range {v0 .. v6}, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;-><init>(Landroid/content/Context;IIII[I)V

    .line 284
    .restart local v0       #result:Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 285
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mDrawables:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mCB:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 288
    .end local v7           #angle:I
    :cond_1
    return-object v0
.end method

.method public getSelectedRepresentation()Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;
    .locals 2

    .prologue
    .line 256
    iget v0, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mSelection:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mSelection:I

    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 257
    :cond_0
    const/4 v0, 0x0

    .line 259
    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mSelection:I

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->getRepresentation(I)Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getSelection()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mSelection:I

    return v0
.end method

.method public notifyDataSetInvalidate()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mDrawables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 334
    return-void
.end method

.method public onDrawingBoundsChanged(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "bounds"

    .prologue
    .line 316
    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 318
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mDrawables:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 319
    .local v1, drawables:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;

    .line 320
    .local v0, drawable:Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;
    iget-object v3, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 322
    .end local v0           #drawable:Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mDrawables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 342
    return-void
.end method

.method public setDrawableState([I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mState:[I

    .line 213
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->resetAllDrawableState()V

    .line 214
    iget v1, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mPressed:I

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_0

    .line 215
    iget v1, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mPressed:I

    invoke-virtual {p0, v1}, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->getRepresentation(I)Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;

    move-result-object v0

    .line 216
    .local v0, touched:Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;
    iget-object v1, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mState:[I

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->setPressed(Z)V

    .line 218
    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->invalidateSelf()V

    .line 221
    .end local v0           #touched:Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;
    :cond_0
    return-void
.end method

.method public setPressed(I)V
    .locals 0
    .parameter "ind"

    .prologue
    .line 187
    iput p1, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mPressed:I

    .line 188
    return-void
.end method

.method public setSelection(I)V
    .locals 3
    .parameter "ind"

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->getSelectedRepresentation()Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;

    move-result-object v1

    .line 159
    .local v1, oldSelection:Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;
    if-eqz v1, :cond_0

    .line 160
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->setSelected(Z)V

    .line 161
    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->invalidateSelf()V

    .line 164
    :cond_0
    iput p1, p0, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->mSelection:I

    .line 165
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/HLColorAdapter;->getSelectedRepresentation()Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;

    move-result-object v0

    .line 166
    .local v0, drawable:Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;
    if-eqz v0, :cond_1

    .line 167
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->setSelected(Z)V

    .line 168
    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/drawable/CircularPositionedDrawable;->invalidateSelf()V

    .line 170
    :cond_1
    return-void
.end method
