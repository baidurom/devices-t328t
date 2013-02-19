.class Lcom/htc/app/mf/MfMainActivity$1;
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
    .line 442
    iput-object p1, p0, Lcom/htc/app/mf/MfMainActivity$1;->this$0:Lcom/htc/app/mf/MfMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity$1;->this$0:Lcom/htc/app/mf/MfMainActivity;

    #calls: Lcom/htc/app/mf/MfMainActivity;->superInvalidateOptionsMenu()V
    invoke-static {v0}, Lcom/htc/app/mf/MfMainActivity;->access$600(Lcom/htc/app/mf/MfMainActivity;)V

    .line 446
    return-void
.end method
