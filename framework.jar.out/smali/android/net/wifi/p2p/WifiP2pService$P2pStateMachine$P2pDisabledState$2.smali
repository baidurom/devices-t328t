.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState$2;
.super Ljava/lang/Object;
.source "WifiP2pService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;->processMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;)V
    .locals 0
    .parameter

    .prologue
    .line 577
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState$2;->this$2:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 579
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 580
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState$2;->this$2:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v1, 0x23005

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    .line 581
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 583
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
