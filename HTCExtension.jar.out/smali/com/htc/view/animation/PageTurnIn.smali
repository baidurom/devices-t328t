.class public Lcom/htc/view/animation/PageTurnIn;
.super Lcom/htc/view/animation/QuickTipsAnimation;
.source "PageTurnIn.java"


# static fields
.field private static final ANI_LEN:J = 0x1L

.field private static final LOG_TAG:Ljava/lang/String; = "QuickTipsAnimation"

.field private static final STEP:I = 0xa


# instance fields
.field private dx:I

.field private dy:I

.field private endx:I

.field private endy:I

.field private isAnimationEnding:Z

.field private startx:I

.field private starty:I

.field private stoped:Z

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Lcom/htc/view/animation/QuickTipsAnimation$TipsCurlAnimationListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/htc/view/animation/QuickTipsAnimation;-><init>(Lcom/htc/view/animation/QuickTipsAnimation$TipsCurlAnimationListener;)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/view/animation/PageTurnIn;->isAnimationEnding:Z

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/view/animation/PageTurnIn;->stoped:Z

    .line 25
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/opengl/GLSurfaceView;Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "surface"
    .parameter "gl"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x3

    .line 94
    iget v0, p0, Lcom/htc/view/animation/PageTurnIn;->x:I

    iget v1, p0, Lcom/htc/view/animation/PageTurnIn;->endx:I

    if-gt v0, v1, :cond_1

    .line 95
    const-string v0, "QuickTipsAnimation"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "QuickTipsAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-onDraw() Curling"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    iget v0, p0, Lcom/htc/view/animation/PageTurnIn;->x:I

    iget v1, p0, Lcom/htc/view/animation/PageTurnIn;->y:I

    invoke-static {v0, v1}, Lcom/htc/view/animation/QuickTipsAnimationLib;->curling(II)I

    .line 99
    invoke-static {}, Lcom/htc/view/animation/QuickTipsAnimationLib;->renderAnimationFrame()I

    .line 100
    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 101
    iget v0, p0, Lcom/htc/view/animation/PageTurnIn;->x:I

    iget v1, p0, Lcom/htc/view/animation/PageTurnIn;->dx:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/view/animation/PageTurnIn;->x:I

    .line 102
    iget v0, p0, Lcom/htc/view/animation/PageTurnIn;->y:I

    iget v1, p0, Lcom/htc/view/animation/PageTurnIn;->dy:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/view/animation/PageTurnIn;->y:I

    .line 122
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-boolean v0, p0, Lcom/htc/view/animation/PageTurnIn;->isAnimationEnding:Z

    if-nez v0, :cond_3

    .line 104
    const-string v0, "QuickTipsAnimation"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    const-string v0, "QuickTipsAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-onDraw() CurlEnd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_2
    const-wide/16 v0, 0x1

    invoke-static {v3, v0, v1}, Lcom/htc/view/animation/QuickTipsAnimationLib;->curlEnd(ZJ)I

    .line 108
    invoke-static {}, Lcom/htc/view/animation/QuickTipsAnimationLib;->renderAnimationFrame()I

    .line 109
    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 110
    iput-boolean v3, p0, Lcom/htc/view/animation/PageTurnIn;->isAnimationEnding:Z

    goto :goto_0

    .line 111
    :cond_3
    iget-boolean v0, p0, Lcom/htc/view/animation/PageTurnIn;->stoped:Z

    if-nez v0, :cond_4

    .line 112
    invoke-static {}, Lcom/htc/view/animation/QuickTipsAnimationLib;->renderAnimationFrame()I

    .line 113
    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    goto :goto_0

    .line 115
    :cond_4
    const-string v0, "QuickTipsAnimation"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 116
    const-string v0, "QuickTipsAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-onDraw() stoped"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_5
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimation;->fg:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/view/animation/QuickTipsAnimationLib;->updatePageImage(Landroid/graphics/Bitmap;I)V

    .line 120
    invoke-static {}, Lcom/htc/view/animation/QuickTipsAnimationLib;->renderAnimationFrame()I

    goto/16 :goto_0
.end method

