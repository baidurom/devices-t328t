.class Lcom/htc/service/vt/MediaVT$1;
.super Landroid/os/HandlerThread;
.source "MediaVT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/service/vt/MediaVT;->setupMediaVT(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/service/vt/MediaVT;


# direct methods
.method constructor <init>(Lcom/htc/service/vt/MediaVT;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/htc/service/vt/MediaVT$1;->this$0:Lcom/htc/service/vt/MediaVT;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 2

    .prologue
    .line 214
    const-string v0, "MediaVT_Java"

    const-string v1, "onLooperPrepared()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void
.end method
