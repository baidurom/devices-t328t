.class Lcom/htc/widget/HtcActionBar$ShowSearchBoxClickListener;
.super Ljava/lang/Object;
.source "HtcActionBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShowSearchBoxClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcActionBar;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcActionBar;)V
    .locals 0
    .parameter

    .prologue
    .line 3167
    iput-object p1, p0, Lcom/htc/widget/HtcActionBar$ShowSearchBoxClickListener;->this$0:Lcom/htc/widget/HtcActionBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 3173
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar$ShowSearchBoxClickListener;->this$0:Lcom/htc/widget/HtcActionBar;

    #getter for: Lcom/htc/widget/HtcActionBar;->mSearchBoxContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/htc/widget/HtcActionBar;->access$400(Lcom/htc/widget/HtcActionBar;)Landroid/widget/LinearLayout;

    move-result-object v1

    const v2, 0x20200e0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/DropDownList;

    .line 3177
    .local v0, button:Lcom/htc/widget/DropDownList;
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar$ShowSearchBoxClickListener;->this$0:Lcom/htc/widget/HtcActionBar;

    #getter for: Lcom/htc/widget/HtcActionBar;->mIsSearchBoxEnabled:Z
    invoke-static {v1}, Lcom/htc/widget/HtcActionBar;->access$500(Lcom/htc/widget/HtcActionBar;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcActionBar$ShowSearchBoxClickListener;->this$0:Lcom/htc/widget/HtcActionBar;

    #getter for: Lcom/htc/widget/HtcActionBar;->mSearchBox:Lcom/htc/widget/SearchBoxView;
    invoke-static {v1}, Lcom/htc/widget/HtcActionBar;->access$600(Lcom/htc/widget/HtcActionBar;)Lcom/htc/widget/SearchBoxView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/SearchBoxView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 3178
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar$ShowSearchBoxClickListener;->this$0:Lcom/htc/widget/HtcActionBar;

    #getter for: Lcom/htc/widget/HtcActionBar;->mSearchBox:Lcom/htc/widget/SearchBoxView;
    invoke-static {v1}, Lcom/htc/widget/HtcActionBar;->access$600(Lcom/htc/widget/HtcActionBar;)Lcom/htc/widget/SearchBoxView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/SearchBoxView;->setVisibility(I)V

    .line 3179
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar$ShowSearchBoxClickListener;->this$0:Lcom/htc/widget/HtcActionBar;

    #getter for: Lcom/htc/widget/HtcActionBar;->mSearchBox:Lcom/htc/widget/SearchBoxView;
    invoke-static {v1}, Lcom/htc/widget/HtcActionBar;->access$600(Lcom/htc/widget/HtcActionBar;)Lcom/htc/widget/SearchBoxView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/widget/SearchBoxView;->setFocusable(Z)V

    .line 3180
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar$ShowSearchBoxClickListener;->this$0:Lcom/htc/widget/HtcActionBar;

    #getter for: Lcom/htc/widget/HtcActionBar;->mSearchBox:Lcom/htc/widget/SearchBoxView;
    invoke-static {v1}, Lcom/htc/widget/HtcActionBar;->access$600(Lcom/htc/widget/HtcActionBar;)Lcom/htc/widget/SearchBoxView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/SearchBoxView;->requestFocus()Z

    .line 3181
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar$ShowSearchBoxClickListener;->this$0:Lcom/htc/widget/HtcActionBar;

    #calls: Lcom/htc/widget/HtcActionBar;->setupSearchBox()V
    invoke-static {v1}, Lcom/htc/widget/HtcActionBar;->access$700(Lcom/htc/widget/HtcActionBar;)V

    .line 3182
    invoke-virtual {v0, v3}, Lcom/htc/widget/DropDownList;->setIsGainFocusAndPerformClick(Z)V

    .line 3184
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar$ShowSearchBoxClickListener;->this$0:Lcom/htc/widget/HtcActionBar;

    #getter for: Lcom/htc/widget/HtcActionBar;->mIsSearchBoxEnabled:Z
    invoke-static {v1}, Lcom/htc/widget/HtcActionBar;->access$500(Lcom/htc/widget/HtcActionBar;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3185
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar$ShowSearchBoxClickListener;->this$0:Lcom/htc/widget/HtcActionBar;

    #getter for: Lcom/htc/widget/HtcActionBar;->mOnShowSearchBoxListener:Lcom/htc/widget/HtcActionBar$OnShowSearchBoxListener;
    invoke-static {v1}, Lcom/htc/widget/HtcActionBar;->access$800(Lcom/htc/widget/HtcActionBar;)Lcom/htc/widget/HtcActionBar$OnShowSearchBoxListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/HtcActionBar$ShowSearchBoxClickListener;->this$0:Lcom/htc/widget/HtcActionBar;

    #getter for: Lcom/htc/widget/HtcActionBar;->mOnShowSearchBoxListener:Lcom/htc/widget/HtcActionBar$OnShowSearchBoxListener;
    invoke-static {v1}, Lcom/htc/widget/HtcActionBar;->access$800(Lcom/htc/widget/HtcActionBar;)Lcom/htc/widget/HtcActionBar$OnShowSearchBoxListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/widget/HtcActionBar$OnShowSearchBoxListener;->onClick()V

    .line 3186
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcActionBar$ShowSearchBoxClickListener;->this$0:Lcom/htc/widget/HtcActionBar;

    #getter for: Lcom/htc/widget/HtcActionBar;->mSearchBoxListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/htc/widget/HtcActionBar;->access$900(Lcom/htc/widget/HtcActionBar;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/DropDownList;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3188
    :cond_2
    return-void
.end method
