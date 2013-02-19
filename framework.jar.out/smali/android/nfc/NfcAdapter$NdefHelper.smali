.class final enum Landroid/nfc/NfcAdapter$NdefHelper;
.super Ljava/lang/Enum;
.source "NfcAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/NfcAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NdefHelper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/nfc/NfcAdapter$NdefHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/nfc/NfcAdapter$NdefHelper;

.field public static final enum DISABLE:Landroid/nfc/NfcAdapter$NdefHelper;

.field public static final enum ENABLE:Landroid/nfc/NfcAdapter$NdefHelper;

.field public static final enum QUERY:Landroid/nfc/NfcAdapter$NdefHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1055
    new-instance v0, Landroid/nfc/NfcAdapter$NdefHelper;

    const-string v1, "ENABLE"

    invoke-direct {v0, v1, v2}, Landroid/nfc/NfcAdapter$NdefHelper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/nfc/NfcAdapter$NdefHelper;->ENABLE:Landroid/nfc/NfcAdapter$NdefHelper;

    new-instance v0, Landroid/nfc/NfcAdapter$NdefHelper;

    const-string v1, "DISABLE"

    invoke-direct {v0, v1, v3}, Landroid/nfc/NfcAdapter$NdefHelper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/nfc/NfcAdapter$NdefHelper;->DISABLE:Landroid/nfc/NfcAdapter$NdefHelper;

    new-instance v0, Landroid/nfc/NfcAdapter$NdefHelper;

    const-string v1, "QUERY"

    invoke-direct {v0, v1, v4}, Landroid/nfc/NfcAdapter$NdefHelper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/nfc/NfcAdapter$NdefHelper;->QUERY:Landroid/nfc/NfcAdapter$NdefHelper;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/nfc/NfcAdapter$NdefHelper;

    sget-object v1, Landroid/nfc/NfcAdapter$NdefHelper;->ENABLE:Landroid/nfc/NfcAdapter$NdefHelper;

    aput-object v1, v0, v2

    sget-object v1, Landroid/nfc/NfcAdapter$NdefHelper;->DISABLE:Landroid/nfc/NfcAdapter$NdefHelper;

    aput-object v1, v0, v3

    sget-object v1, Landroid/nfc/NfcAdapter$NdefHelper;->QUERY:Landroid/nfc/NfcAdapter$NdefHelper;

    aput-object v1, v0, v4

    sput-object v0, Landroid/nfc/NfcAdapter$NdefHelper;->$VALUES:[Landroid/nfc/NfcAdapter$NdefHelper;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1055
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/nfc/NfcAdapter$NdefHelper;
    .locals 1
    .parameter "name"

    .prologue
    .line 1055
    const-class v0, Landroid/nfc/NfcAdapter$NdefHelper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcAdapter$NdefHelper;

    return-object v0
.end method

.method public static values()[Landroid/nfc/NfcAdapter$NdefHelper;
    .locals 1

    .prologue
    .line 1055
    sget-object v0, Landroid/nfc/NfcAdapter$NdefHelper;->$VALUES:[Landroid/nfc/NfcAdapter$NdefHelper;

    invoke-virtual {v0}, [Landroid/nfc/NfcAdapter$NdefHelper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/nfc/NfcAdapter$NdefHelper;

    return-object v0
.end method
