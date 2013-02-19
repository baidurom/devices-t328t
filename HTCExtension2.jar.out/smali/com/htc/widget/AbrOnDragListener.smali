.class public Lcom/htc/widget/AbrOnDragListener;
.super Ljava/lang/Object;
.source "AbrOnDragListener.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/AbrOnDragListener$1;,
        Lcom/htc/widget/AbrOnDragListener$MyAnimatorListener;
    }
.end annotation


# instance fields
.field private BgDrawable:Landroid/graphics/drawable/Drawable;

.field private inflated:Landroid/view/View;

.field private isFullScreenStyle:Ljava/lang/Boolean;

.field private mAnimatorListener:Lcom/htc/widget/AbrOnDragListener$MyAnimatorListener;

.field private mDeletemode:Z

.field private myActionbar:Lcom/htc/widget/HtcActionBar;


# direct methods
.method public constructor <init>(Lcom/htc/widget/HtcActionBar;)V
    .locals 4
    .parameter "ab"

    .prologue
    const/4 v3, 0x0

    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v1, Lcom/htc/widget/AbrOnDragListener$MyAnimatorListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/widget/AbrOnDragListener$MyAnimatorListener;-><init>(Lcom/htc/widget/AbrOnDragListener;Lcom/htc/widget/AbrOnDragListener$1;)V

    iput-object v1, p0, Lcom/htc/widget/AbrOnDragListener;->mAnimatorListener:Lcom/htc/widget/AbrOnDragListener$MyAnimatorListener;

    .line 23
    iput-boolean v3, p0, Lcom/htc/widget/AbrOnDragListener;->mDeletemode:Z

    .line 26
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/AbrOnDragListener;->isFullScreenStyle:Ljava/lang/Boolean;

    .line 91
    iput-object p1, p0, Lcom/htc/widget/AbrOnDragListener;->myActionbar:Lcom/htc/widget/HtcActionBar;

    .line 92
    iget-object v1, p0, Lcom/htc/widget/AbrOnDragListener;->myActionbar:Lcom/htc/widget/HtcActionBar;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcActionBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 94
    .local v0, l:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/AbrOnDragListener;->BgDrawable:Landroid/graphics/drawable/Drawable;

    .line 95
    iget-object v1, p0, Lcom/htc/widget/AbrOnDragListener;->myActionbar:Lcom/htc/widget/HtcActionBar;

    invoke-virtual {v1}, Lcom/htc/widget/HtcActionBar;->isFullScreenMode()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/AbrOnDragListener;->isFullScreenStyle:Ljava/lang/Boolean;

    .line 96
    return-void
.end method

.method static synthetic access$100(Lcom/htc/widget/AbrOnDragListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/htc/widget/AbrOnDragListener;->mDeletemode:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/widget/AbrOnDragListener;)Lcom/htc/widget/HtcActionBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/widget/AbrOnDragListener;->myActionbar:Lcom/htc/widget/HtcActionBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/widget/AbrOnDragListener;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/widget/AbrOnDragListener;->inflated:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/widget/AbrOnDragListener;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/htc/widget/AbrOnDragListener;->inflated:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/widget/AbrOnDragListener;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/widget/AbrOnDragListener;->BgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public IsDeleteMode()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/htc/widget/AbrOnDragListener;->mDeletemode:Z

    return v0
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "e"

    .prologue
    const/4 v6, 0x0

    const v5, 0x20803e2

    const v4, 0x2020038

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 113
    const/4 v1, 0x0

    .line 115
    .local v1, result:Z
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 155
    :cond_0
    :goto_0
    :pswitch_0
    return v7

    .line 117
    :pswitch_1
    iget-object v3, p0, Lcom/htc/widget/AbrOnDragListener;->myActionbar:Lcom/htc/widget/HtcActionBar;

    const-string v4, "rotationX"

    new-array v5, v8, [F

    const/high16 v6, 0x43b4

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 118
    .local v2, showanimator:Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/htc/widget/AbrOnDragListener;->mAnimatorListener:Lcom/htc/widget/AbrOnDragListener$MyAnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 119
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 120
    iput-boolean v8, p0, Lcom/htc/widget/AbrOnDragListener;->mDeletemode:Z

    goto :goto_0

    .line 124
    .end local v2           #showanimator:Landroid/animation/ObjectAnimator;
    :pswitch_2
    iget-object v3, p0, Lcom/htc/widget/AbrOnDragListener;->inflated:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 125
    iget-object v3, p0, Lcom/htc/widget/AbrOnDragListener;->isFullScreenStyle:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 127
    invoke-virtual {p1, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 130
    invoke-virtual {p1, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 138
    :pswitch_3
    iget-object v3, p0, Lcom/htc/widget/AbrOnDragListener;->inflated:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object v3, p0, Lcom/htc/widget/AbrOnDragListener;->myActionbar:Lcom/htc/widget/HtcActionBar;

    const-string v4, "rotationX"

    new-array v5, v8, [F

    const/4 v6, 0x0

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 140
    .local v0, closeanimator:Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/htc/widget/AbrOnDragListener;->mAnimatorListener:Lcom/htc/widget/AbrOnDragListener$MyAnimatorListener;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 141
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 142
    iput-boolean v7, p0, Lcom/htc/widget/AbrOnDragListener;->mDeletemode:Z

    goto :goto_0

    .line 145
    .end local v0           #closeanimator:Landroid/animation/ObjectAnimator;
    :pswitch_4
    iget-object v3, p0, Lcom/htc/widget/AbrOnDragListener;->inflated:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 146
    invoke-virtual {p1, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
