.class Lcom/htc/widget/HtcTabHost$LabelAndIconIndicatorStrategy;
.super Ljava/lang/Object;
.source "HtcTabHost.java"

# interfaces
.implements Lcom/htc/widget/HtcTabHost$IndicatorStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelAndIconIndicatorStrategy"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mLabel:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/htc/widget/HtcTabHost;


# direct methods
.method private constructor <init>(Lcom/htc/widget/HtcTabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter "label"
    .parameter "icon"

    .prologue
    .line 677
    iput-object p1, p0, Lcom/htc/widget/HtcTabHost$LabelAndIconIndicatorStrategy;->this$0:Lcom/htc/widget/HtcTabHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 678
    iput-object p2, p0, Lcom/htc/widget/HtcTabHost$LabelAndIconIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    .line 679
    iput-object p3, p0, Lcom/htc/widget/HtcTabHost$LabelAndIconIndicatorStrategy;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 680
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/HtcTabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/htc/widget/HtcTabHost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 672
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcTabHost$LabelAndIconIndicatorStrategy;-><init>(Lcom/htc/widget/HtcTabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 8

    .prologue
    .line 687
    iget-object v5, p0, Lcom/htc/widget/HtcTabHost$LabelAndIconIndicatorStrategy;->this$0:Lcom/htc/widget/HtcTabHost;

    invoke-virtual {v5}, Lcom/htc/widget/HtcTabHost;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 688
    .local v0, context:Landroid/content/Context;
    const-string v5, "layout_inflater"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 690
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x109009d

    iget-object v6, p0, Lcom/htc/widget/HtcTabHost$LabelAndIconIndicatorStrategy;->this$0:Lcom/htc/widget/HtcTabHost;

    #getter for: Lcom/htc/widget/HtcTabHost;->mTabWidget:Lcom/htc/widget/HtcTabWidget;
    invoke-static {v6}, Lcom/htc/widget/HtcTabHost;->access$900(Lcom/htc/widget/HtcTabHost;)Lcom/htc/widget/HtcTabWidget;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 694
    .local v3, tabIndicator:Landroid/view/View;
    const v5, 0x1020016

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 695
    .local v4, tv:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/htc/widget/HtcTabHost$LabelAndIconIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 697
    const v5, 0x1020006

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 698
    .local v1, iconView:Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/htc/widget/HtcTabHost$LabelAndIconIndicatorStrategy;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 700
    const-string v5, "tab_indicator"

    const v6, 0x108057a

    invoke-static {v0, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 701
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v6, 0x4

    if-gt v5, v6, :cond_0

    .line 703
    const v5, 0x108057d

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 704
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x106007d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 707
    :cond_0
    return-object v3
.end method
