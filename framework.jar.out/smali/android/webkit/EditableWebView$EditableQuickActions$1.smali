.class Landroid/webkit/EditableWebView$EditableQuickActions$1;
.super Ljava/lang/Object;
.source "EditableWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/EditableWebView$EditableQuickActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/EditableWebView$EditableQuickActions;


# direct methods
.method constructor <init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V
    .locals 0
    .parameter

    .prologue
    .line 2200
    iput-object p1, p0, Landroid/webkit/EditableWebView$EditableQuickActions$1;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 2203
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$1;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions$1;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    #calls: Landroid/webkit/EditableWebView$EditableQuickActions;->getDialogFontStyleContext()Landroid/content/Context;
    invoke-static {v1}, Landroid/webkit/EditableWebView$EditableQuickActions;->access$3500(Landroid/webkit/EditableWebView$EditableQuickActions;)Landroid/content/Context;

    move-result-object v1

    #calls: Landroid/webkit/EditableWebView$EditableQuickActions;->onCreateDialogFontStyle(Landroid/content/Context;)V
    invoke-static {v0, v1}, Landroid/webkit/EditableWebView$EditableQuickActions;->access$3600(Landroid/webkit/EditableWebView$EditableQuickActions;Landroid/content/Context;)V

    .line 2204
    return-void
.end method
