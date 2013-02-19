.class Lcom/htc/widget/CarouselSlidingDrawer$1;
.super Ljava/lang/Object;
.source "CarouselSlidingDrawer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/CarouselSlidingDrawer;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/CarouselSlidingDrawer;


# direct methods
.method constructor <init>(Lcom/htc/widget/CarouselSlidingDrawer;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/htc/widget/CarouselSlidingDrawer$1;->this$0:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer$1;->this$0:Lcom/htc/widget/CarouselSlidingDrawer;

    iget-object v0, v0, Lcom/htc/widget/CarouselSlidingDrawer;->carousel:Lcom/htc/widget/CarouselActivity;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer$1;->this$0:Lcom/htc/widget/CarouselSlidingDrawer;

    iget-object v0, v0, Lcom/htc/widget/CarouselSlidingDrawer;->carousel:Lcom/htc/widget/CarouselActivity;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->exitEditMode()V

    .line 195
    :cond_0
    return-void
.end method
