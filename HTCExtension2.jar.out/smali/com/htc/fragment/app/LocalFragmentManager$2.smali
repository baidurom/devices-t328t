.class Lcom/htc/fragment/app/LocalFragmentManager$2;
.super Ljava/lang/Object;
.source "LocalFragmentManager.java"

# interfaces
.implements Lcom/htc/fragment/app/LocalFragmentManager$Operation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fragment/app/LocalFragmentManager;->removeFragment(Landroid/app/Fragment;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fragment/app/LocalFragmentManager;

.field final synthetic val$f:Landroid/app/Fragment;


# direct methods
.method constructor <init>(Lcom/htc/fragment/app/LocalFragmentManager;Landroid/app/Fragment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/htc/fragment/app/LocalFragmentManager$2;->this$0:Lcom/htc/fragment/app/LocalFragmentManager;

    iput-object p2, p0, Lcom/htc/fragment/app/LocalFragmentManager$2;->val$f:Landroid/app/Fragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/app/FragmentTransaction;)V
    .locals 2
    .parameter "transaction"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/htc/fragment/app/LocalFragmentManager$2;->val$f:Landroid/app/Fragment;

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 219
    iget-object v0, p0, Lcom/htc/fragment/app/LocalFragmentManager$2;->this$0:Lcom/htc/fragment/app/LocalFragmentManager;

    #getter for: Lcom/htc/fragment/app/LocalFragmentManager;->fragments:Ljava/util/Map;
    invoke-static {v0}, Lcom/htc/fragment/app/LocalFragmentManager;->access$000(Lcom/htc/fragment/app/LocalFragmentManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fragment/app/LocalFragmentManager$2;->val$f:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    return-void
.end method
