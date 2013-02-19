.class Lcom/htc/view/animation/QuickTipsAnimationView$Render;
.super Ljava/lang/Object;
.source "QuickTipsAnimationView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/view/animation/QuickTipsAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Render"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/view/animation/QuickTipsAnimationView;


# direct methods
.method private constructor <init>(Lcom/htc/view/animation/QuickTipsAnimationView;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/htc/view/animation/QuickTipsAnimationView$Render;->this$0:Lcom/htc/view/animation/QuickTipsAnimationView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/view/animation/QuickTipsAnimationView;Lcom/htc/view/animation/QuickTipsAnimationView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/htc/view/animation/QuickTipsAnimationView$Render;-><init>(Lcom/htc/view/animation/QuickTipsAnimationView;)V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .parameter "gl"

    .prologue
    const/16 v4, 0x7f

    const/4 v3, 0x0

    .line 109
    const-string v0, "QuickTipsAnimation"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const-string v0, "QuickTipsAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": onDrawFrame() current = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/view/animation/QuickTipsAnimationView$Render;->this$0:Lcom/htc/view/animation/QuickTipsAnimationView;

    #getter for: Lcom/htc/view/animation/QuickTipsAnimationView;->current:Lcom/htc/view/animation/QuickTipsAnimationView$Animation;
    invoke-static {v2}, Lcom/htc/view/animation/QuickTipsAnimationView;->access$000(Lcom/htc/view/animation/QuickTipsAnimationView;)Lcom/htc/view/animation/QuickTipsAnimationView$Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/view/animation/QuickTipsAnimationView$Render;->this$0:Lcom/htc/view/animation/QuickTipsAnimationView;

    #getter for: Lcom/htc/view/animation/QuickTipsAnimationView;->fg:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/htc/view/animation/QuickTipsAnimationView;->access$100(Lcom/htc/view/animation/QuickTipsAnimationView;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", needStart = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/view/animation/QuickTipsAnimationView$Render;->this$0:Lcom/htc/view/animation/QuickTipsAnimationView;

    #getter for: Lcom/htc/view/animation/QuickTipsAnimationView;->needToStart:Z
    invoke-static {v2}, Lcom/htc/view/animation/QuickTipsAnimationView;->access$500(Lcom/htc/view/animation/QuickTipsAnimationView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", needToUpdateImage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/view/animation/QuickTipsAnimationView$Render;->this$0:Lcom/htc/view/animation/QuickTipsAnimationView;

    #getter for: Lcom/htc/view/animation/QuickTipsAnimationView;->needToUpdateImage:Z
    invoke-static {v2}, Lcom/htc/view/animation/QuickTipsAnimationView;->access$600(Lcom/htc/view/animation/QuickTipsAnimationView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView$Render;->this$0:Lcom/htc/view/animation/QuickTipsAnimationView;

    #getter for: Lcom/htc/view/animation/QuickTipsAnimationView;->fg:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/view/animation/QuickTipsAnimationView;->access$100(Lcom/htc/view/animation/QuickTipsAnimationView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    .line 131
    :cond_1
    :goto_0
    return-void

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView$Render;->this$0:Lcom/htc/view/animation/QuickTipsAnimationView;

    #getter for: Lcom/htc/view/animation/QuickTipsAnimationView;->current:Lcom/htc/view/animation/QuickTipsAnimationView$Animation;
    invoke-static {v0}, Lcom/htc/view/animation/QuickTipsAnimationView;->access$000(Lcom/htc/view/animation/QuickTipsAnimationView;)Lcom/htc/view/animation/QuickTipsAnimationView$Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView$Render;->this$0:Lcom/htc/view/animation/QuickTipsAnimationView;

    #getter for: Lcom/htc/view/animation/QuickTipsAnimationView;->needToStart:Z
    invoke-static {v0}, Lcom/htc/view/animation/QuickTipsAnimationView;->access$500(Lcom/htc/view/animation/QuickTipsAnimationView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView$Render;->this$0:Lcom/htc/view/animation/QuickTipsAnimationView;

    #setter for: Lcom/htc/view/animation/QuickTipsAnimationView;->needToStart:Z
    invoke-static {v0, v3}, Lcom/htc/view/animation/QuickTipsAnimationView;->access$502(Lcom/htc/view/animation/QuickTipsAnimationView;Z)Z

    .line 121
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView$Render;->this$0:Lcom/htc/view/animation/QuickTipsAnimationView;

    #getter for: Lcom/htc/view/animation/QuickTipsAnimationView;->current:Lcom/htc/view/animation/QuickTipsAnimationView$Animation;
    invoke-static {v0}, Lcom/htc/view/animation/QuickTipsAnimationView;->access$000(Lcom/htc/view/animation/QuickTipsAnimationView;)Lcom/htc/view/animation/QuickTipsAnimationView$Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/view/animation/QuickTipsAnimationView$Render;->this$0:Lcom/htc/view/animation/QuickTipsAnimationView;

    #getter for: Lcom/htc/view/animation/QuickTipsAnimationView;->fg:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/view/animation/QuickTipsAnimationView;->access$100(Lcom/htc/view/animation/QuickTipsAnimationView;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/view/animation/QuickTipsAnimationView$Render;->this$0:Lcom/htc/view/animation/QuickTipsAnimationView;

    #getter for: Lcom/htc/view/animation/QuickTipsAnimationView;->bg:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/htc/view/animation/QuickTipsAnimationView;->access$200(Lcom/htc/view/animation/QuickTipsAnimationView;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v0, v1, v2, v4}, Lcom/htc/view/animation/QuickTipsAnimationView$Animation;->setImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    .line 122
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView$Render;->this$0:Lcom/htc/view/animation/QuickTipsAnimationView;

    #getter for: Lcom/htc/view/animation/QuickTipsAnimationView;->current:Lcom/htc/view/animation/QuickTipsAnimationView$Animation;
    invoke-static {v0}, Lcom/htc/view/animation/QuickTipsAnimationView;->access$000(Lcom/htc/view/animation/QuickTipsAnimationView;)Lcom/htc/view/animation/QuickTipsAnimationView$Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/view/animation/QuickTipsAnimationView$Render;->this$0:Lcom/htc/view/animation/QuickTipsAnimationView;

    #getter for: Lcom/htc/view/animation/QuickTipsAnimationView;->surfaceWidth:I
    invoke-static {v1}, Lcom/htc/view/animation/QuickTipsAnimationView;->access$300(Lcom/htc/view/animation/QuickTipsAnimationView;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/view/animation/QuickTipsAnimationView$Render;->this$0:Lcom/htc/view/animation/QuickTipsAnimationView;

    #getter for: Lcom/htc/view/animation/QuickTipsAnimationView;->surfaceHeight:I
    invoke-static {v2}, Lcom/htc/view/animation/QuickTipsAnimationView;->access$400(Lcom/htc/view/animation/QuickTipsAnimationView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/htc/view/animation/QuickTipsAnimationView$Animation;->init(II)V

    .line 123
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView$Render;->this$0:Lcom/htc/view/animation/QuickTipsAnimationView;

    #getter for: Lcom/htc/view/animation/QuickTipsAnimationView;->current:Lcom/htc/view/animation/QuickTipsAnimationView$Animation;
    invoke-static {v0}, Lcom/htc/view/animation/QuickTipsAnimationView;->access$000(Lcom/htc/view/animation/QuickTipsAnimationView;)Lcom/htc/view/animation/QuickTipsAnimationView$Animation;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/view/animation/QuickTipsAnimationView$Animation;->start()V

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView$Render;->this$0:Lcom/htc/view/animation/QuickTipsAnimationView;

    #getter for: Lcom/htc/view/animation/QuickTipsAnimationView;->needToUpdateImage:Z
    invoke-static {v0}, Lcom/htc/view/animation/QuickTipsAnimationView;->access$600(Lcom/htc/view/animation/QuickTipsAnimationView;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 126
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView$Render;->this$0:Lcom/htc/view/animation/QuickTipsAnimationView;

    #setter for: Lcom/htc/view/animation/QuickTipsAnimationView;->needToUpdateImage:Z
    invoke-static {v0, v3}, Lcom/htc/view/animation/QuickTipsAnimationView;->access$602(Lcom/htc/view/animation/QuickTipsAnimationView;Z)Z

    .line 127
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView$Render;->this$0:Lcom/htc/view/animation/QuickTipsAnimationView;

    #getter for: Lcom/htc/view/animation/QuickTipsAnimationView;->current:Lcom/htc/view/animation/QuickTipsAnimationView$Animation;
    invoke-static {v0}, Lcom/htc/view/animation/QuickTipsAnimationView;->access$000(Lcom/htc/view/animation/QuickTipsAnimationView;)Lcom/htc/view/animation/QuickTipsAnimationView$Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/view/animation/QuickTipsAnimationView$Render;->this$0:Lcom/htc/view/animation/QuickTipsAnimationView;

    #getter for: Lcom/htc/view/animation/QuickTipsAnimationView;->fg:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/view/animation/QuickTipsAnimationView;->access$100(Lcom/htc/view/animation/QuickTipsAnimationView;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/view/animation/QuickTipsAnimationView$Render;->this$0:Lcom/htc/view/animation/QuickTipsAnimationView;

    #getter for: Lcom/htc/view/animation/QuickTipsAnimationView;->bg:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/htc/view/animation/QuickTipsAnimationView;->access$200(Lcom/htc/view/animation/QuickTipsAnimationView;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v0, v1, v2, v4}, Lcom/htc/view/animation/QuickTipsAnimationView$Animation;->setImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    .line 129
    :cond_4
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView$Render;->this$0:Lcom/htc/view/animation/QuickTipsAnimationView;

    #getter for: Lcom/htc/view/animation/QuickTipsAnimationView;->current:Lcom/htc/view/animation/QuickTipsAnimationView$Animation;
    invoke-static {v0}, Lcom/htc/view/animation/QuickTipsAnimationView;->access$000(Lcom/htc/view/animation/QuickTipsAnimationView;)Lcom/htc/view/animation/QuickTipsAnimationView$Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/view/animation/QuickTipsAnimationView$Render;->this$0:Lcom/htc/view/animation/QuickTipsAnimationView;

    invoke-interface {v0, v1, p1}, Lcom/htc/view/animation/QuickTipsAnimationView$Animation;->draw(Landroid/opengl/GLSurfaceView;Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
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

    const-class v2, Lcom/htc/view/animation/QuickTipsAnimationView$Render;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-onSurfaceChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView$Render;->this$0:Lcom/htc/view/animation/QuickTipsAnimationView;

    #getter for: Lcom/htc/view/animation/QuickTipsAnimationView;->current:Lcom/htc/view/animation/QuickTipsAnimationView$Animation;
    invoke-static {v0}, Lcom/htc/view/animation/QuickTipsAnimationView;->access$000(Lcom/htc/view/animation/QuickTipsAnimationView;)Lcom/htc/view/animation/QuickTipsAnimationView$Animation;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/view/animation/QuickTipsAnimationView$Animation;->cancelIfAnimating()V

    .line 99
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView$Render;->this$0:Lcom/htc/view/animation/QuickTipsAnimationView;

    #getter for: Lcom/htc/view/animation/QuickTipsAnimationView;->current:Lcom/htc/view/animation/QuickTipsAnimationView$Animation;
    invoke-static {v0}, Lcom/htc/view/animation/QuickTipsAnimationView;->access$000(Lcom/htc/view/animation/QuickTipsAnimationView;)Lcom/htc/view/animation/QuickTipsAnimationView$Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/view/animation/QuickTipsAnimationView$Render;->this$0:Lcom/htc/view/animation/QuickTipsAnimationView;

    #getter for: Lcom/htc/view/animation/QuickTipsAnimationView;->fg:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/view/animation/QuickTipsAnimationView;->access$100(Lcom/htc/view/animation/QuickTipsAnimationView;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/view/animation/QuickTipsAnimationView$Render;->this$0:Lcom/htc/view/animation/QuickTipsAnimationView;

    #getter for: Lcom/htc/view/animation/QuickTipsAnimationView;->bg:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/htc/view/animation/QuickTipsAnimationView;->access$200(Lcom/htc/view/animation/QuickTipsAnimationView;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/16 v3, 0x7f

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/view/animation/QuickTipsAnimationView$Animation;->setImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    .line 100
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimationView$Render;->this$0:Lcom/htc/view/animation/QuickTipsAnimationView;

    #getter for: Lcom/htc/view/animation/QuickTipsAnimationView;->current:Lcom/htc/view/animation/QuickTipsAnimationView$Animation;
    invoke-static {v0}, Lcom/htc/view/animation/QuickTipsAnimationView;->access$000(Lcom/htc/view/animation/QuickTipsAnimationView;)Lcom/htc/view/animation/QuickTipsAnimationView$Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/view/animation/QuickTipsAnimationView$Render;->this$0:Lcom/htc/view/animation/QuickTipsAnimationView;

    #getter for: Lcom/htc/view/animation/QuickTipsAnimationView;->surfaceWidth:I
    invoke-static {v1}, Lcom/htc/view/animation/QuickTipsAnimationView;->access$300(Lcom/htc/view/animation/QuickTipsAnimationView;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/view/animation/QuickTipsAnimationView$Render;->this$0:Lcom/htc/view/animation/QuickTipsAnimationView;

    #getter for: Lcom/htc/view/animation/QuickTipsAnimationView;->surfaceHeight:I
    invoke-static {v2}, Lcom/htc/view/animation/QuickTipsAnimationView;->access$400(Lcom/htc/view/animation/QuickTipsAnimationView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/htc/view/animation/QuickTipsAnimationView$Animation;->init(II)V

    .line 101
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .parameter "gl"
    .parameter "config"

    .prologue
    .line 87
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

    const-class v2, Lcom/htc/view/animation/QuickTipsAnimationView$Render;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-onSurfaceCreated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method
