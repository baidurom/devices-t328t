.class Lcom/htc/app/mf/MfMainActivity$ExecStartFragmentRunner;
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
    name = "ExecStartFragmentRunner"
.end annotation


# instance fields
.field private mArgs:Landroid/os/Bundle;

.field private mC:Landroid/content/Context;

.field private mFName:Ljava/lang/String;

.field private mPos:I

.field private mReuseId:Ljava/lang/String;

.field private mStackUp:Z

.field final synthetic this$0:Lcom/htc/app/mf/MfMainActivity;


# direct methods
.method public constructor <init>(Lcom/htc/app/mf/MfMainActivity;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter "c"
    .parameter "fName"
    .parameter "args"
    .parameter "pos"
    .parameter "reuseId"
    .parameter "stackUp"

    .prologue
    .line 403
    iput-object p1, p0, Lcom/htc/app/mf/MfMainActivity$ExecStartFragmentRunner;->this$0:Lcom/htc/app/mf/MfMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 404
    iput-object p2, p0, Lcom/htc/app/mf/MfMainActivity$ExecStartFragmentRunner;->mC:Landroid/content/Context;

    .line 405
    iput-object p3, p0, Lcom/htc/app/mf/MfMainActivity$ExecStartFragmentRunner;->mFName:Ljava/lang/String;

    .line 406
    iput-object p4, p0, Lcom/htc/app/mf/MfMainActivity$ExecStartFragmentRunner;->mArgs:Landroid/os/Bundle;

    .line 407
    iput p5, p0, Lcom/htc/app/mf/MfMainActivity$ExecStartFragmentRunner;->mPos:I

    .line 408
    iput-object p6, p0, Lcom/htc/app/mf/MfMainActivity$ExecStartFragmentRunner;->mReuseId:Ljava/lang/String;

    .line 409
    iput-boolean p7, p0, Lcom/htc/app/mf/MfMainActivity$ExecStartFragmentRunner;->mStackUp:Z

    .line 410
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 417
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity$ExecStartFragmentRunner;->this$0:Lcom/htc/app/mf/MfMainActivity;

    iget-object v1, p0, Lcom/htc/app/mf/MfMainActivity$ExecStartFragmentRunner;->mC:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/app/mf/MfMainActivity$ExecStartFragmentRunner;->mFName:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/app/mf/MfMainActivity$ExecStartFragmentRunner;->mArgs:Landroid/os/Bundle;

    iget v4, p0, Lcom/htc/app/mf/MfMainActivity$ExecStartFragmentRunner;->mPos:I

    iget-object v5, p0, Lcom/htc/app/mf/MfMainActivity$ExecStartFragmentRunner;->mReuseId:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/htc/app/mf/MfMainActivity$ExecStartFragmentRunner;->mStackUp:Z

    #calls: Lcom/htc/app/mf/MfMainActivity;->execStartFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Z)V
    invoke-static/range {v0 .. v6}, Lcom/htc/app/mf/MfMainActivity;->access$300(Lcom/htc/app/mf/MfMainActivity;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Z)V

    .line 418
    return-void
.end method
