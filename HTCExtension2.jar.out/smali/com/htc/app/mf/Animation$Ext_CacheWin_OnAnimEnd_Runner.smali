.class Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAnimEnd_Runner;
.super Ljava/lang/Object;
.source "Animation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/mf/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Ext_CacheWin_OnAnimEnd_Runner"
.end annotation


# instance fields
.field private mWhenCacheWinAnimEnd:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/htc/app/mf/Animation;


# direct methods
.method public constructor <init>(Lcom/htc/app/mf/Animation;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter "whenCacheWinAnimEnd"

    .prologue
    .line 412
    iput-object p1, p0, Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAnimEnd_Runner;->this$0:Lcom/htc/app/mf/Animation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 413
    iput-object p2, p0, Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAnimEnd_Runner;->mWhenCacheWinAnimEnd:Ljava/lang/Runnable;

    .line 414
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAnimEnd_Runner;->mWhenCacheWinAnimEnd:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAnimEnd_Runner;->mWhenCacheWinAnimEnd:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 424
    :cond_0
    return-void
.end method
