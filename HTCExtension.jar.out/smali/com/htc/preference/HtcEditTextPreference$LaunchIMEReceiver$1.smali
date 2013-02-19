.class Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver$1;
.super Ljava/lang/Object;
.source "HtcEditTextPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;->relaunchIME()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;


# direct methods
.method constructor <init>(Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver$1;->this$1:Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 288
    iget-object v1, p0, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver$1;->this$1:Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;

    iget v2, v1, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;->retryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;->retryCount:I

    .line 289
    iget-object v1, p0, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver$1;->this$1:Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;

    iget-object v1, v1, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;->this$0:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcEditTextPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 290
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 291
    iget-object v1, p0, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver$1;->this$1:Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;

    iget-object v1, v1, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;->this$0:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver$1;->this$1:Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;

    iget-object v3, v3, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;->this$0:Lcom/htc/preference/HtcEditTextPreference;

    #getter for: Lcom/htc/preference/HtcEditTextPreference;->mResultReceiver:Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;
    invoke-static {v3}, Lcom/htc/preference/HtcEditTextPreference;->access$000(Lcom/htc/preference/HtcEditTextPreference;)Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 292
    :cond_0
    return-void
.end method
