.class Lcom/htc/fragment/app/LocalFragmentManager$1;
.super Ljava/lang/Object;
.source "LocalFragmentManager.java"

# interfaces
.implements Lcom/htc/fragment/app/LocalFragmentManager$Operation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fragment/app/LocalFragmentManager;->addFragment(ILjava/lang/String;Landroid/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fragment/app/LocalFragmentManager;

.field final synthetic val$containerViewId:I

.field final synthetic val$f:Landroid/app/Fragment;

.field final synthetic val$globalTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/fragment/app/LocalFragmentManager;ILandroid/app/Fragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/htc/fragment/app/LocalFragmentManager$1;->this$0:Lcom/htc/fragment/app/LocalFragmentManager;

    iput p2, p0, Lcom/htc/fragment/app/LocalFragmentManager$1;->val$containerViewId:I

    iput-object p3, p0, Lcom/htc/fragment/app/LocalFragmentManager$1;->val$f:Landroid/app/Fragment;

    iput-object p4, p0, Lcom/htc/fragment/app/LocalFragmentManager$1;->val$globalTag:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/app/FragmentTransaction;)V
    .locals 3
    .parameter "transaction"

    .prologue
    .line 183
    iget v0, p0, Lcom/htc/fragment/app/LocalFragmentManager$1;->val$containerViewId:I

    iget-object v1, p0, Lcom/htc/fragment/app/LocalFragmentManager$1;->val$f:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/htc/fragment/app/LocalFragmentManager$1;->val$globalTag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 184
    iget-object v0, p0, Lcom/htc/fragment/app/LocalFragmentManager$1;->this$0:Lcom/htc/fragment/app/LocalFragmentManager;

    #getter for: Lcom/htc/fragment/app/LocalFragmentManager;->fragments:Ljava/util/Map;
    invoke-static {v0}, Lcom/htc/fragment/app/LocalFragmentManager;->access$000(Lcom/htc/fragment/app/LocalFragmentManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fragment/app/LocalFragmentManager$1;->val$globalTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/fragment/app/LocalFragmentManager$1;->val$f:Landroid/app/Fragment;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    return-void
.end method
