.class Lcom/htc/widget/ActionBarSearch$2;
.super Ljava/lang/Object;
.source "ActionBarSearch.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/ActionBarSearch;->setupAutomotiveMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/ActionBarSearch;


# direct methods
.method constructor <init>(Lcom/htc/widget/ActionBarSearch;)V
    .locals 0
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/htc/widget/ActionBarSearch$2;->this$0:Lcom/htc/widget/ActionBarSearch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "table"

    .prologue
    .line 391
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "string"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 392
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "string"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 397
    iget-object v2, p0, Lcom/htc/widget/ActionBarSearch$2;->this$0:Lcom/htc/widget/ActionBarSearch;

    #getter for: Lcom/htc/widget/ActionBarSearch;->searchButton:Lcom/htc/widget/HtcCompoundButton;
    invoke-static {v2}, Lcom/htc/widget/ActionBarSearch;->access$100(Lcom/htc/widget/ActionBarSearch;)Lcom/htc/widget/HtcCompoundButton;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/ActionBarSearch$2;->this$0:Lcom/htc/widget/ActionBarSearch;

    #getter for: Lcom/htc/widget/ActionBarSearch;->searchButton:Lcom/htc/widget/HtcCompoundButton;
    invoke-static {v2}, Lcom/htc/widget/ActionBarSearch;->access$100(Lcom/htc/widget/ActionBarSearch;)Lcom/htc/widget/HtcCompoundButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcCompoundButton;->isChecked()Z

    move-result v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v0

    :goto_0
    if-eq v3, v2, :cond_0

    .line 398
    iget-object v2, p0, Lcom/htc/widget/ActionBarSearch$2;->this$0:Lcom/htc/widget/ActionBarSearch;

    #getter for: Lcom/htc/widget/ActionBarSearch;->searchButton:Lcom/htc/widget/HtcCompoundButton;
    invoke-static {v2}, Lcom/htc/widget/ActionBarSearch;->access$100(Lcom/htc/widget/ActionBarSearch;)Lcom/htc/widget/HtcCompoundButton;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcCompoundButton;->setChecked(Z)V

    .line 399
    :cond_0
    return-void

    :cond_1
    move v2, v1

    .line 397
    goto :goto_0

    :cond_2
    move v0, v1

    .line 398
    goto :goto_1
.end method
