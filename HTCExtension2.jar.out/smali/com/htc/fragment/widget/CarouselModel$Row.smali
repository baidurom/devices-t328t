.class Lcom/htc/fragment/widget/CarouselModel$Row;
.super Ljava/lang/Object;
.source "CarouselModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fragment/widget/CarouselModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Row"
.end annotation


# instance fields
.field public mRow:[Ljava/lang/Object;

.field final synthetic this$0:Lcom/htc/fragment/widget/CarouselModel;


# direct methods
.method public constructor <init>(Lcom/htc/fragment/widget/CarouselModel;[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "row"

    .prologue
    .line 592
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselModel$Row;->this$0:Lcom/htc/fragment/widget/CarouselModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 593
    iput-object p2, p0, Lcom/htc/fragment/widget/CarouselModel$Row;->mRow:[Ljava/lang/Object;

    .line 594
    return-void
.end method
