.class public Lcom/htc/fragment/widget/HtcTabHost$TabSpec;
.super Ljava/lang/Object;
.source "HtcTabHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fragment/widget/HtcTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabSpec"
.end annotation


# instance fields
.field private mContentStrategy:Lcom/htc/fragment/widget/HtcTabHost$ContentStrategy;

.field private mIndicatorStrategy:Lcom/htc/fragment/widget/HtcTabHost$IndicatorStrategy;

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/fragment/widget/HtcTabHost;


# direct methods
.method private constructor <init>(Lcom/htc/fragment/widget/HtcTabHost;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "tag"

    .prologue
    .line 635
    iput-object p1, p0, Lcom/htc/fragment/widget/HtcTabHost$TabSpec;->this$0:Lcom/htc/fragment/widget/HtcTabHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 636
    iput-object p2, p0, Lcom/htc/fragment/widget/HtcTabHost$TabSpec;->mTag:Ljava/lang/String;

    .line 637
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/fragment/widget/HtcTabHost;Ljava/lang/String;Lcom/htc/fragment/widget/HtcTabHost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 628
    invoke-direct {p0, p1, p2}, Lcom/htc/fragment/widget/HtcTabHost$TabSpec;-><init>(Lcom/htc/fragment/widget/HtcTabHost;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/fragment/widget/HtcTabHost$TabSpec;)Lcom/htc/fragment/widget/HtcTabHost$IndicatorStrategy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 628
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost$TabSpec;->mIndicatorStrategy:Lcom/htc/fragment/widget/HtcTabHost$IndicatorStrategy;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/fragment/widget/HtcTabHost$TabSpec;)Lcom/htc/fragment/widget/HtcTabHost$ContentStrategy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 628
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/HtcTabHost$ContentStrategy;

    return-object v0
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost$TabSpec;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(I)Lcom/htc/fragment/widget/HtcTabHost$TabSpec;
    .locals 3
    .parameter "viewId"

    .prologue
    .line 684
    new-instance v0, Lcom/htc/fragment/widget/HtcTabHost$ViewIdContentStrategy;

    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabHost$TabSpec;->this$0:Lcom/htc/fragment/widget/HtcTabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/htc/fragment/widget/HtcTabHost$ViewIdContentStrategy;-><init>(Lcom/htc/fragment/widget/HtcTabHost;ILcom/htc/fragment/widget/HtcTabHost$1;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/HtcTabHost$ContentStrategy;

    .line 685
    return-object p0
.end method

.method public setContent(Landroid/content/Intent;)Lcom/htc/fragment/widget/HtcTabHost$TabSpec;
    .locals 4
    .parameter "intent"

    .prologue
    .line 709
    new-instance v0, Lcom/htc/fragment/widget/HtcTabHost$IntentContentStrategy;

    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabHost$TabSpec;->this$0:Lcom/htc/fragment/widget/HtcTabHost;

    iget-object v2, p0, Lcom/htc/fragment/widget/HtcTabHost$TabSpec;->mTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/htc/fragment/widget/HtcTabHost$IntentContentStrategy;-><init>(Lcom/htc/fragment/widget/HtcTabHost;Ljava/lang/String;Landroid/content/Intent;Lcom/htc/fragment/widget/HtcTabHost$1;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/HtcTabHost$ContentStrategy;

    .line 710
    return-object p0
.end method

.method public setContent(Lcom/htc/fragment/widget/HtcTabHost$TabContentFactory;)Lcom/htc/fragment/widget/HtcTabHost$TabSpec;
    .locals 3
    .parameter "contentFactory"

    .prologue
    .line 697
    new-instance v0, Lcom/htc/fragment/widget/HtcTabHost$FactoryContentStrategy;

    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabHost$TabSpec;->this$0:Lcom/htc/fragment/widget/HtcTabHost;

    iget-object v2, p0, Lcom/htc/fragment/widget/HtcTabHost$TabSpec;->mTag:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/htc/fragment/widget/HtcTabHost$FactoryContentStrategy;-><init>(Lcom/htc/fragment/widget/HtcTabHost;Ljava/lang/CharSequence;Lcom/htc/fragment/widget/HtcTabHost$TabContentFactory;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/HtcTabHost$ContentStrategy;

    .line 698
    return-object p0
.end method

.method public setIndicator(Landroid/view/View;)Lcom/htc/fragment/widget/HtcTabHost$TabSpec;
    .locals 3
    .parameter "view"

    .prologue
    .line 671
    new-instance v0, Lcom/htc/fragment/widget/HtcTabHost$ViewIndicatorStrategy;

    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabHost$TabSpec;->this$0:Lcom/htc/fragment/widget/HtcTabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/htc/fragment/widget/HtcTabHost$ViewIndicatorStrategy;-><init>(Lcom/htc/fragment/widget/HtcTabHost;Landroid/view/View;Lcom/htc/fragment/widget/HtcTabHost$1;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost$TabSpec;->mIndicatorStrategy:Lcom/htc/fragment/widget/HtcTabHost$IndicatorStrategy;

    .line 672
    return-object p0
.end method

.method public setIndicator(Ljava/lang/CharSequence;)Lcom/htc/fragment/widget/HtcTabHost$TabSpec;
    .locals 3
    .parameter "label"

    .prologue
    .line 647
    new-instance v0, Lcom/htc/fragment/widget/HtcTabHost$LabelIndicatorStrategy;

    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabHost$TabSpec;->this$0:Lcom/htc/fragment/widget/HtcTabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/htc/fragment/widget/HtcTabHost$LabelIndicatorStrategy;-><init>(Lcom/htc/fragment/widget/HtcTabHost;Ljava/lang/CharSequence;Lcom/htc/fragment/widget/HtcTabHost$1;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost$TabSpec;->mIndicatorStrategy:Lcom/htc/fragment/widget/HtcTabHost$IndicatorStrategy;

    .line 648
    return-object p0
.end method

.method public setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/fragment/widget/HtcTabHost$TabSpec;
    .locals 3
    .parameter "label"
    .parameter "icon"

    .prologue
    .line 659
    new-instance v0, Lcom/htc/fragment/widget/HtcTabHost$LabelAndIconIndicatorStrategy;

    iget-object v1, p0, Lcom/htc/fragment/widget/HtcTabHost$TabSpec;->this$0:Lcom/htc/fragment/widget/HtcTabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/htc/fragment/widget/HtcTabHost$LabelAndIconIndicatorStrategy;-><init>(Lcom/htc/fragment/widget/HtcTabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/htc/fragment/widget/HtcTabHost$1;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/HtcTabHost$TabSpec;->mIndicatorStrategy:Lcom/htc/fragment/widget/HtcTabHost$IndicatorStrategy;

    .line 660
    return-object p0
.end method
