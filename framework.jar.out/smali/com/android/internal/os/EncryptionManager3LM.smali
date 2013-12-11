.class public Lcom/android/internal/os/EncryptionManager3LM;
.super Landroid/app/Service;
.source "EncryptionManager3LM.java"


# static fields
.field public static final COMPONENT_NAME:Landroid/content/ComponentName; = null

.field public static final CONVERT:Ljava/lang/String; = "com.android.internal.os.Encryption3LMService.CONVERT"

.field static final TAG:Ljava/lang/String; = "EncryptionManager3LM"


# instance fields
.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mService:Landroid/os/IEncryption3LM;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/internal/os/EncryptionManager3LM;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/EncryptionManager3LM;->COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/os/EncryptionManager3LM;)Landroid/os/IEncryption3LM;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/internal/os/EncryptionManager3LM;->mService:Landroid/os/IEncryption3LM;

    return-object v0
.end method

.method private convertToPlaintext()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/android/internal/os/EncryptionManager3LM$1;

    invoke-direct {v0, p0}, Lcom/android/internal/os/EncryptionManager3LM$1;-><init>(Lcom/android/internal/os/EncryptionManager3LM;)V

    invoke-virtual {v0}, Lcom/android/internal/os/EncryptionManager3LM$1;->start()V

    .line 108
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 45
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 46
    iget-object v1, p0, Lcom/android/internal/os/EncryptionManager3LM;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/os/EncryptionManager3LM;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 48
    iget-object v1, p0, Lcom/android/internal/os/EncryptionManager3LM;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 49
    iget-object v1, p0, Lcom/android/internal/os/EncryptionManager3LM;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 50
    iget-object v1, p0, Lcom/android/internal/os/EncryptionManager3LM;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/internal/os/EncryptionManager3LM;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040513

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, diagText:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/os/EncryptionManager3LM;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 57
    .end local v0           #diagText:Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/internal/os/EncryptionManager3LM;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string v2, "EncryptionManager3LM"

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/EncryptionManager3LM;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 59
    iget-object v1, p0, Lcom/android/internal/os/EncryptionManager3LM;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 61
    iget-object v1, p0, Lcom/android/internal/os/EncryptionManager3LM;->mService:Landroid/os/IEncryption3LM;

    if-nez v1, :cond_1

    .line 62
    const-string v1, "Encryption3LMService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IEncryption3LM$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IEncryption3LM;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/EncryptionManager3LM;->mService:Landroid/os/IEncryption3LM;

    .line 65
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 82
    iget-object v0, p0, Lcom/android/internal/os/EncryptionManager3LM;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/internal/os/EncryptionManager3LM;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/EncryptionManager3LM;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 86
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/os/EncryptionManager3LM;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 75
    invoke-direct {p0}, Lcom/android/internal/os/EncryptionManager3LM;->convertToPlaintext()V

    .line 76
    const/4 v0, 0x3

    return v0
.end method
