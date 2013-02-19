.class Lcom/htc/app/ShareListActivity$1;
.super Ljava/lang/Object;
.source "ShareListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/ShareListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/ShareListActivity;

.field final synthetic val$adapter:Lcom/htc/app/ShareListActivity$SharedAdapter;


# direct methods
.method constructor <init>(Lcom/htc/app/ShareListActivity;Lcom/htc/app/ShareListActivity$SharedAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/htc/app/ShareListActivity$1;->this$0:Lcom/htc/app/ShareListActivity;

    iput-object p2, p0, Lcom/htc/app/ShareListActivity$1;->val$adapter:Lcom/htc/app/ShareListActivity$SharedAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 89
    iget-object v1, p0, Lcom/htc/app/ShareListActivity$1;->val$adapter:Lcom/htc/app/ShareListActivity$SharedAdapter;

    invoke-virtual {v1, p2}, Lcom/htc/app/ShareListActivity$SharedAdapter;->getIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 91
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/app/ShareListActivity$1;->this$0:Lcom/htc/app/ShareListActivity;

    #getter for: Lcom/htc/app/ShareListActivity;->mData:Landroid/widget/ActivityChooserModel;
    invoke-static {v1}, Lcom/htc/app/ShareListActivity;->access$000(Lcom/htc/app/ShareListActivity;)Landroid/widget/ActivityChooserModel;

    move-result-object v2

    iget-object v1, p0, Lcom/htc/app/ShareListActivity$1;->this$0:Lcom/htc/app/ShareListActivity;

    #getter for: Lcom/htc/app/ShareListActivity;->mData:Landroid/widget/ActivityChooserModel;
    invoke-static {v1}, Lcom/htc/app/ShareListActivity;->access$000(Lcom/htc/app/ShareListActivity;)Landroid/widget/ActivityChooserModel;

    move-result-object v3

    iget-object v1, p0, Lcom/htc/app/ShareListActivity$1;->val$adapter:Lcom/htc/app/ShareListActivity$SharedAdapter;

    invoke-virtual {v1, p2}, Lcom/htc/app/ShareListActivity$SharedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3, v1}, Landroid/widget/ActivityChooserModel;->getActivityIndex(Landroid/content/pm/ResolveInfo;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    .line 92
    iget-object v1, p0, Lcom/htc/app/ShareListActivity$1;->val$adapter:Lcom/htc/app/ShareListActivity$SharedAdapter;

    #getter for: Lcom/htc/app/ShareListActivity$SharedAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/app/ShareListActivity$SharedAdapter;->access$100(Lcom/htc/app/ShareListActivity$SharedAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 93
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 94
    iget-object v1, p0, Lcom/htc/app/ShareListActivity$1;->this$0:Lcom/htc/app/ShareListActivity;

    invoke-virtual {v1}, Lcom/htc/app/ShareListActivity;->finish()V

    .line 95
    return-void
.end method
