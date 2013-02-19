.class public Lcom/htc/server/admin/SDEncryptionHelper;
.super Ljava/lang/Object;
.source "SDEncryptionHelper.java"


# static fields
.field public static SD_ENCRYPTION_STATUS_ACTIVE:I

.field public static SD_ENCRYPTION_STATUS_NO_SDCARD:I

.field public static SD_ENCRYPTION_STATUS_PASSWORD_REQUIRED:I


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput v0, Lcom/htc/server/admin/SDEncryptionHelper;->SD_ENCRYPTION_STATUS_NO_SDCARD:I

    .line 19
    const/4 v0, 0x1

    sput v0, Lcom/htc/server/admin/SDEncryptionHelper;->SD_ENCRYPTION_STATUS_PASSWORD_REQUIRED:I

    .line 21
    const/4 v0, 0x2

    sput v0, Lcom/htc/server/admin/SDEncryptionHelper;->SD_ENCRYPTION_STATUS_ACTIVE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/htc/server/admin/SDEncryptionHelper;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method private getRemovableStorageState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 100
    .local v0, status:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    .line 104
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isPasswordExist()Z
    .locals 3

    .prologue
    .line 90
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/htc/server/admin/SDEncryptionHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v0

    .line 91
    .local v0, quality:I
    const/high16 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 92
    const/4 v1, 0x0

    .line 94
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isSDEncryptionActived()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    iget-object v3, p0, Lcom/htc/server/admin/SDEncryptionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sd_encryption"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 72
    .local v0, status:I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private isSDExist()Z
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/htc/server/admin/SDEncryptionHelper;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, strStatus:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "removed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    :cond_0
    const/4 v1, 0x0

    .line 86
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setSDEncryptionActived()V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/server/admin/SDEncryptionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sd_encryption"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 78
    return-void
.end method

.method private startFormatter()V
    .locals 2

    .prologue
    .line 54
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_ALL_ONLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 57
    iget-object v1, p0, Lcom/htc/server/admin/SDEncryptionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 67
    :goto_0
    return-void

    .line 58
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-static {}, Landroid/os/Environment;->hasInternalFat()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_INTERNAL_STORAGE_ONLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 61
    iget-object v1, p0, Lcom/htc/server/admin/SDEncryptionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 63
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 65
    iget-object v1, p0, Lcom/htc/server/admin/SDEncryptionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method


# virtual methods
.method public EncryptSD()I
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/htc/server/admin/SDEncryptionHelper;->isSDEncryptionActived()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    sget v0, Lcom/htc/server/admin/SDEncryptionHelper;->SD_ENCRYPTION_STATUS_ACTIVE:I

    .line 49
    :goto_0
    return v0

    .line 34
    :cond_0
    invoke-direct {p0}, Lcom/htc/server/admin/SDEncryptionHelper;->isSDExist()Z

    move-result v0

    if-nez v0, :cond_1

    .line 35
    sget v0, Lcom/htc/server/admin/SDEncryptionHelper;->SD_ENCRYPTION_STATUS_NO_SDCARD:I

    goto :goto_0

    .line 39
    :cond_1
    invoke-direct {p0}, Lcom/htc/server/admin/SDEncryptionHelper;->isPasswordExist()Z

    move-result v0

    if-nez v0, :cond_2

    .line 40
    sget v0, Lcom/htc/server/admin/SDEncryptionHelper;->SD_ENCRYPTION_STATUS_PASSWORD_REQUIRED:I

    goto :goto_0

    .line 44
    :cond_2
    invoke-direct {p0}, Lcom/htc/server/admin/SDEncryptionHelper;->setSDEncryptionActived()V

    .line 47
    invoke-direct {p0}, Lcom/htc/server/admin/SDEncryptionHelper;->startFormatter()V

    .line 49
    sget v0, Lcom/htc/server/admin/SDEncryptionHelper;->SD_ENCRYPTION_STATUS_ACTIVE:I

    goto :goto_0
.end method
