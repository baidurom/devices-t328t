.class public Lcom/htc/wrap/com/android/internal/widget/HtcWrapPasswordEntryKeyboardView;
.super Ljava/lang/Object;
.source "HtcWrapPasswordEntryKeyboardView.java"


# instance fields
.field private mPasswordEntryKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/widget/PasswordEntryKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/htc/wrap/com/android/internal/widget/HtcWrapPasswordEntryKeyboardView;->mPasswordEntryKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    .line 40
    return-void
.end method


# virtual methods
.method public requestFocusView()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/widget/HtcWrapPasswordEntryKeyboardView;->mPasswordEntryKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    .line 29
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/widget/HtcWrapPasswordEntryKeyboardView;->mPasswordEntryKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setEnabled(Z)V

    .line 37
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "ViewType"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/widget/HtcWrapPasswordEntryKeyboardView;->mPasswordEntryKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setVisibility(I)V

    .line 21
    return-void
.end method
