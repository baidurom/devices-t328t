.class Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner$2;
.super Ljava/lang/Object;
.source "Animation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;


# direct methods
.method constructor <init>(Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;)V
    .locals 0
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner$2;->this$1:Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 393
    iget-object v2, p0, Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner$2;->this$1:Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;

    #getter for: Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;->mActivityW:Landroid/view/Window;
    invoke-static {v2}, Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;->access$400(Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;)Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 394
    .local v1, wm:Landroid/view/WindowManager;
    iget-object v2, p0, Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner$2;->this$1:Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;

    #getter for: Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;->mCacheW:Landroid/view/Window;
    invoke-static {v2}, Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;->access$500(Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;)Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 395
    .local v0, decor:Landroid/view/View;
    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 396
    return-void
.end method
