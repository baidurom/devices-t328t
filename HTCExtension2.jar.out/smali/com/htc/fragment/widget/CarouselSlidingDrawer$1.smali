.class Lcom/htc/fragment/widget/CarouselSlidingDrawer$1;
.super Ljava/lang/Object;
.source "CarouselSlidingDrawer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fragment/widget/CarouselSlidingDrawer;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fragment/widget/CarouselSlidingDrawer;


# direct methods
.method constructor <init>(Lcom/htc/fragment/widget/CarouselSlidingDrawer;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer$1;->this$0:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer$1;->this$0:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->carousel:Lcom/htc/fragment/widget/CarouselFragment;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselSlidingDrawer$1;->this$0:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    iget-object v0, v0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->carousel:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->exitEditMode()V

    .line 222
    :cond_0
    return-void
.end method
