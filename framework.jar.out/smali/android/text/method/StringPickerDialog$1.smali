.class Landroid/text/method/StringPickerDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "StringPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/StringPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/text/method/StringPickerDialog;


# direct methods
.method constructor <init>(Landroid/text/method/StringPickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Landroid/text/method/StringPickerDialog$1;->this$0:Landroid/text/method/StringPickerDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 175
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Landroid/text/method/StringPickerDialog$1;->this$0:Landroid/text/method/StringPickerDialog;

    invoke-virtual {v0}, Landroid/text/method/StringPickerDialog;->onConfigurationChanged()V

    .line 178
    :cond_0
    return-void
.end method
