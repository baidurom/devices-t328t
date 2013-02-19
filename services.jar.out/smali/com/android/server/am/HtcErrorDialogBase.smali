.class final Lcom/android/server/am/HtcErrorDialogBase;
.super Ljava/lang/Object;
.source "HtcErrorDialogBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/HtcErrorDialogBase$DialogClickListener;,
        Lcom/android/server/am/HtcErrorDialogBase$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcErrorDialogBase"


# instance fields
.field private mAlertDlg:Lcom/htc/dialog/HtcAlertDialog;

.field private final mAlertDlgBuilder:Lcom/htc/dialog/HtcAlertDialog$Builder;

.field private final mCallback:Lcom/android/server/am/HtcErrorDialogBase$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/HtcErrorDialogBase$Callback;)V
    .locals 2
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lcom/android/server/am/HtcErrorDialogBase$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/HtcErrorDialogBase$1;-><init>(Lcom/android/server/am/HtcErrorDialogBase;)V

    iput-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mHandler:Landroid/os/Handler;

    .line 30
    if-nez p1, :cond_0

    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "HtcErrorDialogBase constructor need a valid Context parameter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    iput-object p1, p0, Lcom/android/server/am/HtcErrorDialogBase;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/android/server/am/HtcErrorDialogBase;->mCallback:Lcom/android/server/am/HtcErrorDialogBase$Callback;

    .line 34
    new-instance v0, Lcom/htc/dialog/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/server/am/HtcErrorDialogBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlgBuilder:Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/HtcErrorDialogBase;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/HtcErrorDialogBase;)Lcom/android/server/am/HtcErrorDialogBase$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mCallback:Lcom/android/server/am/HtcErrorDialogBase$Callback;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlg:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlg:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    .line 85
    :cond_0
    return-void
.end method

.method public sendMessageDelayed(IJ)V
    .locals 2
    .parameter "what"
    .parameter "delayMillis"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/HtcErrorDialogBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 89
    return-void
.end method

.method public setCancelable(Z)V
    .locals 1
    .parameter "cancelable"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlgBuilder:Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 59
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlgBuilder:Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 55
    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;I)V
    .locals 2
    .parameter "text"
    .parameter "msgId"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlgBuilder:Lcom/htc/dialog/HtcAlertDialog$Builder;

    new-instance v1, Lcom/android/server/am/HtcErrorDialogBase$DialogClickListener;

    invoke-direct {v1, p0, p2}, Lcom/android/server/am/HtcErrorDialogBase$DialogClickListener;-><init>(Lcom/android/server/am/HtcErrorDialogBase;I)V

    invoke-virtual {v0, p1, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 39
    return-void
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;I)V
    .locals 2
    .parameter "text"
    .parameter "msgId"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlgBuilder:Lcom/htc/dialog/HtcAlertDialog$Builder;

    new-instance v1, Lcom/android/server/am/HtcErrorDialogBase$DialogClickListener;

    invoke-direct {v1, p0, p2}, Lcom/android/server/am/HtcErrorDialogBase$DialogClickListener;-><init>(Lcom/android/server/am/HtcErrorDialogBase;I)V

    invoke-virtual {v0, p1, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 43
    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;I)V
    .locals 2
    .parameter "text"
    .parameter "msgId"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlgBuilder:Lcom/htc/dialog/HtcAlertDialog$Builder;

    new-instance v1, Lcom/android/server/am/HtcErrorDialogBase$DialogClickListener;

    invoke-direct {v1, p0, p2}, Lcom/android/server/am/HtcErrorDialogBase$DialogClickListener;-><init>(Lcom/android/server/am/HtcErrorDialogBase;I)V

    invoke-virtual {v0, p1, v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 47
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlgBuilder:Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 51
    return-void
.end method

.method public show(Ljava/lang/String;II)V
    .locals 3
    .parameter "windowTitle"
    .parameter "windowType"
    .parameter "additionalWindowFlags"

    .prologue
    const/high16 v2, 0x2

    .line 62
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlgBuilder:Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlg:Lcom/htc/dialog/HtcAlertDialog;

    .line 65
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlg:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 66
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlg:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 68
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlg:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "Error Dialog"

    invoke-virtual {v0, v1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlg:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    :cond_0
    const/4 v0, 0x1

    if-lt p2, v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlg:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/Window;->setType(I)V

    .line 75
    :cond_1
    if-eqz p3, :cond_2

    .line 76
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlg:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/Window;->addFlags(I)V

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/HtcErrorDialogBase;->mAlertDlg:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 79
    return-void
.end method
