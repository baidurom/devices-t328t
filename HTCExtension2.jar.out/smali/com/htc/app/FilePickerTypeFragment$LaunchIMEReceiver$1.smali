.class Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver$1;
.super Ljava/lang/Object;
.source "FilePickerTypeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;->reLaunchIME()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver$1;->this$1:Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 268
    iget-object v1, p0, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver$1;->this$1:Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;

    iget-object v1, v1, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 269
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-object v1, p0, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver$1;->this$1:Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;

    invoke-static {v1}, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;->access$608(Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;)I

    .line 272
    iget-object v1, p0, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver$1;->this$1:Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;

    iget-object v1, v1, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    #getter for: Lcom/htc/app/FilePickerTypeFragment;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1}, Lcom/htc/app/FilePickerTypeFragment;->access$200(Lcom/htc/app/FilePickerTypeFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    if-nez v1, :cond_2

    .line 273
    iget-object v1, p0, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver$1;->this$1:Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;

    iget-object v2, v1, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    #setter for: Lcom/htc/app/FilePickerTypeFragment;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v2, v1}, Lcom/htc/app/FilePickerTypeFragment;->access$202(Lcom/htc/app/FilePickerTypeFragment;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;

    .line 275
    :cond_2
    iget-object v1, p0, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver$1;->this$1:Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;

    iget-object v1, v1, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    #getter for: Lcom/htc/app/FilePickerTypeFragment;->mLaunchIMEReceiver:Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;
    invoke-static {v1}, Lcom/htc/app/FilePickerTypeFragment;->access$400(Lcom/htc/app/FilePickerTypeFragment;)Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;

    move-result-object v1

    if-nez v1, :cond_3

    .line 276
    iget-object v1, p0, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver$1;->this$1:Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;

    iget-object v1, v1, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    new-instance v2, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;

    iget-object v3, p0, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver$1;->this$1:Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;

    iget-object v3, v3, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    invoke-direct {v2, v3}, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;-><init>(Lcom/htc/app/FilePickerTypeFragment;)V

    #setter for: Lcom/htc/app/FilePickerTypeFragment;->mLaunchIMEReceiver:Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;
    invoke-static {v1, v2}, Lcom/htc/app/FilePickerTypeFragment;->access$402(Lcom/htc/app/FilePickerTypeFragment;Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;)Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;

    .line 278
    :cond_3
    iget-object v1, p0, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver$1;->this$1:Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;

    iget-object v1, v1, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    #getter for: Lcom/htc/app/FilePickerTypeFragment;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1}, Lcom/htc/app/FilePickerTypeFragment;->access$200(Lcom/htc/app/FilePickerTypeFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver$1;->this$1:Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;

    iget-object v2, v2, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    #getter for: Lcom/htc/app/FilePickerTypeFragment;->mEditor:Landroid/widget/AutoCompleteTextView;
    invoke-static {v2}, Lcom/htc/app/FilePickerTypeFragment;->access$300(Lcom/htc/app/FilePickerTypeFragment;)Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver$1;->this$1:Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;

    iget-object v4, v4, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    #getter for: Lcom/htc/app/FilePickerTypeFragment;->mLaunchIMEReceiver:Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;
    invoke-static {v4}, Lcom/htc/app/FilePickerTypeFragment;->access$400(Lcom/htc/app/FilePickerTypeFragment;)Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver$1;->this$1:Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;

    iget-object v1, v1, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    #getter for: Lcom/htc/app/FilePickerTypeFragment;->mLaunchIMEReceiver:Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;
    invoke-static {v1}, Lcom/htc/app/FilePickerTypeFragment;->access$400(Lcom/htc/app/FilePickerTypeFragment;)Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0
.end method
