.class Lcom/htc/fragment/widget/HtcTabHost$ViewIndicatorStrategy;
.super Ljava/lang/Object;
.source "HtcTabHost.java"

# interfaces
.implements Lcom/htc/fragment/widget/HtcTabHost$IndicatorStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fragment/widget/HtcTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewIndicatorStrategy"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/htc/fragment/widget/HtcTabHost;


# direct methods
.method private constructor <init>(Lcom/htc/fragment/widget/HtcTabHost;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "view"

    .prologue
    .line 849
    iput-object p1, p0, Lcom/htc/fragment/widget/HtcTabHost$ViewIndicatorStrategy;->this$0:Lcom/htc/fragment/widget/HtcTabHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 850
    iput-object p2, p0, Lcom/htc/fragment/widget/HtcTabHost$ViewIndicatorStrategy;->mView:Landroid/view/View;

    .line 851
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/fragment/widget/HtcTabHost;Landroid/view/View;Lcom/htc/fragment/widget/HtcTabHost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 845
    invoke-direct {p0, p1, p2}, Lcom/htc/fragment/widget/HtcTabHost$ViewIndicatorStrategy;-><init>(Lcom/htc/fragment/widget/HtcTabHost;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 858
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost$ViewIndicatorStrategy;->mView:Landroid/view/View;

    return-object v0
.end method
