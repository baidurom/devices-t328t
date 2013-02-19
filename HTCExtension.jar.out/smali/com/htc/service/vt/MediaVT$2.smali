.class Lcom/htc/service/vt/MediaVT$2;
.super Ljava/lang/Object;
.source "MediaVT.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/service/vt/MediaVT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/service/vt/MediaVT;


# direct methods
.method constructor <init>(Lcom/htc/service/vt/MediaVT;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/htc/service/vt/MediaVT$2;->this$0:Lcom/htc/service/vt/MediaVT;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "className"
    .parameter "service"

    .prologue
    const/4 v3, 0x0

    .line 303
    const-string v0, "MediaVT_Java"

    const-string v1, "onServiceConnected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/htc/service/vt/MediaVT$2;->this$0:Lcom/htc/service/vt/MediaVT;

    invoke-static {p2}, Lcom/htc/service/vt/IMediaVTService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/service/vt/IMediaVTService;

    move-result-object v1

    #setter for: Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;
    invoke-static {v0, v1}, Lcom/htc/service/vt/MediaVT;->access$002(Lcom/htc/service/vt/MediaVT;Lcom/htc/service/vt/IMediaVTService;)Lcom/htc/service/vt/IMediaVTService;

    .line 305
    const-string v0, "MediaVT_Java"

    const-string v1, "send VT_MEDIAVTSERVICE_PREPARE_SURFACE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/htc/service/vt/MediaVT$2;->this$0:Lcom/htc/service/vt/MediaVT;

    const/16 v1, 0x12d

    const/4 v2, 0x0

    #calls: Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V
    invoke-static {v0, v1, v3, v3, v2}, Lcom/htc/service/vt/MediaVT;->access$100(Lcom/htc/service/vt/MediaVT;IIILjava/lang/Object;)V

    .line 307
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 310
    const-string v0, "MediaVT_Java"

    const-string v1, "onServiceDisconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-void
.end method
