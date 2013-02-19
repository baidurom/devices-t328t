.class public Lcom/android/internal/os/storage/ExternalStorageFormatter;
.super Landroid/app/Service;
.source "ExternalStorageFormatter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static final CHECK_MOUNTED_INTERVAL:I = 0x64

.field public static final COMPONENT_NAME:Landroid/content/ComponentName; = null

.field private static final EXTERNAL_STORAGE_IDX:I = 0x1

.field public static final EXTRA_ALWAYS_RESET:Ljava/lang/String; = "always_reset"

.field public static final EXTRA_RESPONSE_STATUS:Ljava/lang/String; = "response_status"

.field public static final FORMAT_ALL_AND_FACTORY_RESET:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_ALL_AND_FACTORY_RESET"

.field public static final FORMAT_ALL_ONLY:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_ALL_ONLY"

.field public static final FORMAT_AND_FACTORY_RESET:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

.field public static final FORMAT_INTERNAL_STORAGE_ONLY:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_INTERNAL_STORAGE_ONLY"

.field public static final FORMAT_ONLY:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_ONLY"

.field private static final HTC_ACTION_FORMAT_ALL:I = 0x2

.field private static final HTC_ACTION_FORMAT_ALL_FACTORY_RESET:I = 0x3

.field private static final HTC_ACTION_FORMAT_INTERNAL_ONLY:I = 0x1

.field private static final HTC_ACTION_NONE:I = 0x0

.field private static final HTC_DEBUG_FORMATTER:Z = false

.field private static final INTERNAL_STORAGE_IDX:I = 0x0

.field private static final LAST_STORAGE_IDX:I = 0x0

.field private static final MAX_MOUNT_TIME:I = 0x64

.field private static final MSG_CHECK_MOUNT_OK:I = 0x15667

.field static final TAG:Ljava/lang/String; = "ExternalStorageFormatter"


# instance fields
.field private htcFormatAction:I

.field private mAlwaysReset:Z

.field private mFactoryReset:Z

.field private mFormatOnly:Z

.field private mFormatSecquence:I

