.class final Lcom/android/internal/app/ShutdownThread$6;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ShutdownThread;->createQbShutdownConfirmDialog(Landroid/content/Context;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$text:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/android/internal/app/ShutdownThread$6;->val$text:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 332
    invoke-static {p2}, Lcom/android/internal/app/ShutdownThread;->access$202(Z)Z

    .line 333
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$200()Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/app/ShutdownThread;->access$302(Z)Z

    .line 334
    if-eqz p2, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread$6;->val$text:Landroid/widget/TextView;

    const v1, -0xaba8a1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 338
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread$6;->val$text:Landroid/widget/TextView;

    const v1, -0x4d4c48

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
