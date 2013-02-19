.class Lcom/htc/view/animation/QuickTipsAnimation$PageCurlAnimationCallbck;
.super Ljava/lang/Object;
.source "QuickTipsAnimation.java"

# interfaces
.implements Lcom/htc/view/animation/QuickTipsAnimationLib$PageCurlAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/view/animation/QuickTipsAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageCurlAnimationCallbck"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/view/animation/QuickTipsAnimation;


# direct methods
.method private constructor <init>(Lcom/htc/view/animation/QuickTipsAnimation;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/htc/view/animation/QuickTipsAnimation$PageCurlAnimationCallbck;->this$0:Lcom/htc/view/animation/QuickTipsAnimation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/view/animation/QuickTipsAnimation;Lcom/htc/view/animation/QuickTipsAnimation$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/htc/view/animation/QuickTipsAnimation$PageCurlAnimationCallbck;-><init>(Lcom/htc/view/animation/QuickTipsAnimation;)V

    return-void
.end method


# virtual methods
.method public onPageCurlAnimationEnd()V
    .locals 3

    .prologue
    .line 59
    sget-object v0, Lcom/htc/view/animation/QuickTipsAnimation;->animating:Lcom/htc/view/animation/QuickTipsAnimationView$Animation;

    iget-object v1, p0, Lcom/htc/view/animation/QuickTipsAnimation$PageCurlAnimationCallbck;->this$0:Lcom/htc/view/animation/QuickTipsAnimation;

    if-eq v0, v1, :cond_0

    .line 66
    :goto_0
    return-void

    .line 62
    :cond_0
    const-string v0, "QuickTipsAnimation"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
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

    const-string v2, " onPageCurlAnimationEnd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/htc/view/animation/QuickTipsAnimation$PageCurlAnimationCallbck;->this$0:Lcom/htc/view/animation/QuickTipsAnimation;

    invoke-virtual {v0}, Lcom/htc/view/animation/QuickTipsAnimation;->stop()V

    goto :goto_0
.end method

.method public onPageCurlAnimationStart()V
    .locals 3

    .prologue
    .line 45
    sget-object v0, Lcom/htc/view/animation/QuickTipsAnimation;->animating:Lcom/htc/view/animation/QuickTipsAnimationView$Animation;

    iget-object v1, p0, Lcom/htc/view/animation/QuickTipsAnimation$PageCurlAnimationCallbck;->this$0:Lcom/htc/view/animation/QuickTipsAnimation;

    if-eq v0, v1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    const-string v0, "QuickTipsAnimation"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
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

    const-string v2, " onPageCurlAnimationStart"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
