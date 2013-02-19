.class Lcom/htc/widget/QuickTips$2;
.super Lcom/htc/view/animation/QuickTipsAnimationView$ViewStateHandler;
.source "QuickTips.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/QuickTips;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/QuickTips;


# direct methods
.method constructor <init>(Lcom/htc/widget/QuickTips;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/htc/widget/QuickTips$2;->this$0:Lcom/htc/widget/QuickTips;

    invoke-direct {p0}, Lcom/htc/view/animation/QuickTipsAnimationView$ViewStateHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onHide()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/htc/widget/QuickTips$2;->this$0:Lcom/htc/widget/QuickTips;

    invoke-virtual {v0}, Lcom/htc/widget/QuickTips;->dismiss()V

    .line 320
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 316
    return-void
.end method