.method public onInit(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimation;->fg:Landroid/graphics/Bitmap;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/htc/view/animation/QuickTipsAnimationLib;->updatePageImage(Landroid/graphics/Bitmap;I)V

    .line 60
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimation;->bg:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/view/animation/QuickTipsAnimationLib;->updatePageImage(Landroid/graphics/Bitmap;I)V

    .line 61
    iget v0, p0, Lcom/htc/view/animation/QuickTipsAnimation;->r:I

    iget v1, p0, Lcom/htc/view/animation/QuickTipsAnimation;->g:I

    iget v2, p0, Lcom/htc/view/animation/QuickTipsAnimation;->b:I

    iget v3, p0, Lcom/htc/view/animation/QuickTipsAnimation;->a:I

    invoke-static {v0, v1, v2, v3}, Lcom/htc/view/animation/QuickTipsAnimationLib;->setPageBackgroundColor(IIII)V

    .line 62
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 70
    iput v3, p0, Lcom/htc/view/animation/PageTurnIn;->startx:I

    .line 71
    iget v0, p0, Lcom/htc/view/animation/QuickTipsAnimation;->h:I

    iget v1, p0, Lcom/htc/view/animation/QuickTipsAnimation;->h:I

    shr-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/view/animation/PageTurnIn;->starty:I

    .line 72
    iget v0, p0, Lcom/htc/view/animation/QuickTipsAnimation;->w:I

    iput v0, p0, Lcom/htc/view/animation/PageTurnIn;->endx:I

    .line 73
    iget v0, p0, Lcom/htc/view/animation/QuickTipsAnimation;->h:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/view/animation/PageTurnIn;->endy:I

    .line 75
    iget v0, p0, Lcom/htc/view/animation/PageTurnIn;->endx:I

    iget v1, p0, Lcom/htc/view/animation/PageTurnIn;->startx:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/htc/view/animation/PageTurnIn;->dx:I

    .line 76
    iget v0, p0, Lcom/htc/view/animation/PageTurnIn;->endy:I

    iget v1, p0, Lcom/htc/view/animation/PageTurnIn;->starty:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/htc/view/animation/PageTurnIn;->dy:I

    .line 77
    iget v0, p0, Lcom/htc/view/animation/PageTurnIn;->startx:I

    iput v0, p0, Lcom/htc/view/animation/PageTurnIn;->x:I

    .line 78
    iget v0, p0, Lcom/htc/view/animation/PageTurnIn;->starty:I

    iput v0, p0, Lcom/htc/view/animation/PageTurnIn;->y:I

    .line 80
    iget v0, p0, Lcom/htc/view/animation/PageTurnIn;->startx:I

    iget v1, p0, Lcom/htc/view/animation/PageTurnIn;->starty:I

    invoke-static {v0, v1, v3}, Lcom/htc/view/animation/QuickTipsAnimationLib;->curlBegin(IIZ)I

    .line 81
    const-string v0, "QuickTipsAnimation"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "QuickTipsAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-onStart() CurlBegin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    iput-boolean v3, p0, Lcom/htc/view/animation/PageTurnIn;->isAnimationEnding:Z

    .line 85
    iput-boolean v3, p0, Lcom/htc/view/animation/PageTurnIn;->stoped:Z

    .line 86
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/view/animation/PageTurnIn;->stoped:Z

    .line 131
    return-void
.end method

.method public setBGImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "img"

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/htc/view/animation/QuickTipsAnimation;->setBGImage(Landroid/graphics/Bitmap;)V

    .line 47
    sget-object v0, Lcom/htc/view/animation/PageTurnIn;->animating:Lcom/htc/view/animation/QuickTipsAnimationView$Animation;

    if-eqz v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimation;->bg:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/view/animation/QuickTipsAnimationLib;->updatePageImage(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method public setFGImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "img"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/htc/view/animation/QuickTipsAnimation;->setFGImage(Landroid/graphics/Bitmap;)V

    .line 34
    sget-object v0, Lcom/htc/view/animation/PageTurnIn;->animating:Lcom/htc/view/animation/QuickTipsAnimationView$Animation;

    if-eqz v0, :cond_0

    .line 38
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimation;->fg:Landroid/graphics/Bitmap;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/htc/view/animation/QuickTipsAnimationLib;->updatePageImage(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method
