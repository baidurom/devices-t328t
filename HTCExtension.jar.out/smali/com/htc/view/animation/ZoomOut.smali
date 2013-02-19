.class public Lcom/htc/view/animation/ZoomOut;
.super Lcom/htc/view/animation/QuickTipsAnimation;
.source "ZoomOut.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "QuickTipsAnimation"


# instance fields
.field private stoped:Z


# direct methods
.method public constructor <init>(Lcom/htc/view/animation/QuickTipsAnimation$TipsCurlAnimationListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/htc/view/animation/QuickTipsAnimation;-><init>(Lcom/htc/view/animation/QuickTipsAnimation$TipsCurlAnimationListener;)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/view/animation/ZoomOut;->stoped:Z

    .line 20
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/opengl/GLSurfaceView;Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "surface"
    .parameter "gl"

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x0

    .line 78
    iget-boolean v0, p0, Lcom/htc/view/animation/ZoomOut;->stoped:Z

    if-nez v0, :cond_2

    .line 79
    invoke-static {}, Lcom/htc/view/animation/QuickTipsAnimationLib;->renderAnimationFrame()I

    .line 80
    iget-boolean v0, p0, Lcom/htc/view/animation/ZoomOut;->stoped:Z

    if-eqz v0, :cond_1

    .line 81
    const-string v0, "QuickTipsAnimation"

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

    const-string v2, "-onDraw() stoped"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimation;->bg:Landroid/graphics/Bitmap;

    invoke-static {v0, v3}, Lcom/htc/view/animation/QuickTipsAnimationLib;->updatePageImage(Landroid/graphics/Bitmap;I)V

    .line 85
    invoke-static {}, Lcom/htc/view/animation/QuickTipsAnimationLib;->renderAnimationFrame()I

    .line 97
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    goto :goto_0

    .line 90
    :cond_2
    const-string v0, "QuickTipsAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
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

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimation;->bg:Landroid/graphics/Bitmap;

    invoke-static {v0, v3}, Lcom/htc/view/animation/QuickTipsAnimationLib;->updatePageImage(Landroid/graphics/Bitmap;I)V

    .line 95
    invoke-static {}, Lcom/htc/view/animation/QuickTipsAnimationLib;->renderAnimationFrame()I

    goto :goto_0
.end method

.method public onInit(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimation;->fg:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/view/animation/QuickTipsAnimationLib;->updatePageImage(Landroid/graphics/Bitmap;I)V

    .line 55
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimation;->bg:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/view/animation/QuickTipsAnimationLib;->updatePageImage(Landroid/graphics/Bitmap;I)V

    .line 56
    iget v0, p0, Lcom/htc/view/animation/QuickTipsAnimation;->r:I

    iget v1, p0, Lcom/htc/view/animation/QuickTipsAnimation;->g:I

    iget v2, p0, Lcom/htc/view/animation/QuickTipsAnimation;->b:I

    iget v3, p0, Lcom/htc/view/animation/QuickTipsAnimation;->a:I

    invoke-static {v0, v1, v2, v3}, Lcom/htc/view/animation/QuickTipsAnimationLib;->setPageBackgroundColor(IIII)V

    .line 57
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 65
    const v0, 0x3f4ccccd

    const/4 v1, 0x0

    const-wide/16 v2, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/htc/view/animation/QuickTipsAnimationLib;->zoomAnimation(FFJ)V

    .line 66
    const-string v0, "QuickTipsAnimation"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
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

    .line 69
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/view/animation/ZoomOut;->stoped:Z

    .line 70
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/view/animation/ZoomOut;->stoped:Z

    .line 106
    return-void
.end method

.method public setBGImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "img"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/htc/view/animation/QuickTipsAnimation;->setBGImage(Landroid/graphics/Bitmap;)V

    .line 42
    sget-object v0, Lcom/htc/view/animation/ZoomOut;->animating:Lcom/htc/view/animation/QuickTipsAnimationView$Animation;

    if-eqz v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimation;->bg:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/view/animation/QuickTipsAnimationLib;->updatePageImage(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method public setFGImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "img"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/htc/view/animation/QuickTipsAnimation;->setFGImage(Landroid/graphics/Bitmap;)V

    .line 29
    sget-object v0, Lcom/htc/view/animation/ZoomOut;->animating:Lcom/htc/view/animation/QuickTipsAnimationView$Animation;

    if-eqz v0, :cond_0

    .line 33
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimation;->fg:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/view/animation/QuickTipsAnimationLib;->updatePageImage(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method
