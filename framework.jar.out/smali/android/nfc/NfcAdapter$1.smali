.class Landroid/nfc/NfcAdapter$1;
.super Landroid/nfc/NfcAdapter$CallNfcMethod;
.source "NfcAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/nfc/NfcAdapter;->getAdapterState()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/nfc/NfcAdapter$CallNfcMethod",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/nfc/NfcAdapter;


# direct methods
.method constructor <init>(Landroid/nfc/NfcAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 547
    iput-object p1, p0, Landroid/nfc/NfcAdapter$1;->this$0:Landroid/nfc/NfcAdapter;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/nfc/NfcAdapter$CallNfcMethod;-><init>(Landroid/nfc/NfcAdapter;Landroid/nfc/NfcAdapter$1;)V

    return-void
.end method


# virtual methods
.method protected callMethod()Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 550
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic callMethod()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 547
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter$1;->callMethod()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
