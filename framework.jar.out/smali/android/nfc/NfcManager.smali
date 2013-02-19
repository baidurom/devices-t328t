.class public final Landroid/nfc/NfcManager;
.super Ljava/lang/Object;
.source "NfcManager.java"


# static fields
.field static final TAG:Ljava/lang/String; = "NfcManager"


# instance fields
.field private mAdapter:Landroid/nfc/NfcAdapter;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/nfc/NfcManager;->mContext:Landroid/content/Context;

    .line 45
    const-string v0, "NfcManager"

    const-string v1, "constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method


# virtual methods
.method public getDefaultAdapter()Landroid/nfc/NfcAdapter;
    .locals 4

    .prologue
    .line 54
    iget-object v2, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    if-nez v2, :cond_0

    .line 57
    :try_start_0
    iget-object v2, p0, Landroid/nfc/NfcManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 58
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    const-string v2, "NfcManager"

    const-string v3, "got mAdapter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    monitor-enter p0

    .line 63
    :try_start_1
    iput-object v0, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 64
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .end local v0           #adapter:Landroid/nfc/NfcAdapter;
    :cond_0
    iget-object v2, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    return-object v2

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .local v1, e:Ljava/lang/UnsupportedOperationException;
    const/4 v0, 0x0

    .restart local v0       #adapter:Landroid/nfc/NfcAdapter;
    goto :goto_0

    .line 64
    .end local v1           #e:Ljava/lang/UnsupportedOperationException;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
