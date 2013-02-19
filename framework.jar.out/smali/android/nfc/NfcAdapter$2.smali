.class Landroid/nfc/NfcAdapter$2;
.super Landroid/nfc/NfcAdapter$CallNfcMethod;
.source "NfcAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/nfc/NfcAdapter;->enableNfc(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/nfc/NfcAdapter$CallNfcMethod",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/nfc/NfcAdapter;

.field final synthetic val$on:Z


# direct methods
.method constructor <init>(Landroid/nfc/NfcAdapter;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 559
    iput-object p1, p0, Landroid/nfc/NfcAdapter$2;->this$0:Landroid/nfc/NfcAdapter;

    iput-boolean p2, p0, Landroid/nfc/NfcAdapter$2;->val$on:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/nfc/NfcAdapter$CallNfcMethod;-><init>(Landroid/nfc/NfcAdapter;Landroid/nfc/NfcAdapter$1;)V

    return-void
.end method


# virtual methods
.method protected callMethod()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 562
    iget-boolean v0, p0, Landroid/nfc/NfcAdapter$2;->val$on:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->enable()Z

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->disable()Z

    move-result v0

    goto :goto_0
.end method

.method protected bridge synthetic callMethod()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 559
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter$2;->callMethod()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
