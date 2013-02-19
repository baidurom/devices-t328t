.class Lcom/htc/fragment/widget/CarouselWidget$1;
.super Ljava/lang/Object;
.source "CarouselWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fragment/widget/CarouselWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fragment/widget/CarouselWidget;


# direct methods
.method constructor <init>(Lcom/htc/fragment/widget/CarouselWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselWidget$1;->this$0:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget$1;->this$0:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->requestLayout()V

    .line 90
    return-void
.end method
