.class Lcom/htc/app/FilePickerTypeFragment$3;
.super Ljava/lang/Object;
.source "FilePickerTypeFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerTypeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerTypeFragment;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerTypeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/htc/app/FilePickerTypeFragment$3;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 111
    if-eqz p2, :cond_0

    .line 112
    new-instance v0, Lcom/htc/app/FilePickerTypeFragment$3$1;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerTypeFragment$3$1;-><init>(Lcom/htc/app/FilePickerTypeFragment$3;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    :cond_0
    return-void
.end method
