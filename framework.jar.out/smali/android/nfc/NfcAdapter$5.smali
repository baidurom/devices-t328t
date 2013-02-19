.class synthetic Landroid/nfc/NfcAdapter$5;
.super Ljava/lang/Object;
.source "NfcAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/NfcAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$nfc$NfcAdapter$NdefHelper:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1061
    invoke-static {}, Landroid/nfc/NfcAdapter$NdefHelper;->values()[Landroid/nfc/NfcAdapter$NdefHelper;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/nfc/NfcAdapter$5;->$SwitchMap$android$nfc$NfcAdapter$NdefHelper:[I

    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter$5;->$SwitchMap$android$nfc$NfcAdapter$NdefHelper:[I

    sget-object v1, Landroid/nfc/NfcAdapter$NdefHelper;->ENABLE:Landroid/nfc/NfcAdapter$NdefHelper;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter$NdefHelper;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Landroid/nfc/NfcAdapter$5;->$SwitchMap$android$nfc$NfcAdapter$NdefHelper:[I

    sget-object v1, Landroid/nfc/NfcAdapter$NdefHelper;->DISABLE:Landroid/nfc/NfcAdapter$NdefHelper;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter$NdefHelper;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
