.class Lcom/htc/app/FilePickerTypeFragment$5;
.super Ljava/lang/Object;
.source "FilePickerTypeFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerTypeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerTypeFragment;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerTypeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/htc/app/FilePickerTypeFragment$5;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 242
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 245
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/htc/app/FilePickerTypeFragment$5;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    #getter for: Lcom/htc/app/FilePickerTypeFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;
    invoke-static {v0}, Lcom/htc/app/FilePickerTypeFragment;->access$500(Lcom/htc/app/FilePickerTypeFragment;)Lcom/htc/app/FilePickerCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/htc/app/FilePickerTypeFragment$5;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    #getter for: Lcom/htc/app/FilePickerTypeFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;
    invoke-static {v0}, Lcom/htc/app/FilePickerTypeFragment;->access$500(Lcom/htc/app/FilePickerTypeFragment;)Lcom/htc/app/FilePickerCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/app/FilePickerCore;->dispatchSearchKey(Ljava/lang/CharSequence;)V

    .line 250
    :cond_0
    return-void
.end method
