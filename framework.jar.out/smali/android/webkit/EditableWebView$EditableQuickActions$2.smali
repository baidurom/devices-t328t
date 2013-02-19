.class Landroid/webkit/EditableWebView$EditableQuickActions$2;
.super Ljava/lang/Object;
.source "EditableWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 2208
    iput-object p1, p0, Landroid/webkit/EditableWebView$EditableQuickActions$2;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 2211
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$2;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    #getter for: Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Landroid/webkit/EditableWebView$EditableQuickActions;->access$3700(Landroid/webkit/EditableWebView$EditableQuickActions;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2212
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$2;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    #getter for: Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Landroid/webkit/EditableWebView$EditableQuickActions;->access$3700(Landroid/webkit/EditableWebView$EditableQuickActions;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$2;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    const/4 v1, 0x0

    #setter for: Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;
    invoke-static {v0, v1}, Landroid/webkit/EditableWebView$EditableQuickActions;->access$3702(Landroid/webkit/EditableWebView$EditableQuickActions;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 2214
    :cond_0
    return-void
.end method
