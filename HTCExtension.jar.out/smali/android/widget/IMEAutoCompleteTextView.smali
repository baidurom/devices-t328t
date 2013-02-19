.class public Landroid/widget/IMEAutoCompleteTextView;
.super Lcom/htc/widget/HtcAutoCompleteTextView;
.source "IMEAutoCompleteTextView.java"


# static fields
.field public static final TYPE_TEXT_HTC_FLAG_IME_CURSOR_ADAPTER:I = 0x1000000

.field public static final TYPE_TEXT_HTC_FLAG_IME_CURSOR_ADAPTER_N:I = -0x1000001


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/IMEAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    const v0, 0x101006b

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/IMEAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method


# virtual methods
.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, adapter:Landroid/widget/ListAdapter;,"TT;"
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/widget/IMECursorAdapter;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Landroid/widget/IMEAutoCompleteTextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x100

    or-int/2addr v0, v1

    invoke-super {p0, v0}, Lcom/htc/widget/HtcAutoCompleteTextView;->setInputType(I)V

    .line 84
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Landroid/widget/IMEAutoCompleteTextView;->getInputType()I

    move-result v0

    const v1, -0x1000001

    and-int/2addr v0, v1

    invoke-super {p0, v0}, Lcom/htc/widget/HtcAutoCompleteTextView;->setInputType(I)V

    goto :goto_0
.end method

.method public setInputType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/widget/IMEAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/IMEAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/IMECursorAdapter;

    if-eqz v0, :cond_0

    .line 38
    const/high16 v0, 0x100

    or-int/2addr v0, p1

    invoke-super {p0, v0}, Lcom/htc/widget/HtcAutoCompleteTextView;->setInputType(I)V

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_0
    const v0, -0x1000001

    and-int/2addr v0, p1

    invoke-super {p0, v0}, Lcom/htc/widget/HtcAutoCompleteTextView;->setInputType(I)V

    goto :goto_0
.end method
