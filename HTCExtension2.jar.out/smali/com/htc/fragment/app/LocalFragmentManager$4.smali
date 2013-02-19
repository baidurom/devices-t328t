.class Lcom/htc/fragment/app/LocalFragmentManager$4;
.super Ljava/lang/Object;
.source "LocalFragmentManager.java"

# interfaces
.implements Lcom/htc/fragment/app/LocalFragmentManager$Operation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fragment/app/LocalFragmentManager;->hideFragment(Landroid/app/Fragment;)V
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
    .line 357
    iput-object p1, p0, Lcom/htc/fragment/app/LocalFragmentManager$4;->this$0:Lcom/htc/fragment/app/LocalFragmentManager;

    iput-object p2, p0, Lcom/htc/fragment/app/LocalFragmentManager$4;->val$f:Landroid/app/Fragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/app/FragmentTransaction;)V
    .locals 1
    .parameter "transaction"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/htc/fragment/app/LocalFragmentManager$4;->val$f:Landroid/app/Fragment;

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 360
    return-void
.end method
