.class Lcom/htc/painting/penmenu/PenMenu$3$1;
.super Ljava/lang/Object;
.source "PenMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/painting/penmenu/PenMenu$3;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/painting/penmenu/PenMenu$3;


# direct methods
.method constructor <init>(Lcom/htc/painting/penmenu/PenMenu$3;)V
    .locals 0
    .parameter

    .prologue
    .line 463
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenu$3$1;->this$1:Lcom/htc/painting/penmenu/PenMenu$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 470
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu$3$1;->this$1:Lcom/htc/painting/penmenu/PenMenu$3;

    iget-object v2, v2, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/PenMenu;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 471
    .local v1, foreground:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 472
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 473
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu$3$1;->this$1:Lcom/htc/painting/penmenu/PenMenu$3;

    iget-object v2, v2, Lcom/htc/painting/penmenu/PenMenu$3;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v2, v3}, Lcom/htc/painting/penmenu/PenMenu;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 474
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 475
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #foreground:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 476
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 480
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method
