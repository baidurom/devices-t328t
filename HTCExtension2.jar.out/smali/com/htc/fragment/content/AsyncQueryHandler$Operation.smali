.class final Lcom/htc/fragment/content/AsyncQueryHandler$Operation;
.super Ljava/lang/Object;
.source "AsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fragment/content/AsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Operation"
.end annotation


# instance fields
.field mMsg:Landroid/os/Message;

.field mOp:Landroid/content/ContentProviderOperation;

.field mToken:I


# direct methods
.method public constructor <init>(ILandroid/content/ContentProviderOperation;Landroid/os/Message;)V
    .locals 0
    .parameter "token"
    .parameter "op"
    .parameter "msg"

    .prologue
    .line 724
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 725
    iput-object p2, p0, Lcom/htc/fragment/content/AsyncQueryHandler$Operation;->mOp:Landroid/content/ContentProviderOperation;

    .line 726
    iput-object p3, p0, Lcom/htc/fragment/content/AsyncQueryHandler$Operation;->mMsg:Landroid/os/Message;

    .line 727
    iput p1, p0, Lcom/htc/fragment/content/AsyncQueryHandler$Operation;->mToken:I

    .line 728
    return-void
.end method
