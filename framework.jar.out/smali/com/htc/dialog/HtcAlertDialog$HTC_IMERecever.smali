.class public Lcom/htc/dialog/HtcAlertDialog$HTC_IMERecever;
.super Landroid/content/BroadcastReceiver;
.source "HtcAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dialog/HtcAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HTC_IMERecever"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dialog/HtcAlertDialog;


# direct methods
.method public constructor <init>(Lcom/htc/dialog/HtcAlertDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertDialog$HTC_IMERecever;->this$0:Lcom/htc/dialog/HtcAlertDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 144
    return-void
.end method
