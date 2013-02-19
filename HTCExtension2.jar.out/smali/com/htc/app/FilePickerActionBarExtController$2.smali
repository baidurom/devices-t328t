.class Lcom/htc/app/FilePickerActionBarExtController$2;
.super Ljava/lang/Object;
.source "FilePickerActionBarExtController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerActionBarExtController;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerActionBarExtController;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerActionBarExtController;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/htc/app/FilePickerActionBarExtController$2;->this$0:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController$2;->this$0:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerActionBarExtController;->switchContainer()V

    .line 58
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController$2;->this$0:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerActionBarExtController;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method
