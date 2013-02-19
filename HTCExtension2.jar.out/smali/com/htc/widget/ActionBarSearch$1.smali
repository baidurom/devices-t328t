.class Lcom/htc/widget/ActionBarSearch$1;
.super Ljava/lang/Object;
.source "ActionBarSearch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/ActionBarSearch;
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
    .line 161
    iput-object p1, p0, Lcom/htc/widget/ActionBarSearch$1;->this$0:Lcom/htc/widget/ActionBarSearch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/htc/widget/ActionBarSearch$1;->this$0:Lcom/htc/widget/ActionBarSearch;

    #getter for: Lcom/htc/widget/ActionBarSearch;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/htc/widget/ActionBarSearch;->access$000(Lcom/htc/widget/ActionBarSearch;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/htc/widget/ActionBarSearch$1;->this$0:Lcom/htc/widget/ActionBarSearch;

    #getter for: Lcom/htc/widget/ActionBarSearch;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/htc/widget/ActionBarSearch;->access$000(Lcom/htc/widget/ActionBarSearch;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :cond_0
    return-void
.end method
