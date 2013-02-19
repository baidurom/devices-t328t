.class abstract Landroid/nfc/NfcAdapter$CallNfcMethod;
.super Ljava/lang/Object;
.source "NfcAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/NfcAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CallNfcMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/nfc/NfcAdapter;


# direct methods
.method private constructor <init>(Landroid/nfc/NfcAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 502
    .local p0, this:Landroid/nfc/NfcAdapter$CallNfcMethod;,"Landroid/nfc/NfcAdapter$CallNfcMethod<TResult;>;"
    iput-object p1, p0, Landroid/nfc/NfcAdapter$CallNfcMethod;->this$0:Landroid/nfc/NfcAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/nfc/NfcAdapter;Landroid/nfc/NfcAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 502
    .local p0, this:Landroid/nfc/NfcAdapter$CallNfcMethod;,"Landroid/nfc/NfcAdapter$CallNfcMethod<TResult;>;"
    invoke-direct {p0, p1}, Landroid/nfc/NfcAdapter$CallNfcMethod;-><init>(Landroid/nfc/NfcAdapter;)V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .prologue
    .line 506
    .local p0, this:Landroid/nfc/NfcAdapter$CallNfcMethod;,"Landroid/nfc/NfcAdapter$CallNfcMethod<TResult;>;"
    .local p1, defVal:Ljava/lang/Object;,"TResult;"
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 508
    :try_start_0
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter$CallNfcMethod;->callMethod()Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 515
    .end local p1           #defVal:Ljava/lang/Object;,"TResult;"
    :goto_1
    return-object p1

    .line 509
    .restart local p1       #defVal:Ljava/lang/Object;,"TResult;"
    :catch_0
    move-exception v0

    .line 510
    .local v0, e:Landroid/os/RemoteException;
    iget-object v2, p0, Landroid/nfc/NfcAdapter$CallNfcMethod;->this$0:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 511
    const-string v2, "NFC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "service recovered, retry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 514
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v2, "NFC"

    const-string v3, "cannot recover, give up"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected abstract callMethod()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
