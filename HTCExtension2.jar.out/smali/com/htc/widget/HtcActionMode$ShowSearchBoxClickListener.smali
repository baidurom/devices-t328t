.class Lcom/htc/widget/HtcActionMode$ShowSearchBoxClickListener;
.super Ljava/lang/Object;
.source "HtcActionMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShowSearchBoxClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcActionMode;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcActionMode;)V
    .locals 0
    .parameter

    .prologue
    .line 1962
    iput-object p1, p0, Lcom/htc/widget/HtcActionMode$ShowSearchBoxClickListener;->this$0:Lcom/htc/widget/HtcActionMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const v2, 0x20200e0

    .line 1968
    const-string v0, "DropDownList"

    const-string v1, "ShowSearchBoxClickListener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    iget-object v0, p0, Lcom/htc/widget/HtcActionMode$ShowSearchBoxClickListener;->this$0:Lcom/htc/widget/HtcActionMode;

    #getter for: Lcom/htc/widget/HtcActionMode;->mIsSearchBoxEnabled:Z
    invoke-static {v0}, Lcom/htc/widget/HtcActionMode;->access$500(Lcom/htc/widget/HtcActionMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcActionMode$ShowSearchBoxClickListener;->this$0:Lcom/htc/widget/HtcActionMode;

    #getter for: Lcom/htc/widget/HtcActionMode;->mSearchBox:Lcom/htc/widget/SearchBoxView;
    invoke-static {v0}, Lcom/htc/widget/HtcActionMode;->access$600(Lcom/htc/widget/HtcActionMode;)Lcom/htc/widget/SearchBoxView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/SearchBoxView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1970
    iget-object v0, p0, Lcom/htc/widget/HtcActionMode$ShowSearchBoxClickListener;->this$0:Lcom/htc/widget/HtcActionMode;

    #getter for: Lcom/htc/widget/HtcActionMode;->mSearchBox:Lcom/htc/widget/SearchBoxView;
    invoke-static {v0}, Lcom/htc/widget/HtcActionMode;->access$600(Lcom/htc/widget/HtcActionMode;)Lcom/htc/widget/SearchBoxView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/SearchBoxView;->setVisibility(I)V

    .line 1971
    iget-object v0, p0, Lcom/htc/widget/HtcActionMode$ShowSearchBoxClickListener;->this$0:Lcom/htc/widget/HtcActionMode;

    #calls: Lcom/htc/widget/HtcActionMode;->setupSearchBox()V
    invoke-static {v0}, Lcom/htc/widget/HtcActionMode;->access$700(Lcom/htc/widget/HtcActionMode;)V

    .line 1972
    iget-object v0, p0, Lcom/htc/widget/HtcActionMode$ShowSearchBoxClickListener;->this$0:Lcom/htc/widget/HtcActionMode;

    #getter for: Lcom/htc/widget/HtcActionMode;->mSearchBoxContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/htc/widget/HtcActionMode;->access$800(Lcom/htc/widget/HtcActionMode;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/DropDownList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/DropDownList;->setIsGainFocusAndPerformClick(Z)V

    .line 1974
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcActionMode$ShowSearchBoxClickListener;->this$0:Lcom/htc/widget/HtcActionMode;

    #getter for: Lcom/htc/widget/HtcActionMode;->mIsSearchBoxEnabled:Z
    invoke-static {v0}, Lcom/htc/widget/HtcActionMode;->access$500(Lcom/htc/widget/HtcActionMode;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1975
    iget-object v0, p0, Lcom/htc/widget/HtcActionMode$ShowSearchBoxClickListener;->this$0:Lcom/htc/widget/HtcActionMode;

    #getter for: Lcom/htc/widget/HtcActionMode;->mOnShowSearchBoxListener:Lcom/htc/widget/HtcActionMode$OnShowSearchBoxListener;
    invoke-static {v0}, Lcom/htc/widget/HtcActionMode;->access$900(Lcom/htc/widget/HtcActionMode;)Lcom/htc/widget/HtcActionMode$OnShowSearchBoxListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcActionMode$ShowSearchBoxClickListener;->this$0:Lcom/htc/widget/HtcActionMode;

    #getter for: Lcom/htc/widget/HtcActionMode;->mOnShowSearchBoxListener:Lcom/htc/widget/HtcActionMode$OnShowSearchBoxListener;
    invoke-static {v0}, Lcom/htc/widget/HtcActionMode;->access$900(Lcom/htc/widget/HtcActionMode;)Lcom/htc/widget/HtcActionMode$OnShowSearchBoxListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/widget/HtcActionMode$OnShowSearchBoxListener;->onClick()V

    .line 1976
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcActionMode$ShowSearchBoxClickListener;->this$0:Lcom/htc/widget/HtcActionMode;

    #getter for: Lcom/htc/widget/HtcActionMode;->mSearchBoxContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/htc/widget/HtcActionMode;->access$800(Lcom/htc/widget/HtcActionMode;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/HtcActionMode$ShowSearchBoxClickListener;->this$0:Lcom/htc/widget/HtcActionMode;

    #getter for: Lcom/htc/widget/HtcActionMode;->mSearchBoxListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/htc/widget/HtcActionMode;->access$1000(Lcom/htc/widget/HtcActionMode;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1978
    :cond_2
    return-void
.end method
