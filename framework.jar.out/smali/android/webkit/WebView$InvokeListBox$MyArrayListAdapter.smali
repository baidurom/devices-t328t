.class Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView$InvokeListBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyArrayListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/webkit/WebView$InvokeListBox$Container;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebView$InvokeListBox;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView$InvokeListBox;)V
    .locals 4
    .parameter

    .prologue
    .line 10776
    iput-object p1, p0, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->this$1:Landroid/webkit/WebView$InvokeListBox;

    .line 10777
    iget-object v0, p1, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/webkit/WebView;->access$11400(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v1

    #getter for: Landroid/webkit/WebView$InvokeListBox;->mMultiple:Z
    invoke-static {p1}, Landroid/webkit/WebView$InvokeListBox;->access$11500(Landroid/webkit/WebView$InvokeListBox;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x2090085

    :goto_0
    const v2, 0x1020014

    #getter for: Landroid/webkit/WebView$InvokeListBox;->mContainers:[Landroid/webkit/WebView$InvokeListBox$Container;
    invoke-static {p1}, Landroid/webkit/WebView$InvokeListBox;->access$11600(Landroid/webkit/WebView$InvokeListBox;)[Landroid/webkit/WebView$InvokeListBox$Container;

    move-result-object v3

    invoke-direct {p0, v1, v0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 10786
    return-void

    .line 10777
    :cond_0
    const v0, 0x2090007

    goto :goto_0
.end method

.method private item(I)Landroid/webkit/WebView$InvokeListBox$Container;
    .locals 1
    .parameter "position"

    .prologue
    .line 10877
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 10878
    :cond_0
    const/4 v0, 0x0

    .line 10880
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView$InvokeListBox$Container;

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 10894
    const/4 v0, 0x0

    return v0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 10885
    invoke-direct {p0, p1}, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->item(I)Landroid/webkit/WebView$InvokeListBox$Container;

    move-result-object v0

    .line 10886
    .local v0, item:Landroid/webkit/WebView$InvokeListBox$Container;
    if-nez v0, :cond_0

    .line 10887
    const-wide/16 v1, -0x1

    .line 10889
    :goto_0
    return-wide v1

    :cond_0
    iget v1, v0, Landroid/webkit/WebView$InvokeListBox$Container;->mId:I

    int-to-long v1, v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 10804
    invoke-direct {p0, p1}, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->item(I)Landroid/webkit/WebView$InvokeListBox$Container;

    move-result-object v0

    .line 10806
    .local v0, c:Landroid/webkit/WebView$InvokeListBox$Container;
    if-eqz v0, :cond_0

    const/4 v8, -0x1

    iget v9, v0, Landroid/webkit/WebView$InvokeListBox$Container;->mEnabled:I

    if-ne v8, v9, :cond_0

    .line 10807
    new-instance v1, Landroid/widget/CheckedTextView;

    iget-object v8, p0, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iget-object v8, v8, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v8}, Landroid/webkit/WebView;->access$11700(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;)V

    .line 10808
    .local v1, ctv:Landroid/widget/CheckedTextView;
    invoke-virtual {p0, p1}, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/webkit/WebView$InvokeListBox$Container;

    invoke-virtual {v8}, Landroid/webkit/WebView$InvokeListBox$Container;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 10809
    iget-object v8, p0, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iget-object v8, v8, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v8}, Landroid/webkit/WebView;->access$11800(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v7, v8, Landroid/util/DisplayMetrics;->density:F

    .line 10810
    .local v7, scale:F
    const/high16 v8, 0x4140

    mul-float/2addr v8, v7

    float-to-int v5, v8

    .line 10811
    .local v5, nPaddingLeft:I
    const/high16 v8, 0x40e0

    mul-float/2addr v8, v7

    float-to-int v6, v8

    .line 10812
    .local v6, nPaddingRight:I
    iget-object v8, p0, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iget-object v8, v8, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v8}, Landroid/webkit/WebView;->access$11900(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x2030038

    invoke-virtual {v1, v8, v9}, Landroid/widget/CheckedTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 10814
    const v8, 0x2080099

    invoke-virtual {v1, v8}, Landroid/widget/CheckedTextView;->setBackgroundResource(I)V

    .line 10815
    const/16 v8, 0x10

    invoke-virtual {v1, v8}, Landroid/widget/CheckedTextView;->setGravity(I)V

    .line 10816
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1, v5, v8, v6, v9}, Landroid/widget/CheckedTextView;->setPadding(IIII)V

    .line 10817
    iget-object v8, p0, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iget-object v8, v8, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v8}, Landroid/webkit/WebView;->access$12000(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x2050012

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 10818
    .local v3, list_height:I
    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setMinHeight(I)V

    .line 10819
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v4, v8, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 10820
    .local v4, lp:Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v1, v4}, Landroid/widget/CheckedTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10821
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v8}, Landroid/widget/CheckedTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 10822
    move-object p2, v1

    .line 10828
    .end local v1           #ctv:Landroid/widget/CheckedTextView;
    .end local v3           #list_height:I
    .end local v4           #lp:Landroid/widget/AbsListView$LayoutParams;
    .end local v5           #nPaddingLeft:I
    .end local v6           #nPaddingRight:I
    .end local v7           #scale:F
    :goto_0
    if-eqz v0, :cond_2

    const/4 v8, 0x1

    iget v9, v0, Landroid/webkit/WebView$InvokeListBox$Container;->mEnabled:I

    if-eq v8, v9, :cond_2

    .line 10831
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v8, p0, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iget-object v8, v8, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v8}, Landroid/webkit/WebView;->access$12100(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 10832
    .local v2, layout:Landroid/widget/LinearLayout;
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 10840
    const/4 v8, -0x1

    iget v9, v0, Landroid/webkit/WebView$InvokeListBox$Container;->mEnabled:I

    if-ne v8, v9, :cond_1

    .line 10846
    instance-of v8, p2, Landroid/widget/CheckedTextView;

    invoke-static {v8}, Ljunit/framework/Assert;->assertTrue(Z)V

    move-object v8, p2

    .line 10847
    check-cast v8, Landroid/widget/CheckedTextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10856
    :goto_1
    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 10865
    .end local v2           #layout:Landroid/widget/LinearLayout;
    :goto_2
    return-object v2

    .line 10824
    :cond_0
    const/4 v8, 0x0

    invoke-super {p0, p1, v8, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 10853
    .restart local v2       #layout:Landroid/widget/LinearLayout;
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .end local v2           #layout:Landroid/widget/LinearLayout;
    :cond_2
    move-object v2, p2

    .line 10865
    goto :goto_2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 10873
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 4
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 10899
    invoke-direct {p0, p1}, Landroid/webkit/WebView$InvokeListBox$MyArrayListAdapter;->item(I)Landroid/webkit/WebView$InvokeListBox$Container;

    move-result-object v0

    .line 10900
    .local v0, item:Landroid/webkit/WebView$InvokeListBox$Container;
    if-nez v0, :cond_0

    .line 10903
    :goto_0
    return v2

    :cond_0
    iget v3, v0, Landroid/webkit/WebView$InvokeListBox$Container;->mEnabled:I

    if-ne v1, v3, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
