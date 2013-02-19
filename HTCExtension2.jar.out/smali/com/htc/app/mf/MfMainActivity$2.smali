.class Lcom/htc/app/mf/MfMainActivity$2;
.super Ljava/lang/Object;
.source "MfMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/mf/MfMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/mf/MfMainActivity;


# direct methods
.method constructor <init>(Lcom/htc/app/mf/MfMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/htc/app/mf/MfMainActivity$2;->this$0:Lcom/htc/app/mf/MfMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity$2;->this$0:Lcom/htc/app/mf/MfMainActivity;

    const/4 v1, 0x0

    #setter for: Lcom/htc/app/mf/MfMainActivity;->mRunningTransition:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/htc/app/mf/MfMainActivity;->access$702(Lcom/htc/app/mf/MfMainActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 453
    return-void
.end method
