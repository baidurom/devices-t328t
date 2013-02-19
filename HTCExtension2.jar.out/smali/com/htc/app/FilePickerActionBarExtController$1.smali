.class Lcom/htc/app/FilePickerActionBarExtController$1;
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
    .line 43
    iput-object p1, p0, Lcom/htc/app/FilePickerActionBarExtController$1;->this$0:Lcom/htc/app/FilePickerActionBarExtController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "viw"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController$1;->this$0:Lcom/htc/app/FilePickerActionBarExtController;

    #getter for: Lcom/htc/app/FilePickerActionBarExtController;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;
    invoke-static {v0}, Lcom/htc/app/FilePickerActionBarExtController;->access$000(Lcom/htc/app/FilePickerActionBarExtController;)Lcom/htc/widget/ActionBarDropDown;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController$1;->this$0:Lcom/htc/app/FilePickerActionBarExtController;

    #getter for: Lcom/htc/app/FilePickerActionBarExtController;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;
    invoke-static {v0}, Lcom/htc/app/FilePickerActionBarExtController;->access$000(Lcom/htc/app/FilePickerActionBarExtController;)Lcom/htc/widget/ActionBarDropDown;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarDropDown;->show()V

    .line 47
    :cond_0
    return-void
.end method
