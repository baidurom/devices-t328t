.class Lcom/android/server/wm/StrictModeFlash;
.super Ljava/lang/Object;
.source "StrictModeFlash.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StrictModeFlash"


# instance fields
.field mDrawNeeded:Z

.field mLastDH:I

.field mLastDW:I

.field mShowColor:I

.field mSurface:Landroid/view/Surface;

.field final mThickness:I


# direct methods
.method public constructor <init>(Landroid/view/Display;Landroid/view/SurfaceSession;)V
    .locals 12
    .parameter "display"
    .parameter "session"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/high16 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/StrictModeFlash;->mShowColor:I

    .line 41
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/wm/StrictModeFlash;->mThickness:I

    .line 45
    :try_start_0
    new-instance v0, Landroid/view/Surface;

    const/4 v2, 0x0

    const-string v3, "StrictModeFlash"

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, -0x3

    const/4 v8, 0x0

    move-object v1, p2

    invoke-direct/range {v0 .. v8}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    iput-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    const v1, 0xf6950

    invoke-virtual {v0, v1}, Landroid/view/Surface;->setLayer(I)V

    .line 51
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v10, v10}, Landroid/view/Surface;->setPosition(II)V

    .line 52
    iput-boolean v11, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    .line 53
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v9

    .line 47
    .local v9, e:Landroid/view/Surface$OutOfResourcesException;
    goto :goto_0
.end method

.method private drawIfNeeded()V
    .locals 8

    .prologue
    const/16 v7, 0x14

    const/4 v6, 0x0

    .line 62
    iget-boolean v4, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    if-nez v4, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iput-boolean v6, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    .line 66
    iget v3, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    .line 67
    .local v3, dw:I
    iget v1, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    .line 69
    .local v1, dh:I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v6, v6, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 70
    .local v2, dirty:Landroid/graphics/Rect;
    const/4 v0, 0x0

    .line 72
    .local v0, c:Landroid/graphics/Canvas;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v2}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 76
    :goto_1
    if-eqz v0, :cond_0

    .line 81
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, v3, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 82
    iget v4, p0, Lcom/android/server/wm/StrictModeFlash;->mShowColor:I

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 84
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, v7, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 85
    iget v4, p0, Lcom/android/server/wm/StrictModeFlash;->mShowColor:I

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 87
    new-instance v4, Landroid/graphics/Rect;

    add-int/lit8 v5, v3, -0x14

    invoke-direct {v4, v5, v6, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 88
    iget v4, p0, Lcom/android/server/wm/StrictModeFlash;->mShowColor:I

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 90
    new-instance v4, Landroid/graphics/Rect;

    add-int/lit8 v5, v1, -0x14

    invoke-direct {v4, v6, v5, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 91
    iget v4, p0, Lcom/android/server/wm/StrictModeFlash;->mShowColor:I

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 93
    iget-object v4, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 74
    :catch_0
    move-exception v4

    goto :goto_1

    .line 73
    :catch_1
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method positionSurface(II)V
    .locals 1
    .parameter "dw"
    .parameter "dh"

    .prologue
    .line 111
    iget v0, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    if-ne v0, p2, :cond_0

    .line 118
    :goto_0
    return-void

    .line 114
    :cond_0
    iput p1, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    .line 115
    iput p2, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    .line 116
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1, p2}, Landroid/view/Surface;->setSize(II)V

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    goto :goto_0
.end method

.method public setColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 57
    iput p1, p0, Lcom/android/server/wm/StrictModeFlash;->mShowColor:I

    .line 58
    return-void
.end method

.method public setVisibility(Z)V
    .locals 1
    .parameter "on"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/StrictModeFlash;->drawIfNeeded()V

    .line 103
    if-eqz p1, :cond_1

    .line 104
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->show()V

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->hide()V

    goto :goto_0
.end method
