.class Lcom/htc/widget/HtcTabHost1$LabelIndicatorStrategy;
.super Ljava/lang/Object;
.source "HtcTabHost1.java"

# interfaces
.implements Lcom/htc/widget/HtcTabHost1$IndicatorStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcTabHost1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelIndicatorStrategy"
.end annotation


# instance fields
.field private final mLabel:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/htc/widget/HtcTabHost1;


# direct methods
.method private constructor <init>(Lcom/htc/widget/HtcTabHost1;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter "label"

    .prologue
    .line 683
    iput-object p1, p0, Lcom/htc/widget/HtcTabHost1$LabelIndicatorStrategy;->this$0:Lcom/htc/widget/HtcTabHost1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 684
    iput-object p2, p0, Lcom/htc/widget/HtcTabHost1$LabelIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    .line 685
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/HtcTabHost1;Ljava/lang/CharSequence;Lcom/htc/widget/HtcTabHost1$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 679
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcTabHost1$LabelIndicatorStrategy;-><init>(Lcom/htc/widget/HtcTabHost1;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 7

    .prologue
    .line 692
    iget-object v4, p0, Lcom/htc/widget/HtcTabHost1$LabelIndicatorStrategy;->this$0:Lcom/htc/widget/HtcTabHost1;

    invoke-virtual {v4}, Lcom/htc/widget/HtcTabHost1;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 693
    .local v0, context:Landroid/content/Context;
    const-string v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 695
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x109009d

    iget-object v5, p0, Lcom/htc/widget/HtcTabHost1$LabelIndicatorStrategy;->this$0:Lcom/htc/widget/HtcTabHost1;

    #getter for: Lcom/htc/widget/HtcTabHost1;->mTabWidget:Lcom/htc/widget/HtcTabWidget1;
    invoke-static {v5}, Lcom/htc/widget/HtcTabHost1;->access$900(Lcom/htc/widget/HtcTabHost1;)Lcom/htc/widget/HtcTabWidget1;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 699
    .local v2, tabIndicator:Landroid/view/View;
    const v4, 0x1020016

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 700
    .local v3, tv:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/htc/widget/HtcTabHost1$LabelIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    const-string v4, "tab_indicator"

    const v5, 0x108057a

    invoke-static {v0, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 703
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v5, 0x4

    if-gt v4, v5, :cond_0

    .line 705
    const v4, 0x108057d

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 706
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106007d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 709
    :cond_0
    return-object v2
.end method
