.class Lcom/htc/fragment/widget/CarouselTextView$1;
.super Ljava/lang/Object;
.source "CarouselTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fragment/widget/CarouselTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fragment/widget/CarouselTextView;


# direct methods
.method constructor <init>(Lcom/htc/fragment/widget/CarouselTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselTextView$1;->this$0:Lcom/htc/fragment/widget/CarouselTextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselTextView$1;->this$0:Lcom/htc/fragment/widget/CarouselTextView;

    #calls: Lcom/htc/fragment/widget/CarouselTextView;->setupTextLines()V
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselTextView;->access$000(Lcom/htc/fragment/widget/CarouselTextView;)V

    .line 347
    return-void
.end method
