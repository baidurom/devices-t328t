.class public abstract Lcom/htc/view/animation/QuickTipsAnimation;
.super Ljava/lang/Object;
.source "QuickTipsAnimation.java"

# interfaces
.implements Lcom/htc/view/animation/QuickTipsAnimationView$Animation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/view/animation/QuickTipsAnimation$1;,
        Lcom/htc/view/animation/QuickTipsAnimation$PageCurlAnimationCallbck;,
        Lcom/htc/view/animation/QuickTipsAnimation$TipsCurlAnimationListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "QuickTipsAnimation"

.field protected static animating:Lcom/htc/view/animation/QuickTipsAnimationView$Animation;


# instance fields
.field protected a:I

.field protected b:I

.field protected bg:Landroid/graphics/Bitmap;

.field protected fg:Landroid/graphics/Bitmap;

.field protected g:I

.field protected h:I

.field private pageCurlAnimationCallback:Lcom/htc/view/animation/QuickTipsAnimation$PageCurlAnimationCallbck;

.field protected r:I

.field private tipsCurlListener:Lcom/htc/view/animation/QuickTipsAnimation$TipsCurlAnimationListener;

.field protected w:I


# direct methods
.method public constructor <init>(Lcom/htc/view/animation/QuickTipsAnimation$TipsCurlAnimationListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/htc/view/animation/QuickTipsAnimation$PageCurlAnimationCallbck;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/view/animation/QuickTipsAnimation$PageCurlAnimationCallbck;-><init>(Lcom/htc/view/animation/QuickTipsAnimation;Lcom/htc/view/animation/QuickTipsAnimation$1;)V

    iput-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimation;->pageCurlAnimationCallback:Lcom/htc/view/animation/QuickTipsAnimation$PageCurlAnimationCallbck;

    .line 70
    iput-object p1, p0, Lcom/htc/view/animation/QuickTipsAnimation;->tipsCurlListener:Lcom/htc/view/animation/QuickTipsAnimation$TipsCurlAnimationListener;

    .line 72
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimation;->pageCurlAnimationCallback:Lcom/htc/view/animation/QuickTipsAnimation$PageCurlAnimationCallbck;

    invoke-static {v0}, Lcom/htc/view/animation/QuickTipsAnimationLib;->addAnimationListener(Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationListener;)V

    .line 73
    return-void
.end method


# virtual methods
.method public cancelIfAnimating()V
    .locals 3

    .prologue
    .line 235
    sget-object v0, Lcom/htc/view/animation/QuickTipsAnimation;->animating:Lcom/htc/view/animation/QuickTipsAnimationView$Animation;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/view/animation/QuickTipsAnimation;->animating:Lcom/htc/view/animation/QuickTipsAnimationView$Animation;

    if-eq v0, p0, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    const-string v0, "QuickTipsAnimation"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 239
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

    const-class v2, Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationListener;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cancelIfAnimating"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_2
    invoke-virtual {p0}, Lcom/htc/view/animation/QuickTipsAnimation;->stop()V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 210
    invoke-virtual {p0}, Lcom/htc/view/animation/QuickTipsAnimation;->cancelIfAnimating()V

    .line 211
    invoke-static {}, Lcom/htc/view/animation/QuickTipsAnimationLib;->isEngineInitiated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-static {}, Lcom/htc/view/animation/QuickTipsAnimationLib;->terminateCurlEngine()V

    .line 214
    :cond_0
    iput v1, p0, Lcom/htc/view/animation/QuickTipsAnimation;->w:I

    .line 215
    iput v1, p0, Lcom/htc/view/animation/QuickTipsAnimation;->h:I

    .line 216
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimation;->pageCurlAnimationCallback:Lcom/htc/view/animation/QuickTipsAnimation$PageCurlAnimationCallbck;

    invoke-static {v0}, Lcom/htc/view/animation/QuickTipsAnimationLib;->removeAnimationListener(Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationListener;)V

    .line 217
    return-void
.end method

.method public draw(Landroid/opengl/GLSurfaceView;Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .parameter "surface"
    .parameter "gl"

    .prologue
    .line 168
    const-string v0, "QuickTipsAnimation"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const-string v0, "QuickTipsAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": draw()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    invoke-static {}, Lcom/htc/view/animation/QuickTipsAnimationLib;->isEngineInitiated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    :goto_0
    return-void

    .line 175
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/htc/view/animation/QuickTipsAnimation;->onDraw(Landroid/opengl/GLSurfaceView;Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0
.end method

.method public init(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 120
    iget v1, p0, Lcom/htc/view/animation/QuickTipsAnimation;->w:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/htc/view/animation/QuickTipsAnimation;->h:I

    if-eq v1, p2, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 121
    .local v0, changeDim:Z
    :goto_0
    iput p1, p0, Lcom/htc/view/animation/QuickTipsAnimation;->w:I

    .line 122
    iput p2, p0, Lcom/htc/view/animation/QuickTipsAnimation;->h:I

    .line 123
    if-eqz v0, :cond_2

    .line 124
    invoke-static {}, Lcom/htc/view/animation/QuickTipsAnimationLib;->isEngineInitiated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    invoke-static {}, Lcom/htc/view/animation/QuickTipsAnimationLib;->terminateCurlEngine()V

    .line 127
    :cond_1
    iget v1, p0, Lcom/htc/view/animation/QuickTipsAnimation;->w:I

    iget v2, p0, Lcom/htc/view/animation/QuickTipsAnimation;->h:I

    invoke-static {v1, v2}, Lcom/htc/view/animation/QuickTipsAnimationLib;->initializeCurlEngine(II)V

    .line 128
    iget v1, p0, Lcom/htc/view/animation/QuickTipsAnimation;->w:I

    iget v2, p0, Lcom/htc/view/animation/QuickTipsAnimation;->h:I

    invoke-static {v1, v2}, Lcom/htc/view/animation/QuickTipsAnimationLib;->setCurlEngineDimensions(II)V

    .line 130
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/htc/view/animation/QuickTipsAnimation;->onInit(II)V

    .line 131
    return-void

    .line 120
    .end local v0           #changeDim:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onDraw(Landroid/opengl/GLSurfaceView;Ljavax/microedition/khronos/opengles/GL10;)V
.end method

.method public abstract onInit(II)V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public setBGImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "img"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/htc/view/animation/QuickTipsAnimation;->bg:Landroid/graphics/Bitmap;

    .line 89
    return-void
.end method

.method public setFGImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "img"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/htc/view/animation/QuickTipsAnimation;->fg:Landroid/graphics/Bitmap;

    .line 81
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
    .locals 4
    .parameter "fg"
    .parameter "bg"
    .parameter "bgcolor"

    .prologue
    .line 225
    invoke-virtual {p0, p1}, Lcom/htc/view/animation/QuickTipsAnimation;->setFGImage(Landroid/graphics/Bitmap;)V

    .line 226
    invoke-virtual {p0, p2}, Lcom/htc/view/animation/QuickTipsAnimation;->setBGImage(Landroid/graphics/Bitmap;)V

    .line 227
    ushr-int/lit8 v0, p3, 0x18

    and-int/lit16 v0, v0, 0xff

    ushr-int/lit8 v1, p3, 0x10

    and-int/lit16 v1, v1, 0xff

    ushr-int/lit8 v2, p3, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v3, p3, 0xff

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/view/animation/QuickTipsAnimation;->setPageBackgroundColor(IIII)V

    .line 228
    return-void
.end method

.method public setPageBackgroundColor(IIII)V
    .locals 1
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "a"

    .prologue
    .line 102
    iput p1, p0, Lcom/htc/view/animation/QuickTipsAnimation;->r:I

    .line 103
    iput p2, p0, Lcom/htc/view/animation/QuickTipsAnimation;->g:I

    .line 104
    iput p3, p0, Lcom/htc/view/animation/QuickTipsAnimation;->b:I

    .line 105
    iput p4, p0, Lcom/htc/view/animation/QuickTipsAnimation;->a:I

    .line 106
    invoke-static {}, Lcom/htc/view/animation/QuickTipsAnimationLib;->isEngineInitiated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    sget-object v0, Lcom/htc/view/animation/QuickTipsAnimation;->animating:Lcom/htc/view/animation/QuickTipsAnimationView$Animation;

    if-nez v0, :cond_0

    .line 112
    invoke-static {p1, p2, p3, p4}, Lcom/htc/view/animation/QuickTipsAnimationLib;->setPageBackgroundColor(IIII)V

    goto :goto_0
.end method

.method public declared-synchronized start()V
    .locals 3

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/htc/view/animation/QuickTipsAnimation;->animating:Lcom/htc/view/animation/QuickTipsAnimationView$Animation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 155
    :goto_0
    monitor-exit p0

    return-void

    .line 147
    :cond_0
    :try_start_1
    sput-object p0, Lcom/htc/view/animation/QuickTipsAnimation;->animating:Lcom/htc/view/animation/QuickTipsAnimationView$Animation;

    .line 149
    const-string v0, "QuickTipsAnimation"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    const-string v0, "QuickTipsAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": start()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_1
    invoke-virtual {p0}, Lcom/htc/view/animation/QuickTipsAnimation;->onStart()V

    .line 154
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimation;->tipsCurlListener:Lcom/htc/view/animation/QuickTipsAnimation$TipsCurlAnimationListener;

    invoke-interface {v0}, Lcom/htc/view/animation/QuickTipsAnimation$TipsCurlAnimationListener;->onTipsAnimationStart()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 189
    const-string v0, "QuickTipsAnimation"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    const-string v0, "QuickTipsAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": stop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/htc/view/animation/QuickTipsAnimation;->onStop()V

    .line 195
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimation;->tipsCurlListener:Lcom/htc/view/animation/QuickTipsAnimation$TipsCurlAnimationListener;

    invoke-interface {v0}, Lcom/htc/view/animation/QuickTipsAnimation$TipsCurlAnimationListener;->onTipsAnimationEnd()V

    .line 196
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/view/animation/QuickTipsAnimation;->animating:Lcom/htc/view/animation/QuickTipsAnimationView$Animation;

    .line 197
    return-void
.end method
