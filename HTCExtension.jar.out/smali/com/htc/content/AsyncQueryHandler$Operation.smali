.class final Lcom/htc/content/AsyncQueryHandler$Operation;
.super Ljava/lang/Object;
.source "AsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/content/AsyncQueryHandler;
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
    .line 723
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 724
    iput-object p2, p0, Lcom/htc/content/AsyncQueryHandler$Operation;->mOp:Landroid/content/ContentProviderOperation;

    .line 725
    iput-object p3, p0, Lcom/htc/content/AsyncQueryHandler$Operation;->mMsg:Landroid/os/Message;

    .line 726
    iput p1, p0, Lcom/htc/content/AsyncQueryHandler$Operation;->mToken:I

    .line 727
    return-void
.end method
