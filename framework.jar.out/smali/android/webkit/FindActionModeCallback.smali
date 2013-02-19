.class Landroid/webkit/FindActionModeCallback;
.super Ljava/lang/Object;
.source "FindActionModeCallback.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mContext:Landroid/content/Context;

.field private mCustomView:Landroid/view/View;

.field private mEditText:Landroid/widget/EditText;

.field private mGlobalVisibleOffset:Landroid/graphics/Point;

.field private mGlobalVisibleRect:Landroid/graphics/Rect;

.field private mInput:Landroid/view/inputmethod/InputMethodManager;

.field private mMatches:Landroid/widget/TextView;

.field private mMatchesFound:Z

.field private mNumberOfMatches:I

.field private mResources:Landroid/content/res/Resources;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 277
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/FindActionModeCallback;->mGlobalVisibleRect:Landroid/graphics/Rect;

    .line 278
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/FindActionModeCallback;->mGlobalVisibleOffset:Landroid/graphics/Point;

    .line 52
    iput-object p1, p0, Landroid/webkit/FindActionModeCallback;->mContext:Landroid/content/Context;

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x10900b3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/FindActionModeCallback;->mCustomView:Landroid/view/View;

    .line 55
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mCustomView:Landroid/view/View;

    const v1, 0x1020003

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    .line 59
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 60
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/webkit/FindActionModeCallback;->setText(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mCustomView:Landroid/view/View;

    const v1, 0x1020335

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    .line 64
    const-string/jumbo v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroid/webkit/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/FindActionModeCallback;->mResources:Landroid/content/res/Resources;

    .line 67
    return-void
.end method

.method private findNext(Z)V
    .locals 2
    .parameter "next"

    .prologue
    .line 109
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No WebView for FindActionModeCallback::findNext"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 113
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/FindActionModeCallback;->mMatchesFound:Z

    if-nez v0, :cond_2

    .line 114
    invoke-virtual {p0}, Landroid/webkit/FindActionModeCallback;->findAll()V

    .line 124
    :cond_1
    :goto_0
    return-void

    .line 117
    :cond_2
    iget v0, p0, Landroid/webkit/FindActionModeCallback;->mNumberOfMatches:I

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->findNext(Z)V

    .line 123
    invoke-direct {p0}, Landroid/webkit/FindActionModeCallback;->updateMatchesString()V

    goto :goto_0
.end method

.method private updateMatchesString()V
    .locals 7

    .prologue
    .line 164
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mResources:Landroid/content/res/Resources;

    const v2, 0x1130013

    iget v3, p0, Landroid/webkit/FindActionModeCallback;->mNumberOfMatches:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->findIndex()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Landroid/webkit/FindActionModeCallback;->mNumberOfMatches:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, template:Ljava/lang/String;
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 275
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 262
    return-void
.end method

.method findAll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 130
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    .line 131
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "No WebView for FindActionModeCallback::findAll"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 134
    :cond_0
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 135
    .local v0, find:Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 136
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->clearMatches()V

    .line 137
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iput-boolean v3, p0, Landroid/webkit/FindActionModeCallback;->mMatchesFound:Z

    .line 150
    :goto_0
    return-void

    .line 140
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/FindActionModeCallback;->mMatchesFound:Z

    .line 141
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->findAll(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/webkit/FindActionModeCallback;->mNumberOfMatches:I

    .line 143
    iget v1, p0, Landroid/webkit/FindActionModeCallback;->mNumberOfMatches:I

    if-nez v1, :cond_2

    .line 144
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/webkit/FindActionModeCallback;->mResources:Landroid/content/res/Resources;

    const v3, 0x104046b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 147
    :cond_2
    invoke-direct {p0}, Landroid/webkit/FindActionModeCallback;->updateMatchesString()V

    goto :goto_0
.end method

.method finish()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 71
    return-void
.end method

.method public getActionModeGlobalBottom()I
    .locals 3

    .prologue
    .line 280
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_0

    .line 281
    const/4 v1, 0x0

    .line 288
    :goto_0
    return v1

    .line 283
    :cond_0
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 284
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_1

    .line 285
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mCustomView:Landroid/view/View;

    .line 287
    :cond_1
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/FindActionModeCallback;->mGlobalVisibleOffset:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 288
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "mode"
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 236
    iget-object v2, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebView;

    if-nez v2, :cond_0

    .line 237
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No WebView for FindActionModeCallback::onActionItemClicked"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 240
    :cond_0
    iget-object v2, p0, Landroid/webkit/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 241
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 251
    :goto_0
    return v0

    .line 243
    :pswitch_0
    invoke-direct {p0, v0}, Landroid/webkit/FindActionModeCallback;->findNext(Z)V

    :goto_1
    move v0, v1

    .line 251
    goto :goto_0

    .line 246
    :pswitch_1
    invoke-direct {p0, v1}, Landroid/webkit/FindActionModeCallback;->findNext(Z)V

    goto :goto_1

    .line 241
    :pswitch_data_0
    .packed-switch 0x102036c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 180
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkit/FindActionModeCallback;->findNext(Z)V

    .line 181
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 11
    .parameter "mode"
    .parameter "menu"

    .prologue
    const v10, 0x102036d

    const v9, 0x102036c

    const/4 v2, 0x0

    .line 187
    invoke-virtual {p1}, Landroid/view/ActionMode;->isUiFocusable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 219
    :goto_0
    return v2

    .line 195
    :cond_0
    iget-object v3, p0, Landroid/webkit/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 196
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v4, 0x1140001

    invoke-virtual {v3, v4, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 199
    iget-object v3, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->isInBrowserApp()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 200
    new-instance v0, Landroid/webkit/InputBackgroundDrawable;

    iget-object v3, p0, Landroid/webkit/FindActionModeCallback;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v2}, Landroid/webkit/InputBackgroundDrawable;-><init>(Landroid/content/Context;I)V

    .line 201
    .local v0, background:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 203
    iget-object v3, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    iget-object v4, p0, Landroid/webkit/FindActionModeCallback;->mResources:Landroid/content/res/Resources;

    iget-object v5, p0, Landroid/webkit/FindActionModeCallback;->mResources:Landroid/content/res/Resources;

    const-string/jumbo v6, "primary_text_color"

    const-string v7, "color"

    const-string v8, "com.htc"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 204
    iget-object v3, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/webkit/FindActionModeCallback;->mResources:Landroid/content/res/Resources;

    iget-object v5, p0, Landroid/webkit/FindActionModeCallback;->mResources:Landroid/content/res/Resources;

    const-string v6, "dark_secondaryfont_color"

    const-string v7, "color"

    const-string v8, "com.htc"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-interface {v3, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x1040447

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 207
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-interface {v3, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x1040445

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 208
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-interface {v3, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x20800bf

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 209
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-interface {v3, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x20800b3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 212
    .end local v0           #background:Landroid/graphics/drawable/Drawable;
    :cond_1
    iput-object p1, p0, Landroid/webkit/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    .line 213
    iget-object v3, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 214
    .local v1, edit:Landroid/text/Editable;
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-static {v1, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 215
    iget-object v3, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    iput-boolean v2, p0, Landroid/webkit/FindActionModeCallback;->mMatchesFound:Z

    .line 217
    iget-object v2, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v2, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 219
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    .line 225
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->notifyFindDialogDismissed()V

    .line 226
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 227
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 174
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 269
    invoke-virtual {p0}, Landroid/webkit/FindActionModeCallback;->findAll()V

    .line 270
    return-void
.end method

.method setText(Ljava/lang/String;)V
    .locals 4
    .parameter "text"

    .prologue
    const/4 v3, 0x0

    .line 78
    iget-object v2, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v2, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 80
    .local v1, span:Landroid/text/Spannable;
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 84
    .local v0, length:I
    invoke-static {v1, v0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 87
    const/16 v2, 0x12

    invoke-interface {v1, p0, v3, v0, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 88
    iput-boolean v3, p0, Landroid/webkit/FindActionModeCallback;->mMatchesFound:Z

    .line 89
    return-void
.end method

.method setWebView(Landroid/webkit/WebView;)V
    .locals 2
    .parameter "webView"

    .prologue
    .line 96
    if-nez p1, :cond_0

    .line 97
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "WebView supplied to FindActionModeCallback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 100
    :cond_0
    iput-object p1, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebView;

    .line 101
    return-void
.end method

.method public showSoftInput()V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->startGettingWindowFocus(Landroid/view/View;)V

    .line 154
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    .line 155
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 156
    return-void
.end method
