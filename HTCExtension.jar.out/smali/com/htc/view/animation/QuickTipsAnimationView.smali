.class public Lcom/htc/view/animation/QuickTipsAnimationView;
.super Landroid/opengl/GLSurfaceView;
.source "QuickTipsAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/view/animation/QuickTipsAnimationView$Animation;,
        Lcom/htc/view/animation/QuickTipsAnimationView$Render;,
        Lcom/htc/view/animation/QuickTipsAnimationView$ViewStateHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "QuickTipsAnimation"

.field public static final STATE_HIDE:I = 0x1

.field public static final STATE_SHOW:I


# instance fields
.field private bg:Landroid/graphics/Bitmap;

.field private current:Lcom/htc/view/animation/QuickTipsAnimationView$Animation;

.field private enter:Lcom/htc/view/animation/QuickTipsAnimationView$Animation;

.field private exit:Lcom/htc/view/animation/QuickTipsAnimationView$Animation;

.field private fg:Landroid/graphics/Bitmap;

.field private handler:Lcom/htc/view/animation/QuickTipsAnimationView$ViewStateHandler;

.field private mQuickTipsAniEndMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mQuickTipsAniStartMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private needToStart:Z

.field private needToUpdateImage:Z

.field private surfaceHeight:I

.field private surfaceWidth:I

.field private translucentPageVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/16 v1, 0x8

    const/4 v6, 0x0

    .line 158
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object v8, p0, Lcom/htc/view/animation/QuickTipsAnimationView;->handler:Lcom/htc/view/animation/QuickTipsAnimationView$ViewStateHandler;

    .line 160
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/view/animation/QuickTipsAnimationView;->setEGLContextClientVersion(I)V

    .line 161
    const/16 v5, 0x10

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/view/animation/QuickTipsAnimationView;->setEGLConfigChooser(IIIIII)V

    .line 162
    invoke-virtual {p0}, Lcom/htc/view/animation/QuickTipsAnimationView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 163
    new-instance v0, Lcom/htc/view/animation/QuickTipsAnimationView$Render;

    invoke-direct {v0, p0, v8}, Lcom/htc/view/animation/QuickTipsAnimationView$Render;-><init>(Lcom/htc/view/animation/QuickTipsAnimationView;Lcom/htc/view/animation/QuickTipsAnimationView$1;)V

    invoke-virtual {p0, v0}, Lcom/htc/view/animation/QuickTipsAnimationView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 164
    invoke-virtual {p0, v6}, Lcom/htc/view/animation/QuickTipsAnimationView;->setRenderMode(I)V

    .line 166
    iput-boolean v6, p0, Lcom/htc/view/animation/QuickTipsAnimationView;->translucentPageVisible:Z

    .line 168
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView;->bg:Landroid/graphics/Bitmap;

    .line 169
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView;->bg:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v6, v6, v6}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/htc/view/animation/QuickTipsAnimationView;)Lcom/htc/view/animation/QuickTipsAnimationView$Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView;->current:Lcom/htc/view/animation/QuickTipsAnimationView$Animation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/view/animation/QuickTipsAnimationView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView;->fg:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/view/animation/QuickTipsAnimationView;)Lcom/htc/view/animation/QuickTipsAnimationView$ViewStateHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView;->handler:Lcom/htc/view/animation/QuickTipsAnimationView$ViewStateHandler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/view/animation/QuickTipsAnimationView;)Lcom/htc/utils/perf/FramerateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView;->mQuickTipsAniEndMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/view/animation/QuickTipsAnimationView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView;->bg:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/view/animation/QuickTipsAnimationView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView;->surfaceWidth:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/view/animation/QuickTipsAnimationView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView;->surfaceHeight:I

    return v0
.end method

