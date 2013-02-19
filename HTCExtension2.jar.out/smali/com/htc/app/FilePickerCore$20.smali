.class Lcom/htc/app/FilePickerCore$20;
.super Ljava/lang/Object;
.source "FilePickerCore.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerCore;->createNetworkSettingDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerCore;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter

    .prologue
    .line 3802
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$20;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 3804
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3806
    .local v1, i:Landroid/content/Intent;
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3807
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$20;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3808
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 3809
    return-void
.end method
