.class public Landroid/widget/HTCExtractEditText;
.super Lcom/htc/widget/HtcEditText;
.source "HTCExtractEditText.java"


# instance fields
.field private mIME:Landroid/inputmethodservice/InputMethodService;

.field private mSettingExtractedText:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method


# virtual methods
.method protected SCATDPostScan_internal(Ljava/lang/String;)V
    .locals 3
    .parameter "word"

    .prologue
    .line 256
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 257
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "word"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v2, p0, Landroid/widget/HTCExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 259
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_0

    const-string v2, "com.htc.android.htcime.rescanword"

    invoke-interface {v1, v2, v0}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 260
    :cond_0
    return-void
.end method

.method protected deleteText_internal(II)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 213
    iget-object v0, p0, Landroid/widget/HTCExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onExtractedDeleteText(II)V

    .line 214
    return-void
.end method

.method public finishInternalChanges()V
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Landroid/widget/HTCExtractEditText;->mSettingExtractedText:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/HTCExtractEditText;->mSettingExtractedText:I

    .line 64
    return-void
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Landroid/widget/HTCExtractEditText;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public hasVerticalScrollBar()Z
    .locals 2

    .prologue
    .line 153
    invoke-virtual {p0}, Landroid/widget/HTCExtractEditText;->computeVerticalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HTCExtractEditText;->computeVerticalScrollExtent()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0}, Landroid/widget/HTCExtractEditText;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Landroid/widget/HTCExtractEditText;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isInputMethodTarget()Z
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method protected onSelectionChanged(II)V
    .locals 1
    .parameter "selStart"
    .parameter "selEnd"

    .prologue
    .line 91
    iget v0, p0, Landroid/widget/HTCExtractEditText;->mSettingExtractedText:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/HTCExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 92
    iget-object v0, p0, Landroid/widget/HTCExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onExtractedSelectionChanged(II)V

    .line 94
    :cond_0
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/widget/HTCExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    if-eqz v0, :cond_1

    const v0, 0x1020028

    if-eq p1, v0, :cond_1

    const v0, 0x102001f

    if-eq p1, v0, :cond_1

    const v0, 0x1020021

    if-eq p1, v0, :cond_1

    .line 121
    const v0, 0x1020024

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/HTCExtractEditText;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Landroid/widget/HTCExtractEditText;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissQuickAction(Z)V

    .line 123
    :cond_0
    iget-object v0, p0, Landroid/widget/HTCExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->onExtractTextContextMenuItem(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    const/4 v0, 0x1

    .line 130
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcEditText;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/htc/widget/HtcEditText;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/HTCExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Landroid/widget/HTCExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->onExtractedTextClicked()V

    .line 107
    const/4 v0, 0x1

    .line 109
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected replaceText_internal(IILjava/lang/CharSequence;)V
    .locals 1
    .parameter "start"
    .parameter "end"
    .parameter "text"

    .prologue
    .line 224
    iget-object v0, p0, Landroid/widget/HTCExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p2, p3}, Landroid/inputmethodservice/InputMethodService;->onExtractedReplaceText(IILjava/lang/CharSequence;)V

    .line 225
    return-void
.end method

.method protected setCursorPosition_internal(II)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 246
    iget-object v0, p0, Landroid/widget/HTCExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onExtractedSelectionChanged(II)V

    .line 247
    return-void
.end method

.method public setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 76
    :try_start_0
    iget v0, p0, Landroid/widget/HTCExtractEditText;->mSettingExtractedText:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/HTCExtractEditText;->mSettingExtractedText:I

    .line 77
    invoke-super {p0, p1}, Lcom/htc/widget/HtcEditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iget v0, p0, Landroid/widget/HTCExtractEditText;->mSettingExtractedText:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/HTCExtractEditText;->mSettingExtractedText:I

    .line 81
    return-void

    .line 79
    :catchall_0
    move-exception v0

    iget v1, p0, Landroid/widget/HTCExtractEditText;->mSettingExtractedText:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/HTCExtractEditText;->mSettingExtractedText:I

    throw v0
.end method

.method setIME(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0
    .parameter "ime"

    .prologue
    .line 37
    iput-object p1, p0, Landroid/widget/HTCExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    .line 38
    return-void
.end method

.method protected setSpan_internal(Ljava/lang/Object;III)V
    .locals 1
    .parameter "span"
    .parameter "start"
    .parameter "end"
    .parameter "flags"

    .prologue
    .line 235
    iget-object v0, p0, Landroid/widget/HTCExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/inputmethodservice/InputMethodService;->onExtractedSetSpan(Ljava/lang/Object;III)V

    .line 236
    return-void
.end method

.method public startInternalChanges()V
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Landroid/widget/HTCExtractEditText;->mSettingExtractedText:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/HTCExtractEditText;->mSettingExtractedText:I

    .line 51
    return-void
.end method

.method protected viewClicked(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 2
    .parameter "imm"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/widget/HTCExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Landroid/widget/HTCExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodService;->onViewClicked(Z)V

    .line 203
    :cond_0
    return-void
.end method
