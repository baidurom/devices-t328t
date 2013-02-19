.class Lcom/htc/weather/ConditionIcon$AnimationView;
.super Landroid/widget/ImageView;
.source "ConditionIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/weather/ConditionIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationView"
.end annotation


# instance fields
.field private animsetIn:Landroid/view/animation/AnimationSet;

.field private animsetOut:Landroid/view/animation/AnimationSet;

.field private animsetRest:Landroid/view/animation/AnimationSet;

.field final synthetic this$0:Lcom/htc/weather/ConditionIcon;


# direct methods
.method public constructor <init>(Lcom/htc/weather/ConditionIcon;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 453
    iput-object p1, p0, Lcom/htc/weather/ConditionIcon$AnimationView;->this$0:Lcom/htc/weather/ConditionIcon;

    .line 454
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 455
    return-void
.end method


# virtual methods
.method public getAnimationSetIn()Landroid/view/animation/AnimationSet;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$AnimationView;->animsetIn:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method public getAnimationSetOut()Landroid/view/animation/AnimationSet;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$AnimationView;->animsetOut:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method public getAnimationSetRest()Landroid/view/animation/AnimationSet;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$AnimationView;->animsetRest:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method public playInAnimation()V
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$AnimationView;->animsetIn:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$AnimationView;->animsetIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lcom/htc/weather/ConditionIcon$AnimationView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 514
    :cond_0
    return-void
.end method

.method public playOutAnimation()V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$AnimationView;->animsetOut:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$AnimationView;->animsetOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lcom/htc/weather/ConditionIcon$AnimationView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 524
    :cond_0
    return-void
.end method

.method public playResetAnimation()V
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$AnimationView;->animsetRest:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$AnimationView;->animsetRest:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lcom/htc/weather/ConditionIcon$AnimationView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 534
    :cond_0
    return-void
.end method

.method public setAnimaitonSetIn(Landroid/view/animation/AnimationSet;)V
    .locals 0
    .parameter "am"

    .prologue
    .line 462
    iput-object p1, p0, Lcom/htc/weather/ConditionIcon$AnimationView;->animsetIn:Landroid/view/animation/AnimationSet;

    .line 463
    return-void
.end method

.method public setAnimaitonSetOut(Landroid/view/animation/AnimationSet;)V
    .locals 0
    .parameter "am"

    .prologue
    .line 494
    iput-object p1, p0, Lcom/htc/weather/ConditionIcon$AnimationView;->animsetOut:Landroid/view/animation/AnimationSet;

    .line 495
    return-void
.end method

.method public setAnimaitonSetRest(Landroid/view/animation/AnimationSet;)V
    .locals 0
    .parameter "am"

    .prologue
    .line 478
    iput-object p1, p0, Lcom/htc/weather/ConditionIcon$AnimationView;->animsetRest:Landroid/view/animation/AnimationSet;

    .line 479
    return-void
.end method
