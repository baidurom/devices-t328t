.class Lcom/htc/app/mf/MfMainActivity$ExecPopFragmentBackStackRunner;
.super Ljava/lang/Object;
.source "MfMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/mf/MfMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExecPopFragmentBackStackRunner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/mf/MfMainActivity;


# direct methods
.method private constructor <init>(Lcom/htc/app/mf/MfMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/htc/app/mf/MfMainActivity$ExecPopFragmentBackStackRunner;->this$0:Lcom/htc/app/mf/MfMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/app/mf/MfMainActivity;Lcom/htc/app/mf/MfMainActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 421
    invoke-direct {p0, p1}, Lcom/htc/app/mf/MfMainActivity$ExecPopFragmentBackStackRunner;-><init>(Lcom/htc/app/mf/MfMainActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity$ExecPopFragmentBackStackRunner;->this$0:Lcom/htc/app/mf/MfMainActivity;

    #calls: Lcom/htc/app/mf/MfMainActivity;->execPopFragmentBackStack()V
    invoke-static {v0}, Lcom/htc/app/mf/MfMainActivity;->access$400(Lcom/htc/app/mf/MfMainActivity;)V

    .line 428
    return-void
.end method
