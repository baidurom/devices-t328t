.class Landroid/nfc/NfcAdapter$4;
.super Landroid/nfc/NfcAdapter$CallNfcMethod;
.source "NfcAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/nfc/NfcAdapter;->helperNdefPush(Landroid/nfc/NfcAdapter$NdefHelper;)Z
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

.field final synthetic val$usage:Landroid/nfc/NfcAdapter$NdefHelper;


# direct methods
.method constructor <init>(Landroid/nfc/NfcAdapter;Landroid/nfc/NfcAdapter$NdefHelper;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1058
    iput-object p1, p0, Landroid/nfc/NfcAdapter$4;->this$0:Landroid/nfc/NfcAdapter;

    iput-object p2, p0, Landroid/nfc/NfcAdapter$4;->val$usage:Landroid/nfc/NfcAdapter$NdefHelper;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/nfc/NfcAdapter$CallNfcMethod;-><init>(Landroid/nfc/NfcAdapter;Landroid/nfc/NfcAdapter$1;)V

    return-void
.end method


# virtual methods
.method protected callMethod()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1061
    sget-object v0, Landroid/nfc/NfcAdapter$5;->$SwitchMap$android$nfc$NfcAdapter$NdefHelper:[I

    iget-object v1, p0, Landroid/nfc/NfcAdapter$4;->val$usage:Landroid/nfc/NfcAdapter$NdefHelper;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter$NdefHelper;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1068
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1064
    :pswitch_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->enableNdefPush()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 1066
    :pswitch_1
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->disableNdefPush()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 1061
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic callMethod()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1058
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter$4;->callMethod()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
