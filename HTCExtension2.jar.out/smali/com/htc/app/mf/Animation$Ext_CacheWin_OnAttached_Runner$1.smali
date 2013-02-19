.class Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner$1;
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
    .line 380
    iput-object p1, p0, Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner$1;->this$1:Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner$1;->this$1:Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;

    #getter for: Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;->mWhenCacheWinAttached:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;->access$300(Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner$1;->this$1:Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;

    #getter for: Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;->mWhenCacheWinAttached:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;->access$300(Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 385
    :cond_0
    return-void
.end method
