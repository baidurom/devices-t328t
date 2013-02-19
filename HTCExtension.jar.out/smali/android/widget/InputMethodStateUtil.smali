.class public Landroid/widget/InputMethodStateUtil;
.super Ljava/lang/Object;
.source "InputMethodStateUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static focusIn(Landroid/view/View;Landroid/content/Context;)V
    .locals 2
    .parameter "view"
    .parameter "context"

    .prologue
    .line 36
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 40
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static getCursorRectInWindow(Landroid/widget/TextView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "tv"

    .prologue
    .line 20
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    .line 23
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFrameworkView(Landroid/content/Context;ILandroid/view/View;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "id"
    .parameter "contentView"

    .prologue
    const/4 v1, 0x0

    .line 45
    if-nez p0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-object v1

    .line 48
    :cond_1
    const/4 v0, 0x0

    .line 49
    .local v0, inflater:Landroid/view/LayoutInflater;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 51
    :pswitch_0
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #inflater:Landroid/view/LayoutInflater;
    check-cast v0, Landroid/view/LayoutInflater;

    .line 52
    .restart local v0       #inflater:Landroid/view/LayoutInflater;
    if-eqz v0, :cond_0

    .line 53
    const v2, 0x10900d1

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 56
    :pswitch_1
    if-eqz p2, :cond_0

    .line 57
    const v1, 0x1020255

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 60
    :pswitch_2
    if-eqz p2, :cond_0

    .line 61
    const v1, 0x1020256

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 64
    :pswitch_3
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #inflater:Landroid/view/LayoutInflater;
    check-cast v0, Landroid/view/LayoutInflater;

    .line 65
    .restart local v0       #inflater:Landroid/view/LayoutInflater;
    if-eqz v0, :cond_0

    .line 66
    const v2, 0x10900d2

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static initInputMethodState(Landroid/widget/TextView;)V
    .locals 1
    .parameter "tv"

    .prologue
    .line 15
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Landroid/widget/TextView$InputMethodState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0}, Landroid/widget/TextView$InputMethodState;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 17
    :cond_0
    return-void
.end method

.method public static showSoftInputUnchecked(ILandroid/os/ResultReceiver;Landroid/content/Context;)V
    .locals 2
    .parameter "flags"
    .parameter "resultReceiver"
    .parameter "context"

    .prologue
    .line 27
    if-nez p2, :cond_1

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    const-string v1, "input_method"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 31
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0, p0, p1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V

    goto :goto_0
.end method
