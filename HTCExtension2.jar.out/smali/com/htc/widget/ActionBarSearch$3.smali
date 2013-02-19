.class Lcom/htc/widget/ActionBarSearch$3;
.super Ljava/lang/Object;
.source "ActionBarSearch.java"

# interfaces
.implements Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;


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
    .line 404
    iput-object p1, p0, Lcom/htc/widget/ActionBarSearch$3;->this$0:Lcom/htc/widget/ActionBarSearch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/htc/widget/HtcCompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 407
    iget-object v0, p0, Lcom/htc/widget/ActionBarSearch$3;->this$0:Lcom/htc/widget/ActionBarSearch;

    #getter for: Lcom/htc/widget/ActionBarSearch;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/htc/widget/ActionBarSearch;->access$000(Lcom/htc/widget/ActionBarSearch;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 408
    iget-object v0, p0, Lcom/htc/widget/ActionBarSearch$3;->this$0:Lcom/htc/widget/ActionBarSearch;

    #getter for: Lcom/htc/widget/ActionBarSearch;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/htc/widget/ActionBarSearch;->access$000(Lcom/htc/widget/ActionBarSearch;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/ActionBarSearch$3;->this$0:Lcom/htc/widget/ActionBarSearch;

    #getter for: Lcom/htc/widget/ActionBarSearch;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/htc/widget/ActionBarSearch;->access$000(Lcom/htc/widget/ActionBarSearch;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/ActionBarSearch$3;->this$0:Lcom/htc/widget/ActionBarSearch;

    #getter for: Lcom/htc/widget/ActionBarSearch;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/htc/widget/ActionBarSearch;->access$000(Lcom/htc/widget/ActionBarSearch;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/ActionBarSearch$3;->this$0:Lcom/htc/widget/ActionBarSearch;

    #getter for: Lcom/htc/widget/ActionBarSearch;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/htc/widget/ActionBarSearch;->access$000(Lcom/htc/widget/ActionBarSearch;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 413
    iget-object v0, p0, Lcom/htc/widget/ActionBarSearch$3;->this$0:Lcom/htc/widget/ActionBarSearch;

    #getter for: Lcom/htc/widget/ActionBarSearch;->searchButton:Lcom/htc/widget/HtcCompoundButton;
    invoke-static {v0}, Lcom/htc/widget/ActionBarSearch;->access$100(Lcom/htc/widget/ActionBarSearch;)Lcom/htc/widget/HtcCompoundButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcCompoundButton;->setChecked(Z)V

    .line 414
    :cond_1
    return-void
.end method
