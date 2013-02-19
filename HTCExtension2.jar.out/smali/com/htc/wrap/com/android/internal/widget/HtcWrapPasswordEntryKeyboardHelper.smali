.class public Lcom/htc/wrap/com/android/internal/widget/HtcWrapPasswordEntryKeyboardHelper;
.super Ljava/lang/Object;
.source "HtcWrapPasswordEntryKeyboardHelper.java"


# instance fields
.field private mPasswordEntryKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V
    .locals 1
    .parameter "context"
    .parameter "keyboardView"
    .parameter "targetView"

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/htc/wrap/com/android/internal/widget/HtcWrapPasswordEntryKeyboardHelper;->mPasswordEntryKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 26
    return-void
.end method


# virtual methods
.method public setKeyboardMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/widget/HtcWrapPasswordEntryKeyboardHelper;->mPasswordEntryKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 22
    return-void
.end method
