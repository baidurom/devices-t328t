.class Lcom/htc/fragment/app/LocalFragmentManager$3;
.super Ljava/lang/Object;
.source "LocalFragmentManager.java"

# interfaces
.implements Lcom/htc/fragment/app/LocalFragmentManager$Operation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fragment/app/LocalFragmentManager;->removeFragments(Z[Landroid/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fragment/app/LocalFragmentManager;

.field final synthetic val$fs:[Landroid/app/Fragment;


# direct methods
.method constructor <init>(Lcom/htc/fragment/app/LocalFragmentManager;[Landroid/app/Fragment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/htc/fragment/app/LocalFragmentManager$3;->this$0:Lcom/htc/fragment/app/LocalFragmentManager;

    iput-object p2, p0, Lcom/htc/fragment/app/LocalFragmentManager$3;->val$fs:[Landroid/app/Fragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/app/FragmentTransaction;)V
    .locals 6
    .parameter "transaction"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/htc/fragment/app/LocalFragmentManager$3;->val$fs:[Landroid/app/Fragment;

    .local v0, arr$:[Landroid/app/Fragment;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 266
    .local v1, f:Landroid/app/Fragment;
    if-eqz v1, :cond_0

    .line 267
    invoke-virtual {p1, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 268
    iget-object v4, p0, Lcom/htc/fragment/app/LocalFragmentManager$3;->this$0:Lcom/htc/fragment/app/LocalFragmentManager;

    #getter for: Lcom/htc/fragment/app/LocalFragmentManager;->fragments:Ljava/util/Map;
    invoke-static {v4}, Lcom/htc/fragment/app/LocalFragmentManager;->access$000(Lcom/htc/fragment/app/LocalFragmentManager;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 271
    .end local v1           #f:Landroid/app/Fragment;
    :cond_1
    return-void
.end method
