.class Lcom/htc/widget/HtcNumberPicker$TableAdapter;
.super Landroid/widget/BaseAdapter;
.source "HtcNumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TableAdapter"
.end annotation


# instance fields
.field private mCandidates:[Ljava/lang/String;

.field protected mCount:I

.field public mData:[I

.field protected mEnd:I

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mLayout:Landroid/widget/RelativeLayout;

.field protected mStart:I

.field final synthetic this$0:Lcom/htc/widget/HtcNumberPicker;


# direct methods
.method public constructor <init>(Lcom/htc/widget/HtcNumberPicker;II)V
    .locals 3
    .parameter
    .parameter "start"
    .parameter "end"

    .prologue
    .line 555
    iput-object p1, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 550
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mCandidates:[Ljava/lang/String;

    .line 556
    iput p2, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mStart:I

    .line 557
    iput p3, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mEnd:I

    .line 558
    sub-int v1, p3, p2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mCount:I

    .line 559
    iget v1, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mData:[I

    .line 560
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mCount:I

    if-ge v0, v1, :cond_0

    .line 561
    iget-object v1, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mData:[I

    iget v2, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mCount:I

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v2, p2

    aput v2, v1, v0

    .line 560
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 563
    :cond_0
    #getter for: Lcom/htc/widget/HtcNumberPicker;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/widget/HtcNumberPicker;->access$100(Lcom/htc/widget/HtcNumberPicker;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 564
    return-void
.end method

.method public constructor <init>(Lcom/htc/widget/HtcNumberPicker;II[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "start"
    .parameter "end"
    .parameter "candidates"

    .prologue
    .line 571
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcNumberPicker$TableAdapter;-><init>(Lcom/htc/widget/HtcNumberPicker;II)V

    .line 572
    iget v1, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mCount:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mCandidates:[Ljava/lang/String;

    .line 573
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mCount:I

    if-ge v0, v1, :cond_0

    .line 574
    iget-object v1, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mCandidates:[Ljava/lang/String;

    aget-object v2, p4, v0

    aput-object v2, v1, v0

    .line 573
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 576
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 583
    iget v0, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mCount:I

    return v0
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 599
    iget v0, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mEnd:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 608
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 616
    int-to-long v0, p1

    return-wide v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 591
    iget v0, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mStart:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 624
    if-eqz p2, :cond_8

    .line 625
    check-cast p2, Landroid/widget/RelativeLayout;

    .end local p2
    iput-object p2, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mLayout:Landroid/widget/RelativeLayout;

    .line 633
    :goto_0
    iget-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mLayout:Landroid/widget/RelativeLayout;

    const v9, 0x2020060

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 635
    .local v5, tv:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mLayout:Landroid/widget/RelativeLayout;

    const v9, 0x202005f

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 636
    .local v7, tv_shadow_top:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mLayout:Landroid/widget/RelativeLayout;

    const v9, 0x202005e

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 638
    .local v6, tv_shadow_bottom:Landroid/widget/TextView;
    if-eqz v5, :cond_7

    .line 639
    iget-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->mCustomShadow:Z
    invoke-static {v8}, Lcom/htc/widget/HtcNumberPicker;->access$200(Lcom/htc/widget/HtcNumberPicker;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->mChangeTextColor:Z
    invoke-static {v8}, Lcom/htc/widget/HtcNumberPicker;->access$300(Lcom/htc/widget/HtcNumberPicker;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->mChangeBkg:Z
    invoke-static {v8}, Lcom/htc/widget/HtcNumberPicker;->access$400(Lcom/htc/widget/HtcNumberPicker;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 640
    :cond_0
    iget-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->mChangeTextColor:Z
    invoke-static {v8}, Lcom/htc/widget/HtcNumberPicker;->access$300(Lcom/htc/widget/HtcNumberPicker;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->mTextColor:I
    invoke-static {v8}, Lcom/htc/widget/HtcNumberPicker;->access$500(Lcom/htc/widget/HtcNumberPicker;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 642
    :cond_1
    iget-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->mCustomShadow:Z
    invoke-static {v8}, Lcom/htc/widget/HtcNumberPicker;->access$200(Lcom/htc/widget/HtcNumberPicker;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v7, :cond_2

    if-eqz v6, :cond_2

    .line 643
    iget-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->shadow3rd:Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v8}, Lcom/htc/widget/HtcNumberPicker;->access$600(Lcom/htc/widget/HtcNumberPicker;)Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v8

    if-nez v8, :cond_a

    iget-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->shadow1st:Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v8}, Lcom/htc/widget/HtcNumberPicker;->access$700(Lcom/htc/widget/HtcNumberPicker;)Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->shadow2nd:Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v8}, Lcom/htc/widget/HtcNumberPicker;->access$800(Lcom/htc/widget/HtcNumberPicker;)Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 644
    iget-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->shadow1st:Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v8}, Lcom/htc/widget/HtcNumberPicker;->access$700(Lcom/htc/widget/HtcNumberPicker;)Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v8

    #getter for: Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->radius:F
    invoke-static {v8}, Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->access$900(Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;)F

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->shadow1st:Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v9}, Lcom/htc/widget/HtcNumberPicker;->access$700(Lcom/htc/widget/HtcNumberPicker;)Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v9

    #getter for: Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->dx:F
    invoke-static {v9}, Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->access$1000(Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;)F

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->shadow1st:Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v10}, Lcom/htc/widget/HtcNumberPicker;->access$700(Lcom/htc/widget/HtcNumberPicker;)Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v10

    #getter for: Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->dy:F
    invoke-static {v10}, Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->access$1100(Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;)F

    move-result v10

    iget-object v11, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->shadow1st:Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v11}, Lcom/htc/widget/HtcNumberPicker;->access$700(Lcom/htc/widget/HtcNumberPicker;)Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v11

    #getter for: Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->shadowColor:I
    invoke-static {v11}, Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->access$1200(Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;)I

    move-result v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 645
    iget-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->shadow2nd:Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v8}, Lcom/htc/widget/HtcNumberPicker;->access$800(Lcom/htc/widget/HtcNumberPicker;)Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v8

    #getter for: Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->radius:F
    invoke-static {v8}, Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->access$900(Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;)F

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->shadow2nd:Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v9}, Lcom/htc/widget/HtcNumberPicker;->access$800(Lcom/htc/widget/HtcNumberPicker;)Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v9

    #getter for: Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->dx:F
    invoke-static {v9}, Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->access$1000(Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;)F

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->shadow2nd:Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v10}, Lcom/htc/widget/HtcNumberPicker;->access$800(Lcom/htc/widget/HtcNumberPicker;)Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v10

    #getter for: Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->dy:F
    invoke-static {v10}, Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->access$1100(Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;)F

    move-result v10

    iget-object v11, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->shadow2nd:Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v11}, Lcom/htc/widget/HtcNumberPicker;->access$800(Lcom/htc/widget/HtcNumberPicker;)Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v11

    #getter for: Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->shadowColor:I
    invoke-static {v11}, Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->access$1200(Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;)I

    move-result v11

    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 654
    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mCandidates:[Ljava/lang/String;

    if-eqz v8, :cond_e

    .line 655
    iget-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mCandidates:[Ljava/lang/String;

    aget-object v8, v8, p1

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    iget-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mCandidates:[Ljava/lang/String;

    aget-object v8, v8, p1

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mCandidates:[Ljava/lang/String;

    aget-object v8, v8, p1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x4

    if-le v8, v9, :cond_3

    .line 657
    const/high16 v8, 0x41a0

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 660
    :cond_3
    iget-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/widget/HtcNumberPicker;->access$100(Lcom/htc/widget/HtcNumberPicker;)Landroid/content/Context;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 661
    iget-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/widget/HtcNumberPicker;->access$100(Lcom/htc/widget/HtcNumberPicker;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "window"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 662
    .local v4, manager:Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 663
    .local v2, display:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v8

    const/16 v9, 0x500

    if-ne v8, v9, :cond_4

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v8

    const/16 v9, 0x320

    if-eq v8, v9, :cond_5

    :cond_4
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v8

    const/16 v9, 0x320

    if-ne v8, v9, :cond_b

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v8

    const/16 v9, 0x500

    if-ne v8, v9, :cond_b

    .line 665
    :cond_5
    const/high16 v8, 0x4248

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 703
    .end local v2           #display:Landroid/view/Display;
    .end local v4           #manager:Landroid/view/WindowManager;
    :cond_6
    :goto_2
    if-eqz v7, :cond_7

    if-eqz v6, :cond_7

    .line 704
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 709
    :cond_7
    iget-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mLayout:Landroid/widget/RelativeLayout;

    return-object v8

    .line 627
    .end local v5           #tv:Landroid/widget/TextView;
    .end local v6           #tv_shadow_bottom:Landroid/widget/TextView;
    .end local v7           #tv_shadow_top:Landroid/widget/TextView;
    .restart local p2
    :cond_8
    iget-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mCandidates:[Ljava/lang/String;

    if-eqz v8, :cond_9

    .line 628
    iget-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x209000f

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mLayout:Landroid/widget/RelativeLayout;

    goto/16 :goto_0

    .line 630
    :cond_9
    iget-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x2090067

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mLayout:Landroid/widget/RelativeLayout;

    goto/16 :goto_0

    .line 646
    .end local p2
    .restart local v5       #tv:Landroid/widget/TextView;
    .restart local v6       #tv_shadow_bottom:Landroid/widget/TextView;
    .restart local v7       #tv_shadow_top:Landroid/widget/TextView;
    :cond_a
    iget-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->shadow3rd:Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v8}, Lcom/htc/widget/HtcNumberPicker;->access$600(Lcom/htc/widget/HtcNumberPicker;)Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->shadow1st:Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v8}, Lcom/htc/widget/HtcNumberPicker;->access$700(Lcom/htc/widget/HtcNumberPicker;)Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->shadow2nd:Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v8}, Lcom/htc/widget/HtcNumberPicker;->access$800(Lcom/htc/widget/HtcNumberPicker;)Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 647
    iget-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->shadow1st:Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v8}, Lcom/htc/widget/HtcNumberPicker;->access$700(Lcom/htc/widget/HtcNumberPicker;)Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v8

    #getter for: Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->radius:F
    invoke-static {v8}, Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->access$900(Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;)F

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->shadow1st:Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v9}, Lcom/htc/widget/HtcNumberPicker;->access$700(Lcom/htc/widget/HtcNumberPicker;)Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v9

    #getter for: Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->dx:F
    invoke-static {v9}, Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->access$1000(Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;)F

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->shadow1st:Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v10}, Lcom/htc/widget/HtcNumberPicker;->access$700(Lcom/htc/widget/HtcNumberPicker;)Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v10

    #getter for: Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->dy:F
    invoke-static {v10}, Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->access$1100(Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;)F

    move-result v10

    iget-object v11, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->shadow1st:Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v11}, Lcom/htc/widget/HtcNumberPicker;->access$700(Lcom/htc/widget/HtcNumberPicker;)Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v11

    #getter for: Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->shadowColor:I
    invoke-static {v11}, Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->access$1200(Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;)I

    move-result v11

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 648
    iget-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->shadow2nd:Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v8}, Lcom/htc/widget/HtcNumberPicker;->access$800(Lcom/htc/widget/HtcNumberPicker;)Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v8

    #getter for: Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->radius:F
    invoke-static {v8}, Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->access$900(Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;)F

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->shadow2nd:Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v9}, Lcom/htc/widget/HtcNumberPicker;->access$800(Lcom/htc/widget/HtcNumberPicker;)Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v9

    #getter for: Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->dx:F
    invoke-static {v9}, Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->access$1000(Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;)F

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->shadow2nd:Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v10}, Lcom/htc/widget/HtcNumberPicker;->access$800(Lcom/htc/widget/HtcNumberPicker;)Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v10

    #getter for: Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->dy:F
    invoke-static {v10}, Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->access$1100(Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;)F

    move-result v10

    iget-object v11, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->shadow2nd:Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v11}, Lcom/htc/widget/HtcNumberPicker;->access$800(Lcom/htc/widget/HtcNumberPicker;)Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v11

    #getter for: Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->shadowColor:I
    invoke-static {v11}, Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->access$1200(Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;)I

    move-result v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 649
    iget-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->shadow3rd:Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v8}, Lcom/htc/widget/HtcNumberPicker;->access$600(Lcom/htc/widget/HtcNumberPicker;)Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v8

    #getter for: Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->radius:F
    invoke-static {v8}, Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->access$900(Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;)F

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->shadow3rd:Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v9}, Lcom/htc/widget/HtcNumberPicker;->access$600(Lcom/htc/widget/HtcNumberPicker;)Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v9

    #getter for: Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->dx:F
    invoke-static {v9}, Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->access$1000(Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;)F

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->shadow3rd:Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v10}, Lcom/htc/widget/HtcNumberPicker;->access$600(Lcom/htc/widget/HtcNumberPicker;)Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v10

    #getter for: Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->dy:F
    invoke-static {v10}, Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->access$1100(Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;)F

    move-result v10

    iget-object v11, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->shadow3rd:Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;
    invoke-static {v11}, Lcom/htc/widget/HtcNumberPicker;->access$600(Lcom/htc/widget/HtcNumberPicker;)Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;

    move-result-object v11

    #getter for: Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->shadowColor:I
    invoke-static {v11}, Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;->access$1200(Lcom/htc/widget/HtcNumberPicker$NumberTextShadow;)I

    move-result v11

    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_1

    .line 666
    .restart local v2       #display:Landroid/view/Display;
    .restart local v4       #manager:Landroid/view/WindowManager;
    :cond_b
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v8

    const/16 v9, 0x400

    if-ne v8, v9, :cond_c

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v8

    const/16 v9, 0x228

    if-eq v8, v9, :cond_d

    :cond_c
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v8

    const/16 v9, 0x258

    if-ne v8, v9, :cond_6

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v8

    const/16 v9, 0x3d0

    if-ne v8, v9, :cond_6

    .line 669
    :cond_d
    iget-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/widget/HtcNumberPicker;->access$100(Lcom/htc/widget/HtcNumberPicker;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x20501e4

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 670
    .local v0, ampmTextSize:I
    int-to-float v8, v0

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_2

    .line 673
    .end local v0           #ampmTextSize:I
    .end local v2           #display:Landroid/view/Display;
    .end local v4           #manager:Landroid/view/WindowManager;
    :cond_e
    iget v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mCount:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_11

    iget-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mData:[I

    if-eqz v8, :cond_11

    .line 675
    iget-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mData:[I

    aget v8, v8, p1

    const/16 v9, 0xa

    if-ge v8, v9, :cond_10

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mData:[I

    aget v9, v9, p1

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 676
    .local v1, candidate:Ljava/lang/String;
    :goto_3
    iget-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->mDigits:I
    invoke-static {v8}, Lcom/htc/widget/HtcNumberPicker;->access$1300(Lcom/htc/widget/HtcNumberPicker;)I

    move-result v8

    if-lez v8, :cond_f

    .line 677
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 678
    .local v3, len:I
    iget-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->mDigits:I
    invoke-static {v8}, Lcom/htc/widget/HtcNumberPicker;->access$1300(Lcom/htc/widget/HtcNumberPicker;)I

    move-result v8

    sub-int v8, v3, v8

    invoke-virtual {v1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 681
    .end local v3           #len:I
    :cond_f
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 675
    .end local v1           #candidate:Ljava/lang/String;
    :cond_10
    iget-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mData:[I

    aget v8, v8, p1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 688
    :cond_11
    if-nez p1, :cond_14

    iget-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->AM:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/widget/HtcNumberPicker;->access$1400(Lcom/htc/widget/HtcNumberPicker;)Ljava/lang/String;

    move-result-object v8

    :goto_4
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    iget-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/widget/HtcNumberPicker;->access$100(Lcom/htc/widget/HtcNumberPicker;)Landroid/content/Context;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 690
    iget-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/widget/HtcNumberPicker;->access$100(Lcom/htc/widget/HtcNumberPicker;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "window"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 691
    .restart local v4       #manager:Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 692
    .restart local v2       #display:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v8

    const/16 v9, 0x140

    if-ne v8, v9, :cond_12

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v8

    const/16 v9, 0xf0

    if-eq v8, v9, :cond_13

    :cond_12
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v8

    const/16 v9, 0xf0

    if-ne v8, v9, :cond_15

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v8

    const/16 v9, 0x140

    if-ne v8, v9, :cond_15

    .line 694
    :cond_13
    const/high16 v8, 0x41b0

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 698
    :goto_5
    const/4 v2, 0x0

    .line 699
    goto/16 :goto_2

    .line 688
    .end local v2           #display:Landroid/view/Display;
    .end local v4           #manager:Landroid/view/WindowManager;
    :cond_14
    iget-object v8, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->this$0:Lcom/htc/widget/HtcNumberPicker;

    #getter for: Lcom/htc/widget/HtcNumberPicker;->PM:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/widget/HtcNumberPicker;->access$1500(Lcom/htc/widget/HtcNumberPicker;)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 696
    .restart local v2       #display:Landroid/view/Display;
    .restart local v4       #manager:Landroid/view/WindowManager;
    :cond_15
    const/high16 v8, 0x41d0

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_5
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 717
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->mData:[I

    .line 718
    return-void
.end method
