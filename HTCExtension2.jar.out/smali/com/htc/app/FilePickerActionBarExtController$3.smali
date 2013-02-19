.class Lcom/htc/app/FilePickerActionBarExtController$3;
.super Ljava/lang/Object;
.source "FilePickerActionBarExtController.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerActionBarExtController;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerActionBarExtController;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerActionBarExtController;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/htc/app/FilePickerActionBarExtController$3;->this$0:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 70
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController$3;->this$0:Lcom/htc/app/FilePickerActionBarExtController;

    #getter for: Lcom/htc/app/FilePickerActionBarExtController;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;
    invoke-static {v0}, Lcom/htc/app/FilePickerActionBarExtController;->access$100(Lcom/htc/app/FilePickerActionBarExtController;)Lcom/htc/widget/ActionBarSearch;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarSearch;->setClearIconVisibility(I)V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController$3;->this$0:Lcom/htc/app/FilePickerActionBarExtController;

    #getter for: Lcom/htc/app/FilePickerActionBarExtController;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;
    invoke-static {v0}, Lcom/htc/app/FilePickerActionBarExtController;->access$100(Lcom/htc/app/FilePickerActionBarExtController;)Lcom/htc/widget/ActionBarSearch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarSearch;->setClearIconVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 80
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 85
    return-void
.end method