.field private mFormatStoragePath:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mResponseStatus:Z

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolume:Landroid/os/storage/StorageVolume;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 58
    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    .line 60
    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 64
    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 66
    iput-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    .line 67
    iput-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    .line 68
    iput-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatOnly:Z

    .line 70
    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    .line 74
    iput-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mResponseStatus:Z

    .line 82
    iput v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    .line 89
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSecquence:I

    .line 98
    new-instance v0, Lcom/android/internal/os/storage/ExternalStorageFormatter$1;

    invoke-direct {v0, p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$1;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;

    .line 196
    new-instance v0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;

    invoke-direct {v0, p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method private InitFormatSequence()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 666
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    iput v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSecquence:I

    .line 675
    :goto_0
    return-void

    .line 669
    :cond_0
    invoke-static {}, Landroid/os/Environment;->hasInternalFat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 670
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSecquence:I

    goto :goto_0

    .line 673
    :cond_1
    iput v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSecquence:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getFormatStoragePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/os/storage/ExternalStorageFormatter;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->responseStatus(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->formatNextStorage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/os/storage/ExternalStorageFormatter;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendFirstCheckMountMessage(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    return v0
.end method

.method private formatNextStorage()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 682
    iget v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    if-ne v2, v1, :cond_1

    .line 703
    :cond_0
    :goto_0
    return v0

    .line 686
    :cond_1
    iget v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSecquence:I

    if-eqz v2, :cond_0

    .line 690
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 694
    iget v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSecquence:I

    if-ne v2, v1, :cond_2

    .line 695
    iput v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSecquence:I

    .line 698
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    .line 699
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getFormatStoragePath()Ljava/lang/String;

    .line 701
    invoke-direct {p0, v1}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendFirstCheckMountMessage(I)V

    move v0, v1

    .line 703
    goto :goto_0
.end method

.method private getFormatStoragePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 634
    :goto_0
    return-object v0

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 615
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    goto :goto_0

    .line 618
    :cond_1
    iget v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 619
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getInternalStorageDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    .line 634
    :goto_1
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    goto :goto_0

    .line 621
    :cond_2
    iget v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 623
    :cond_3
    iget v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSecquence:I

    if-nez v0, :cond_4

    .line 624
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getInternalStorageDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    goto :goto_1

    .line 627
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getRemoveableStorageDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    goto :goto_1

    .line 631
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getRemoveableStorageDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    goto :goto_1
.end method

.method private getFormatStorageState()Ljava/lang/String;
    .locals 3

    .prologue
    .line 641
    const/4 v0, 0x0

    .line 643
    .local v0, status:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v1, :cond_0

    .line 644
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 662
    :goto_0
    return-object v1

    .line 646
    :cond_0
    iget v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 647
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getInternalStorageState()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 662
    goto :goto_0

    .line 649
    :cond_1
    iget v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 651
    :cond_2
    iget v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSecquence:I

    if-nez v1, :cond_3

    .line 652
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getInternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 655
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 659
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getInternalStorageDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 583
    const/4 v0, 0x0

    .line 584
    .local v0, StoragePath:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->hasPhoneStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 585
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 590
    :goto_0
    return-object v0

    .line 587
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getInternalStorageState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 596
    const/4 v0, 0x0

    .line 598
    .local v0, status:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->hasPhoneStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 599
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v0

    .line 604
    :goto_0
    return-object v0

    .line 601
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getRemovableStorageState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 570
    const/4 v0, 0x0

    .line 572
    .local v0, status:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 573
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    .line 578
    :goto_0
    return-object v0

    .line 575
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getRemoveableStorageDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 558
    const/4 v0, 0x0

    .line 559
    .local v0, StoragePath:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 560
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 565
    :goto_0
    return-object v0

    .line 562
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isExternalStoragePath(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 541
    const/4 v0, 0x0

    .line 543
    .local v0, extStoragePath:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 553
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 546
    :cond_0
    invoke-static {}, Landroid/os/Environment;->hasInternalFat()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 547
    const/4 v0, 0x0

    goto :goto_0

    .line 550
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private responseStatus(Ljava/lang/String;I)V
    .locals 4
    .parameter "storagePath"
    .parameter "formatReturnValue"

    .prologue
    .line 713
    iget-boolean v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mResponseStatus:Z

    if-nez v3, :cond_1

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 716
    :cond_1
    const/4 v2, 0x0

    .line 718
    .local v2, errorCode:I
    if-nez p2, :cond_2

    .line 719
    const/4 v2, 0x0

    .line 728
    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 729
    .local v1, data:Landroid/content/Intent;
    const-string v3, "com.htc.app.admin.dpm.extra.STORAGE_PATH"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 731
    const-string v3, "device_policy"

    invoke-virtual {p0, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/HtcIfDevicePolicyManager;

    .line 733
    .local v0, Dpm:Landroid/app/admin/HtcIfDevicePolicyManager;
    if-eqz v0, :cond_0

    .line 734
    const/4 v3, 0x0

    invoke-interface {v0, v3, v2, v1}, Landroid/app/admin/HtcIfDevicePolicyManager;->responseAsyncResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 721
    .end local v0           #Dpm:Landroid/app/admin/HtcIfDevicePolicyManager;
    .end local v1           #data:Landroid/content/Intent;
    :cond_2
    const/4 v3, -0x2

    if-ne p2, v3, :cond_3

    .line 722
    const/16 v2, -0x64

    goto :goto_1

    .line 725
    :cond_3
    const/16 v2, -0x65

    goto :goto_1
.end method

.method private sendFirstCheckMountMessage(I)V
    .locals 4
    .parameter "storageIdx"

    .prologue
    const v3, 0x15667

    .line 707
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 708
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 709
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 710
    return-void
.end method


# virtual methods
.method checkStorageMounted(I)Z
    .locals 3
    .parameter "storeageIdx"

    .prologue
    const/4 v1, 0x1

    .line 148
    const/4 v0, 0x0

    .line 150
    .local v0, state:Ljava/lang/String;
    if-ne p1, v1, :cond_1

    .line 151
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    .line 157
    :goto_0
    const-string v2, "bad_removal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "removed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "shared"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 163
    :cond_0
    :goto_1
    return v1

    .line 154
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getInternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 163
    :cond_2
    const-string/jumbo v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1
.end method

.method fail(ILjava/lang/String;)V
    .locals 6
    .parameter "msg"
    .parameter "storageState"

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getFormatStoragePath()Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, storagePath:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->isExternalStoragePath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 317
    const/4 v3, 0x1

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 318
    const-string v3, "ExternalStorageFormatter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "format external storage fail="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :goto_0
    const-string v3, "checking"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 326
    .local v1, isChecking:Z
    iget-boolean v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mResponseStatus:Z

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    .line 327
    const-string/jumbo v3, "removed"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "bad_removal"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 329
    :cond_0
    const/4 v3, -0x2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->responseStatus(Ljava/lang/String;I)V

    .line 336
    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 337
    .local v0, formatOver:Z
    iget v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_7

    .line 340
    :cond_2
    iget v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSecquence:I

    if-eqz v3, :cond_3

    .line 341
    const/4 v0, 0x0

    .line 343
    if-nez v1, :cond_3

    .line 344
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->formatNextStorage()Z

    .line 349
    :cond_3
    if-eqz v1, :cond_7

    .line 362
    :cond_4
    :goto_2
    return-void

    .line 321
    .end local v0           #formatOver:Z
    .end local v1           #isChecking:Z
    :cond_5
    const-string v3, "ExternalStorageFormatter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "format internal storage fail="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 332
    .restart local v1       #isChecking:Z
    :cond_6
    const/4 v3, -0x1

    invoke-direct {p0, v2, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->responseStatus(Ljava/lang/String;I)V

    goto :goto_1

    .line 355
    .restart local v0       #formatOver:Z
    :cond_7
    if-eqz v0, :cond_4

    .line 356
    iget-boolean v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    if-eqz v3, :cond_8

    .line 357
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 359
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    .line 360
    const-string v3, "ExternalStorageFormatter"

    const-string v4, "fail stop service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 529
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 530
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 531
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 532
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    .line 537
    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    return-object v1

    .line 534
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    const-string v1, "ExternalStorageFormatter"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method mountStorage(I)V
    .locals 5
    .parameter "storeageIdx"

    .prologue
    .line 168
    const/4 v2, 0x0

    .line 169
    .local v2, path:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 171
    .local v1, mountService:Landroid/os/storage/IMountService;
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 173
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/Environment;->hasInternalFat()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getRemoveableStorageDirectory()Ljava/lang/String;

    move-result-object v2

    .line 185
    :goto_1
    :try_start_0
    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "ExternalStorageFormatter"

    const-string/jumbo v4, "mountStorage Failed talking with mount service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 180
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getInternalStorageDirectory()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 297
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 5
    .parameter "dialog"

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 303
    .local v2, mountService:Landroid/os/storage/IMountService;
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getFormatStoragePath()Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, extStoragePath:Ljava/lang/String;
    :try_start_0
    invoke-interface {v2, v1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    .line 310
    return-void

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "ExternalStorageFormatter"

    const-string v4, "Failed talking with mount service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 214
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 216
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 217
    const-string/jumbo v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 218
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 221
    :cond_0
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "ExternalStorageFormatter"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 223
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 224
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 292
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 293
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 228
    iput v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    .line 229
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, intentAction:Ljava/lang/String;
    const-string v1, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    iput-boolean v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    .line 235
    :cond_0
    const-string v1, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    iput-boolean v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatOnly:Z

    .line 240
    :cond_1
    const-string v1, "com.android.internal.os.storage.FORMAT_INTERNAL_STORAGE_ONLY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 241
    iput v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    .line 252
    :cond_2
    :goto_0
    const-string/jumbo v1, "response_status"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 253
    iput-boolean v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mResponseStatus:Z

    .line 258
    :cond_3
    const-string v1, "always_reset"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 259
    iput-boolean v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    .line 262
    :cond_4
    const-string/jumbo v1, "storage_volume"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 264
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_6

    .line 265
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 266
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 267
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 268
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 269
    iget-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    if-nez v1, :cond_5

    .line 270
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 275
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressState(Z)V

    .line 277
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 280
    :cond_6
    return v5

    .line 243
    :cond_7
    const-string v1, "com.android.internal.os.storage.FORMAT_ALL_ONLY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 244
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    .line 245
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->InitFormatSequence()V

    goto :goto_0

    .line 247
    :cond_8
    const-string v1, "com.android.internal.os.storage.FORMAT_ALL_AND_FACTORY_RESET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 248
    iput v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    .line 249
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->InitFormatSequence()V

    goto :goto_0
.end method

.method public updateProgressDialog(I)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 514
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 515
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 516
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 517
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 518
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 521
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getFormatStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->isExternalStoragePath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 522
    const p1, 0x20401a8

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 526
    return-void
.end method

.method updateProgressState(Z)V
    .locals 7
    .parameter "readyToFormat"

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getFormatStorageState()Ljava/lang/String;

    move-result-object v3

    .line 371
    .local v3, status:Ljava/lang/String;
    const-string/jumbo v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "mounted_ro"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 376
    :cond_0
    if-eqz p1, :cond_1

    .line 379
    const v4, 0x104046e

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    .line 380
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 381
    .local v2, mountService:Landroid/os/storage/IMountService;
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getFormatStoragePath()Ljava/lang/String;

    move-result-object v1

    .line 385
    .local v1, extStoragePath:Ljava/lang/String;
    const/4 v4, 0x1

    :try_start_0
    iget-boolean v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    invoke-interface {v2, v1, v4, v5}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    .end local v1           #extStoragePath:Ljava/lang/String;
    .end local v2           #mountService:Landroid/os/storage/IMountService;
    :cond_1
    :goto_0
    return-void

    .line 386
    .restart local v1       #extStoragePath:Ljava/lang/String;
    .restart local v2       #mountService:Landroid/os/storage/IMountService;
    :catch_0
    move-exception v0

    .line 387
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "ExternalStorageFormatter"

    const-string v5, "Failed talking with mount service"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 390
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #extStoragePath:Ljava/lang/String;
    .end local v2           #mountService:Landroid/os/storage/IMountService;
    :cond_2
    const-string/jumbo v4, "nofs"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "unmounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "unmountable"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 396
    :cond_3
    const v4, 0x104046f

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    .line 397
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 398
    .restart local v2       #mountService:Landroid/os/storage/IMountService;
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getFormatStoragePath()Ljava/lang/String;

    move-result-object v1

    .line 400
    .restart local v1       #extStoragePath:Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 401
    new-instance v4, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;Landroid/os/storage/IMountService;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->start()V

    goto :goto_0

    .line 492
    :cond_4
    const-string v4, "ExternalStorageFormatter"

    const-string v5, "Unable to locate IMountService"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 494
    .end local v1           #extStoragePath:Ljava/lang/String;
    .end local v2           #mountService:Landroid/os/storage/IMountService;
    :cond_5
    const-string v4, "bad_removal"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 495
    const v4, 0x1040471

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 496
    :cond_6
    const-string v4, "checking"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 497
    const v4, 0x1040472

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 498
    :cond_7
    const-string/jumbo v4, "removed"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 499
    const v4, 0x1040473

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 500
    :cond_8
    const-string/jumbo v4, "shared"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 501
    const v4, 0x1040474

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 502
    :cond_9
    const-string v4, "formatting"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 503
    const-string v4, "ExternalStorageFormatter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "storage state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 506
    :cond_a
    const v4, 0x1040475

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(ILjava/lang/String;)V

    .line 507
    const-string v4, "ExternalStorageFormatter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown storage state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
