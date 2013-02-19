.class Lcom/htc/widget/AbrOnDragListener$MyAnimatorListener;
.super Ljava/lang/Object;
.source "AbrOnDragListener.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/AbrOnDragListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAnimatorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/AbrOnDragListener;


# direct methods
.method private constructor <init>(Lcom/htc/widget/AbrOnDragListener;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/htc/widget/AbrOnDragListener$MyAnimatorListener;->this$0:Lcom/htc/widget/AbrOnDragListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/AbrOnDragListener;Lcom/htc/widget/AbrOnDragListener$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/htc/widget/AbrOnDragListener$MyAnimatorListener;-><init>(Lcom/htc/widget/AbrOnDragListener;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 39
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7
    .parameter "arg0"

    .prologue
    const v6, 0x20200ec

    const v5, 0x20200d9

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 44
    iget-object v2, p0, Lcom/htc/widget/AbrOnDragListener$MyAnimatorListener;->this$0:Lcom/htc/widget/AbrOnDragListener;

    #getter for: Lcom/htc/widget/AbrOnDragListener;->mDeletemode:Z
    invoke-static {v2}, Lcom/htc/widget/AbrOnDragListener;->access$100(Lcom/htc/widget/AbrOnDragListener;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    iget-object v2, p0, Lcom/htc/widget/AbrOnDragListener$MyAnimatorListener;->this$0:Lcom/htc/widget/AbrOnDragListener;

    #getter for: Lcom/htc/widget/AbrOnDragListener;->myActionbar:Lcom/htc/widget/HtcActionBar;
    invoke-static {v2}, Lcom/htc/widget/AbrOnDragListener;->access$200(Lcom/htc/widget/AbrOnDragListener;)Lcom/htc/widget/HtcActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 46
    .local v1, temp:Landroid/widget/FrameLayout;
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 48
    iget-object v2, p0, Lcom/htc/widget/AbrOnDragListener$MyAnimatorListener;->this$0:Lcom/htc/widget/AbrOnDragListener;

    iget-object v3, p0, Lcom/htc/widget/AbrOnDragListener$MyAnimatorListener;->this$0:Lcom/htc/widget/AbrOnDragListener;

    #getter for: Lcom/htc/widget/AbrOnDragListener;->myActionbar:Lcom/htc/widget/HtcActionBar;
    invoke-static {v3}, Lcom/htc/widget/AbrOnDragListener;->access$200(Lcom/htc/widget/AbrOnDragListener;)Lcom/htc/widget/HtcActionBar;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    #setter for: Lcom/htc/widget/AbrOnDragListener;->inflated:Landroid/view/View;
    invoke-static {v2, v3}, Lcom/htc/widget/AbrOnDragListener;->access$302(Lcom/htc/widget/AbrOnDragListener;Landroid/view/View;)Landroid/view/View;

    .line 50
    iget-object v2, p0, Lcom/htc/widget/AbrOnDragListener$MyAnimatorListener;->this$0:Lcom/htc/widget/AbrOnDragListener;

    #getter for: Lcom/htc/widget/AbrOnDragListener;->inflated:Landroid/view/View;
    invoke-static {v2}, Lcom/htc/widget/AbrOnDragListener;->access$300(Lcom/htc/widget/AbrOnDragListener;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 52
    iget-object v2, p0, Lcom/htc/widget/AbrOnDragListener$MyAnimatorListener;->this$0:Lcom/htc/widget/AbrOnDragListener;

    #getter for: Lcom/htc/widget/AbrOnDragListener;->myActionbar:Lcom/htc/widget/HtcActionBar;
    invoke-static {v2}, Lcom/htc/widget/AbrOnDragListener;->access$200(Lcom/htc/widget/AbrOnDragListener;)Lcom/htc/widget/HtcActionBar;

    move-result-object v2

    const v3, 0x20200eb

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 53
    .local v0, stub:Landroid/view/ViewStub;
    iget-object v2, p0, Lcom/htc/widget/AbrOnDragListener$MyAnimatorListener;->this$0:Lcom/htc/widget/AbrOnDragListener;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    #setter for: Lcom/htc/widget/AbrOnDragListener;->inflated:Landroid/view/View;
    invoke-static {v2, v3}, Lcom/htc/widget/AbrOnDragListener;->access$302(Lcom/htc/widget/AbrOnDragListener;Landroid/view/View;)Landroid/view/View;

    .line 54
    iget-object v2, p0, Lcom/htc/widget/AbrOnDragListener$MyAnimatorListener;->this$0:Lcom/htc/widget/AbrOnDragListener;

    #getter for: Lcom/htc/widget/AbrOnDragListener;->inflated:Landroid/view/View;
    invoke-static {v2}, Lcom/htc/widget/AbrOnDragListener;->access$300(Lcom/htc/widget/AbrOnDragListener;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget/AbrOnDragListener$MyAnimatorListener;->this$0:Lcom/htc/widget/AbrOnDragListener;

    #getter for: Lcom/htc/widget/AbrOnDragListener;->BgDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/htc/widget/AbrOnDragListener;->access$400(Lcom/htc/widget/AbrOnDragListener;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    const-string v2, "vincent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inflated.getWidth() ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/widget/AbrOnDragListener$MyAnimatorListener;->this$0:Lcom/htc/widget/AbrOnDragListener;

    #getter for: Lcom/htc/widget/AbrOnDragListener;->inflated:Landroid/view/View;
    invoke-static {v4}, Lcom/htc/widget/AbrOnDragListener;->access$300(Lcom/htc/widget/AbrOnDragListener;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .end local v0           #stub:Landroid/view/ViewStub;
    .end local v1           #temp:Landroid/widget/FrameLayout;
    :goto_0
    return-void

    .line 60
    .restart local v1       #temp:Landroid/widget/FrameLayout;
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/AbrOnDragListener$MyAnimatorListener;->this$0:Lcom/htc/widget/AbrOnDragListener;

    #getter for: Lcom/htc/widget/AbrOnDragListener;->inflated:Landroid/view/View;
    invoke-static {v2}, Lcom/htc/widget/AbrOnDragListener;->access$300(Lcom/htc/widget/AbrOnDragListener;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget/AbrOnDragListener$MyAnimatorListener;->this$0:Lcom/htc/widget/AbrOnDragListener;

    #getter for: Lcom/htc/widget/AbrOnDragListener;->BgDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/htc/widget/AbrOnDragListener;->access$400(Lcom/htc/widget/AbrOnDragListener;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    iget-object v2, p0, Lcom/htc/widget/AbrOnDragListener$MyAnimatorListener;->this$0:Lcom/htc/widget/AbrOnDragListener;

    #getter for: Lcom/htc/widget/AbrOnDragListener;->inflated:Landroid/view/View;
    invoke-static {v2}, Lcom/htc/widget/AbrOnDragListener;->access$300(Lcom/htc/widget/AbrOnDragListener;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 64
    .end local v1           #temp:Landroid/widget/FrameLayout;
    :cond_1
    iget-object v2, p0, Lcom/htc/widget/AbrOnDragListener$MyAnimatorListener;->this$0:Lcom/htc/widget/AbrOnDragListener;

    #getter for: Lcom/htc/widget/AbrOnDragListener;->myActionbar:Lcom/htc/widget/HtcActionBar;
    invoke-static {v2}, Lcom/htc/widget/AbrOnDragListener;->access$200(Lcom/htc/widget/AbrOnDragListener;)Lcom/htc/widget/HtcActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget-object v2, p0, Lcom/htc/widget/AbrOnDragListener$MyAnimatorListener;->this$0:Lcom/htc/widget/AbrOnDragListener;

    #getter for: Lcom/htc/widget/AbrOnDragListener;->myActionbar:Lcom/htc/widget/HtcActionBar;
    invoke-static {v2}, Lcom/htc/widget/AbrOnDragListener;->access$200(Lcom/htc/widget/AbrOnDragListener;)Lcom/htc/widget/HtcActionBar;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 66
    .local v0, stub:Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 80
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 86
    return-void
.end method
