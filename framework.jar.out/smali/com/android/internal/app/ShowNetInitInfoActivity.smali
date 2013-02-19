.class public Lcom/android/internal/app/ShowNetInitInfoActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "ShowNetInitInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final HTC_DEBUG:Z = false

.field private static final POSITIVE_BUTTON:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ShowNetInitInfoActivity"


# instance fields
.field private mMessage:Ljava/lang/String;

.field private mNotificatioId:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 73
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ShowNetInitInfoActivity;->finish()V

    .line 78
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const-string v2, "ShowNetInitInfoActivity"

    const-string/jumbo v3, "onCreate!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {p0}, Lcom/android/internal/app/ShowNetInitInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 37
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v2, "notif_id"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/ShowNetInitInfoActivity;->mNotificatioId:I

    .line 38
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ShowNetInitInfoActivity;->mTitle:Ljava/lang/String;

    .line 39
    const-string/jumbo v2, "message"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ShowNetInitInfoActivity;->mMessage:Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 47
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x108008a

    iput v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 48
    iget-object v2, p0, Lcom/android/internal/app/ShowNetInitInfoActivity;->mTitle:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 49
    iget-object v2, p0, Lcom/android/internal/app/ShowNetInitInfoActivity;->mMessage:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 50
    const v2, 0x104000a

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ShowNetInitInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 51
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 55
    invoke-virtual {p0}, Lcom/android/internal/app/ShowNetInitInfoActivity;->setupAlert()V

    .line 56
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 66
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 61
    return-void
.end method