.method static synthetic access$500(Lcom/htc/view/animation/QuickTipsAnimationView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView;->needToStart:Z

    return v0
.end method

.method static synthetic access$502(Lcom/htc/view/animation/QuickTipsAnimationView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/htc/view/animation/QuickTipsAnimationView;->needToStart:Z

    return p1
.end method

.method static synthetic access$600(Lcom/htc/view/animation/QuickTipsAnimationView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView;->needToUpdateImage:Z

    return v0
.end method

.method static synthetic access$602(Lcom/htc/view/animation/QuickTipsAnimationView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/htc/view/animation/QuickTipsAnimationView;->needToUpdateImage:Z

    return p1
.end method

.method static synthetic access$802(Lcom/htc/view/animation/QuickTipsAnimationView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/htc/view/animation/QuickTipsAnimationView;->translucentPageVisible:Z

    return p1
.end method

.method static synthetic access$900(Lcom/htc/view/animation/QuickTipsAnimationView;)Lcom/htc/utils/perf/FramerateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView;->mQuickTipsAniStartMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    return-object v0
.end method

.method private requestStart(Lcom/htc/view/animation/QuickTipsAnimationView$Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 318
    iput-object p1, p0, Lcom/htc/view/animation/QuickTipsAnimationView;->current:Lcom/htc/view/animation/QuickTipsAnimationView$Animation;

    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView;->needToStart:Z

    .line 320
    invoke-virtual {p0}, Lcom/htc/view/animation/QuickTipsAnimationView;->requestRender()V

    .line 321
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 185
    const-string v0, "QuickTipsAnimation"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
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

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-enter()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    iget-boolean v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView;->translucentPageVisible:Z

    if-nez v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView;->enter:Lcom/htc/view/animation/QuickTipsAnimationView$Animation;

    invoke-direct {p0, v0}, Lcom/htc/view/animation/QuickTipsAnimationView;->requestStart(Lcom/htc/view/animation/QuickTipsAnimationView$Animation;)V

    .line 191
    :cond_1
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 198
    const-string v0, "QuickTipsAnimation"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
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

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-exit()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_0
    iget-boolean v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView;->translucentPageVisible:Z

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView;->exit:Lcom/htc/view/animation/QuickTipsAnimationView$Animation;

    invoke-direct {p0, v0}, Lcom/htc/view/animation/QuickTipsAnimationView;->requestStart(Lcom/htc/view/animation/QuickTipsAnimationView$Animation;)V

    .line 204
    :cond_1
    return-void
.end method

.method public isReady()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 211
    iget-boolean v1, p0, Lcom/htc/view/animation/QuickTipsAnimationView;->translucentPageVisible:Z

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/htc/view/animation/QuickTipsAnimationView;->current:Lcom/htc/view/animation/QuickTipsAnimationView$Animation;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "img"

    .prologue
    .line 328
    iput-object p1, p0, Lcom/htc/view/animation/QuickTipsAnimationView;->fg:Landroid/graphics/Bitmap;

    .line 329
    const-string v0, "QuickTipsAnimation"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
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

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-setFGImage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/view/animation/QuickTipsAnimationView;->fg:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_0
    invoke-static {}, Lcom/htc/view/animation/QuickTipsAnimationLib;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView;->needToUpdateImage:Z

    .line 334
    invoke-virtual {p0}, Lcom/htc/view/animation/QuickTipsAnimationView;->requestRender()V

    .line 342
    :goto_0
    return-void

    .line 336
    :cond_1
    if-eqz p1, :cond_2

    .line 337
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/htc/view/animation/QuickTipsAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/htc/view/animation/QuickTipsAnimationView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 339
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/view/animation/QuickTipsAnimationView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setViewStateHandler(Lcom/htc/view/animation/QuickTipsAnimationView$ViewStateHandler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/htc/view/animation/QuickTipsAnimationView;->handler:Lcom/htc/view/animation/QuickTipsAnimationView$ViewStateHandler;

    .line 178
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 294
    const-string v0, "QuickTipsAnimation"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
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

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-surfaceChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    iput p3, p0, Lcom/htc/view/animation/QuickTipsAnimationView;->surfaceWidth:I

    .line 298
    iput p4, p0, Lcom/htc/view/animation/QuickTipsAnimationView;->surfaceHeight:I

    .line 299
    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 300
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 5
    .parameter "holder"

    .prologue
    const/16 v4, 0x5dd

    const/4 v3, 0x1

    .line 220
    const-string v0, "QuickTipsAnimation"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
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

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-surfaceCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    const-string v0, " QUICKTIP_IN "

    invoke-static {v3, p0, v4, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView;->mQuickTipsAniStartMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 227
    new-instance v0, Lcom/htc/view/animation/CurlIn;

    new-instance v1, Lcom/htc/view/animation/QuickTipsAnimationView$1;

    invoke-direct {v1, p0}, Lcom/htc/view/animation/QuickTipsAnimationView$1;-><init>(Lcom/htc/view/animation/QuickTipsAnimationView;)V

    invoke-direct {v0, v1}, Lcom/htc/view/animation/CurlIn;-><init>(Lcom/htc/view/animation/QuickTipsAnimation$TipsCurlAnimationListener;)V

    iput-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView;->enter:Lcom/htc/view/animation/QuickTipsAnimationView$Animation;

    .line 254
    const-string v0, " QUICKTIP_OUT "

    invoke-static {v3, p0, v4, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView;->mQuickTipsAniEndMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 257
    new-instance v0, Lcom/htc/view/animation/ZoomOut;

    new-instance v1, Lcom/htc/view/animation/QuickTipsAnimationView$2;

    invoke-direct {v1, p0}, Lcom/htc/view/animation/QuickTipsAnimationView$2;-><init>(Lcom/htc/view/animation/QuickTipsAnimationView;)V

    invoke-direct {v0, v1}, Lcom/htc/view/animation/ZoomOut;-><init>(Lcom/htc/view/animation/QuickTipsAnimation$TipsCurlAnimationListener;)V

    iput-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView;->exit:Lcom/htc/view/animation/QuickTipsAnimationView$Animation;

    .line 284
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView;->enter:Lcom/htc/view/animation/QuickTipsAnimationView$Animation;

    iput-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView;->current:Lcom/htc/view/animation/QuickTipsAnimationView$Animation;

    .line 286
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 287
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 307
    const-string v0, "QuickTipsAnimation"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
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

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-surfaceDestroyed()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 311
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView;->enter:Lcom/htc/view/animation/QuickTipsAnimationView$Animation;

    invoke-interface {v0}, Lcom/htc/view/animation/QuickTipsAnimationView$Animation;->destroy()V

    .line 312
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView;->exit:Lcom/htc/view/animation/QuickTipsAnimationView$Animation;

    invoke-interface {v0}, Lcom/htc/view/animation/QuickTipsAnimationView$Animation;->destroy()V

    .line 313
    return-void
.end method
